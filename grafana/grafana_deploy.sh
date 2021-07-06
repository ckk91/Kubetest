#!/usr/bin/env bash

# FROM https://grafana.com/docs/grafana/latest/installation/kubernetes/

set -euo pipefail

kubectl apply -f ./grafana.yaml

# todo loop til container is up
kubectl port-forward service/grafana 3000:3000 &