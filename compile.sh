#!/bin/bash

# gencode
protoc -I=. \
        -I protos/vpdata \
	    --go_out . --go_opt paths=source_relative \
	    --go-grpc_out . --go-grpc_opt paths=source_relative \
	    protos/vpdata/vpresult.proto

# grpc-gateway
protoc -I. \
    -I protos/vpdata \
    --grpc-gateway_out . \
    --grpc-gateway_opt logtostderr=true \
    --grpc-gateway_opt paths=source_relative \
    --grpc-gateway_opt generate_unbound_methods=true \
    protos/vpdata/vpresult.proto
