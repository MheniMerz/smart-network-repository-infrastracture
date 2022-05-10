#!/bin/bash

/bin/vtysh -c "
conf t
router bgp 65199
address-family ipv4 unicast
redistribute connected
"