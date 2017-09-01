.PHONY: ci

ci: test cs

test: covers phpunit

phpunit:
	docker-compose run --rm app ./vendor/bin/phpunit

cs:
	docker-compose run --rm app ./vendor/bin/phpcs

covers:
	docker-compose run --rm app ./vendor/bin/covers-validator
