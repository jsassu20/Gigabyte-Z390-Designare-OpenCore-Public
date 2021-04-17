DefinitionBlock ("", "SSDT", 2, "APPLE", "ETH1", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.RP02, DeviceObj)
    External (_SB_.PCI0.RP02.PXSX, DeviceObj)
    
    Scope (_SB.PCI0.RP02)
    {
        Scope (PXSX)
        {
            Name (_STA, Zero)  // _STA: Status
        }
        
        Device (ETH1)
        {
        
            Name (_ADR, 0x00000000)  // _ADR: Address
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
                        "Intel I211 Wired LAN Gigabit Ethernet Controller"
                    }, 
                    "name", 
                    Buffer ()
                    {
                        "Intel I211 Wired LAN Gigabit Ethernet Controller"
                    }, 
                    "device_type", 
                    Buffer ()
                    {
                        "Ethernet Controller"
                    }, 
                    "device-id", 
                    Buffer ()
                    {
                         0x39, 0x15, 0x00, 0x00                           // ....
                    }, 
                    "compatible", 
                    Buffer ()
                    {
                        "pci8086,1539"
                    }
                })
            }
        }
    }
}  