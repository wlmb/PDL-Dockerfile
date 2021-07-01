# PDL-Dockerfile
Dockerfile to build docker PDL image and container using Debian-testing OS.

## Use

You may build a docker image with the command

    $ docker build -t pdlimage https://github.com/wlmb/PDL-Dockerfile.git

(replace pdlimage for whatever name you choose for your image).

Then, you may run the image with the following commands:

    $ xhost +local:
    $ docker run -p 22 -ti -v /tmp/.X11-unix/:/tmp/.X11-unix/ wlmb/perldatalanguage

Once in your container you are in a full Debian/testing
environment. You can install further packages or run an interactive
pdl interpreter as follows

    $ pdl2
    pdl> demo 3d
    pdl> demo gnuplot
    .
    .
    .
