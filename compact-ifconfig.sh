#!/bin/bash
echo "int_name, ip_address, mac_address">interfaces.txt; ifconfig | sed  -n -e'/inet6/d' -e'/RX/d' -e'/TX/d' -e'/loop/d' -e's/netmask.*//' -e's/tx.*//' -e's/:\ flag.*//' -e'/UP/d' -e'/collisi/d' -e'/Interrupt/d'  -e'p' | paste -sd ' \n'| paste -sd ' \n' | sed -n -e'/lo.*/d' -e'p'  >> interfaces.txt
