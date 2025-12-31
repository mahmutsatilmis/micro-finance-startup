#!/bin/bash

echo "=== Simple Interest Calculator ==="

# Kullanıcıdan değerleri al
read -p "Enter Principal Amount: " principal
read -p "Enter Rate of Interest (%): " rate
read -p "Enter Time Period (in years): " time

# Faizi hesapla
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Toplam tutar
total=$(echo "scale=2; $principal + $interest" | bc)

echo
echo "Simple Interest: $interest"
echo "Total Amount (Principal + Interest): $total"
