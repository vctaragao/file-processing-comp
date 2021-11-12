php-run:
	@docker exec -it php-file-processor bash -c "cd src && php index.php"

php-container:
	@docker exec -it php-file-processor bash

elixir-container:
	@docker exec -it elixir-file-processor bash

elixir-run:
	@docker exec -it elixir-file-processor bash -c "cd lib && elixir file_processor.exs"

node-container:
	@docker exec -it node-file-processor bash

node-run:
	@docker exec -it node-file-processor bash -c "cd src && node --max_old_space_size=10 script.js"

up:
	@docker compose up -d
	@docker exec -it node-file-processor bash -c "npm install"

up-recreate:
	@docker compose up -d --force-recreate