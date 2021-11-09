php-run:
	@docker exec -it php-file-processor bash -c "cd src && php index.php"

php-container:
	@docker exec -it php-file-processor bash

elixir-container:
	@docker exec -it elixir-file-processor bash

elixir-run:
	@docker exec -it elixir-file-processor bash -c "cd lib && elixir file_processor.exs"