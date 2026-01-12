# hytale-docker
Docker configuration for hytale.
⚠️ Please note that this was created before Hytale was released and may contain bugs. ⚠️

# Install
```
git clone https://github.com/Under-scape/hytale-docker && cd hytale-docker 
```

## Create your Hytale server with Docker
### 1. Build Hytale Image (Once)
```
docker buildx build -t hytale .
```
### 2. Create containeur (Once)
```
docker run -d -it --name hytale-server -p 25565:25565 --entrypoint ./EntryPoint.sh -v .:/server hytale
```
### 3. View logs (-f = live)
```
docker logs -f hytale-server
```
### 4. Console 
```
docker attach hytale-server --detach-keys='ctrl-c'
```

## Official Doc : 
- Link : https://support.hytale.com/hc/en-us/articles/45326769420827-Hytale-Server-Manual