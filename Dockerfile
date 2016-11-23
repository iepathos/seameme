FROM golang

ADD . /go/src/github.com/iepathos/seameme
RUN curl https://glide.sh/get | sh
RUN cd /go/src/github.com/iepathos/seameme/server && glide install
RUN go install github.com/iepathos/seameme/server
ENTRYPOINT /go/bin/server

EXPOSE 5000