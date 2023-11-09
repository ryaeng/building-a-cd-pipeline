#!/bin/bash

kubectl get service my-juice-shop 

# Get the external port and a random node's external IP in order to curl
NODE_IP=$(kubectl get nodes -o wide | awk '{ print $7 }' | grep -v EXTERNAL-IP | shuf -n 1)
PORT=$(kubectl get service my-juice-shop -o jsonpath={..nodePort})

echo
curl $NODE_IP:$PORT/
