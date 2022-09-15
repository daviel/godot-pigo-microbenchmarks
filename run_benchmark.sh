#!/bin/bash

declare -a paths=(./2d/hugetilemapzoom ./2d/lights ./2d/physicspeak ./3d/lightsshadow ./3d/massphysics)

echo "STARTING BENCHMARK"
echo ""

for i in "${paths[@]}"
do
   : 
	echo "Starting: $i"
	RESULT=`godot --path $i`
	RESULT=`echo $RESULT | awk '{print $NF}'`
	echo "Result is $RESULT"
	echo ""
done
