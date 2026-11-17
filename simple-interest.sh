
#!/bin/bash

# Simple Interest Calculator

echo "================================"
echo "    SIMPLE INTEREST CALCULATOR"
echo "================================"

# Get principal amount
read -p "Enter the principal amount: " p

# Get rate of interest
read -p "Enter the rate of interest (%): " r

# Get time period
read -p "Enter the time period (years): " t

# Calculate simple interest
si=$(awk "BEGIN {printf \"%.2f\", ($p * $r * $t) / 100}")

# Calculate total amount
total=$(awk "BEGIN {printf \"%.2f\", $p + $si}")

# Display results
echo ""
echo "---------- RESULT ----------"
echo "Principal Amount : $p"
echo "Rate of Interest : $r%"
echo "Time Period      : $t years"
echo "Simple Interest  : $si"
echo "Total Amount     : $total"
echo "----------------------------"
