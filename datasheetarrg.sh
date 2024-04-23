#! /bin/bash
###########################################################################################
# THIS BASH SHELL FILE IS USED TO PROCESS THE DATA BETWEEN THE DATASHEET AND SILVACO SIMULATION, RESPECTIVELY.
###########################################################################################
# ask for the file needed to be processed
###########################################################################################
echo -n "input the objective file:"
read file
###########################################################################################
# check if the file name can match the specific strings, such as containing idvg 
###########################################################################################
if [[ $file == *idvg* ]] 
then
###########################################################################################
# the data in 5th column of the file content should be devided by 0.5, then output to "file1"
###########################################################################################
awk '$5 % 0.5 == 0' $file > file1
###########################################################################################
# delete the lines before 21th line in file1, then output to "file2"
###########################################################################################
awk 'NR>=21{print}' file1 > file2
###########################################################################################
#awk '{print $10}' file2
#awk '{print $2}' datasheet_idvg.txt
# CHANGE THE DATA TYPE OF THE DATA FROM DATASHEET FROM FLOATING TO SCIENTIFIC NOTATION
# THEN OUTPUT TO "file4" 
###########################################################################################
awk '{for(i=1; i<=NF; i++) {printf("%E\t",$i)};{printf("\n")}}' datasheet_idvg.txt > file4
###########################################################################################
# extract the second column in "datasheet_idvg.txt" and insert them into the 4th and 10th column in "file2",
# then output to "file3"
###########################################################################################
awk 'FNR==NR{a[NR]=$2;next}{$4=-a[FNR];$10=a[FNR]}1' file4 file2 > file3
sed -i '21,$d' file1
cat file3 >> file1
###########################################################################################
else if [[ $file == *idvd* ]] 
then
###########################################################################################
# the data in 5th column of the file content should be devided by 0.5, then output to "file1"
###########################################################################################
awk '$8 % 0.5 == 0' $file > file1
###########################################################################################
# delete the lines before 21th line in file1, then output to "file2"
###########################################################################################
awk 'NR>=21{print}' file1 > file2
###########################################################################################
#awk '{print $10}' file2
#awk '{print $2}' datasheet_idvg.txt
# extract the second column in "datasheet_idvg.txt" and insert them into the 4th and 10th column in "file2",
# then output to "file3"
###########################################################################################
awk '{for(i=1; i<=NF; i++) {printf("%E\t",$i)};{printf("\n")}}' datasheet_idvg.txt > file4
awk 'FNR==NR{a[NR]=$2;next}{$4=-a[FNR];$10=a[FNR]}1' file4 file2 > file3
sed -i '21,$d' file1
cat file3 >> file1
###########################################################################################
else
    echo "there is no such file named "$file
fi
rm file2 file3 file4
# check if the file name can match the specific strings, such as containing idvg 
#if [[ $file == *idvd* ]] 
#then
# the data in 5th column of the file content should be devided by 0.5, then output to "file1"
#awk '$8 % 0.5 == 0' $file > file1
# delete the lines before 21th line in file1, then output to "file2"
#awk 'NR>=21{print}' file1 > file2
#awk '{print $10}' file2
#awk '{print $2}' datasheet_idvg.txt
# extract the second column in "datasheet_idvg.txt" and insert them into the 4th and 10th column in "file2",
# then output to "file3"
#awk 'FNR==NR{a[NR]=$2;next}{$4=-a[FNR];$10=a[FNR]}1' datasheet_idvd.txt file2 > file3
#sed -i '21,$d' file1
#cat file3 >> file1
#fi
#awk 'BEGIN{for(NR=20;NR<=61;NR++) {print NR,$0}}' file1 > file2
#for V in `awk '{print $2}' datasheet_idvg.txt`
#do
    #echo $i   
#    awk -v value=$V '$4 == value' file2 > file3
    
#done

#cat file2
