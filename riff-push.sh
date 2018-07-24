source ~/josh-env-ubuntu/bin/gcp/gke.sh

export GCP_PROJECT=$PROJECT_ID
echo "GCP_PROJECT: $GCP_PROJECT"

# --git-revision jar
riff function create java bootiful-gcp-riff-function --git-repo https://github.com/joshlong/bootiful-gcp-riff-function.git --artifact "uppercase-0.0.1-SNAPSHOT.jar"  --handler "uppercase" --image gcr.io/$GCP_PROJECT/bootiful-gcp-riff-function
