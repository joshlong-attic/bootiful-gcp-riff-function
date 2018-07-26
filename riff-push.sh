export PROJECT_ID=$(gcloud config list --format 'value(core.project)')
export GCP_PROJECT=$PROJECT_ID
echo "GCP_PROJECT: $GCP_PROJECT"

FN_NAME=${1:-bgrf}
echo "creating function ${FN_NAME}"

riff function create java $FN_NAME --git-repo https://github.com/joshlong/bootiful-gcp-riff-function.git --artifact "uppercase-0.0.1-SNAPSHOT.jar"  --handler "uppercase" --image gcr.io/$GCP_PROJECT/$FN_NAME
