#!/usr/bin/env bash

# Script to download files

# Get local [ath]
localpath=$(pwd)
echo "Local path: $localpath"

# Define the RDF URLs
rdf_urls="
https://nlmpubs.nlm.nih.gov/projects/mesh/rdf/mesh.nt.gz
https://nlmpubs.nlm.nih.gov/projects/mesh/rdf/service_description.ttl
https://nlmpubs.nlm.nih.gov/projects/mesh/rdf/vocabulary_1.0.0.ttl
https://nlmpubs.nlm.nih.gov/projects/mesh/rdf/void_1.0.0.ttl
"


# Create the download directory
downloadpath="$localpath/download"
echo "Download path: $downloadpath"
mkdir -p "$downloadpath"
cd $downloadpath;

# Download file
wget -P $downloadpath -i <( echo "$rdf_urls" )
