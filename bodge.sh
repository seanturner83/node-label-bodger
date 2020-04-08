#!/bin/bash
while true
do
masters=$(kubectl get no -l role=master -o jsonpath='{.items[*].metadata.name}')
workers=$(kubectl get no -l role=worker -o jsonpath='{.items[*].metadata.name}')
#echo masters are $masters
for i in $masters
do
  #echo $i
  kubectl label node $i kubernetes.io/role=master
done
#echo workers are $workers
for i in $workers
do
  #echo $i
  kubectl label node $i kubernetes.io/role=worker
done
sleep 600
done
