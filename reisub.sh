#!/bin/bash
echo r | sudo tee /proc/sysrq-trigger
sleep 2.5
echo e | sudo tee /proc/sysrq-trigger
sleep 2.5
echo i | sudo tee /proc/sysrq-trigger
sleep 2.5
echo s | sudo tee /proc/sysrq-trigger
sleep 2.5
echo u | sudo tee /proc/sysrq-trigger
sleep 2.5
echo b | sudo tee /proc/sysrq-trigger
