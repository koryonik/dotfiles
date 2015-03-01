# Get latest container ID
alias docker-last="docker ps -l -q"

# Get container IP
alias docker-ip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"

# Enter in a running container
docker-enter() { docker exec -it $1 /bin/bash; }

# Tail log file in a container
docker-tail(){ docker exec -it $1 /bin/bash -c "tail -f $2"; }
