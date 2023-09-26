#!/usr/bin/env bash

# Script to download files

# Get local [ath]
localpath=$(pwd)
echo "Local path: $localpath"

# Define the checksum URL for the .nt.gz file
checksum_url="https://nlmpubs.nlm.nih.gov/projects/mesh/rdf/mesh.nt.gz.sha1"

# Create the checksum directory
checksumpath="$localpath/checksum"
echo "Checksum path: $checksumpath"
mkdir -p "$checksumpath"
cd $checksumpath;

# Download file
wget -P $checksumpath $checksum_url

echo "Download done."
