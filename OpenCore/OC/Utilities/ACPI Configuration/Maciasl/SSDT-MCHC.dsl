// Adds MCHC device to _SB_.PCI0 (_SB_.PCI0.MCHC). Present in real Apple computers
//
DefinitionBlock ("", "SSDT", 2, "APPLE ", "MCHC", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    
    Scope (_SB.PCI0)
    {
        Device (MCHC)
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
                    Buffer (0x3B)
                    {
                        "Intel Cannon Lake 11 Series Chipset PCH PCI Express Bridge"
                    }, 

                    "name", 
                    Buffer (0x25)
                    {
                        "Intel Cannon Lake PCI Express Bridge"
                    }, 

                    "device_type", 
                    Buffer (0x17)
                    {
                        "PCI Express Controller"
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0xC2, 0x3E, 0x00, 0x00                           // .>..
                    }, 

                    "compatible", 
                    Buffer (0x0D)
                    {
                        "pci8086,3ec2"
                    }
                })
            }
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                 Else
                {
                    Return (Zero)
                }
            }
        }
    }
}        


    
    