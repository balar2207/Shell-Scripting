#!/bin/bash
#To use for loop and create 10 files of size 1MB each.
cd /App
echo "Changed the working directory to $(pwd)"
for d in dir1
do
    mkdir -p $d
    cd $d
    for f in file1{1..10}.txt
    do
      fallocate -l 1M "$f"
      chmod 777 $f
      done
done
echo "Finished creating files with permission 777"
find /App/* -type f -perm 0777 | ls -larth  > /root/DevOps_Class/chmod_report.txt
echo "Finished searching files with permission 777"
cd /root/DevOps_Class/
echo "Changed to working directory $(pwd)"
echo "The report is generated under $(pwd)"
ls -larth chmod_report.txt
sleep 2
echo "removing all the files created by this script under /App"
rm -rf /App/*
sleep 2
echo "***************The End Of File***************"
