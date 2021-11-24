#!/bin/bash
cd /app
# sleep 2
java -jar /app/*.jar \
|| java -jar /app/*.jar \
|| java -jar /app/*.jar \
|| tail -F /etc/passwd
