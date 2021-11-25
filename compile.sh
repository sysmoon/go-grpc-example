#!/bin/bash

protoc -I . \
    -I protos/vpdata \
    --grpc-gateway_out . \
    --grpc-gateway_opt logtostderr=true \
    --grpc-gateway_opt paths=source_relative \
    --grpc-gateway_opt generate_unbound_methods=true \
    protos/vpdata/vp_msg.proto
