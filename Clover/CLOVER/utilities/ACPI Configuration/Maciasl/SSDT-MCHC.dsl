DefinitionBlock ("", "SSDT", 2, "APPLE", "MCHC", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.MCHC, DeviceObj)

    Device (_SB.PCI0.MCHC)
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
                Buffer ()
                {
                    "Intel Cannon Lake 11 Series Chipset PCH PCI Express Bridge"
                }, 

                "name", 
                Buffer ()
                {
                    "Intel Cannon Lake PCI Express Bridge"
                }, 

                "device_type", 
                Buffer ()
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
    }
}

