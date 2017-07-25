# aws dynamodb on local

a docker container that runs [DynamoDB](http://www.dynamodb.com) and [dynamo-admin](https://github.com/aaronshaf/dynamodb-admin)

### use it directly from docker hub
```bash
docker pull hancengiz/dynamodb-local
docker run -p8000:8000 -p8001:8001 hancengiz/dynamodb-local
```

### or build locally and run locally :
```bash
docker build . -t dynamodb_local
docker run -p8000:8000 -p8001:8001 dynamodb_local
```

### navigate to
```bash
http://localhost:8001 for admin UI
```

**source code** :
https://github.com/hancengiz/dynamodb-local

**docker hub** :
https://hub.docker.com/r/hancengiz/dynamodb-local/
