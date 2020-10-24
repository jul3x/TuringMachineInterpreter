#!/usr/bin/env python3

import os
import sys

sys.path.append(os.path.abspath(os.path.join('../..')))

from interpreter.consts import Consts
from interpreter.turing_machine import TuringMachine
from interpreter.parse import parse_transitions

standard_machine = TuringMachine(parse_transitions("../palindrome.tm"), 100000)
translated_machine = TuringMachine(parse_transitions("../one_tape_palindrome.tm"), 100000)

# Checks all possible combinations of 1's and 2's of max length 20
for test in range(0, 1048576):
    translated_machine.steps = 100000
    standard_machine.steps = 100000
    value = bin(test)[2:].replace('1', '2').replace('0', '1')

    result = standard_machine.start([char for char in value] if value else [Consts.BLANK])
    result_2 = translated_machine.start([char for char in value] if value else [Consts.BLANK])
    None if result == result_2 else print('NO ({})'.format(value), test)
