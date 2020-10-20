# TuringMachineInterpreter
Simple interpreter for Nondeterministic Turing Machines written in Python. 

## Dependency

* Python 3.6

## Usage
 Usage details: `./interpreter.py <file_path> <steps>`
* `<file_path>` - path to file with Turing Machine description
* `<steps>` - maximum number of steps Interpreter waits for input word 
 and outputs either `YES` or `NO` depending whether 
 the Turing machine has an accepting run on this word 
 of length of at most `<steps>`.