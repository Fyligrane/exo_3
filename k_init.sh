#! /bin/bash

kubectl apply -f exo3.yaml
kubectl create configmap initdb-configmap  --namespace exo3 --from-file src/students.sql