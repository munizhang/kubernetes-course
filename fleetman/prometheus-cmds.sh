kubectl create ns monitoring
helm install monitoring stable/prometheus-operator --namespace monitoring 
kubectl config view --minify
#alertmanager
kubectl logs -n monitoring alertmanager-kube-prometheus-0