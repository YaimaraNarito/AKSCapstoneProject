##Just writing common commands here for easy copy/paste

##Docker Commands
docker build -t davidsdeveloper/llyd:v2 .

docker run -it --name llyd -d -p 3001:3001 davidsdeveloper/llyd:v2

docker push davidsdeveloper/llyd:v2

##kubernetes commands

#create namespace
kubectl create -f ./kube-manifests/namespace.yaml

#deploy in namespace development
az aks show --resource-group aks-rg3 --name aks-cluster --query nodeResourceGroup -o tsv

az network public-ip create --resource-group <REPLACE-OUTPUT-RG-FROM-PREVIOUS-COMMAND> --name myAKSPublicIPForIngress --sku Standard --allocation-method static --query publicIp.ipAddress -o tsv

kubectl create namespace ingress-basic

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

helm install ingress-nginx ingress-nginx/ingress-nginx \
    --namespace ingress-basic \
    --set controller.replicaCount=2 \
    --set controller.nodeSelector."beta\.kubernetes\.io/os"=linux \
    --set defaultBackend.nodeSelector."beta\.kubernetes\.io/os"=linux \
    --set controller.service.externalTrafficPolicy=Local \
    --set controller.service.loadBalancerIP="REPLACE_STATIC_IP"

kubectl apply -f kube-manifests/

