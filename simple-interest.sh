#!/bin/bash

# Simple Interest Calculator

echo "===== Simple Interest Calculator ====="

# Input
read -p "Enter Principal: " principal
read -p "Enter Rate of Interest: " rate
read -p "Enter Time (in years): " time

# Validation
if [[ -z "$principal" || -z "$rate" || -z "$time" ]]; then
  echo "Error: All inputs are required."
  exit 1
fi

# Calculation
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Output
echo "-------------------------------------"
echo "Simple Interest = $simple_interest"
echo "-------------------------------------"