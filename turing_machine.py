from consts import Consts


class TuringMachine(object):

    def __init__(self, transitions, steps=Consts.MAX_STEPS_NUMBER):
        self.transitions = transitions
        self.steps = steps
        self.cursor = 0
        self.state = Consts.START
        self.input = []

    def start(self, value):
        self.input = [char for char in value] if value else Consts.BLANK

        while True:
            char = self.input[self.cursor]
            actions = self.transitions.get_actions(self.state, char)

            if not actions:
                return False

            if actions[0][0] == Consts.ACCEPT:
                return True

            self.state, self.input[self.cursor], direction = actions[0]
            self.move(direction)
            self.steps = self.steps - 1

            if self.steps <= 0:
                return False

    def move(self, direction):
        if direction == Consts.Move.LEFT:
            self.cursor = max(0, self.cursor - 1)
        elif direction == Consts.Move.RIGHT:
            self.cursor = self.cursor + 1

            if self.cursor >= len(self.input):
                self.input.append(Consts.BLANK)


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
