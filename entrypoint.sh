#!/bin/sh -l
mkdir -p /root/.kube
echo "$KUBECONFIG" > /root/.kube/config64
base64 -d /root/.kube/config64 > /root/.kube/config

/usr/local/bin/kubectl --kubeconfig /root/.kube/config "$@"