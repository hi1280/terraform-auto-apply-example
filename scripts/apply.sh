#!/bin/sh -ex

terraform init -input=false -no-color
terraform apply -input=false -no-color -auto-approve | tfnotify --config ${CODEBUILD_SRC_DIR}/tfnotify-apply.yml apply