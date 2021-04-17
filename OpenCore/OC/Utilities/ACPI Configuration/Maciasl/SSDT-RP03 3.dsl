DefinitionBlock ("", "SSDT", 1, "Z170D", "RP03", 0x00000000)
{
    External (_SB_.PCI0.RP03, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG1, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG2, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG3, DeviceObj)
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
        }

        Device (BRG2)
        {
            Name (_ADR, 0x00020000)  // _ADR: Address
        }

        Device (BRG3)
        {
            Name (_ADR, 0x00030000)  // _ADR: Address
        }

        Device (BRG4)
        {
            Name (_ADR, 0x00040000)  // _ADR: Address
        }

        Device (BRG5)
        {
            Name (_ADR, 0x00050000)  // _ADR: Address
            Device (ARPT)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Local0 = Package ()
                        {
                            "AAPL,slot-name", 
                            Buffer (0x07)
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
                                 0xE4, 0x14, 0x00, 0x00                           // .C..
                            },   

                            "device_type", 
                            Buffer ()
                            {
                                "AirPort Controller"
                            }, 

                            "model", 
                            Buffer (0x41)
                            {
                                "Broadcom BCM94360CD 802.11AC PCIe WiFi + Bluetooth 4.0 Radio Interface"
                            }, 

                            "compatible", 
                            Buffer (0x0D)
                            {
                                "pci14e4,43a0"
                            }, 

                            "name", 
                            Buffer ()
                            {
                                "AirPort Extreme"
                            }
                        }
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }
            }
        }

        Device (BRG6)
        {
            Name (_ADR, 0x00060000)  // _ADR: Address
            Device (GLAN)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Local0 = Package (0x0E)
                        {
                            "AAPL,slot-name", 
                            Buffer ()
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
                    Return (Local0)
                }
            }
        }

        Device (BRG7)
        {
            Name (_ADR, 0x00070000)  // _ADR: Address
            Device (XHC5)
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

                    Local0 = Package (0x1B)
                        {
                            "AAPL,slot-name", 
                            Buffer (0x11)
                            {
                                "PCIe x1_3 Slot"
                            }, 

                            "device-id", 
                            Buffer (0x04)
                            {
                                 0x42, 0x21, 0x00, 0x00                           // B!..
                            },
                            
                            "vendor-id", 
                            Buffer (0x04)
                            {
                                 0x21, 0x1B, 0x00, 0x00                           // B!..
                            },  

                            "name", 
                            Buffer ()
                            {
                                "ASMedia USB 3.1 Type-C Expansion Controller"
                            }, 

                            "model", 
                            Buffer ()
                            {
                                "ASMedia ASM2142 #4 USB 3.1 Type-C AIC (Front Case)"
                            }, 

                            "AAPL,current-available", 
                            0x0834, 
                            "AAPL,current-extra", 
                            0x0A8C, 
                            "AAPL,current-in-sleep", 
                            0x0A8C, 
                            "AAPL,max-port-current-in-sleep", 
                            0x0834, 
                            "AAPL,device-internal", 
                            Zero, 
                            "AAPL,clock-id", 
                            Buffer (One)
                            {
                                 0x01                                             // .
                            }, 

                            "AAPL,root-hub-depth", 
                            0x1A, 
                            "AAPL,XHC-clock-id", 
                            One, 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }

                Device (RHUB)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (SSP1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0x09, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "UNKNOWN",
                                PLD_VerticalPosition   = "UPPER",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0,
                                PLD_VerticalOffset     = 0x0,
                                PLD_HorizontalOffset   = 0x0)

                        })
                        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg2 == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x03                                             // .
                                })
                            }

                            Return (Package (0x02)
                            {
                                "UsbCPortNumber", 
                                One
                            })
                        }
                    }

                    Device (HS01)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0x09, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "UNKNOWN",
                                PLD_VerticalPosition   = "UPPER",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0,
                                PLD_VerticalOffset     = 0x0,
                                PLD_HorizontalOffset   = 0x0)

                        })
                    }

                    Device (HS02)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "UNKNOWN",
                                PLD_VerticalPosition   = "UPPER",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0,
                                PLD_VerticalOffset     = 0x0,
                                PLD_HorizontalOffset   = 0x0)

                        })
                    }
                }
            }
        }
    }
}

