#!/bin/bash
docker build -t morgany .
echo Hyyy
docker login -u morganyy-p morgany2004
docker tag morgany morganyy/dev_miniproj
docker push morganyy/dev_miniproj
kubectl apply -f  deploy.yaml --validate=false
kubectl apply -f svc.yaml --validate=false
