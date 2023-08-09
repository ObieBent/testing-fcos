#!/usr/bin/env bash 

PROJECT_DIR="$PWD"
TERRAFORM_HOSTS_BASE_DIR="$PROJECT_DIR/terraform"
COREOS_STREAM="stable"

echo "Beginning of the installation of ***testing-fcos*** ..."
echo " "

for directory in testing-fcos; do 
	pushd "$TERRAFORM_HOSTS_BASE_DIR/$directory"
	[[ -d .terraform ]] || terraform init 
	terraform apply --var "coreos_stream=$COREOS_STREAM" --auto-approve
	popd
done 

echo "Done."
echo " "
echo "Now we wait for the installation to complete."
