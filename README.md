# SSVEPNet and EEGDream: Discovering Novel Neural Patterns in Visually Evoked Potentials Through CNNs

![alt text](https://github.com/nelsonalbertohj/EEGDream/blob/main/Experiment_set_up_main_diagram.png?raw=true)

# Abstract
Steady State Visually Evoked Potential (SSVEP) have been widely used in creating brain-computer interfaces and studying visual attention. As convolutional neural networks (CNNs) have outperformed conventional methods of SSVEP analysis, there is an important need to unveil some of the abstractions of CNNs and allow researchers to meaningfully interpret patterns in visual processes that CNNs learn. To bridge this gap, we implemented a CNN trained to identify the target stimulus frequencies in an SSVEP study, and we evaluated the features it learned using a gradient ascent algorithm, EEGDream. Our CNN outperformed the conventional CCA analysis (70 % vs. 60%) in classifying participant independent SSVEP target frequencies, especially in conditions with poor signal quality. Our EEGDream analysis of the features learned by the CNN show strong evidence that the network learned to identify the peak spectral frequencies as well as the spatial patterns in the SSVEP signal. The EEGDream visualization also indicated that our CNN identified the presence of adjacent frequencies in the SSVEP for the classification of some of the stimulus frequencies. Thus, our research demonstrates the feasibility of using EEGDream to identify at a granular level fundamental and novel features learned by CNNs from SSVEP signals.

# Research Report
The following research report was produced for the final project in [Projects in the Science of Intelligence](https://cbmm.mit.edu/9-58/2021)
See the following pdf for full [SSVEPNet and EEGDream research paper](https://github.com/nelsonalbertohj/EEGDream/blob/main/EEGDream_discovering_neural_patterns_in_SSVEP.pdf).

Please, if using the algorithms developed in this repository, please cite me as:
```
@inproceedings{nheegdream2021,
   author={Hidalgo, Nelson},
   year={2021},
   title={Discovering Novel Neural Patterns in Visually Evoked Potentials Through CNNs},
   booktitle={Preprint},
}
```

# Dataset
The dataset used for this project was produced by Masaki Nakanishi, Yijun Wang, Yu-Te Wang, and Tzyy-Ping Jung. A comparison study of canonical correlation analysis based methods for detecting steady-state visual evoked potentials. PloS one, 10(10):e0140703, 2015.
It was made openly available in Kaggle at [ssvep-sandiego](https://www.kaggle.com/code/kerneler/starter-ssvep-sandiego-04d82b4d-d/data)

# Environment Configuration
The following dependencies versions were used in this project:

```
tensorflow                         2.7.0
Python                             3.8.5
```
