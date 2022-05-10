#!/bin/bash

/bin/vtysh -c "
conf t
router bgp 65107
address-family ipv4 unicast
redistribute connected
"