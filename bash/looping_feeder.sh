#!/bin/bash

INPUT_FILE=tmp/data_feed.txt
OUTPUT_FOLDER=tmp/data_in/

while : 
do
    echo "About to drop file " $INPUT_FILE " into " $OUTPUT_FOLDER
    ##cp $INPUT_FILE $OUTPUT_FOLDER/
    
    ##sleep 10s
    
    ## In case we want it less deterministic:
    ## sleep $[ ( $RANDOM % 10 )  + 1 ]s
    
    ## For a shorter sleep:
    #
    echo "sleep .$[ ( $RANDOM % 10 ) + 1 ]s"
    sleep .$[ ( $RANDOM % 10 ) + 1 ]s
    #
    ##  or even hundredth of a second:
    #
    #sleep .0$[ ( $RANDOM % 10 ) + 1 ]s
    #
done
