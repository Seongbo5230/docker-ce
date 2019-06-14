# Basic Docker Info

## Docker Installation and Configuration

#### upgrade docker-ce and docker-ce-cli version
`sudo apt-get install -y docker-ce=5:18.09.5~3-0~ubuntu-bionic docker-ce-cli=5:18.09.5~3-0~ubuntu-bionic # docker-ce and docker-ce-cli version goes here`

#### downgrade docker-ce and docker-ce-cli version
`sudo systemctl stop docker`
`sudo apt-get remove -y docker-ce docker-ce-cli`
`sudo apt-get update -y`
`sudo apt-get install -y docker-ce=5:18.09.4~3-0~ubuntu-bionic` `docker-ce-cli=5:18.09.4~3-0~ubuntu-bionic # docker-ce and docker-ce-cli version goes here`

#### change settings via /etc/docker/daemon.json


### swarm manager
##### To become manager
`docker swarm init --advertise-addr <private-ip>`
#### To create token for workers
`docker swarm join-token worker`

### swarm nodes
`docker swarm join --token <token goes here>`



#### create backup on the manager
`sudo systemctl stop docker`
`sudo tar -zvcf backup.tar.gz /var/lib/docker/swarm`
`sudo systemctl start docker`

#### restore from backup
`sudo systemctl stop docker`
`sudo rm -rf /var/lib/docker/swarm/*`
`sudo tar -zvxf backup.tar.gz -C /var/lib/docker/swarm/`
`sudo systemctl start docker`
`docker node ls`

----------------------------------------------------------

## Docker Image Creation, Management and Registry

### After you build a Dockerfile, run it with
`docker build -t <directory name where Dockerfile exists> .`
### Then run image with
`docker run -d -p 8080:80 <directory name where Dockerfile exists>`
`curl localhost:8080`
