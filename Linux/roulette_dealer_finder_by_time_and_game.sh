#!/bin/bash
cat Dealer_schedule | awk -F" " '{print $1, $2, $5,$6}'| grep '08:00:00 AM'
