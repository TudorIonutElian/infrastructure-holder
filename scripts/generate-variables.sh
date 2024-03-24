#!/bin/bash

source helpers/generate-variable.sh
source helpers/clear-variables.sh

clearVariables
# Read the file and add each line into an array
mapfile -t bucket_resources_lines < <(tr -d '\r' < resources/infra-bucket-list.txt)
mapfile -t dynamo_resources_lines < <(tr -d '\r' < resources/infra-bucket-list.txt)

# Start the bucket_string with the opening bracket
bucket_string=''

# Add each line to the bucket_string, surrounded by quotes
for index in "${!bucket_resources_lines[@]}"; do
    if [ $index -eq 0 ] || [ ${#bucket_resources_lines[@]} -eq 1 ]; then
        bucket_string="\"${bucket_resources_lines[$index]}\""
    else
        bucket_string="$bucket_string, \n \"${bucket_resources_lines[$index]}\""
    fi
done

generateVariable "s3_bucket_list" "list(string)" "$bucket_string"


# Start the dynamo_string with the opening bracket
dynamo_string=''
# Add each line to the dynamo_string, surrounded by quotes
for index in "${!dynamo_resources_lines[@]}"; do
    if [ $index -eq 0 ] || [ ${#dynamo_resources_lines[@]} -eq 1 ]; then
        dynamo_string="\"${dynamo_resources_lines[$index]}\""
    else
        dynamo_string="$dynamo_string, \n \"${dynamo_resources_lines[$index]}\""
    fi
done

generateVariable "dynamo_table_list" "list(string)" "$dynamo_string"
terraform fmt
