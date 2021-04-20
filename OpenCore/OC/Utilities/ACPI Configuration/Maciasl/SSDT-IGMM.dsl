DefinitionBlock ("", "SSDT", 2, "APPLE", "IGMM", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)

    Device (IGMM)
    {
        Name (_ADR, 0x00080000)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package ()
            {
                "AAPL,slot-name", 
                "Built In", 
                "built-in", 
                Buffer (One)
                {
                     0x00                                             // .
                }, 

                "name", 
                "Gaussian Mixture", 
                "device_type", 
                Buffer (0x11)
                {
                    "Gaussian Mixture"
                },
                
                "name",
                Buffer ()
                {
                    "Intel Corporation, Gaussian Mixture Model"
                }, 

                "model", 
                Buffer ()
                {
                    "Intel Corporation, Cannon Lake 11 Series Chipset Gaussian Mixture Model"
                }
            })
        }
    }
}

