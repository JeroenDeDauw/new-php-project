# PHP Project Template

[![Build Status](https://travis-ci.org/JeroenDeDauw/new-php-project.svg?branch=master)](https://travis-ci.org/JeroenDeDauw/new-php-project)

This is a template for starting new PHP projects. Copy or fork to get started quickly.

(Update this section)

## Contents

* Ready-to-go PHPUnit (configuration and working bootstrap)
* Ready-to-go PHPCS
* Docker environment with PHP 7.2 and Composer (so you do not need to have PHP or Composer installed!)
* Tests and style checks runnable in the Docker environment with simple `make` commands 
* TravisCI ready
* Code coverage creation on TravisCI and uploading to ScrutinizerCI (optional)
* Coverage tag validation
* Stub production and test classes for ultra-quick start (ideal when doing a kata)
* COPYING and .gitignore files
* README with instructions of how to run the tests

(Delete this section)

## Getting started

* Copy the code or fork the repository
* If you do not want to use the MediaWiki coding style, remove `mediawiki/mediawiki-codesniffer` from `composer.json`
* If you want to support older PHP versions, update `composer.json` and remove new PHP features from the stub PHP files
* If the code is not a kata or quick experiment, update the PHP namespaces and the README
* Start writing code!
* If you want TravisCI and/or ScrutinizerCI integration you will need to log in to their respective websites 

[![asciicast](https://asciinema.org/a/XSltW8wY5yuxlev7D3gCe7zkU.png)](https://asciinema.org/a/XSltW8wY5yuxlev7D3gCe7zkU)

(Delete this section)

## Installation

To use the UPDATE_NAME library in your project, simply add a dependency on UPDATE/NAME
to your project's `composer.json` file. Here is a minimal example of a `composer.json`
file that just defines a dependency on UPDATE_NAME 1.x:

```json
{
    "require": {
        "UPDATE/NAME": "~1.0"
    }
}
```

## Development

For development you need to have Docker and Docker-compose installed. Local PHP and Composer are not needed.

    sudo apt-get install docker docker-compose

### Running Composer

To pull in the project dependencies via Composer, run:

    make composer install

You can run other Composer commands via `make run`, but at present this does not support argument flags.
If you need to execute such a command, you can do so in this format:

    docker run --rm --interactive --tty --volume $PWD:/app -w /app\
     --volume ~/.composer:/composer --user $(id -u):$(id -g) composer composer install --no-scripts

Where `composer install --no-scripts` is the command being run.

### Running the CI checks

To run all CI checks, which includes PHPUnit tests, PHPCS style checks and coverage tag validation, run:

    make
    
### Running the tests

To run just the PHPUnit tests run

    make test

To run only a subset of PHPUnit tests or otherwise pass flags to PHPUnit, run

    docker-compose run --rm app ./vendor/bin/phpunit --filter SomeClassNameOrFilter
