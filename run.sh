#!/bin/bash
set -x -e
firtool --version
which firtool
sbt "runMain Example" "runMain DetectTwoOnes" "runMain Memory"