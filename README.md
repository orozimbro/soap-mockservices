# soap-mockservices
mock-services using soapui

## build and run
```
$ git clone https://github.com/orozimbro/soap-mockservices.git
$ cd soap-mockservices
$ docker rm -f soap-mocks ; docker rmi my-soap-mock:latest; docker build -t my-soap-mock .; docker run -d -p 8080:8080 --name soap-mocks my-soap-mock; docker logs -f soap-mocks
```
