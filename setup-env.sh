#!/bin/sh
export HOST_FQDN=$(kubectl get route knative-build-kaniko-demo --output jsonpath='{.status.domain}' -n knative-build-kaniko-domain)
echo $HOST_FQDN $KNATIVE_INGRESS