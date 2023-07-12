# /bin/bash
awk -F "," '{print $4, $9}' idvg1.csv > draincurrent.txt
awk 'NR>2 && (NR+3)%5==0' draincurrent.txt > draincurrent2.txt
