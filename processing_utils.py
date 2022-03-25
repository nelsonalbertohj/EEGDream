from scipy.signal import butter, lfilter, iirnotch, welch
import numpy as np
import matplotlib.pyplot as plt
import mne

def norm_stand_data(X,max_val=1,min_val=0):
    '''
    Standardizes and normalizes data
    
    X: array, of shape trials by channels by samples
    max_val: float, the maximum value to standardize data to
    min_val: float, the minimum value to standardize data to
    
    return: array, of the same shape as X but having standardized values
    '''
    X_std = (X - X.min(axis=2,keepdims=True)) / (X.max(axis=2,keepdims=True) - X.min(axis=2,keepdims=True))
    X_scaled = X_std * (max_val - min_val) + min_val
    return X_scaled

def butter_bandpass_filter(data, lowcut, highcut, fs, order=5):
    '''
    Performs bandpass filter on EEG data
    
    data: array, of shape channels by samples
    lowcut: int, the lower cut-off frequency
    highcut: int, the higher cut-off frequency
    fs: int, sampling frequency of the signal
    order: int, the order of the butterworth filter
    
    return: array, of same shape as data with filtered data
    '''
    nyq = 0.5 * fs
    low = lowcut / nyq
    high = highcut / nyq
    b, a = butter(order, [low, high], btype='band')
    y = lfilter(b, a, data)
    return y

def butter_notch_filter(data,freq,fs,order=5):
    '''
    Performs a notch filter on data
    
    data: array, of shape channels by samples
    freq: float, the frequency to be filtered out
    fs: int, sampling frequency of the signal
    order: int, the order of the butterworth filter
    
    return: array, of same shape as data with filtered data
    '''
    nyq = 0.5 * fs
    target_freq = freq/nyq
    b, a = iirnotch(target_freq,Q=30) #Q=30 is a high quality factor
    y = lfilter(b,a,data)
    return y

def raw_psd_plot(eeg,freq_label,do_filt=False,
                stim_freq = {1:9.25,2:11.25,3:13.25,4:9.75,5:11.75,6:13.75,7:10.25,8:12.25,9:14.25,10:10.75,11:12.75,12:14.75},
                chan_names = ["PO7","PO3","POz","PO4","PO8","O1","Oz","O2"],
                chan_color = {0: u'orchid', 1: u'darkcyan', 2: u'grey', 
                              3: u'dodgerblue', 4: u'turquoise', 5: u'darkviolet',
                              6: u'firebrick',7:u'red'}
                ):
    '''
    Plots the power spectral density of EEG signal
    
    eeg: array, eeg data in shape channels by datapoints
    freq_label: int, the frequency lable as an index which is mapped
                to the frequency in Hz of the real SSVEP stimulus
    do_filt: bool, if set to False it will not apply a filter (in the case
                  that filtered data is passed in)
    stim_freq: dictionary, mapping frequency indices to frequency in Hz
    chan_names: list of strings, the names of the channels
    chan_color: dictionary, mapping from indices to colors
    
    return: None, it just plots the PSD of the signal
    '''
    if type(eeg) != np.ndarray: #convert tf. to np.
      eeg_plot = eeg.numpy()[0,:,:]
    else:
      eeg_plot = eeg
    
    if do_filt:
      eeg_plot = butter_bandpass_filter(eeg_plot, 7, 60, fs=256, order=2)
    
    #Plot PSD
    plt.figure()
    for i in range(eeg_plot.shape[0]):
      plt.plot(eeg_plot[i,:],label=chan_names[i],color=chan_color[i])
    plt.title(f'Raw {stim_freq[freq_label]}')
    plt.legend()
    df_freq ,df_psd = welch(eeg_plot,fs=256)
    plt.figure()
    for i in range(eeg_plot.shape[0]):
      plt.plot(df_freq,df_psd[i,:],label=chan_names[i],color=chan_color[i])
    plt.vlines(float(stim_freq[freq_label]),ymin=np.min(df_psd), ymax=np.max(df_psd),colors='k')
    plt.legend()
    plt.title(f'PSD {stim_freq[freq_label]}')
    plt.xlim([7,30])
    plt.legend()

def psd_headplotter(spectrum_vals,title="Loss Score Accross Channels"):
    '''
    spectrum: the average power spectrum
    
    return: None, plots a topographical head map of the average power spectrum
            or loss.
    '''
    chan_names = ["PO7","PO3","POz","PO4","PO8","O1","Oz","O2"]
    ch_types = ['eeg'] * len(chan_names)
    custom_montage = mne.channels.make_standard_montage('standard_1005')
    
    sfreq = 256
    info = mne.create_info(ch_names=chan_names, sfreq=sfreq, ch_types=ch_types)
    info.set_montage(custom_montage)
    fig,(ax1) = plt.subplots()
    im,cm   = mne.viz.plot_topomap(spectrum_vals, info, axes=ax1,show=False,vmin=np.min(spectrum_vals),
                                   vmax=np.max(spectrum_vals),names=chan_names,show_names=True)    
    # manually fiddle the position of colorbar
    ax_x_start = 0.80
    ax_x_width = 0.04
    ax_y_start = 0.1
    ax_y_height = 0.8
    cbar_ax = fig.add_axes([ax_x_start, ax_y_start, ax_x_width, ax_y_height])
    clb = fig.colorbar(im, cax=cbar_ax)
    ax1.set_title(title,fontsize=12)