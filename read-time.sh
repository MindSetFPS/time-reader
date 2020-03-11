#!/usr/bin/env bash

#for ((a=1; a <= 8; a++))
#do
#    now=$(date +"%T")
#    echo $now
#    gtts-cli -l es "  La. hora. es.  $now " | play -t mp3 -
#    sleep 29m
#done

begin=$(date --date="11:00" +%s)
end=$(date --date="16:00" +%s)
now=$(date +"%s")

echo "chambeando"
echo $begin
echo $now

#        7800 < 
#        begin  <   now and now  <   end        
while [ "$begin" -le "$now" -a "$now" -le "$end" ];
do
    now=$(date +"%s")
    gtts-cli -l es "  La. hora. es.  $now " | play -t mp3 -
    sleep 10s
done

echo $end
echo "acabando"