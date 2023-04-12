# CMake generated Testfile for 
# Source directory: /home/lola/prefix/gnu3.8/acoustics/phaseZero/gr-Acoustic_Atten_conversions/python/Acoustic_Atten_conversions
# Build directory: /home/lola/prefix/gnu3.8/acoustics/phaseZero/gr-Acoustic_Atten_conversions/build/python/Acoustic_Atten_conversions
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(qa_dB_reduced_voltage_received "/usr/bin/sh" "qa_dB_reduced_voltage_received_test.sh")
set_tests_properties(qa_dB_reduced_voltage_received PROPERTIES  _BACKTRACE_TRIPLES "/home/lola/anaconda3/envs/gnuradio/lib/cmake/gnuradio/GrTest.cmake;116;add_test;/home/lola/prefix/gnu3.8/acoustics/phaseZero/gr-Acoustic_Atten_conversions/python/Acoustic_Atten_conversions/CMakeLists.txt;42;GR_ADD_TEST;/home/lola/prefix/gnu3.8/acoustics/phaseZero/gr-Acoustic_Atten_conversions/python/Acoustic_Atten_conversions/CMakeLists.txt;0;")
subdirs("bindings")
