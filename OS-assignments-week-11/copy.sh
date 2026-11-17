#!/bin/bash
# copy.sh - Extended data pipeline (Week 11 assignment)

echo "=== Data Pipeline Started: $(date) ==="

# ---- Original pipeline steps (sample data + processing) ----
echo "Step 1: Creating sample data in /tmp"
echo "order1,pizza,250" >  /tmp/orders.txt
echo "order2,burger,180" >> /tmp/orders.txt
echo "order3,pasta,300"  >> /tmp/orders.txt
echo "INFO pipeline started"   >  /tmp/pipeline.log
echo "INFO data loaded"        >> /tmp/pipeline.log

echo "Step 2: Processing orders (total amount)"
total=$(cut -d',' -f3 /tmp/orders.txt | paste -sd+ | bc)
echo "Total order value: $total"

# ---- NEW STEP 1: find .txt and .log files in /tmp ----
echo "Step 3: Locating .txt and .log files in /tmp"
files=$(find /tmp -maxdepth 1 -type f \( -name "*.txt" -o -name "*.log" \) ! -name "summary.txt")
count=$(echo "$files" | grep -c .)
echo "Count of .txt and .log files: $count"
echo "$files"

# ---- NEW STEP 2: write 3-line summary using echo + >> ----
echo "Step 4: Writing summary to /tmp/summary.txt"
rm -f /tmp/summary.txt
echo "Pipeline run date: $(date)" >> /tmp/summary.txt
echo "Files found (.txt/.log) in /tmp: $count" >> /tmp/summary.txt
echo "Total order value processed: $total" >> /tmp/summary.txt

echo "--- /tmp/summary.txt ---"
cat /tmp/summary.txt
echo "=== Pipeline Completed ==="
