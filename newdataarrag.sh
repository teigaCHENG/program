#!/bin/bash
####################################################
# command form: ./command                          #
####################################################
#echo -n "output to which family folder:"
#read folder
#workf=/home/lhc/SILVACO_DATA
cd /home/lhc/SILVACO_DATA/  
ls VDS06_2subband > listfolder.txt
# goto the shared folder
#sharef=/mnt/hgfs/VMware_redhat_data/
#sharef=/mnt/hgfs/VMware_redhat_data/VDS06/multi_subband
# mkdir
for k in `cat listfolder.txt`
do
#if [ -d $workf/$folder\_2subband/$k ]
#then
#    echo "the $workf/$k directory exists"
#else
#    mkdir $sharef/$k
#fi
#
# copy&transfer .dat file into .txt file
#
#
#echo "FROM /home/lhc/SILVACO_DATA/VDS06_2subband/$folder To $sharef/$folder"
cd /home/lhc/SILVACO_DATA/VDS06_2subband/$k/
echo `pwd`
ls export*.dat > list1.txt
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
gawk '{print $1*1000, $31}' $i.txt > $i.trans.cdbd.txt
# 1st subband (valley #1, #1)
gawk '{print $1*1000, $39}' $i.txt > $i.trans.1stsub.txt
# 2nd subband (valley #1, #2)
gawk '{print $1*1000, $40}' $i.txt > $i.trans.2ndsub.txt
# 3rd subband (valley #2, #1)
gawk '{print $1*1000, $41}' $i.txt > $i.trans.3rdsub.txt
# 4th subband (valley #2, #2)
gawk '{print $1*1000, $42}' $i.txt > $i.trans.4thsub.txt
# 5th subband (valley #3, #1)
gawk '{print $1*1000, $43}' $i.txt > $i.trans.dg1stsub.txt
# 6th subband (valley #3, #2)
gawk '{print $1*1000, $44}' $i.txt > $i.trans.dg2ndsub.txt
#
# output error message
echo 2> err.txt
#
# copy the generated file to share folder
# $2 shows the destinated location where to copy the result files into
cp $i.trans.cdbd.txt $i.trans.1stsub.txt $i.trans.2ndsub.txt $i.trans.3rdsub.txt $i.trans.4thsub.txt $i.trans.dg1stsub.txt $i.trans.dg2ndsub.txt /mnt/hgfs/VMware_redhat_data/VDS06_2subband/$k/
fi
done

cd /home/lhc/SILVACO_DATA/VDS06_2subband/$k/
if [ -f allmax ] 
then
    rm -rf allmax
fi
if [ -f enrglvlvsvgs.txt ]
then 
    rm -rf enrglvlvsvgs.txt
fi
if [ -f voltage ]
then 
    rm -rf voltage
fi
if [ -f allzmax ]
then
    rm -rf allzmax
fi
if [ -f maxlocation ]
then
    rm -rf maxlocation
fi

ls export*.dat.trans.1stsub.txt > list.temp1
for l in `cat list.temp1`
do
    if [ -f $l ]
    then
	awk -F " " 'NR==1{max=-1}{a[$2]=$2;max=($2>max)?$2:max}END{print a[max]}' $l >> allmax
	awk -F " " 'NR==1{max=-1}{a[$2]=$1;max=($2>max)?$2:max}END{print a[max]}' $l >> maxlocation
    fi
done

awk 'BEGIN{for (i=0;i<=1;i+=.1) print i}' >> voltage
paste -d "," voltage allmax > enrglvlvsvgs.txt
paste -d "," voltage maxlocation > zmaxvsvgs.txt
cp enrglvlvsvgs.txt zmaxvsvgs.txt /mnt/hgfs/VMware_redhat_data/VDS06_2subband/$k

#
#copy&transfer .log file into  .txt file
for j in `cat list2.txt`
do
if [ -f $j ]
then
cp $j $j.txt
sed -i '1,22d' $i.txt
gawk '{print $2, $3}' $j.txt > $j.trans.txt
cp $j.trans.txt /mnt/hgfs/VMware_redhat_data/VDS06_2subband/$k/
else
	echo "not usefull files" 
fi
done
done