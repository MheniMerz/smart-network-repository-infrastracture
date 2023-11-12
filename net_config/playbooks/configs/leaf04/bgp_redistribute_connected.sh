#!/bin/bash

/bin/vtysh -c "
conf t
router bgp 65104
address-family ipv4 unicast
redistribute connected
"