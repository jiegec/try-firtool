#!/bin/bash
set -x -e
firtool --version
which firtool
mill tryFirtool.runMain --mainClass Example
mill tryFirtool.runMain --mainClass DetectTwoOnes
mill tryFirtool.runMain --mainClass Memory