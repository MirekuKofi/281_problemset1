#!/bin/bash

# assign arguments

BASIS=$1
FORMAT=$2
ELEMENTS=$3

# DEBUG error: cannot leave spaces inbetween =
# main URL
MAIN_URL="https://www.basissetexchange.org"

URL="${MAIN_URL}/api/basis/${BASIS}/format/${FORMAT}/?elements=${ELEMENTS}"

#download file
echo "File download from ${URL} in progress. Loading ..."
wget -O ${BASIS}.${FORMAT} "${URL}"
echo "Download completed: ${BASIS}.${FORMAT}"

# print
cat ${BASIS}.${FORMAT}
