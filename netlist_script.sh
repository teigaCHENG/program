# bash
# THIS SCRIPT IS USED FOR NETLIST MANIPULATION 
# 
# 20210826
#
# SUBSTITUTE KEYWORD 
# 将RR变为XRR，CC变为XCC，$[rnpoly]、$[hrpolyu]、$[rppolyu]去掉$[]，$W/、$L去掉$
# 电阻值、电容值为无
# sed -i -e 's/替换内容' 文件名 
#
sed -i -e 's/\RR/XRR/g ; s/\CC/XCC/g ; s/\$\[rnpoly\]/rnpoly/g ; s/\$\[hrpolyu\]/hrpolyu/g ; s/\$\[rppolyu\]/rppolyu/g ; s/\$\[mim_cap_6\]/mim_cap_6/g ; s/\$W/W/g ; s/\$L/L/g ; s/[0-9]\{1,\}\.[0-9]\{1,\}[\ \Kfp]//g' LY2632_New1.cdl

