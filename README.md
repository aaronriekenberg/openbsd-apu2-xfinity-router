# openbsd-apu2-xfinity-router

Configuration for running [OpenBSD](https://www.openbsd.org) as a router and firewall on a [PC Engines apu2c4](https://pcengines.ch/apu2c4.htm).

What is here:
* Using [dhclient](https://man.openbsd.org/dhclient) to request IPv4 IP on external interface
* Using [dhcpd](https://man.openbsd.org/dhcpd) to provide IPv4 addresses to internal network
* Using [dhcpcd](https://github.com/openbsd/ports/tree/master/net/dhcpcd) (from packages) to request IPv6 IP on external interface and prefix delegation on internal interface
* Using [rad](https://man.openbsd.org/rad) to provide IPv6 addresses to internal network
* Using [pf](https://man.openbsd.org/pf) for firewall and IPv4 NAT
* Using [pfstat](https://github.com/openbsd/ports/tree/master/net/pfstat) (from packages) to generate bandwidth graphs
  * I use [pi-web](https://github.com/aaronriekenberg/pi-web) as a simple webserver for the bandwidth graphs
* Using [unbound](https://man.openbsd.org/unbound) as a caching proxy to provide DNS service to internal network
* Using [ntpd](https://man.openbsd.org/ntpd) to set the time on the apu2 and to provide time to the internal network
