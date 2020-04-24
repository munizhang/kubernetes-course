kubectl create ns monitoring
helm install monitoring stable/prometheus-operator --namespace monitoring 
kubectl config view --minify