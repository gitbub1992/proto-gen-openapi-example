#!/bin/sh
docker run --rm -it -v $(pwd):/data -w /data docker.io/evincai/pl-proto-tool protoc -I. --openapiv2_out . --openapiv2_opt logtostderr=true --openapiv2_opt json_names_for_fields=false *.proto
