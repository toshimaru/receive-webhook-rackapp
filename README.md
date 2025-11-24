# receive-webhook-rackapp

## Start Rack application

```console
$ rackup
Puma starting in single mode...
* Puma version: 7.1.0 ("Neon Witch")
* Ruby version: ruby 3.4.5 (2025-07-16 revision 20cda200d3) +PRISM [arm64-darwin24]
*  Min threads: 0
*  Max threads: 5
*  Environment: development
*          PID: 99950
* Listening on http://127.0.0.1:9292
* Listening on http://[::1]:9292
Use Ctrl-C to stop
```

## Using `curl` to send a webhook

```console
$ curl -X POST http://localhost:9292 -d "{ foo: bar }" -H "Content-Type: text/plain"
```

## Using cloudflare tunnnel

```console
$ cloudflared tunnel --url http://localhost:9292
```
