#!/usr/bin/env bash

# Script to convert RDF .nt.gz to RDF HDT

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
rdf2hdt -i -p -B "$base_uri" $downloadpath/mesh.nt.gz $brickpath/mesh.hdt
