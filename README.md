# interlok-load-balanced

To run:

```console
$ docker-compose up scale interlok=3
```

To test:

```console
$ curl -s http://localhost/hello-world
Hello World from 724ac45ded45!
$ curl -s http://localhost/hello-world
Hello World from 2171e7976497!
$ curl -s http://localhost/hello-world
Hello World from 6a6c8543f41f!
```

Created to coincide with [Interlok, Docker and Load balancing](http://interlok.adaptris.net/blog/2017/08/31/interlok-docker-and-load-balancing/) blog post.
