#!/bin/bash

# Configuration Variables
SPLUNK_HOST="130.8.20.112"
SPLUNK_PORT="8089"
USERNAME="admin"
PASSWORD="P@ssw0rd" # Replace with your Splunk admin password
#OUTPUT_DIR="/home/user1/proj/splunk"
OUTPUT_DIR="."

# Last minutes - default to 5 minutes
if [ -z "$1" ]; then
  LM=15
else
  LM=$1
fi

echo
echo Using the default $LM minutes
echo

TEMP_RAW="/tmp/splunk_multi_raw_export.csv"

# 1. Fetch Session Token
RESPONSE=$(curl -k -s -X POST "https://$SPLUNK_HOST:$SPLUNK_PORT/services/auth/login?output_mode=json" \
  -d "username=$USERNAME" \
  --data-urlencode "password=$PASSWORD")

SESSION_TOKEN=$(echo "$RESPONSE" | grep -o '"sessionKey":"[^"]*' | cut -d'"' -f4)

if [ -z "$SESSION_TOKEN" ]; then
    echo "$(date): Error: Authentication failed."
    exit 1
fi

# 2. Pull the last 5 minutes of data
curl -k -s -H "Authorization: Splunk $SESSION_TOKEN" \
  --data-urlencode "search=search index=\"history\" earliest=-${LM}m | head 1 | table source, _raw" \
  -d "output_mode=csv" \
  "https://$SPLUNK_HOST:$SPLUNK_PORT/services/search/jobs/export" \
  > "$TEMP_RAW"

# 3. Use Python to parse the CSV perfectly
if [ -f "$TEMP_RAW" ] && [ -s "$TEMP_RAW" ]; then

    python3 -c "
import csv
import os
temp_raw = '$TEMP_RAW'
output_dir = '$OUTPUT_DIR'

with open(temp_raw, mode='r', encoding='utf-8') as f:
    reader = csv.reader(f)
    header = next(reader) # Skip Splunk header row ('source', '_raw')

    for row in reader:
        if len(row) < 2:
            continue

        filename = row[0].strip('\" ')
        raw_data = row[1]

        # Skip Splunk system logs or empty names
        if not filename or filename.startswith('http:') or filename == 'source':
            continue

        target_path = os.path.join(output_dir, filename)

        # Write or append the data cleanly to the correct date-stamped file
        with open(target_path, mode='a', encoding='utf-8') as out_f:
            out_f.write(raw_data + '\n')
"
    # Clean up the extraneous broken files from the previous bad runs
    rm -f "$OUTPUT_DIR"/The "$OUTPUT_DIR"/THE "$OUTPUT_DIR"/data.*"The"* "$OUTPUT_DIR"/data.*"THE"*

    rm -f "$TEMP_RAW"
    echo "$(date): Processing batch completed successfully."
else
    rm -f "$TEMP_RAW"
    echo "$(date): No new data found in the last 15 minutes."
fi

echo
echo List of files
echo -------------
echo
ls -lrt out*.csv 2>/dev/null

echo
echo Usage:
echo pull_splunk X - where X is the number of minutes 
echo
