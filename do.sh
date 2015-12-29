find 201* | grep '/' | awk -F'/' '{print "date: "$1"-"$2}' | while read line; do
  grep "$line" *.md | awk -F':' '{print $1}' | while read ln; do
     dir=`echo $line | awk -F': ' '{print $2}'`
     dir=`echo $dir | sed "s/-/\//g"`
     mv $ln $dir
   done 
done
