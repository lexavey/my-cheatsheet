## Socat

forward port 

    socat TCP-LISTEN:443,fork TCP:127.0.0.1:8787

## local-ssl-proxy

```
npm install -g local-ssl-proxy
```
Use : `local-ssl-proxy -s 443 -t 8080`
