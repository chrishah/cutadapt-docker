# cutadapt-docker
Ubuntu 18.04 with Python 3.6.7 and cutadapt 2.0

The image contains a full install of [Cutadapt](https://cutadapt.readthedocs.io/en/stable/index.html), including all necessary dependencies. I am not part of the cutadapt team - I just made this image.

In detail, the image is set up with:
 - Ubuntu 18.04
 - Python 3.6.7
 - Cutadapt 2.0

To run [Cutadapt](https://cutadapt.readthedocs.io/en/stable/index.html)you can do the following (this will mount the directory `/home/working` of the container to the current working directory on your local machine, and allow you to access files in this directory and any sub-directories):
```bash
$ docker run --rm -v $(pwd):/in -w /in chrishah/cutadapt:2.0 cutadapt
```

You can also enter the container environment and work within it. All executables should be in the `PATH`.
```bash
$ docker run -it --rm -v $(pwd):/in -w /in chrishah/cutadapt:2.0 /bin/bash
```

