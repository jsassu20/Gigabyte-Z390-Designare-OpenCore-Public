DefinitionBlock ("", "SSDT", 1, "Z170D", "BRGX", 0x00000000)
{
    External (_SB_.PCI0.RP03, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG1, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG2, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG3, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG3, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG4, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG5, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG5, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG5, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG6, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG6, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG7, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Method (_SB.PCI0.RP03.PXSX.BRG1._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (!Arg2)
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Local0 = Package (0x12)
            {
                "AAPL,slot-name", 
                Buffer (0x09)
                {
                    "Built In"
                }, 

                "built-in", 
                Buffer (One)
                {
                     0x01                                             // .
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x87, 0x11, 0x00, 0x00                           // ....
                }, 

                "vendor-id", 
                Buffer (0x04)
                {
                     0x21, 0x1B, 0x00, 0x00                           // !...
                }, 

                "device_type", 
                Buffer (0x07)
                {
                    "Bridge"
                }, 

                "model", 
                Buffer (0x2B)
                {
                    "ASM1187e PCI express x1 Upstream Switch #1"
                }, 

                "name", 
                Buffer (0x60)
                {
                    "ASM1187e, PCI express packet switch, 1 PCIe x1 Gen2 upstream port to 7 PCIe x 1 Gen2 downstream"
                }
            }
        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
        Return (Local0)
    }
    
    Method (_SB.PCI0.RP03.PXSX.BRG2._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (!Arg2)
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Local0 = Package (0x12)
            {
                "AAPL,slot-name", 
                Buffer (0x09)
                {
                    "Built In"
                }, 

                "built-in", 
                Buffer (One)
                {
                     0x01                                             // .
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x87, 0x11, 0x00, 0x00                           // ....
                }, 

                "vendor-id", 
                Buffer (0x04)
                {
                     0x21, 0x1B, 0x00, 0x00                           // !...
                }, 

                "device_type", 
                Buffer (0x07)
                {
                    "Bridge"
                }, 

                "model", 
                Buffer (0x2B)
                {
                    "ASM1187e PCI express x1 Upstream Switch #2"
                }, 

                "name", 
                Buffer (0x60)
                {
                    "ASM1187e, PCI express packet switch, 1 PCIe x1 Gen2 upstream port to 7 PCIe x 1 Gen2 downstream"
                }
            }
        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
        Return (Local0)
    }
    
        Method (_SB.PCI0.RP03.PXSX.BRG3._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (!Arg2)
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Local0 = Package (0x12)
            {
                "AAPL,slot-name", 
                Buffer (0x09)
                {
                    "Built In"
                }, 

                "built-in", 
                Buffer (One)
                {
                     0x01                                             // .
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x87, 0x11, 0x00, 0x00                           // ....
                }, 

                "vendor-id", 
                Buffer (0x04)
                {
                     0x21, 0x1B, 0x00, 0x00                           // !...
                }, 

                "device_type", 
                Buffer (0x07)
                {
                    "Bridge"
                }, 

                "model", 
                Buffer (0x2B)
                {
                    "ASM1187e PCI express x1 Upstream Switch #3"
                }, 

                "name", 
                Buffer (0x60)
                {
                    "ASM1187e, PCI express packet switch, 1 PCIe x1 Gen2 upstream port to 7 PCIe x 1 Gen2 downstream"
                }
            }
        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
        Return (Local0)
    }
        Method (_SB.PCI0.RP03.PXSX.BRG4._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (!Arg2)
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Local0 = Package (0x12)
            {
                "AAPL,slot-name", 
                Buffer (0x09)
                {
                    "Built In"
                }, 

                "built-in", 
                Buffer (One)
                {
                     0x01                                             // .
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x87, 0x11, 0x00, 0x00                           // ....
                }, 

                "vendor-id", 
                Buffer (0x04)
                {
                     0x21, 0x1B, 0x00, 0x00                           // !...
                }, 

                "device_type", 
                Buffer (0x07)
                {
                    "Bridge"
                }, 

                "model", 
                Buffer (0x2B)
                {
                    "ASM1187e PCI express x1 Upstream Switch #4"
                }, 

                "name", 
                Buffer (0x60)
                {
                    "ASM1187e, PCI express packet switch, 1 PCIe x1 Gen2 upstream port to 7 PCIe x 1 Gen2 downstream"
                }
            }
        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
        Return (Local0)
    }
        Method (_SB.PCI0.RP03.PXSX.BRG5._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (!Arg2)
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Local0 = Package (0x12)
            {
                "AAPL,slot-name", 
                Buffer (0x09)
                {
                    "Built In"
                }, 

                "built-in", 
                Buffer (One)
                {
                     0x01                                             // .
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x87, 0x11, 0x00, 0x00                           // ....
                }, 

                "vendor-id", 
                Buffer (0x04)
                {
                     0x21, 0x1B, 0x00, 0x00                           // !...
                }, 

                "device_type", 
                Buffer (0x07)
                {
                    "Bridge"
                }, 

                "model", 
                Buffer (0x2B)
                {
                    "ASM1187e PCI express x1 Upstream Switch #5"
                }, 

                "name", 
                Buffer (0x60)
                {
                    "ASM1187e, PCI express packet switch, 1 PCIe x1 Gen2 upstream port to 7 PCIe x 1 Gen2 downstream"
                }
            }
        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
        Return (Local0)
    }
        Method (_SB.PCI0.RP03.PXSX.BRG6._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (!Arg2)
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Local0 = Package (0x12)
            {
                "AAPL,slot-name", 
                Buffer (0x09)
                {
                    "Built In"
                }, 

                "built-in", 
                Buffer (One)
                {
                     0x01                                             // .
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x87, 0x11, 0x00, 0x00                           // ....
                }, 

                "vendor-id", 
                Buffer (0x04)
                {
                     0x21, 0x1B, 0x00, 0x00                           // !...
                }, 

                "device_type", 
                Buffer (0x07)
                {
                    "Bridge"
                }, 

                "model", 
                Buffer (0x2B)
                {
                    "ASM1187e PCI express x1 Upstream Switch #6"
                }, 

                "name", 
                Buffer (0x60)
                {
                    "ASM1187e, PCI express packet switch, 1 PCIe x1 Gen2 upstream port to 7 PCIe x 1 Gen2 downstream"
                }
            }
        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
        Return (Local0)
    }
        Method (_SB.PCI0.RP03.PXSX.BRG7._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (!Arg2)
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Local0 = Package (0x12)
            {
                "AAPL,slot-name", 
                Buffer (0x09)
                {
                    "Built In"
                }, 

                "built-in", 
                Buffer (One)
                {
                     0x01                                             // .
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x87, 0x11, 0x00, 0x00                           // ....
                }, 

                "vendor-id", 
                Buffer (0x04)
                {
                     0x21, 0x1B, 0x00, 0x00                           // !...
                }, 

                "device_type", 
                Buffer (0x07)
                {
                    "Bridge"
                }, 

                "model", 
                Buffer (0x2B)
                {
                    "ASM1187e PCI express x1 Upstream Switch #7"
                }, 

                "name", 
                Buffer (0x60)
                {
                    "ASM1187e, PCI express packet switch, 1 PCIe x1 Gen2 upstream port to 7 PCIe x 1 Gen2 downstream"
                }
            }
        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
        Return (Local0)
    }
}    

