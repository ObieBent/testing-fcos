#!/usr/bin/env bash
set -euo pipefail

# Clean directories and files generated by Terraform
echo " Clean directories and files generated by Terraform ... "

if [[ -d $PWD/terraform/testing-fcos/.terraform || -n "$(find $PWD/terraform/testing-fcos -name 'terraform.tfstate*' -print -quit)" ]]; then
	rm -rf $PWD/terraform/testing-fcos/.terraform*
	rm -f $PWD/terraform.tfstate
	rm -f $PWD/terraform/testing-fcos/terraform.tfstate*
fi