help:
	@echo make run-chat
	@echo make run-server
	@echo make run-inspector
	@echo make run-client
	@echo make run-client-extended
	@echo ""
	@echo make clean


run: run-client-extended

run-chat:
	uv run chat.py

run-server:
	uv run mcp_server.py

run-inspector:
	npx @modelcontextprotocol/inspector uv run mcp_server.py

run-client:
	uv run mcp_client.py

run-client-extended:
	uv run mcp_client_extended.py

clean:
	rm -fr ./papers results.txt