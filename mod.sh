# bash
# THIS SCRIPT IS USED FOR NETLIST MANIPULATION 
# 
# 20210826
#
# SUBSTITUTE KEYWORD "RR, CC , $W, $L" WITH "XRR, XCC, W, L"
#sed -i -e 's/RR/XRR/g ; s/CC/XCC/g ; s/\$W/W/g ; s/\$L/L/g' ./LY2632_New1.cdl
# 
#sed -i -e 's/ \$\[/ / ; s/\] / /g' ./LY2632_New1.cdl
#sed -i -e 's/\]//g ; s/\$\[//g' ./LY2632_New1.cdl
#grep "[0-9]\{2,\}\.[0-9]\{3,\}."
#sed -e 's/[0-9]$K//g ; s/[0-9]$f//g ; s/[0-9]$p//g' ./LY2632_New1.cdl
#grep "\$\[\w*\]" LY2632_New1.cdl > 1.txt
#sed -e 's/RR/XRR/g ; s/CC/XCC/g ; s/\$\[//g ; s/\]//g ; s/$W/W/g ; s/$L/L/g' 1.txt

#sed -i 's/\$\[rnpoly\]/rnpoly/g' LY2632_New1.cdl
#sed -i 's/\$\[hrpolyu\]/hrpolyu/g' LY2632_New1.cdl
#sed -i 's/\$\[rppolyu\]/rppolyu/g' LY2632_New1.cdl
#sed -i 's/\$\[min_cap_6\]/min_cap_6/g' LY2632_New1.cdl
#sed -i 's/\$\W/W/g' LY2632_New1.cdl
#sed -i 's/\$\L/L/g' LY2632_New1.cdl
sed -i -e 's/\$\[rnpoly\]/rnpoly/g ; s/\$\[hrpolyu\]/hrpolyu/g ; s/\$\[rppolyu\]/rppolyu/g ; s/\$\[mim_cap_6\]/mim_cap_6/g ; s/\$\W/W/g ; s/\$\L/L/g ; s/[0-9]\{1,\}\.[0-9]\{1,\}[\ \Kfp]//g' LY2632_New1.cdl
sed -i -e 's/\RR/XRR/g ; s/\CC/XCC/g ; s/\$\[rnpoly\]/rnpoly/g ; s/\$\[hrpolyu\]/hrpolyu/g ; s/\$\[rppolyu\]/rppolyu/g ; s/\$\[min_cap_6\]/min_cap_6/g ; s/\$W/W/g ; s/\$L/L/g ; s/[0-9]\{1,\}\.[0-9]\{1,\}[\ \Kfp]//g' LY2632_New1.cdl
#sed -i 's/[0-9]\{1,\}\.[0-9]\{1,\}[\K\f\p]//g' LY2632_New1.cdl

#sed -e 's/[0-9]\{1,\}\.[0-9]\{1,\}[\ \Kfp]//g' LY2632_New1.cdl


#grep "[0-9]\{1,\}\.[0-9]\{1,\}[\K\f\p]" LY2632_New1.cdl 
#sed 'w 3.txt' LY2632_New1.cdl
#sed 's/\]//w 3.txt' 2.txt
#sed 's/\$\[//w 4.txt' 3.txt
#grep "^[0-9]f$" ./LY2632_New1.cdl #???
#grep "[0-9]\{1,\}\.[0-9]\{1,\}[\ \K\f\p]" LY2632_New1.cdl | cut -d ' ' -f 4

