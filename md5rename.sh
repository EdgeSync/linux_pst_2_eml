count=0
for i in $(find | grep ".eml")
do  
    path=`dirname $i`
    md5=`md5sum ${i}| awk '{print $1}'`
    newfile=`mv ${i} ${path}"/"$md5".eml"`
    count=$((count+1))
done
echo "Total Files Renamed: " $count

