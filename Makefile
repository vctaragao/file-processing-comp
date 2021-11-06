php-run:
	@docker exec -it php-file-processor bash -c "cd src && php index.php"

php-container:
	@docker exec -it php-file-processor bash