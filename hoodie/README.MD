# Docker container for hoodie development


## Content

* [Setup](#setup)
* [New Project](#new-project)
* [Miscellaneous](#miscellaneous)
* [References](#references)


## Setup

    git clone git@github.com:greenlizard/docker-images.git
    cd docker-images/hoodie
    docker build -t hoodie .
    echo "alias hoodie='docker run --rm -i -u docker -v $(pwd):/workspace -w /workspace --privileged hoodie hoodie
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

    alias hoodie="docker run --rm -it -v $(pwd):/src hoodie hoodie"
    docker run --rm -it -v $(pwd):/src hoodie

## References
