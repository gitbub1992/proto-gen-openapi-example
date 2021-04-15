From golang:1.15

#RUN go get -u github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2
ADD install-proto.sh /
RUN apt-get update &&  apt-get install unzip \ 
    &&  bash /install-proto.sh \ 
    && export GO111MODULE=on && go get -u github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2
