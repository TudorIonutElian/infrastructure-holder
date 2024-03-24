#!/bin/bash

# Function to clear the contents of the variables.tf file.
# This function empties the variables.tf file by overwriting it with an empty file.
function clearVariables() {
    > variables.tf
}