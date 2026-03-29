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
