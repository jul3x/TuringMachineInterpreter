#!/usr/bin/env python3

import os
import sys

sys.path.append(os.path.abspath(os.path.join('../..')))

from interpreter.consts import Consts
from interpreter.turing_machine import TuringMachine
from interpreter.parse import parse_transitions

machine = TuringMachine(parse_transitions("../square.tm"), 10000)

# Checks all possible combinations of 1's and 2's of max length 20
for test in range(0, 1048576):
    machine.steps = 10000
    value = bin(test)[2:].replace('1', '2').replace('0', '1')
    desired_result = True
    if len(value) % 2 != 0:
        desired_result = False

    if desired_result and value[0:int(len(value) / 2)] != value[int(len(value) / 2):]:
        desired_result = False

    result = machine.start([char for char in value] if value else [Consts.BLANK])
    None if result == desired_result else print('NO ({})'.format(value), test)
