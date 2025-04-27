#!/bin/bash

#for i in 1 2 3; do
#	echo $i
#done

#for i in {1..5}; do
#	echo $i
#done

num=5
while [ $num -gt 0 ]; do
	echo $num
	num=$((num-1))
done
