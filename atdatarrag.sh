1#!/bin/bash
####################################################
# command form: ./command                          #
####################################################
echo -n "output to which folder:"
read folder
# goto the shared folder
sharef=/mnt/hgfs/VMware_redhat_data/VDS06/multi_subband
# mkdir
if [ -d $sharef/$folder ]
then
    echo "the $sharef/$2 directory exists"
else
    mkdir $sharef/$folder
fi
#
# copy&transfer .dat file into .txt file
#
#
echo "FROM /home/lhc/SILVACO_DATA/VDS06_2subband/$folder To $sharef/$folder"
cd /home/lhc/SILVACO_DATA/VDS06_2subband/$folder
ls *.dat > list1.txt
ls *.log > list2.txt
for i in `cat list1.txt`
do
if [ -f $i ]
then
cp $i $i.txt
#
# trim useless content in new .txt file
# in case from 1st to 48th lines need to be deleted
sed -i '1,48d' $i.txt 
#
# select the needed data in columns,
# then output a new .txt file
# conduction band
gawk '{print $1, $31}' $i.txt > $i.trans.cdbd.txt
# 1st subband (valley #1, #1)
gawk '{print $1, $39}' $i.txt > $i.trans.1stsub.txt
# 2nd subband (valley #1, #2)
gawk '{print $1, $40}' $i.txt > $i.trans.2ndsub.txt
# 3rd subband (valley #2, #1)
gawk '{print $1, $41}' $i.txt > $i.trans.3rdsub.txt
# 4th subband (valley #2, #2)
gawk '{print $1, $42}' $i.txt > $i.trans.4thsub.txt
# 5th subband (valley #3, #1)
gawk '{print $1, $43}' $i.txt > $i.trans.dg1stsub.txt
# 6th subband (valley #3, #2)
gawk '{print $1, $44}' $i.txt > $i.trans.dg2ndsub.txt
#
# output error message
echo 2> err.txt
#
# copy the generated file to share folder
# $2 shows the destinated location where to copy the result files into
cp $i.new.cdbd.txt $i.new.1stsub.txt $i.new.2ndsub.txt $i.new.3rdsub.txt $i.new.4thsub.txt $i.new.dg1stsub.txt $i.new.dg2ndsub.txt $sharef/$folder
fi
done
#
#copy&transfer .log file into  .txt file
for i in `cat list2.txt`
do
if [ -f $i ]
then
cp $i $i.txt
sed -i '1,22d' $i.txt
gawk '{print $2, $3}' $i.txt > $i.trans.txt
cp $i.trans.txt $sharef/$folder
else
	echo "not usefull files" 
fi
done
