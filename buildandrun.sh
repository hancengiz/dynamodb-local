docker build . -t dynamodb_local
docker run -p8000:8000 -p8001:8001 dynamodb_local