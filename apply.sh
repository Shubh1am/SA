#!/bin/bash

# Specify the namespace where you want to apply the manifests
namespace="webapps"

# Get a list of all YAML files in the current directory
files=$(find . -name "*.yml")

# Apply each YAML file to the specified namespace
for file in $files; do
  kubectl apply -f "$file" -n "$namespace"
done
