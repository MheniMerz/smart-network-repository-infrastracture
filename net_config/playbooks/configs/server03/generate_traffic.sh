#!/bin/bash

#ping all leaf nodes to populate the lldp table
# this script will be ran periodically as a cron job

ping -c 4 172.0.1.1 &
ping -c 4 172.0.2.3 &
ping -c 4 172.0.3.5 &
ping -c 4 172.0.4.7 &
ping -c 4 172.0.5.9 &
ping -c 4 172.0.6.11 &
ping -c 4 172.0.7.13 &
ping -c 4 172.0.8.15 &
ping -c 4 172.0.9.17 &
ping -c 4 172.0.10.19 &
ping -c 4 172.0.1.21 &
ping -c 4 172.0.2.23 &
ping -c 4 172.0.3.25 &
