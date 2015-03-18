#!/bin/sh
DIALOG=${DIALOG=dialog}

git clone -v --progress https://github.com/jordansissel/fpm.git tmp > clone.log 2>&1 &

$DIALOG --tailbox clone.log 30 80

rm -rf tmp


COUNT=10
(
while test $COUNT != 110
do
echo $COUNT
echo "XXX"
echo "The new\n\message ($COUNT percent)"
echo "XXX"
COUNT=`expr $COUNT + 10`
sleep 1
done
) |
$DIALOG --title "My Gauge" --gauge "Hi, this is a gauge widget" 20 70 0
