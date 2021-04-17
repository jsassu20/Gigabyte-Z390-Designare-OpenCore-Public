DefinitionBlock ("", "SSDT", 1, "Z170D", "RP03", 0x00000000)
{
    External (_SB_.PCI0.RP03, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG1, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG2, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG3, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG3.SATA, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG4, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG5, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG5.ARPT, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG5.XHC5, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG6, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG6.GLAN, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG7, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_SB.PCI0.RP03.PXSX)
    {
        Device (BRG1)
        {
            Name (_ADR, 0x00010000)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Local0 = Package (0x10)
                {
                    "AAPL,slot-name", 
                    Buffer ()
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
                         0x87, 0x11, 0x00, 0x00                           // .C..
                    }, 

                    "vendor-id", 
                    Buffer (0x04)
                    {
                         0x21, 0x1B, 0x00, 0x00                           // ....
                    }, 

                    "device_type", 
                    Buffer ()
                    {
                        "Bridge"
                    }, 

                    "model", 
                    Buffer ()
                    {
                        "ASM1187e PCI express x1 Upstream Switch #1"
                    }, 

                    "name", 
                    Buffer ()
                    {
                        "ASM1187e, PCI express packet switch, 1 PCIe x1 Gen2 upstream port to 7 PCIe x 1 Gen2 downstream"
                    }
                }
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            }Return (Local0)  
        }

        Device (BRG2)
        {
            Name (_ADR, 0x00020000)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Local0 = Package (0x10)
                {
                    "AAPL,slot-name", 
                    Buffer ()
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
                         0x87, 0x11, 0x00, 0x00                           // .C..
                    }, 

                    "vendor-id", 
                    Buffer (0x04)
                    {
                         0x21, 0x1B, 0x00, 0x00                           // ....
                    }, 

                    "device_type", 
                    Buffer ()
                    {
                        "Bridge"
                    }, 

                    "model", 
                    Buffer ()
                    {
                        "ASM1187e PCI express x1 Upstream Switch #2"
                    }, 

                    "name", 
                    Buffer ()
                    {
                        "ASM1187e, PCI express packet switch, 1 PCIe x1 Gen2 upstream port to 7 PCIe x 1 Gen2 downstream"
                    }
                }
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            }Return (Local0)  
        }

        Device (BRG3)
        {
            Name (_ADR, 0x00030000)  // _ADR: Address
            Device (SATA)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                     Local0 = Package (0x10)
                        {
                            "AAPL,slot-name", 
                            Buffer ()
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
                                 0x12, 0x06, 0x00, 0x00                           // 9...
                            }, 

                            "device_type", 
                            Buffer ()
                            {
                                "AHCI Controller"
                            }, 

                            "model", 
                            Buffer ()
                            {
                                "Asmedia Expanded Storage Serial ATA Controller"
                            } 
                        }
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }
            }    
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Local0 = Package (0x10)
                {
                    "AAPL,slot-name", 
                    Buffer ()
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
                         0x87, 0x11, 0x00, 0x00                           // .C..
                    }, 

                    "vendor-id", 
                    Buffer (0x04)
                    {
                         0x21, 0x1B, 0x00, 0x00                           // ....
                    }, 

                    "device_type", 
                    Buffer ()
                    {
                        "Bridge"
                    }, 

                    "model", 
                    Buffer ()
                    {
                        "ASM1187e PCI express x1 Upstream Switch #3"
                    }, 

                    "name", 
                    Buffer ()
                    {
                        "ASM1187e, PCI express packet switch, 1 PCIe x1 Gen2 upstream port to 7 PCIe x 1 Gen2 downstream"
                    }
                }
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            }Return (Local0)  
        }

        Device (BRG4)
        {
            Name (_ADR, 0x00040000)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Local0 = Package (0x10)
                {
                    "AAPL,slot-name", 
                    Buffer ()
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
                         0x87, 0x11, 0x00, 0x00                           // .C..
                    }, 

                    "vendor-id", 
                    Buffer (0x04)
                    {
                         0x21, 0x1B, 0x00, 0x00                           // ....
                    }, 

                    "device_type", 
                    Buffer ()
                    {
                        "Bridge"
                    }, 

                    "model", 
                    Buffer ()
                    {
                        "ASM1187e PCI express x1 Upstream Switch #4"
                    }, 

                    "name", 
                    Buffer ()
                    {
                        "ASM1187e, PCI express packet switch, 1 PCIe x1 Gen2 upstream port to 7 PCIe x 1 Gen2 downstream"
                    }
                }
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            }Return (Local0)  
        }

        Device (BRG5)
        {
            Name (_ADR, 0x00050000)  // _ADR: Address
            Device (ARPT)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Local0 = Package (0x10)
                        {
                            "AAPL,slot-name", 
                            Buffer (0x0F)
                            {
                                "PCIe x1_2 Slot"
                            }, 

                            "built-in", 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }, 

                            "device-id", 
                            Buffer (0x04)
                            {
                                 0xA0, 0x43, 0x00, 0x00                           // .C..
                            }, 

                            "vendor-id", 
                            Buffer (0x04)
                            {
                                 0xE4, 0x14, 0x00, 0x00                           // ....
                            }, 

                            "device_type", 
                            Buffer (0x13)
                            {
                                "AirPort Controller"
                            }, 

                            "model", 
                            Buffer (0x47)
                            {
                                "Broadcom BCM94360CD 802.11AC PCIe WiFi + Bluetooth 4.0 Radio Interface"
                            }, 

                            "compatible", 
                            Buffer (0x0D)
                            {
                                "pci14e4,43a0"
                            }, 

                            "name", 
                            Buffer (0x10)
                            {
                                "AirPort Extreme"
                            }
                        }    
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                }Return (Local0)
            }
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Local0 = Package (0x10)
                {
                    "AAPL,slot-name", 
                    Buffer ()
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
                         0x87, 0x11, 0x00, 0x00                           // .C..
                    }, 

                    "vendor-id", 
                    Buffer (0x04)
                    {
                         0x21, 0x1B, 0x00, 0x00                           // ....
                    }, 

                    "device_type", 
                    Buffer ()
                    {
                        "Bridge"
                    }, 

                    "model", 
                    Buffer ()
                    {
                        "ASM1187e PCI express x1 Upstream Switch #5"
                    }, 

                    "name", 
                    Buffer ()
                    {
                        "ASM1187e, PCI express packet switch, 1 PCIe x1 Gen2 upstream port to 7 PCIe x 1 Gen2 downstream"
                    }
                }
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            }Return (Local0)  
        }

        Device (BRG6)
        {
            Name (_ADR, 0x00060000)  // _ADR: Address
            Device (GLAN)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Local0 = Package ()
                        {
                            "AAPL,slot-name", 
                            Buffer (0x09)
                            {
                                "PCIe Bus"
                            }, 

                            "built-in", 
                            Buffer (One)
                            {
                                 0x01                                             // .
                            }, 

                            "device-id", 
                            Buffer (0x04)
                            {
                                 0x39, 0x15, 0x00, 0x00                           // 9...
                            }, 

                            "device_type", 
                            Buffer (0x13)
                            {
                                "Network Controller"
                            }, 

                            "model", 
                            Buffer (0x27)
                            {
                                "Intel I211 Gigabit Ethernet Controller"
                            }, 

                            "name", 
                            Buffer (0x27)
                            {
                                "Intel I211 Gigabit Ethernet Controller"
                            }
                        }
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    }Return (Local0)
            }
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Local0 = Package (0x10)
                {
                    "AAPL,slot-name", 
                    Buffer ()
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
                         0x87, 0x11, 0x00, 0x00                           // .C..
                    }, 

                    "vendor-id", 
                    Buffer (0x04)
                    {
                         0x21, 0x1B, 0x00, 0x00                           // ....
                    }, 

                    "device_type", 
                    Buffer ()
                    {
                        "Bridge"
                    }, 

                    "model", 
                    Buffer ()
                    {
                        "ASM1187e PCI express x1 Upstream Switch #6"
                    }, 

                    "name", 
                    Buffer ()
                    {
                        "ASM1187e, PCI express packet switch, 1 PCIe x1 Gen2 upstream port to 7 PCIe x 1 Gen2 downstream"
                    }
                }
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            }Return (Local0)  
        }

        Device (BRG7)
        {
            Name (_ADR, 0x00070000)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Local0 = Package (0x10)
                {
                    "AAPL,slot-name", 
                    Buffer ()
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
                         0x87, 0x11, 0x00, 0x00                           // .C..
                    }, 

                    "vendor-id", 
                    Buffer (0x04)
                    {
                         0x21, 0x1B, 0x00, 0x00                           // ....
                    }, 

                    "device_type", 
                    Buffer ()
                    {
                        "Bridge"
                    }, 

                    "model", 
                    Buffer ()
                    {
                        "ASM1187e PCI express x1 Upstream Switch #7"
                    }, 

                    "name", 
                    Buffer ()
                    {
                        "ASM1187e, PCI express packet switch, 1 PCIe x1 Gen2 upstream port to 7 PCIe x 1 Gen2 downstream"
                    }
                }
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            }Return (Local0)  
        }
    }
}

