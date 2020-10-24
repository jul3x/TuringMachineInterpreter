from interpreter.consts import Consts
from interpreter.turing_machine import Transitions


class ParseError(Exception):
    pass


def parse_transitions(file_name):
    transitions = Transitions()

    with open(file_name, "r") as f:
        line_number = 1

        for line in f:
            if line.startswith('/*'):
                continue
            split = line.split()

            if split:
                if len(split) != Consts.TRANSITION_DESCRIPTION_NUMBER:
                    raise ParseError('Wrong number of elements in transition in line ' + str(line_number))

                in_state, in_char, out_state, out_char, move = split

                try:
                    transitions.append(in_state, in_char, out_state, out_char, Consts.Move(move))
                except ValueError:
                    raise ParseError('Wrong type of movement in transition in line ' + str(line_number))
            line_number = line_number + 1

        f.close()

    return transitions
