# openbsd-apu2-xfinity-router

Configuration for running [OpenBSD](https://www.openbsd.org) as a router and firewall on a [PC Engines apu2c4](https://pcengines.ch/apu2c4.htm).

What is here:
* Using dhclient to request IPv4 IP on external interface
* Using dhcpd to provide IPv4 addresses to internal network
* Using dhcpcd to rest IPv6 IP on external interface and prefix delegation on internal interface
* Using rad to provide IPv6 addresses to internal network
* Using pf for firewall and IPv4 NAT
* Using pfstat.conf to generate bandwidth graphs
  * I use [pi-web](https://github.com/aaronriekenberg/pi-web) as a simple webserver for the bandwidth graphs.
* Using unbound as a caching proxy to provide DNS service to internal network.
