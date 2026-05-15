# Pobegalov-et-al.cohesin-LE-kymograph-analysis
Scripts used to analyse the data in the manuscript by Pobegalov et al. "Symmetry and force response of cohesin loop extrusion are determined by diffusion of its motor and anchor domains"

The analysis was performed on operating system MacOS Tahoe, version 26.4

To analyze cohesin LE dynamics without flow, images were first processed in Fiji ImageJ (2.16.0/1,54p). 
Individual DNA molecules were selected using the "straight line" tool with line width = 12 pix. 
Kymographs were generated using "Kymos and DNA video batch export.ijm" script, executed in Fiji ImageJ utilizing KymoResliceWide plug-in (https://github.com/UU-cellbiology/KymoResliceWide).

Kymographs were further processed using the Jupyter Notebook "LE_kymo_tiff.ipynb".
Python version 3.12.2, Jupyter Notebook (Anaconda 7.4.7) using libraries: numpy, scipy, tifffile.

# Jupyter Notebook Installation Using Anaconda

Download and install Anaconda (Python 3 version):  https://www.anaconda.com/download

Open the Anaconda Prompt (Windows) or terminal (macOS/Linux).

Create a new conda environment (recommended):  conda create -n jupyter_env python=3.11

Activate the environment:  conda activate jupyter_env

# Install Jupyter Notebook and required libraries:  
conda install jupyter matplotlib scipy

pip install tifffile

Installation of Jupyter Notebook and necessary libraries requires ~15 minutes.

# Start Jupyter Notebook:
jupyter notebook

To run the script, put a copy of "LE_kymo_tiff.ipynb" Jupyter Notebook in the same folder as kymographs you wish to analyze, saved as .tiff files (example kymographs are provided)

INPUTS: 
1. set frame rate at which data were collected (2Hz default)
2. select the kymograph you wish to analyze by changing "file_number = ..."
3. select an area of the kymograph (in frames) without DNA loop to determine DNA ends position: "frames_DNA = [start, end]" 
4. select an area of the kymograph (in frames) where loop extrusion occured: "frames_LE = [start,end]"
5. select a time window (in seconds) for linear fit to extract LE rate: "seconds_fit = [start,end]"
6. select a line in the kymograph for which you wish to plot a DNA profile "frame"

OUTPUTS: 

Plots: Average DNA profile (without a loop); Kymograph; Results of the kymograph tracking (DNA_loop, DNA_top, DNA_bottom); Selected DNA profile; Linear fits of DNA loop size, DNA_top and DNA_bottom.

Txt file containing: Time, DNA_loop size, DNA_top, DNA_bottom

For questions, contact lwdrums@gmail.com
