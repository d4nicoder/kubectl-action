#!/bin/sh -l
KUBEFILE=/kube/config
if test -f "$KUBEFILE";
then
  echo "$KUBEFILE exists"
elif [ ! -n "$KUBECONFIG" ] 
then
  echo "[ERROR] You have to map the config folder or provide the KUBECONFIG environment variable"
  exit 1
else
  mkdir -p /kube
  echo "$KUBECONFIG" > /kube/config64
  base64 -d /kube/config64 > /kube/config
  rm /kube/config64
fi

/usr/local/bin/kubectl --kubeconfig /kube/config "$@"
