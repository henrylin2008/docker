# Use an existing docker image as a base
# docker run -it alpine sh
FROM alpine

# Download and install a dependency
# apk add --update redis   //install redis package
RUN apk add --update gcc
RUN apk add --update redis

# Tell the image what to do when it start as a container
# docker ps to get the running-continer ID
# new terminal:
# docker commit -c 'CMD ["redis-server"]' (running-container ID #)
# docker run (container ID)  //create the new container
CMD ["redis-server"]