# Slow
_Prints piped input. Slow._

Tired of chunks of text reaching lightspeed in your terminal. All you wanted was to read a 10GB log file one line at a time? Look no further. Read **slow**.

### Usage
```
> cat rhyme.txt | slow
Mary had
a little
lamb.

> kubectl logs -n kube-system k8s-api-server -f | slow 500
I1018 11:51:00.261928       1 log.go:172] http: TLS handshake error from 192.168.1.15:39533: EOF
I1018 11:51:10.262008       1 log.go:172] http: TLS handshake error from 192.168.1.15:39530: EOF
…
```
