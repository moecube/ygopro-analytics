FROM golang

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

WORKDIR /usr/src/app
COPY . /usr/src/app
RUN go get ./...
RUN go build main.go

ENTRYPOINT /usr/src/app/main