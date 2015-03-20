# Docker container for hoodie development

![demo-video](demo-video.gif)

## Content

* [why](#why)
* [Setup](#setup)
* [New Project](#new-project)
* [Miscellaneous](#miscellaneous)
* [References](#references)

## Why?

I don't want to install and configure Java, Android SDK, Ant, hoodie etc.. life is too short. 

## Setup

    git clone git@github.com:oren/docker-hoodie.git
    cd docker-hoodie
    docker build -t hoodie .
    echo "alias hoodie='docker run --rm -i -v \$(pwd):/workspace -w /workspace --privileged -v /dev/bus/usb:/dev/bus/usb hoodie hoodie'" >> ~/.bash_aliases
    source ~/.bash_aliases

The alias command lets you use `hoodie` for running any command inside the hoodie container.

## New Project

    hoodie create hello com.example.hello HelloWorld
    cd hello
    hoodie platform add android
    hoodie build
    
Connect your android device to your laptop with a usb

    hoodie run android
 
That's it, your app should be on your phone!

## Miscellaneous

I keep all my dockerfiles in a folder:

    dockerfiles/
    ├── hoodie
    │   ├── Dockerfile
    │   └── readme
    ├── go
    │   ├── Dockerfile
    │   └── readme
    ├── nginx
    │   ├── Dockerfile
    │   └── readme
    ├── node
        ├── Dockerfile
        └── readme

The readme has the build command. For emample - `docker build -t hoodie .`. I just run it once and add an alias to my .bash_profile

## Useful commands

List of attached devices. make sure you see your phone in that list.

    docker run --rm -i -v $(pwd):/workspace -w /workspace --privileged -v /dev/bus/usb:/dev/bus/usb hoodie adb devices

## References

The image is https://registry.hub.docker.com/u/peernohell/hoodie. I modified the `run` command to add support for USB connection.
