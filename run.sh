#!/bin/bash
set -x -e
firtool --version
which firtool
for folder in chisel3-5 chisel3-6;
do
	cd $folder
	sbt "runMain Example" "runMain DetectTwoOnes" "runMain Memory"
	cd ..
done