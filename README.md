# Haskell's Laziness and Infinite Lists

This repository demonstrates a common pitfall in Haskell programming related to lazy evaluation and infinite lists.  Improper handling of these can lead to unexpected behavior, including non-termination or incorrect results. The `bug.hs` file shows a problem case. The `bugSolution.hs` file provides a solution and a more robust approach.

**Bug Description:**

The primary issue is the potential for infinite computation when dealing with functions like `sort` and `map` on potentially infinite lists.  In this particular example, sorting an infinite list would never complete, leading to a program that runs indefinitely.  Furthermore, using functions that create new lists from existing infinite lists needs careful management to avoid non-termination.

**Solution:**

The solution involves carefully managing data structures and using techniques like `take` to process only a finite portion of an infinite list at a time. The solution also showcases safer usage of `map` and similar functions with infinite lists.