DefinitionBlock ("", "SSDT", 1, "APPLE", "NVME", 0x00000000)
{
    External (_SB_.PCI0.PEG1, DeviceObj)
    External (_SB_.PCI0.PEG1.PEGP, DeviceObj)
    External (_SB_.PCI0.RP09, DeviceObj)
    External (_SB_.PCI0.RP09.PXSX, DeviceObj)
    External (_SB_.PCI0.RP17, DeviceObj)
    External (_SB_.PCI0.RP17.PXSX, DeviceObj)
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

                Local0 = Package (0x0A)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x10)
                        {
                            "PCIe x16 Slot 2"
                        }, 

                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "device_type", 
                        Buffer (0x16)
                        {
                            "NVMExpress Controller"
                        }, 

                        "name", 
                        Buffer (0x2B)
                        {
                            "Western Digital Black SN750 500GB NVME SSD"
                        }, 

                        "model", 
                        Buffer (0x43)
                        {
                            "Western Digital Black SN750 500GB M.2 NVMExpress Solid State Drive"
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

        Device (ANS3)
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

                Local0 = Package (0x0A)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x0A)
                        {
                            "M.2M Slot"
                        }, 

                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "device_type", 
                        Buffer (0x16)
                        {
                            "NVMExpress Controller"
                        }, 

                        "name", 
                        Buffer (0x2B)
                        {
                            "Western Digital Black SN750 500GB NVME SSD"
                        }, 

                        "model", 
                        Buffer (0x43)
                        {
                            "Western Digital Black SN750 500GB M.2 NVMExpress Solid State Drive"
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

                Local0 = Package (0x0A)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x0A)
                        {
                            "M.2P Slot"
                        }, 

                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "device_type", 
                        Buffer (0x16)
                        {
                            "NVMExpress Controller"
                        }, 

                        "name", 
                        Buffer (0x2B)
                        {
                            "Western Digital Black SN750 500GB NVME SSD"
                        }, 

                        "model", 
                        Buffer (0x43)
                        {
                            "Western Digital Black SN750 500GB M.2 NVMExpress Solid State Drive"
                        }
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }
}

