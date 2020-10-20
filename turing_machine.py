from copy import deepcopy

from consts import Consts


class TuringMachine(object):

    def __init__(self, transitions, steps=Consts.MAX_STEPS_NUMBER):
        self.transitions = transitions
        self.steps = steps

    def start(self, input, state=Consts.START, cursor=0, new_char_pos=0, new_char=None):
        input[new_char_pos] = new_char or input[new_char_pos]

        while True:
            self.steps = self.steps - 1
            if self.steps < 0:
                return False

            char = input[cursor]
            actions = self.transitions.get_actions(state, char)

            if not actions:
                return False

            for action in actions:
                if action[0] == Consts.ACCEPT:
                    return True

            if len(actions) > 1:
                for action in actions[:-1]:
                    _state, _new_char, _direction = action
                    _new_cursor = TuringMachine.move(input, cursor, _direction)

                    if TuringMachine(transitions=self.transitions, steps=self.steps) \
                            .start(deepcopy(input), _state, _new_cursor, cursor, _new_char):
                        return True

            state, input[cursor], direction = actions[-1]
            cursor = TuringMachine.move(input, cursor, direction)

    @staticmethod
    def move(input, cursor, direction):
        if direction == Consts.Move.LEFT:
            return max(0, cursor - 1)
        elif direction == Consts.Move.RIGHT:
            if cursor + 1 >= len(input):
                input.append(Consts.BLANK)

            return cursor + 1

    @staticmethod
    def print(input, state, cursor):
        print(input)
        print(cursor, state)


class Transitions(object):

    def __init__(self):
        self.data = {}

    def append(self, in_state, in_char, out_state, out_char, out_move):
        self.data.setdefault((in_state, in_char), []).append((out_state, out_char, out_move))

    def get_actions(self, in_state, in_char):
        return self.data.setdefault((in_state, in_char), [])

    def print_all_transitions(self):
        for key, value in self.data.items():
            print('({}, {}): '.format(key[0], key[1]), end='')

            for choice in value:
                print('({}, {}, {}), '.format(choice[0], choice[1], choice[2]), end='')

            print('')
