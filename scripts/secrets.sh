#!/bin/bash

kubectl create secret generic redis-master-secret --from-literal=REDIS_PASSWORD=<YOUR_REDIS_PASSWORD> --namespace dev
kubectl create secret generic redis-master-secret --from-literal=REDIS_PASSWORD=<YOUR_REDIS_PASSWORD> --namespace staging
kubectl create secret generic redis-master-secret --from-literal=REDIS_PASSWORD=<YOUR_REDIS_PASSWORD> --namespace prod
