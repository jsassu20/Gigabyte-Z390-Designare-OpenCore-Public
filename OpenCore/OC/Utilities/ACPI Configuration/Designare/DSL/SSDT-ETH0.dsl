DefinitionBlock ("", "SSDT", 2, "APPLE", "ETH0", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    
    Device (_SB.PCI0.ETH0)
    {
        Name (_ADR, 0x001f0006)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer ()
                {
                     0x03                                             // .
                })
            }
            Return (Package ()
            {
                "AAPL,slot-name", 
                "Built In", 
                "model", 
                Buffer ()
                {
                    "Intel I219-V Wired LAN Gigabit Ethernet Controller"
                }, 
                "name", 
                Buffer ()
                {
                    "Intel I219-V Wired LAN Gigabit Ethernet Controller"
                }, 
                "device_type", 
                Buffer ()
                {
                    "Ethernet Controller"
                }, 
                "device-id", 
                Buffer ()
                {
                     0xBC, 0x15, 0x00, 0x00                           // ....
                }, 
                "compatible", 
                Buffer ()
                {
                    "pci8086,15bc"
                }
            })
        }
    }    
}