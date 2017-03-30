Prerequisits:
storage team server
to install:
	git clone https://github.com/ldevr2t1/docker_storage_worker.git
	docker-compose up -d

Optional:
Change storage URL in FLASK controllers to storage container
Currently point to global storage on AWS

Usage:
1a.) "./install-docker.sh" on Ubuntu
1b.) install docker and docker-compose >= 1.11
2.) "docker pull jth2279/pathfinding_dockerized:not_crashing"
3.) "sudo ./pathfinding_service.sh" to start swarm (MUST BE ON MANAGER SERVER)

Testing
1a.) Change "value" in External_Test_Docker/postmanDockerBuild/assignment5.postman_environment.json to the servers IP address
1b.) Currently points to a 3 node swarmed server 
2.) "docker build External_Test_Docker/postmanDockerBuild/."
