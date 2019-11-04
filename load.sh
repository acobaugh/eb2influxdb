#!/usr/bin/env bash

if [ ! -e "$(which csv-to-influxdb)" ] ; then
	go get -v github.com/jpillora/csv-to-influxdb
fi

if [ -z "$1" ] ; then
	echo "Usage: $0 path/to/report.csv"
	echo 
	echo "CSV: Sales By Ticket Type: Since sales started"
	exit 1
fi

csv-to-influxdb -s http://localhost:8086 \
	-ts 'Order Date' \
	-d eb \
	-t 'Ticket Type','Billing State','Billing Zip','Billing Country','Billing City','Last Name','First Name','Email','Order Type','Attendee #' \
	-tf "2006-01-02 15:04:05-07:00" \
	-f \
	$1
