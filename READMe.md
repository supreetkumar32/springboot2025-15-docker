DOCKER

Docker is a tool that lets you package an application and all its dependencies into a single unit called a container,
so it runs the same way everywhere.
“It works on my machine” problem?
Docker solves it.

You build your app once
Put it inside a container
Run it anywhere (your laptop, server, cloud)

What is a container?

A container is:

Lightweight (unlike full virtual machines)
Includes:
Your code
Libraries
Runtime (Python, Node, etc.)

👉 So no dependency issues.

⚙️ How Docker works (basic flow)
You write a Dockerfile (instructions)
Build an image
Run the image → creates a container

🧱 What is a Docker Container?

A Docker Container is:
👉 A running instance of an image

It is:
Executable
Live (running process)
Isolated environment

💡 Think of it like:
👉 Object from a class or actual cooked dish

now, we have to make a docker file to write the commands in it.
now, search maven java 21 docker image in google and search 
write the contents in the docker file
then run the command ( docker build -t product-service:v0.0.1 .) to build the image...at this time docker desktop should be running
docker images(command to check the images)
docker run product-service:v0.0.1 (it is not running in our local http://localhost:8080/products/hello to do this we have to do port forwarding)

stopping the container with ctrl+c
now creating a new version (docker build -t product-service:v0.0.2 .)
docker run -p 8080:8080 product-service:v0.0.1 (for running the image)
now if we hit localhost:8080/products/hello in my local it will show the result

now pushing our docker images to docker hub

////////////////
Push Images To DockerHub
Step 1: Create an Account on Docker hub (hub.docker.com)
Step 2: Run docker login on terminal and provide the username and password
Step 3: Tag the image:
docker tag <image-name>:<version> <username>/<image-name>
Step 4: Push the image:
docker push <username>/<image-name>:<version>
//////////////////////
run the command (docker login)
run the command (docker tag product-service:v0.0.1 supreet32/product-service)
docker push supreet32/product-service:latest

DOCKER COMPOSE
Docker Compose is a tool that makes it easier to create and run multi-container
applications. It automates the process of managing several Docker containers
simultaneously, such as a website frontend, API, and database service.

Docker vs Docker-compose
Docker is a containerization engine that provides a CLI for building, running, and
managing individual containers on your host.
Compose is a tool that expands Docker with support for multi-container management. It
supports “stacks” of containers that are declaratively defined in project-level config
files.

Creating docker-compose.yml
Define the following:
Version
Services
Networks
volumes

Docker compose yml services
services:
• image:
• container_name:
• ports: Maps host machine ports to container ports (e.g., "8080:80" maps port 8080 on
the host to port 80 in the container).
• volumes: Mounts directories or files from the host into the container
• environment: Set environment variables inside the container (e.g.,
POSTGRES_DB=mydatabase).
• depends_on: Ensures that one service starts before this one
• networks: Specifies which networks the service will connect to.

till now we have connected to the database

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline

COPY src ./src

CMD ["./mvnw", "spring-boot:run"]
we have changed the code in the Dockerfile so that we dont have to create the jar file again and again

now, run the command (docker build -t supreet32/product-service .)
check for image (docker images)
now to run the docker-compose.yml file (docker-compose up)
now database got created (not locally....its in docker volume)

now done with some basic spring boot code
we have done some code changes .so stop the docker compose (docker-compose down)
rebuilt the docker image(docker build -t supreet32/product-service .)
then run (docker-compose up)
now, using the postman in local hit the POST url (http://localhost:8080/products)
with body as
{
"title":"Apple"
}

get the products (GET http://localhost:8080/products)