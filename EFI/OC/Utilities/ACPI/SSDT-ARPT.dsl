
DefinitionBlock ("", "SSDT", 1, "AZ170D", "RP03", 0x00000000)
{
    External (_SB_.PCI0.RP03, DeviceObj)
    External (_SB_.PCI0.RP03.PEGP, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_SB.PCI0.RP03)
    {
        Device (PXSX)
        {
            Device (EGP5)
            {
                Name (_ADR, 0x00050000)  // _ADR: Address
                Device (ARPT)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Local0 = Package (0x0E)
                            {
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

                                "AAPL,slot-name", 
                                Buffer (0x07)
                                {
                                    "Slot-3"
                                }, 

                                "device_type", 
                                Buffer (0x13)
                                {
                                    "AirPort Controller"
                                }, 

                                "model", 
                                Buffer (0x41)
                                {
                                    "Broadcom BCM94360CD 802.11 a/b/g/n/ac + Bluetooth 4.0 Controller"
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
                    }
                }
            }

            Device (EGP6)
            {
                Name (_ADR, 0x00060000)  // _ADR: Address
                Device (GLAN)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Local0 = Package (0x0E)
                            {
                                "built-in", 
                                Buffer (One)
                                {
                                     0x00                                             // .
                                }, 

                                "device-id", 
                                Buffer (0x04)
                                {
                                     0x39, 0x15, 0x00, 0x00                           // 9...
                                }, 

                                "AAPL,slot-name", 
                                Buffer (0x07)
                                {
                                    "Slot-3"
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
            
            Device (EGP7)
            {
                Name (_ADR, 0x00070000)  // _ADR: Address
                Device (XHC5)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Local0 = Package (0x0E)
                            {
                                "built-in", 
                                Buffer (One)
                                {
                                     0x00                                             // .
                                }, 

                                "device-id", 
                                Buffer (0x04)
                                {
                                     0x39, 0x15, 0x00, 0x00                           // 9...
                                }, 

                                "AAPL,slot-name", 
                                Buffer (0x07)
                                {
                                    "Slot-3"
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
                            PLD_Order              = 0x0)

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


                    Device (SS02)
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
                            PLD_Order              = 0x0)

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
                            PLD_Order              = 0x0)

                    })
                }

                Device (HS02)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF, 
                        0x03, 
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
                            PLD_Order              = 0x0)

                    })
                 
                }
                }
                }
            }
        }
    }
}

