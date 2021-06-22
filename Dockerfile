# set the base image
FROM golang:alpine

# define working directory in container
WORKDIR $GOPATH/src/app

# copy files from host to container filesystem
COPY . .

# track dependencies
RUN go mod init

# run a command in the directory
RUN go build -o helloworld

# this container exposes port 6111 to the outside world
EXPOSE 6111

# command to run the container on start
CMD [ "./helloworld" ]
