#!/usr/bin/env bash

mkdir -p $GITHUB_WORKSPACE/.kube/
echo "$KUBE_CONFIG" | base64 -d > $GITHUB_WORKSPACE/.kube/config
