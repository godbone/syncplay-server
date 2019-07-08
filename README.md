# syncplay-server
Dockerfile for a syncplay server

![syncplay](http://syncplay.pl/wp-content/uploads/2012/12/SyncplayIcon128.png) 

[Syncplay](http://syncplay.pl/)

## Usage

```
docker create \
--name=syncplay \
--net=host \
-e PASSWORD=<PASSWORD> \
-e PORT=<PORT> \
-e TLS=<TLS> \
godbone/syncplay-server
```

## Docker Deploy
There is a Docker deploy file available under Deployment.
Simply replace or remove the PASSWORD and you are good to go.
To deploy run
```
docker stack deploy -c docker-compose.yml syncplay
```