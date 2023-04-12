#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
# Copyright 2022 Sara Pierson.
#
# SPDX-License-Identifier: GPL-3.0-or-later
#


import numpy as np
from gnuradio import gr

class dB_reduced_voltage_received(gr.sync_block):
    """
    docstring for block dB_reduced_voltage_received
    """
    def __init__(self, atten_multiplier):
        gr.sync_block.__init__(self,
            name="dB_reduced_voltage_received",
            in_sig=[np.float32, np.float32],
            out_sig=[np.float32])
        self.atten_mult = atten_multiplier

    def work(self, input_items, output_items):
        volt_in_stream = input_items[0][:]
        atten_in_dBs = input_items[1][:]
        #print('volt in stream', volt_in_stream)
        #print('atten_in_dBs', atten_in_dBs)
        #out = output_items[1][:]
        
        # <+signal processing here+>
        atten_in_dBs = np.multiply(atten_in_dBs, -1) #this makes it so that the end signal decreases because the calculation of attenuation in dBs is positive, which would make the end signal LARGER if left as is, instead of making it smaller.
        atten_in_dBs = np.multiply(atten_in_dBs, self.atten_mult) #this line is just for artificially increasing the attenuation values by some multiplier to see the effect of it on the end signal more easily. Leave at 1 if you want an accurate calculation.
        v_in1 = np.divide(atten_in_dBs, 20)
        v_in2 = np.exp(np.array(v_in1))
        v_in3 = np.multiply(v_in2, volt_in_stream)
        #print("step 1") 
        
        output_items[0][:] = v_in3
        return len(output_items[0])
