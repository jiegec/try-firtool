#!/bin/bash
set -x -e
firtool --version
which firtool
cd chisel3-5
sbt "runMain Example"
cd ..
cd chisel3-6
sbt "runMain Example"
cd ..