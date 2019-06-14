# docker-ce

### upgrade docker-ce and docker-ce-cli version
`sudo apt-get install -y docker-ce=5:18.09.5~3-0~ubuntu-bionic docker-ce-cli=5:18.09.5~3-0~ubuntu-bionic # docker-ce and docker-ce-cli version goes here`

### downgrade docker-ce and docker-ce-cli version
`sudo systemctl stop docker`
`sudo apt-get remove -y docker-ce docker-ce-cli`
`sudo apt-get update -y`
`sudo apt-get install -y docker-ce=5:18.09.4~3-0~ubuntu-bionic` `docker-ce-cli=5:18.09.4~3-0~ubuntu-bionic # docker-ce and docker-ce-cli version goes here`
