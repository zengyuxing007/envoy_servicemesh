#!/bin/bash

## create deployment and svc

kubectl apply -f  service_a_deployment-withinit.yaml
kubectl apply -f service_a_svc.yaml


kubectl apply -f  service_b_deployment-withinit.yaml
kubectl apply -f service_b_svc.yaml


kubectl apply -f  service_c_deployment-withinit.yaml
kubectl apply -f service_c_svc.yaml


## create ingress

kubectl apply -f ingress.yaml
