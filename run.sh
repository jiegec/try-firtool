#!/bin/bash
export PATH=./firtool-1.34.0/bin:$PATH
cd chisel3-5
sbt "runMain Example"
cd ..
cd chisel3-6
sbt "runMain Example"
cd ..