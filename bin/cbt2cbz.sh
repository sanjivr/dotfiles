#Convert cbt named as cbz to actual cbz
#Convert GNU Tar Archives named as .cbz to Zip Archives

IFS="$(echo -e "\n\r")"
for i in `ls *.cbz`
do
	j=`basename $i .cbz`
	mkdir -p $j
	tar -xf $i -C $j
done

rm -rf *.cbz

for i in `find . -type d`
do
	j=`basename $i`
	echo $j
	zip -9 -r $j.cbz $j
done
