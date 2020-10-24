from enum import Enum


class Consts(object):
    TRANSITION_DESCRIPTION_NUMBER = 5
    MAX_STEPS_NUMBER = 1000000
    BLANK = '0'

    START = 'start'
    ACCEPT = 'accept'
    REJECT = 'reject'

    class Move(Enum):
        STAY = 'S'
        LEFT = 'L'
        RIGHT = 'R'
