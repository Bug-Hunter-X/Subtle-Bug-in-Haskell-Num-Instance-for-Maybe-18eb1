# Haskell Num Instance Bug

This repository demonstrates a subtle bug in a Haskell program that implements a `Num` instance for the `Maybe` type.  The code attempts to define addition and multiplication for `Maybe` values, but it does not correctly handle all cases involving `Nothing` values, leading to unexpected behavior.

The `bug.hs` file contains the buggy code. The `bugSolution.hs` file provides a corrected version.

This example highlights the importance of comprehensive case handling when implementing typeclass instances in Haskell.