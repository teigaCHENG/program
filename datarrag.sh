#!/bin/bash
#
# command form: command $1 $2
# $1: target file
# $2: target folder place
# goto the shared folder
sharef=/mnt/hgfs/VMware_redhat_data/VDS06/multi_subband/
#
# copy&transfer .dat file into .txt file
if [ -f $1.dat ]
then
cp $1.dat $1.txt
#
# trim useless content in new .txt file
# in case from 1st to 48th lines need to be deleted
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
#
# copy the generated file to share folder
# $2 shows the destinated location where to copy the result files into
cp $1.new.1stsub.txt $1.new.2ndsub.txt $1.new.3rdsub.txt $1.new.4thsub.txt $1.new.dg1stsub.txt $1.new.dg2ndsub.txt $sharef/$2/
#
#copy&transfer .log file into  .txt file
elif [ -f $1.log ]
then
cp $1.log $1.txt
sed -i '1,22d' $1.txt
gawk '{print $2, $3}' $1.txt > $1.trans.txt
cp $1.trans.txt $sharef/$2/
else
	echo "not usefull files" 
fi
