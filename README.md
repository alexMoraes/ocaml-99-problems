# 99 OCaml Problems
This is my attempt to solve the [Ninety-Nine OCaml Problems](https://ocaml.org/problems)

# Project structure
Each solution is implemented as an executable within the project stored in a folder of the same name with a sequential prefix for ordering.

To add a new executable, in the root folder run

```bash
./addExecutable.sh <problemName>
```

# Running the solutions
The project is set up such that each problem's solution has it's own executable in the bin folder.

To run the solution to a given problem, in the root folder run

```bash
$ dune exec <problemName>
```
