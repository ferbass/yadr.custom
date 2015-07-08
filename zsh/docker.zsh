docker-machine start
eval "$(docker-machine env dev)"

export DOCKER_TLS_VERIFY=1
export DOCKER_CERT_PATH="/Users/ferbass/.docker/machine/machines/dev"
export DOCKER_HOST=tcp://192.168.99.100:2376

