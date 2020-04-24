kubectl create ns efk
kubectl create storage-efk.yaml
helm install --name elasticsearch elastic/elasticsearch --namespace efk -f es-values.yaml
kubectl apply fluentd-daemonset-elasticsearch-rbac.yaml
helm install --name kibana --namespace efk stable/kibana


#course
kubectl apply -f fluentd-config.yaml 
kubectl apply -f elk-stack.yaml


