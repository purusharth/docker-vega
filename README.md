## Build image
```sh
docker build -t vega-stretch-jdk8 .
```

## Give xhost permissions on host (once only)
```sh
xhost local:root
```

## Run
```sh
docker run -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY --name vega-stretch-jdk8-running --rm -i -t vega-stretch-jdk8
```

## create container running bash
```sh
docker run -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY --name vega-stretch-jdk8-bash --rm -i -t vega-stretch-jdk8 bash
```

