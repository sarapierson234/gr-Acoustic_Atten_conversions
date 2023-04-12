#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
# Copyright 2022 Sara Pierson.
#
# SPDX-License-Identifier: GPL-3.0-or-later
#

from gnuradio import gr, gr_unittest
from gnuradio import blocks
from gnuradio.Acoustic_Atten_conversions import dB_reduced_voltage_received

class qa_dB_reduced_voltage_received(gr_unittest.TestCase):

    def setUp(self):
        self.tb = gr.top_block()

    def tearDown(self):
        self.tb = None

    #def test_instance(self):
        # FIXME: Test will fail until you pass sensible arguments to the constructor
        #instance = dB_reduced_voltage_received()

    def test_001_descriptive_test_name(self):
        # set up fg
        self.tb.run()
        # check data
        
        v_in_test = (1, 1, 1)
        dB_in_test = (20, 10, 5)
        expected_v_out = (.3678, 0.6065, 0.7788)
#BLOCKS#####################################################
        v_in = blocks.vector_source_f(v_in_test)
        dB_in = blocks.vector_source_f(dB_in_test)
        calc_v_out = dB_reduced_voltage_received(1)
        '''the input of "1" above is the value given to the "attenuation multiplier" for the test code. Must be here otherwise the qa_test (when you run "ctest -V" or anything of the sort in the build folder of this block will throw an error'''
        out = blocks.vector_sink_f()
 #CONNECTIONS################################################# 
        self.tb.connect( (v_in,0), (calc_v_out,0))
        self.tb.connect( (dB_in,0), (calc_v_out,1))
        self.tb.connect( (calc_v_out, 0), (out,0))
#OUTPUTS#####################################################
        self.tb.run()
        result = out.data()
        #print('expected_v_out test result', expected_v_out)
        #print('py code result', result)
        self.assertFloatTuplesAlmostEqual(expected_v_out, result, 3)

if __name__ == '__main__':
    gr_unittest.run(qa_dB_reduced_voltage_received)
