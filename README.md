# SSVEPNet and EEGDream: Discovering Novel Neural Patterns in Visually Evoked Potentials Through CNNs

![alt text](https://github.com/nelsonalbertohj/EEGDream/blob/main/Experiment_set_up_main_diagram.png?raw=true)

# Abstract
Steady State Visually Evoked Potential (SSVEP) have been widely used in creating brain-computer interfaces and studying visual attention. As convolutional neural networks (CNNs) have outperformed conventional methods of SSVEP analysis, there is an important need to unveil some of the abstractions of CNNs and allow researchers to meaningfully interpret patterns in visual processes that CNNs learn. To bridge this gap, we implemented a CNN trained to identify the target stimulus frequencies in an SSVEP study, and we evaluated the features it learned using a gradient ascent algorithm, EEGDream. Our CNN outperformed the conventional CCA analysis (70 % vs. 60%) in classifying participant independent SSVEP target frequencies, especially in conditions with poor signal quality. Our EEGDream analysis of the features learned by the CNN show strong evidence that the network learned to identify the peak spectral frequencies as well as the spatial patterns in the SSVEP signal. The EEGDream visualization also indicated that our CNN identified the presence of adjacent frequencies in the SSVEP for the classification of some of the stimulus frequencies. Thus, our research demonstrates the feasibility of using EEGDream to identify at a granular level fundamental and novel features learned by CNNs from SSVEP signals.


