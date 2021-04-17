DefinitionBlock ("", "SSDT", 2, "APPLE", "ARPT", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.RP04, DeviceObj)
    External (_SB_.PCI0.RP04.ARPT, DeviceObj)
    External (_SB_.PCI0.RP04.PXSX, DeviceObj)

    Scope (_SB.PCI0.RP04)
    {
        Scope (PXSX)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (ARPT)
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
                    "PCIe x1 Slot 2", 
                    "model", 
                    Buffer ()
                    {
                        "Broadcom BCM94360CD 802.11 ac/n/g/ab/a Wireless Network Card"
                    }, 

                    "name", 
                    Buffer ()
                    {
                        "Apple Airport Extreme Wireless Network Card"
                    }, 

                    "device_type", 
                    Buffer ()
                    {
                        "Apple Airport Extreme"
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0xA0, 0x43, 0x00, 0x00                           // .C..
                    }, 

                    "compatible", 
                    Buffer (0x0D)
                    {
                        "pci14e4,43a0"
                    }
                })
            }
        }
    }
}

