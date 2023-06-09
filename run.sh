#!/bin/bash
set -x -e
firtool --version
which firtool
mill tryFirtool.runMain --mainClass Example
mill tryFirtool.runMain --mainClass DetectTwoOnes
mill tryFirtool.runMain --mainClass Memory1R1W
mill tryFirtool.runMain --mainClass Memory1R1WReadFirst
mill tryFirtool.runMain --mainClass Memory1R1WWriteFirst
mill tryFirtool.runMain --mainClass Memory1R1WUndefined
mill tryFirtool.runMain --mainClass Memory1R1WMasked
mill tryFirtool.runMain --mainClass Memory1RW
mill tryFirtool.runMain --mainClass Memory2R2W
mill tryFirtool.runMain --mainClass Memory2RW
mill tryFirtool.runMain --mainClass HardfloatMulAddRecFN