FROM postman/newman_ubuntu1404
COPY Team_2_Pathfinding_API.postman_collection.json /etc/newman

COPY assignment5.postman_environment.json /etc/newman

RUN ["newman", "run", "/etc/newman/Team_2_Pathfinding_API.postman_collection.json", "-e", "/etc/newman/assignment5.postman_environment.json"]

