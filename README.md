# Network Reconnaissance & Asset Discovery

A practical network reconnaissance tool built with Bash and Nmap on Kali Linux.

## 📌 Project Overview

This project automates basic network reconnaissance tasks using Nmap.

The tool performs:

- Host discovery
- TCP port scanning
- Service detection
- Automated report generation

The scan results are saved into a report file for later analysis.

## 🛠️ Technologies Used

- Kali Linux
- Bash
- Nmap
- Linux Terminal

## ⚙️ Features

### 1. Host Discovery

Uses Nmap to determine whether the target host is reachable.

```bash
nmap -sn <TARGET_IP>
