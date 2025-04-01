# Helm Installation Commands

## Install nginx-ingress Controller
Add the Bitnami repository and install the ingress controller:
```shell
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm install nginx-ingress bitnami/nginx-ingress-controller --namespace ingress-nginx --create-namespace
