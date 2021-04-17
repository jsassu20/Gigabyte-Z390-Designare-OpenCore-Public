DefinitionBlock ("", "SSDT", 1, "APPLE", "NVME", 0x00000000)
{
    External (_SB_.PCI0.PEG1, DeviceObj)
    External (_SB_.PCI0.PEG1.PEGP, DeviceObj)
    External (_SB_.PCI0.RP17, DeviceObj)
    External (_SB_.PCI0.RP17.PXSX, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_SB.PCI0.PEG1)
    {
        Scope (PEGP)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (NVME)
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
                        Buffer ()
                        {
                            "M.2M Slot"
                        }, 

                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "name", 
                        Buffer (0x3A)
                        {
                            "Western Digital Black SN750 M.2 NVME Solid State Drive #1"
                        }, 

                        "model", 
                        Buffer (0x3A)
                        {
                            "Western Digital Black SN750 M.2 NVME Solid State Drive #1"
                        }
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }

    Scope (\_SB.PCI0.RP17)
    {
        Scope (PXSX)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (NVME)
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
                        Buffer ()
                        {
                            "M.2P Slot"
                        }, 

                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "name", 
                        Buffer (0x3A)
                        {
                            "Western Digital Black SN750 M.2 NVME Solid State Drive #2"
                        }, 

                        "model", 
                        Buffer (0x3A)
                        {
                            "Western Digital Black SN750 M.2 NVME Solid State Drive #2"
                        }
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }
}

