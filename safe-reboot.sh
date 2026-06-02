#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Error: This script must be run with sudo privileges."
  echo "Usage: sudo $0"
  exit 1
fi

echo 1 > /proc/sys/kernel/sysrq

echo "Initiating safe emergency reboot (REISUB)..."

# R: Switch keyboard from raw mode to XLATE
echo r > /proc/sysrq-trigger
sleep 1

# E: Send SIGTERM to all processes except init
echo e > /proc/sysrq-trigger
sleep 2

# I: Send SIGKILL to all processes that didn't shut down cleanly
echo i > /proc/sysrq-trigger
sleep 2

# S: Flush all cached data to disk (Sync)
echo s > /proc/sysrq-trigger
sleep 2

# U: Remount all filesystems as Read-Only to prevent corruption
echo u > /proc/sysrq-trigger
sleep 2

# B: Reboot the machine immediately
echo b > /proc/sysrq-trigger
