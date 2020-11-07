#!/bin/sh

# Hopefully unnecessary once this is in an unbound release: 
# https://github.com/NLnetLabs/unbound/pull/228

UNBOUND_CONTROL=/usr/sbin/unbound-control

$UNBOUND_CONTROL dump_infra | grep -q -i 'expired rto'
if [ $? -ne 1 ]; then
  echo "found expired rto, dump_infra:"
  echo $($UNBOUND_CONTROL dump_infra)
  echo

  echo "run $UNBOUND_CONTROL flush_infra"
  $UNBOUND_CONTROL flush_infra all
  echo
  echo "dump_infra:"
  echo $($UNBOUND_CONTROL dump_infra)
fi
