#!/bin/bash

MOVIES=("RRR" "DjTillu" "murari" "Salaar")

# size of above array is 4.
# index are 0,1,2,3

# list always starts with 0.

echo "First Movie is: ${MOVIES[0]}"
echo "First Movie is: ${MOVIES[1]}"
echo "First Movie is: ${MOVIES[@]}"
echo "Best Movie is : ${MOVIES[3]}"