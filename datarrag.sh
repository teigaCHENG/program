#!/bin/bash
#
# copy&transfer .dat file into .txt file
cp $1.dat $1.txt
#
# trim useless content in new .txt file
# in case from 1st and 48th lines need to be deleted
sed -i '1,48d' $1.txt 
#
# select the needed data in columns,
# then output a new .txt file
# 1st subband (valley #1, #1)
gawk '{print $1, $39}' $1.txt > $1.new.1stsub.txt
# 2nd subband (valley #1, #2)
gawk '{print $1, $40}' $1.txt > $1.new.2ndsub.txt
# 3rd subband (valley #2, #1)
gawk '{print $1, $41}' $1.txt > $1.new.3rdsub.txt
# 4th subband (valley #2, #2)
gawk '{print $1, $42}' $1.txt > $1.new.4thsub.txt
# 5th subband (valley #3, #1)
gawk '{print $1, $43}' $1.txt > $1.new.dg1stsub.txt
# 6th subband (valley #3, #2)
gawk '{print $1, $44}' $1.txt > $1.new.dg2ndsub.txt
#
# output error message
echo 2> err.txt
