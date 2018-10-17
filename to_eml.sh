count=0
for i in $(find | grep ".pst")
do
    echo "Working on "$i
    readpst -M -b -q -e -o export $i
    count=$((count+1))
done
echo "Total PSTs Converted: " $count
echo "Renaming Folders - Taking out blank spaces"
do
    find -name "* *" -type d | rename 's/ /_/g'
done
