#!/bin/bash
#To scan files under "/" and find files that are greater than 5MB and generate a report.
find / -size +5M -type f -executable -not -path '*/root/*' -exec du -h {} \; | sort -n > 5MB_report.txt


echo "The list is saved under /root/Shell-Scripting-Class/DevOps_Class/reports"

echo "***************The End Of File***************"
