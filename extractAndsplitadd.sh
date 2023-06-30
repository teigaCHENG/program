# /bin/bash
# CASE 1
# extract the values of the gate voltages and the drain current,
# then output to the file "draincurrent.txt"
awk -F "," '{print $4, $9}' idvg2.csv > draincurrent.txt


# CASE 2
# seperate values and add the content into files
# set the working folder
opf=/home/user/chengh/chenghe
echo -n "do you want to go on: input [y/n]"
read answer

# create a list file of all folders in the working folder
	for i in `ls $opf` # list all in the working folder
	do 
	if [ -d $i ] # check if there is a folder
	then
		printf "$i\n" >> folder.txt # if yes, print it into folder.txt
	fi
	done

if [ $answer = 'y' ]
then 
# simultenously read the folder file and change content file
	while IFS= read -r folder && IFS= read -r line <&3; do
# add the line into the .header file
    	sed -i "$ a $line" $folder/netlist.header
# add 'endmodule' into the .header file
    	sed -i '$ a endmodule' $folder/netlist.header
	done < folder.txt 3< $opf/tsmc2hhgrace_inst.map
else
	while IFS= read -r folder && IFS= read -r line <&3; do
# clear all additions
  	sed -i '21,$d' $folder/netlist.header
	done < folder.txt 3< $opf/tsmc2hhgrace_inst.map
fi
rm folder.txt*
