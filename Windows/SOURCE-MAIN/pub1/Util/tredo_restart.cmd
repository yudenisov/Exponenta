netsh int teredo set state type=client
netsh interface ipv6 delete route ::/0 interface=13
netsh interface ipv6 add route ::/0 interface=13