mvn -f `dirname $0`/pom.xml clean package
cp `dirname $0`/target/uppercase-0.0.1-SNAPSHOT.jar `dirname $0`
git commit -am up
git push 
export PROJECT_ID=$(gcloud config list --format 'value(core.project)')
FN_NAME=${1:-uppercase}
riff function create java $FN_NAME --git-repo https://github.com/joshlong/bootiful-gcp-riff-function.git --artifact "uppercase-0.0.1-SNAPSHOT.jar" --handler "uppercase" --image gcr.io/$PROJECT_ID/$FN_NAME
