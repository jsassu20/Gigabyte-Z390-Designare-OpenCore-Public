DefinitionBlock ("", "SSDT", 2, "APPLE ", "IGMM", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)

    Scope (_SB.PCI0)
    {
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

                Return (Package (0x0C)
                {
                    "AAPL,slot-name", 
                    Buffer ()
                    {
                        "Built In"
                    }, 

                    "built-in", 
                    Buffer ()
                    {
                         0x00                                             // .
                    }, 

                    "device_type", 
                    Buffer ()
                    {
                        "Gaussian Mixture"
                    }, 

                    "name", 
                    Buffer ()
                    {
                        "Intel Core Processor Gaussian Mixture Model"
                    }, 

                    "model", 
                    Buffer ()
                    {
                        "Intel 8th Generation Core i7 Processor Gaussian Mixture Model"
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

