# Go Hello World

This is a simple Go web application that prints a "Hello World" message.

## Run the application

This application listens on port `6111`

To run the application, use the following command:
```
go run main.go 
```

Access the application on: http://127.0.0.1:6111/

## Build image from Dockerfile, add tag 'go-helloworld'
```
docker build -t go-helloworld .
```

## Run docker image on port 4000
```
docker run -d -p 4000:6111 go-helloworld
```

## Add a tag and version
``
docker tag go-helloworld USERNAME/go-helloworld:v1.0.0
``

## Push to docker hub
``
docker push USERNAME/go-helloworld:v1.0.0
``
