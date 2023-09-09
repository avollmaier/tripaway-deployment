#!/bin/sh

echo "\n📦 Initializing Kubernetes cluster...\n"

ctlptl create cluster minikube --registry=ctlptl-registry --kubernetes-version=v1.28.1

echo "\n📦 Deploying platform services..."

kubectl apply -f services

sleep 5

echo "\n⛵ Happy Sailing!\n"