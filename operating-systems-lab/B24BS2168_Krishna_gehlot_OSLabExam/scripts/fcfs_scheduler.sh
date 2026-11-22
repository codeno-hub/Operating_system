#!/bin/bash

read -p "Enter number of processes: " n

if [ "$n" -lt 1 ]; then
    echo "Invalid number of processes"
    exit 1
fi

declare -a arrival
declare -a burst
declare -a finish
declare -a tat
declare -a wt

for ((i=0; i<n; i++))
do
    echo "Process P$((i+1))"

    read -p "Arrival Time: " arrival[$i]
    read -p "Burst Time: " burst[$i]
done

clock=0
total_wt=0
total_tat=0

echo ""
printf "%-10s %-5s %-5s %-8s %-5s %-5s\n" \
"Process" "AT" "BT" "Finish" "TAT" "WT"

for ((i=0; i<n; i++))
do
    if [ "$clock" -lt "${arrival[$i]}" ]; then
        clock=${arrival[$i]}
    fi

    start=$clock

    clock=$((clock + burst[i]))

    finish[$i]=$clock
    tat[$i]=$((finish[i] - arrival[i]))
    wt[$i]=$((start - arrival[i]))

    total_wt=$((total_wt + wt[i]))
    total_tat=$((total_tat + tat[i]))

    printf "%-10s %-5s %-5s %-8s %-5s %-5s\n" \
    "P$((i+1))" "${arrival[$i]}" "${burst[$i]}" \
    "${finish[$i]}" "${tat[$i]}" "${wt[$i]}"
done

echo ""

avg_wt=$(awk -v t="$total_wt" -v n="$n" \
'BEGIN {printf "%.2f", t/n}')

avg_tat=$(awk -v t="$total_tat" -v n="$n" \
'BEGIN {printf "%.2f", t/n}')

echo "Average Waiting Time: $avg_wt"
echo "Average Turnaround Time: $avg_tat"

