# Install script for directory: /home/lola/prefix/gnu3.8/acoustics/phaseZero/gr-Acoustic_Atten_conversions

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/lola/anaconda3/envs/gnuradio")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/home/lola/anaconda3/envs/gnuradio/bin/x86_64-conda-linux-gnu-objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/gnuradio-Acoustic_Atten_conversions" TYPE FILE FILES "/home/lola/prefix/gnu3.8/acoustics/phaseZero/gr-Acoustic_Atten_conversions/cmake/Modules/gnuradio-Acoustic_Atten_conversionsConfig.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/lola/prefix/gnu3.8/acoustics/phaseZero/gr-Acoustic_Atten_conversions/build/include/gnuradio/Acoustic_Atten_conversions/cmake_install.cmake")
  include("/home/lola/prefix/gnu3.8/acoustics/phaseZero/gr-Acoustic_Atten_conversions/build/lib/cmake_install.cmake")
  include("/home/lola/prefix/gnu3.8/acoustics/phaseZero/gr-Acoustic_Atten_conversions/build/apps/cmake_install.cmake")
  include("/home/lola/prefix/gnu3.8/acoustics/phaseZero/gr-Acoustic_Atten_conversions/build/docs/cmake_install.cmake")
  include("/home/lola/prefix/gnu3.8/acoustics/phaseZero/gr-Acoustic_Atten_conversions/build/python/Acoustic_Atten_conversions/cmake_install.cmake")
  include("/home/lola/prefix/gnu3.8/acoustics/phaseZero/gr-Acoustic_Atten_conversions/build/grc/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/lola/prefix/gnu3.8/acoustics/phaseZero/gr-Acoustic_Atten_conversions/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
