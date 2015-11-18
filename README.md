# manet-dockerfile

A dockerized [manet](http://github.com/vbauer/manet) server. Shortly, manet is a screenshot service
using PhantomJS

We assume that authentication is required by default, since you will probably
run this service in production too

```
docker run --name manet -d -e USER=user -e PASSWORD=secret -p 8891:8891 codextremist/manet
```

If you want to bypass authentication, simply override the defaults

```
docker run --name manet -d -p 8891:8891 codextremist/manet manet
```
