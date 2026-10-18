number=$1
if [[ $number -eq 1 ]]; then
  docker exec -it splunk curl -k -u "admin:P@ssw0rd" \
    https://localhost:8089/services/search/jobs/export \
    -d search="search index=_internal | head 10" \
    -d output_mode=csv > splunk_logs.csv

elif [[ $number -eq 2 ]]; then
   curl -k -u admin:P@ssw0rd https://localhost:8089/services/search/jobs/export -d search="search index=main"
elif [[ $number -eq 3 ]]; then
  curl -k -u admin:P@ssw0rd https://localhost:8089/services/search/jobs/export \
    -d search="search index=main | head 10" \
    -d output_mode=json
elif [[ $number -eq 4 ]]; then
  curl -k -u admin:P@ssw0rd https://localhost:8089/services/search/jobs/export \
    -d search="search index=main | head 10" \
    -d output_mode=csv
else
   echo no such number
fi
