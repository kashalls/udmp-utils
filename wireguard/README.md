# Wireguard

## Creating the network.

You can create a new network on your UDMPro under the networks tab.
This network must have its own vlan, and its own /24 network.

Enable Network: Yes
Network Name: Wireguard

VPN Setup: None

Content Filtering: Your choice, I chose none.

Advanced:
    VLAN ID: 100
    Domain Name: none
    Device Isolation: No
    IGMP Snooping: No
    Auto Scale Network: No
    DHCP Mode: None
    Gateway IP/Subnet: 10.10.100.1/24
    DHCP Unifi OS Console: Empty
    DHCP Guarding: No
    DHCP NTP Server: No
    DHCP Network Boot: No
    DHCP Time Offset: No
    DHCP WPAD URL: Empty
    DHCP TFTP Server: Empty
    DHCP Option: None
    IPv6 Interface Type: None