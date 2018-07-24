
source ~/josh-env-ubuntu/bin/gcp/gke.sh

export GCP_PROJECT=$PROJECT_ID
echo "GCP_PROJECT: $GCP_PROJECT"

#export SERVICE_HOST=`kubectl get route upper -o jsonpath="{.status.domain}"`
export SERVICE_HOST=bootiful-gcp-riff-function.default.example.com
echo "SERVICE_HOST: $SERVICE_HOST"

export SERVICE_IP=`kubectl get svc knative-ingressgateway -n istio-system -o jsonpath="{.status.loadBalancer.ingress[*].ip}"`
echo "SERVICE_IP: $SERVICE_IP"

curl -w '\n' --header "Host:$SERVICE_HOST" --header "Content-Type: text/plain" http://${SERVICE_IP} -d knative
