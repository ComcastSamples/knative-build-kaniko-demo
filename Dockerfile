FROM golang:1.11.5-alpine3.9

ADD . /knative-build-kaniko-demo

WORKDIR /knative-build-kaniko-demo
RUN go build 

ENTRYPOINT ./knative-build-kaniko-demo

EXPOSE 8080