#!/bin/bash

cp rsyslog.conf /etc/rsyslog.conf
systemctl restart rsyslog.service