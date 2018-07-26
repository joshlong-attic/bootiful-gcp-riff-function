FN_NAME=${1:-bgrf}
#riff service invoke $FN_NAME  --   --header "Content-type: text/plain" -d "hello knative" -o results.txt
riff service invoke $FN_NAME  --   --header "Content-type: text/plain" -d "hello knative"  
