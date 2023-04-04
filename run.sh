#!/bin/bash
set -x -e
firtool --version
which firtool
for folder in chisel3-5 chisel3-6;
do
	cd $folder
	sbt "runMain Example"
	sbt "runMain DetectTwoOnes"
	cd ..
done