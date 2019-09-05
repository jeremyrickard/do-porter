SERVICE_NAME=$1
NAMESPACE=$2
echo "Checking IP for $SERVICE_NAME"
EXTERNAL_IP=''
while [ -z $EXTERNAL_IP ]; do
  echo "Waiting for end point..."
  EXTERNAL_IP=$(kubectl get svc $SERVICE_NAME --namespace $NAMESPACE --template="{{range .status.loadBalancer.ingress}}{{.ip}}{{end}}")
  echo $EXTERNAL_IP
  sleep 10
done
echo $EXTERNAL_IP
