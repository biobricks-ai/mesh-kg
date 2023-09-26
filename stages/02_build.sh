#!/usr/bin/env bash

# Script to process unzipped files and build parquet files

# Get local path
localpath=$(pwd)
echo "Local path: $localpath"

# Set download path
downloadpath="$localpath/download"
echo "Download path: $downloadpath"

# Create brick directory
brickpath="$localpath/brick"
mkdir -p $brickpath
echo "Brick path: $brickpath"

cp -p $downloadpath/*.ttl $brickpath/
base_uri="https://nlmpubs.nlm.nih.gov/projects/mesh/rdf/mesh.nt.gz"
rdf2hdt -i -p -B "$base_uri" download/mesh.nt.gz brick/mesh.hdt
