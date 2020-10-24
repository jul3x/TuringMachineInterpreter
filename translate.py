#!/usr/bin/env python3

import sys


class ParseError(Exception):
    pass


TRANSITION_DESCRIPTION_NUMBER = 8


def parse_two_tape(file_name):
    transitions_dict = {}
    used_chars = {}
    states = set()
    with open(file_name, "r") as f:
        line_number = 1
        for line in f:
            if line.startswith('/*'):
                continue
            split = line.split()

            if split:
                if len(split) != TRANSITION_DESCRIPTION_NUMBER:
                    raise ParseError('Wrong number of elements in transition in line ' + str(line_number))

                in_state, in_char_1, in_char_2, out_state, out_char_1, out_char_2, move_1, move_2 = split
                transitions_dict.setdefault((in_state, in_char_1, in_char_2), []).append((out_state, out_char_1, out_char_2, move_1, move_2))
                used_chars[in_char_1] = ''
                used_chars[in_char_2] = ''
                used_chars[out_char_1] = ''
                used_chars[out_char_2] = ''
                states.add(in_state)
                states.add(out_state)

            line_number = line_number + 1

        f.close()
    return transitions_dict, used_chars, states


def print_initial_transitions(used_chars):
    for char, marked_char in used_chars.items():
        print('start {} __go_to_second {} R'.format(char, marked_char))

        if char != '0':
            print('__go_to_second {} __go_to_second {} R'.format(char, char))
        else:
            print('__go_to_second {} __mark_second {} R'.format(char, char))

        print('__return_to_first {} __return_to_first {} L'.format(char, char))
        print('__return_to_first {} start {} S'.format(marked_char, marked_char))

    print('__mark_second 0 __return_to_first {} L'.format(used_chars.get('0')))


def get_marked_chars_dict(used_chars):
    alphabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J']

    i = 0
    for char in used_chars.keys():
        used_chars[char] = alphabet[i]
        i = i + 1

    return used_chars


def print_one_tape_transitions(transitions, states, used_chars):
    for state in states:
        if state == 'accept' or state == 'reject':
            continue

        for char, marked_char in used_chars.items():
            print('{} {} {}_check_second_{} {} R'.format(state, marked_char, state, char, marked_char))

            for char_2, marked_char_2 in used_chars.items():
                print('{}_check_second_{} {} {}_check_second_{} {} R'.format(state, char, char_2, state, char, char_2))
                print('{}_check_second_{} {} {}_checked_{}_{} {} S'.format(state, char, marked_char_2, state, char, char_2, marked_char_2))

                possible_transitions = transitions.get((state, char, char_2)) or []
                i = 0
                for possible_transition in possible_transitions:
                    (out_state, out_char_1, out_char_2, move_1, move_2) = possible_transition
                    print('{}_checked_{}_{} {} {}_move_second_{}_{}_{} {} {}'.format(state, char, char_2, marked_char_2,
                                                                                     state, char, char_2, i,
                                                                                     out_char_2, move_2))

                    for char_to_mark, marked_char_to_mark in used_chars.items():
                        print('{}_move_second_{}_{}_{} {} {}_do_first_{}_{}_{} {} L'.format(state, char, char_2, i,
                                                                                            char_to_mark,
                                                                                            state, char, char_2, i,
                                                                                            marked_char_to_mark))
                        print('{}_do_first_{}_{}_{} {} {}_do_first_{}_{}_{} {} L'.format(state, char, char_2, i,
                                                                                         char_to_mark,
                                                                                         state, char, char_2, i,
                                                                                         char_to_mark))
                        print('{}_do_first_{}_{}_{} {} {}_move_first_{}_{}_{} {} {}'.format(state, char, char_2, i,
                                                                                            marked_char_to_mark,
                                                                                            state, char, char_2, i,
                                                                                            out_char_1, move_1))
                        print('{}_move_first_{}_{}_{} {} {} {} S'.format(state, char, char_2, i,
                                                                         char_to_mark, out_state, marked_char_to_mark))
                    i = i + 1


def usage():
    print('Usage details: translate.py <file_path>')
    print('\t <file_path> - path to file with two-tape Turing Machine description')
    print('Translate.py outputs description of equivalent one-tape Turing Machine to stdout.')


if __name__ == "__main__":
    if len(sys.argv) != 2:
        usage()
        sys.exit(1)
    else:
        try:
            transitions, used_chars, states = parse_two_tape(sys.argv[1])
            used_chars = get_marked_chars_dict(used_chars)
            print_initial_transitions(used_chars)
            print_one_tape_transitions(transitions, states, used_chars)
            sys.exit(0)
        except FileNotFoundError:
            print('Wrong argument. <file_path> - file not exists!')
            sys.exit(1)
        except ParseError as e:
            print('Wrong description of transitions in <file_path> given file.')
            print(e)
            sys.exit(1)
