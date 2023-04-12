#!/usr/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir="/home/lola/prefix/gnu3.8/acoustics/phaseZero/gr-Acoustic_Atten_conversions/python/Acoustic_Atten_conversions"
export GR_CONF_CONTROLPORT_ON=False
export PATH="/home/lola/prefix/gnu3.8/acoustics/phaseZero/gr-Acoustic_Atten_conversions/build/python/Acoustic_Atten_conversions":"$PATH"
export LD_LIBRARY_PATH="":$LD_LIBRARY_PATH
export PYTHONPATH=/home/lola/prefix/gnu3.8/acoustics/phaseZero/gr-Acoustic_Atten_conversions/build/test_modules:$PYTHONPATH
/home/lola/anaconda3/envs/gnuradio/bin/python /home/lola/prefix/gnu3.8/acoustics/phaseZero/gr-Acoustic_Atten_conversions/python/Acoustic_Atten_conversions/qa_dB_reduced_voltage_received.py 
