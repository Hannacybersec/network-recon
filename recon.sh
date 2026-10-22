#!/bin/bash

echo "===================================="
echo " Fast Network Reconnaissance Tool"
echo "===================================="

read -p "Enter target IP: " TARGET

REPORT="recon_report.txt"

echo "[+] Target: $TARGET" > "$REPORT"
echo "[+] Scan started: $(date)" >> "$REPORT"
echo "" >> "$REPORT"

echo "[1] Host Discovery"
echo "------------------" >> "$REPORT"
nmap -sn "$TARGET" >> "$REPORT"

echo "" >> "$REPORT"
echo "[2] Port Scan"
echo "------------" >> "$REPORT"
nmap --top-ports 100 "$TARGET" >> "$REPORT"

echo "" >> "$REPORT"
echo "[3] Service Detection"
echo "--------------------" >> "$REPORT"
nmap -sV --top-ports 100 "$TARGET" >> "$REPORT"

echo "" >> "$REPORT"
echo "[+] Scan completed: $(date)" >> "$REPORT"

echo ""
echo "[+] Reconnaissance completed!"
echo "[+] Report saved as: $REPORT"
