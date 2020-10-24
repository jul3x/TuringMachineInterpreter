#!/usr/bin/env python3

import sys

from interpreter.consts import Consts
from interpreter.turing_machine import TuringMachine
from interpreter.parse import ParseError, parse_transitions


def usage():
    print('Usage details: interpreter.py <file_path> <steps>')
    print('\t <file_path> - path to file with Turing Machine description')
    print('\t <steps> - maximum number of steps')
    print('Interpreter waits for input word and outputs either YES or NO '
          'depending whether the Turing machine has an accepting run on this word of length of at most <steps>.')


if __name__ == "__main__":
    if len(sys.argv) != 3:
        usage()
        sys.exit(1)
    else:
        try:
            steps = int(sys.argv[2])
            if steps < 0:
                raise ValueError

            machine = TuringMachine(parse_transitions(sys.argv[1]), steps)

            value = input()
            result = machine.start([char for char in value] if value else [Consts.BLANK])
            print('YES') if result else print('NO')

            sys.exit(0)
        except ValueError:
            print('Wrong argument. <steps> should be a positive integer!')
            usage()
            sys.exit(1)
        except FileNotFoundError:
            print('Wrong argument. <file_path> - file not exists!')
            sys.exit(1)
        except ParseError as e:
            print('Wrong description of transitions in <file_path> given file.')
            print(e)
            sys.exit(1)
