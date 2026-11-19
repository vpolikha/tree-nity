GO = go

SERVER = server
CLIENT = client

all: $(SERVER) $(CLIENT)

$(SERVER):
	$(GO) build -o $(SERVER) ./cmd/server
	chmod u+x server

$(CLIENT):
	$(GO) build -o $(CLIENT) ./cmd/client
	chmod u+x client

test:
	$(GO) test ./...

clean:
	rm -f $(SERVER) $(CLIENT)

re: clean all

run_server: $(SERVER)
	./server

run_client: $(CLIENT)
	./client

.PHONY: all clean re test run_client run_server
