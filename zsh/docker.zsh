docker_running=$(docker-machine ls | grep dev)
if [[ "$docker_running" == *"Stopped"* ]]
then
    echo "docker-machine is not running"
    read -q "?Start docker machine [y/N] ?" response
    if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
    then
        docker-Machine start dev
        eval "$(docker-machine env dev)"

        export DOCKER_TLS_VERIFY=1
        export DOCKER_CERT_PATH=$HOME/.docker/machine/machines/dev
        export DOCKER_HOST=tcp://192.168.99.100:2376
    fi
elif [[ "$docker_running" == *"Running"* ]]
then
	  eval "$(docker-machine env dev)"
fi
