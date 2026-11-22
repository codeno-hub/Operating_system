#!/bin/bash

read -p "Enter page size: " page_size

if [ "$page_size" -le 0 ]; then
    echo "Invalid page size"
    exit 1
fi

declare -a page_table
page_table[0]=3
page_table[1]=6
page_table[2]=1
page_table[3]=7

for ((i=1; i<=3; i++))
do
    read -p "Enter logical address: " address

    page=$((address / page_size))
    offset=$((address % page_size))

    echo "Logical Address: $address"
    echo "Page Number: $page"
    echo "Offset: $offset"

    case $page in
        0|1|2|3)
            frame=${page_table[$page]}
            physical=$((frame * page_size + offset))

            echo "Frame Number: $frame"
            echo "Physical Address: $physical"
            ;;
        *)
            echo "Page Fault: invalid page"
            ;;
    esac

    echo ""
done

