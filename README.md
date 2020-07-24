# deno-docker-kubernets
* Build the docker image: `docker build -t deno-server .`
* Run the docker container: `docker run --name deno-container -d -p 60:3000 deno-server`
* Open the served up page by Deno on the browser on port 60: `localhost:60`
