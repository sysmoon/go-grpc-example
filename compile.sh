#!/bin/bash


# # protos/v1/user/user.proto
# protoc -I=. \
# 		-I=protos/v1/user \
# 		--go_out . --go_opt paths=source_relative \
# 		--go-grpc_out . --go-grpc_opt paths=source_relative \
# 		protos/v1/user/user.proto \


# protoc -I=. \
# 		--proto_path=protos/v1/user \
# 		--go_out . --go_opt paths=source_relative \
# 		--go-grpc_out . --go-grpc_opt paths=source_relative \
# 		protos/v1/user/user.proto \
# 		protos/v1/user/user_detail.proto


protoc -I=. \
		-I=protos/v1/user \
		--go_out . --go_opt paths=source_relative \
		--go-grpc_out . --go-grpc_opt paths=source_relative \
		protos/v1/user/user_detail.proto \


protoc -I=. \
		-I=protos/v1/user \
		--go_out . --go_opt paths=source_relative \
		--go-grpc_out . --go-grpc_opt paths=source_relative \
		protos/v1/user/user.proto \


# protoc -I=. \
# 		--go_out . --go_opt paths=source_relative \
# 		--go-grpc_out . --go-grpc_opt paths=source_relative \
# 		protos/v1/user/user_detail.proto \


## gencode
#protoc -I=. \
#        -I protos/vpdata/ \
#	    --go_out . --go_opt paths=source_relative \
#	    --go-grpc_out . --go-grpc_opt paths=source_relative \
#	    protos/vpdata/vpresult.proto \
#        protos/vpdata/vgeodb_common.proto
#
#protoc -I=. \
#        -I protos/vpdata/ \
#	    --go_out . --go_opt paths=source_relative \
#	    --go-grpc_out . --go-grpc_opt paths=source_relative \
#        protos/vpdata/vpresult.proto
#
#
#protoc -I=. \
#        -I protos/vpdata/ \
#	    --go_out . --go_opt paths=source_relative \
#	    --go-grpc_out . --go-grpc_opt paths=source_relative \
#	    protos/vpdata/vpresult.proto
#
## grpc-gateway
#protoc -I. \
#    -I protos/vpdata \
#    --grpc-gateway_out . \
#    --grpc-gateway_opt logtostderr=true \
#    --grpc-gateway_opt paths=source_relative \
#    --grpc-gateway_opt generate_unbound_methods=true \
#    protos/vpdata/vpresult.proto
