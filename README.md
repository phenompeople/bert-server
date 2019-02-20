[![dockeri.co](http://dockeri.co/image/phenompeople/bert-server)](https://registry.hub.docker.com/phenompeople/bert-server/)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

## Bert-Server 

Dockerfiles for building based Bert-server images. 

### Supported tags and respective Dockerfile links

#### phenompeople/bert-server

* **`latest`			([UNCASED_EN_BASE/Dockerfile](https://bitbucket.org/phenompeople/bert-server/src/master/UNCASED_EN_BASE/Dockerfile))**
* **`UNCASED_EN_BASE` 	([UNCASED_EN_BASE/Dockerfile](https://bitbucket.org/phenompeople/bert-server/src/master/UNCASED_EN_BASE/Dockerfile))**
* **`UNCASED_EN_LG` 	([UNCASED_ENG_LG/Dockerfile](https://bitbucket.org/phenompeople/bert-server/src/master/UNCASED_EN_LG/Dockerfile))**
* **`UNCASED_EN_LG-GPU` ([UNCASED_EN_LG-GPU/Dockerfile](https://bitbucket.org/phenompeople/bert-server/src/master/UNCASED_EN_LG-GPU/Dockerfile))**

#### Pre-Requisites

- install docker-engine [https://docs.docker.com/engine/installation/](https://docs.docker.com/engine/installation/)

#### Whats New?

Using BERT model as a sentence encoding service, i.e. mapping a variable-length sentence to a fixed-length vector. 

### How to use this image 

1.  This image can be used by simply running 

```$ docker run --name=bert-server -p 5555:5555 -p 5556:5556 -td phenompeople/bert-server```

Above command runs bert-server container with port 5555and 5556 mapped to host and connecting to bert meodles running. 

1. To make image run even after reboot use extra option --restart=always

```$ docker run --restart=always --name=bert-server -p 5555:5555 -p 5556:5556 -td phenompeople/bert-server```

## Maintainers

* Gaurav Vijay Vergia (<gaurav.vergiya@phenompeople.com>)
* Rajesh Jonnalagadda (<rajesh.jonnalagadda@phenompeople.com>)

## License and Authors

**License:**	Apache License

**Author :** Phenompeople Pvt Ltd (<devops@phenompeople.com>)