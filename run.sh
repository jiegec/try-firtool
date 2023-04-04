#!/bin/bash
set -x -e
firtool --version
which firtool
mill tryFirtool.runMain --mainClass Example
mill tryFirtool.runMain --mainClass DetectTwoOnes
mill tryFirtool.runMain --mainClass Memory1R1W
mill tryFirtool.runMain --mainClass Memory1RW
mill tryFirtool.runMain --mainClass HardfloatMulAddRecFN