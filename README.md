# Prerequisites:
storage team server
to install:

```
git clone https://github.com/ldevr2t1/docker_storage_worker.git
docker-compose up -d
```

#Optional:

Change storage URL in FLASK controllers to storage container

Currently point to global storage on AWS

#Usage:

For Ubuntu:

```
"./install-docker.sh" on Ubuntu
```

OR

Install docker and docker-compose >= 1.11

Pull the image:

```
"docker pull jth2279/pathfinding_dockerized:not_crashing"
```

Start the swarm (MUST BE ON A MANAGER SERVER: 

```
"sudo ./pathfinding_service.sh"
```

#Testing

Change "value" in External_Test_Docker/postmanDockerBuild/assignment5.postman_environment.json to the servers IP address

Currently points to a 3 node swarmed server 

RUN:

```
"docker build External_Test_Docker/postmanDockerBuild/."
```
