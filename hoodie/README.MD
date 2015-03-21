# Docker container for hoodie development


## Content

* [Setup](#setup)
* [New Project](#new-project)
* [Miscellaneous](#miscellaneous)
* [References](#references)


## Setup

    docker run -d -p 6003:6003 --name couchdb klaemo/couchdb
    echo "alias hoodie='docker run --rm -it --link couchdb:couchdb -v $(pwd):/src --name hoodie greenlizard/hoodie hoodie
'" >> ~/.bash_aliases
    source ~/.bash_aliases

The alias command lets you use `hoodie` for running any command inside the hoodie container.

## New Project

    hoodie new HelloWorld
    cd HelloWorld
    hoodie start
    
## Miscellaneous

I keep all my dockerfiles in a folder:

    dockerfiles/
    ├── hoodie
    │   ├── Dockerfile
    │   └── readme
    ├── base
        ├── Dockerfile
        └── readme
    

The readme has the build command. For emample - `docker build -t hoodie .`. I just run it once and add an alias to my .bash_profile

## Useful commands

    docker run -d -p 6003:6003 --name couchdb klaemo/couchdb
    alias hoodie='docker run --rm -it --link couchdb:couchdb -v $(pwd):/src --name hoodie greenlizard/hoodie hoodie'
    docker run --rm -it --link couchdb:couchdb -v $(pwd):/src hoodie /bin/bash

## References
