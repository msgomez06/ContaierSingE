#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Feb  9 09:54:20 2023

@author: mgomezd1
"""
import sys
import tensorflow as tf

print(f'{sys.argv[0]} has run succesfully!')
print(f'argument {sys.argv[1]} has run succesfully!')
print(tf.config.list_physical_devices())
