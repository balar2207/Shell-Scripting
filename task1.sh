#!/bin/bash
#To use for loop and create 100 files of size 5MB each.
cd /App
pwd
echo "Changed the working directory to /App"
for f in file{1..100}.txt
do
    fallocate -l 5M "$f"
done
stat --printf="%U\t%n\t%s" /App/* > /root/DevOps_Class/ls_report.txt
cd /root/DevOps_Class/
pwd
echo "Changed to working directory /root/DevOps"
echo "The report is generated under /root/DevOps"
ls -larth ls_report.txt
sleep 2
echo "removing all the files created by this script under /App"
rm -rf /App/file*
echo "***************The End Of File***************"
