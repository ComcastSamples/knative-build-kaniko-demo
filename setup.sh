#!/bin/sh

echo "############ BUILD TEMPLATES - KANIKO DEMO ##############"

kubectl create ns knative-build-kaniko-domain
kubectl apply -f https://raw.githubusercontent.com/knative/build-templates/master/kaniko/kaniko.yaml -n knative-build-kaniko-domain
kubectl apply -f secret.yml
kubectl apply -f sa-build-bot.yml
kubectl apply -f service.yml