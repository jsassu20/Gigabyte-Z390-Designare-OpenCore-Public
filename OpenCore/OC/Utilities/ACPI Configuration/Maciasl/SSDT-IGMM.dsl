DefinitionBlock ("", "SSDT", 2, "APPLE ", "IGMM", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_SB.PCI0)
    {
        Device (IGMM)
        {
            Name (_ADR, 0x00080000)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Local0 = Package (0x0A)
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

                        "model", 
                        Buffer (0x3B)
                        {
                            "Intel Cannon Lake 11 Series Chipset Gaussian Mixture Model"
                        }
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
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

