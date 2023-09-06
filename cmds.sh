kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

kubectl port-forward -n argocd svc/argocd-server 8080:443
kubectl get secret argocd-initial-admin-secret -n argocd -o yaml
echo "output" | base64 --decode