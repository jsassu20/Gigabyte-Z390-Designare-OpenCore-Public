DefinitionBlock ("", "SSDT", 1, "Z170D", "NVME", 0x00000000)
{
    External (_SB_.PCI0.PEG1, DeviceObj)
    External (_SB_.PCI0.PEG1.PEGP, DeviceObj)
    External (_SB_.PCI0.RP09, DeviceObj)
    External (_SB_.PCI0.RP09.PXSX, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_SB.PCI0.PEG1)
    {
        Scope (PEGP)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (ANS1)
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

                Local0 = Package (0x08)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x0B)
                        {
                            "M.2 x4 AIC"
                        }, 

                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "name", 
                        Buffer (0x1A)
                        {
                            "Apple NVME SSD Controller"
                        }, 

                        "model", 
                        Buffer (0x32)
                        {
                            "WD Black SN750 M.2 NVME 3D PCIe Solid State Drive"
                        }
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }

    Scope (\_SB.PCI0.RP09)
    {
        Scope (PXSX)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (ANS2)
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

                Local0 = Package (0x08)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x0C)
                        {
                            "M.2 x4 Port"
                        }, 

                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "name", 
                        Buffer (0x1A)
                        {
                            "Apple NVME SSD Controller"
                        }, 

                        "model", 
                        Buffer (0x32)
                        {
                            "WD Black SN750 M.2 NVME 3D PCIe Solid State Drive"
                        }
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }
}

