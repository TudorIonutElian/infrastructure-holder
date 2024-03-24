#!/bin/bash

function generateVariable() {
    echo -e "/********************************************" >> variables.tf
    echo -e "/*** \t Variable generated automatically with **" >> variables.tf
    echo -e "/*** \t\t Params received \n \t\t\t param 1: $1 \n \t\t\t param 2: $2 \n \t\t\t param 3: $3" >> variables.tf
    echo -e "********************************************/" >> variables.tf

    echo "variable "\"$1\"" {" >> variables.tf
    echo -e "type = $2" >> variables.tf
    echo -e "default = [ \n $3 \n ]" >> variables.tf
    echo -e "}" >> variables.tf
}