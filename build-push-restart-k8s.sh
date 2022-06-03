#!/bin/bash
npm run build
docker build --tag accounts-vue .
docker tag accounts-vue:latest practable/accounts:vue-0.0.0
docker push practable/accounts:vue-0.0.0
#sleep 5
kubectl rollout restart deployment vue-acc-service
echo "https://core.prac.io/accounts-vue"
