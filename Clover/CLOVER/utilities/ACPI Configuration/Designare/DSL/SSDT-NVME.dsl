DefinitionBlock ("", "SSDT", 2, "APPLE ", "NVME", 0x00000000)
{
    External (_SB_.PCI0.PEG1, DeviceObj)
    External (_SB_.PCI0.PEG1.PEGP, DeviceObj)
    External (_SB_.PCI0.RP09, DeviceObj)
    External (_SB_.PCI0.RP09.PXSX, DeviceObj)
    External (_SB_.PCI0.RP17, DeviceObj)
    External (_SB_.PCI0.RP17.PXSX, DeviceObj)

    Scope (_SB.PCI0.PEG1)
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

                Return (Package (0x0C)
                {
                    "AAPL,slot-name", 
                    "M.2E Slot", 
                    "model", 
                    Buffer (0x38)
                    {
                        "Kingston SA2000/500G 500GB NVMExpress Solid State Drive"
                    }, 

                    "name", 
                    Buffer (0x15)
                    {
                        "Apple SSD Controller"
                    }, 

                    "device_type", 
                    Buffer (0x12)
                    {
                        "NVMExpress Device"
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x06, 0x50, 0x00, 0x00                           // .P..
                    }, 

                    "compatible", 
                    Buffer (0x0D)
                    {
                        "pci2646,5006"
                    }
                })
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

                Return (Package (0x0C)
                {
                    "AAPL,slot-name", 
                    "M.2M Slot", 
                    "model", 
                    Buffer (0x3F)
                    {
                        "Western Digital Black SN750 500GB NVMExpress Solid State Drive"
                    }, 

                    "name", 
                    Buffer (0x15)
                    {
                        "Apple SSD Controller"
                    }, 

                    "device_type", 
                    Buffer (0x12)
                    {
                        "NVMExpress Device"
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x06, 0x50, 0x00, 0x00                           // .P..
                    }, 

                    "compatible", 
                    Buffer (0x0D)
                    {
                        "pci15b7,5006"
                    }
                })
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

    Scope (\_SB.PCI0.RP17)
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

                Return (Package (0x0C)
                {
                    "AAPL,slot-name", 
                    "M.2P Slot", 
                    "model", 
                    Buffer (0x3F)
                    {
                        "Western Digital Black SN750 500GB NVMExpress Solid State Drive"
                    }, 

                    "name", 
                    Buffer (0x15)
                    {
                        "Apple SSD Controller"
                    }, 

                    "device_type", 
                    Buffer (0x12)
                    {
                        "NVMExpress Device"
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x06, 0x50, 0x00, 0x00                           // .P..
                    }, 

                    "compatible", 
                    Buffer (0x0D)
                    {
                        "pci15b7,5006"
                    }
                })
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

