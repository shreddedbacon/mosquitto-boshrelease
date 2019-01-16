# Mosquitto BOSH Release

This is a BOSH release for Mosquitto MQTT server.

The package also contains the pub and sub clients which could be used for other jobs or errands

# Usage
## Without SSL
```
bosh -d mosquitto deploy manifests/mosquitto.yml
```
## With SSL
```
bosh -d mosquitto deploy manifests/mosquitto.yml -o manifests/ops/ssl.yml
```

# Development
## Get Blobs
Download the blob from github
```
./get_blobs.sh
```

## Create dev release
Create `mosquitto-boshrelease.tar.gz` as a dev release
```
./create_release.sh
```
## Create a versioned release
Create `mosquitto-boshrelease-v<version>.tar.gz` as a final release
```
./create_release.sh 0.0.1
```

