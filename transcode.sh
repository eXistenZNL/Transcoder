#!/bin/sh

FILENAME_OLD=$1
FILENAME_NEW=$(echo $1 | sed s/265/264/g)

echo "Transcoding from $FILENAME_OLD to $FILENAME_NEW..."

avconv -i $FILENAME_OLD -c:a copy -x265-params crf=25 $FILENAME_NEW
