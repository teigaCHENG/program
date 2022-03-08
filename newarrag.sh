cd /home/chengh/桌面/
ls test > list
for k in `cat list`
do
    cd /home/chengh/桌面/test/$k
    ls *.dat > list1.txt
    ls *.log > list2.txt
    for i in `cat list1.txt`
    do
	cp $i $i.trans
    done
    echo "copy files in $k"
done
