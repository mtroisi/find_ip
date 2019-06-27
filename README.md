# find_ip
Short script that finds the IP address of a FQDN without waiting for DNS records to propagate.


## Usage

```
find_ip.sh www.example.com example.com
```

Taking two arguments in the order <FQDN> <root domain> a trusted name server (default Cloudflare's 1.1.1.1) is queried for the authoritative nameserver for the FQDN provided. That authoritative name server is then queried for the A record of the FQDN. This will always return the most recent DNS record for the host.
  
## Use case

  Together with dynamic DNS updates, this script can be used to immediately return the IP of a server once the corresponding dynamic DNS record is updated.
