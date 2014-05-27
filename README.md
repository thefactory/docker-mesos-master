Runs a [Mesos](http://mesos.apache.org/) master instance.

Available on the Docker Index as [thefactory/mesos-master](https://index.docker.io/u/thefactory/mesos-master/):

    docker pull thefactory/mesos-master

### Versions
* Mesos 0.18.2

### Usage
For Marathon to register with the Mesos cluster, you will need to enable host networking with `--net=host` (available in Docker 0.11+, see [announcement](http://blog.docker.io/2014/05/docker-0-11-release-candidate-for-1-0/)).

Starting the container:

    docker run \
        --net=host \
        -p 5050:5050 \
        thefactory/mesos-master:latest \
        [MESOS_OPTIONS]

(See Mesos's [documentation](http://mesos.apache.org/documentation/latest/configuration/) for available arguments)

Once the container is up, visit `http://<host>:5050/` and confirm Mesos is running.