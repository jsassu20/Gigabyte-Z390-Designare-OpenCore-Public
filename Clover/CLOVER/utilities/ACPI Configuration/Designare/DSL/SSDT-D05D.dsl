DefinitionBlock ("", "SSDT", 2, "APPLE", "D05D", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.RP02, DeviceObj)
    External (_SB_.PCI0.RP02.GLAN, DeviceObj)
    External (_SB_.PCI0.RP02.PXSX, DeviceObj)

    Scope (_SB.PCI0.RP02)
    {
        Scope (PXSX)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (GLAN)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x0C)
                {
                    "AAPL,slot-name", 
                    "Built In", 
                    "model", 
                    Buffer (0x31)
                    {
                        "Intel I211 Wired LAN Gigabit Ethernet Controller"
                    }, 

                    "name", 
                    Buffer ()
                    {
                        "Intel I211 Gigabit Ethernet Controller"
                    }, 

                    "device_type", 
                    Buffer (0x14)
                    {
                        "Ethernet Controller"
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x39, 0x15, 0x00, 0x00                           // 9...
                    }, 

                    "compatible", 
                    Buffer (0x0D)
                    {
                        "pci8086,1539"
                    }
                })
            }
        }
    }
}

