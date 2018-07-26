FN_NAME=${1:-uppercase}
riff service invoke $FN_NAME  --   --header "Content-type: text/plain" -d "hello knative"
