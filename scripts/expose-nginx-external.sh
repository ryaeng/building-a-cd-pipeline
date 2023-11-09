#!/bin/bash

kubectl expose deployment web --port=80 --type=LoadBalancer
