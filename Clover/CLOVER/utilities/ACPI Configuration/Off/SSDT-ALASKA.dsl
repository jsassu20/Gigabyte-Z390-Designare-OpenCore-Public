DefinitionBlock ("", "SSDT", 2, "Apple", "Alaska", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.LPCB.HPET, DeviceObj)
    External (_SB_.PCI0.PEG0, DeviceObj)
    External (_SB_.PCI0.PEG0.PEGP, DeviceObj)
    External (_SB_.PCI0.PEG1, DeviceObj)
    External (_SB_.PCI0.PEG1.PEGP, DeviceObj)
    External (_SB_.PCI0.RP02, DeviceObj)
    External (_SB_.PCI0.RP02.D05D, DeviceObj)
    External (_SB_.PCI0.RP02.PXSX, DeviceObj)
    External (_SB_.PCI0.RP04, DeviceObj)
    External (_SB_.PCI0.RP04.PXSX, DeviceObj)
    External (_SB_.PCI0.RP09, DeviceObj)
    External (_SB_.PCI0.RP09.PXSX, DeviceObj)
    External (_SB_.PCI0.RP17, DeviceObj)
    External (_SB_.PCI0.RP17.PXSX, DeviceObj)
    External (_SB_.PCI0.SBUS, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)
    External (_SB_.PR00, ProcessorObj)
    External (STAS, IntObj)

    Scope (_SB)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (_OSI ("Darwin"))
            {
                STAS = One
            }
        }
    }

    Scope (\_SB.PR00)
    {
        If (_OSI ("Darwin"))
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (!Arg2)
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x02)
                {
                    "plugin-type", 
                    One
                })
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (MCHC)
        {
            Name (_ADR, Zero)  // _ADR: Address
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

    Scope (\_SB.PCI0.LPCB)
    {
        Device (EC)
        {
            Name (_HID, "ACID0001")  // _HID: Hardware ID
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

        Device (PMCR)
        {
            Name (_HID, EisaId ("APP9876"))  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0xFE000000,         // Address Base
                    0x00010000,         // Address Length
                    )
            })
        }

        Device (RTC0)
        {
            Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0070,             // Range Minimum
                    0x0070,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                IRQNoFlags ()
                    {8}
            })
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

    Device (_SB.PCI0.SBUS.BUS0)
    {
        Name (_CID, "smbus")  // _CID: Compatible ID
        Name (_ADR, Zero)  // _ADR: Address
        Device (DVL0)
        {
            Name (_ADR, 0x57)  // _ADR: Address
            Name (_CID, "diagsvault")  // _CID: Compatible ID
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (!Arg2)
                {
                    Return (Buffer (One)
                    {
                         0x57                                             // W
                    })
                }

                Return (Package (0x02)
                {
                    "address", 
                    0x57
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

    Device (_SB.PCI0.IGMM)
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

            Return (Package (0x0A)
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
                Buffer (0x3C)
                {
                    "Intel Corporation, 11 Series Chipset Gaussian Mixture Model"
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

    Device (_SB.PCI0.DMAC)
    {
        Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            IO (Decode16,
                0x0000,             // Range Minimum
                0x0000,             // Range Maximum
                0x01,               // Alignment
                0x20,               // Length
                )
            IO (Decode16,
                0x0081,             // Range Minimum
                0x0081,             // Range Maximum
                0x01,               // Alignment
                0x11,               // Length
                )
            IO (Decode16,
                0x0093,             // Range Minimum
                0x0093,             // Range Maximum
                0x01,               // Alignment
                0x0D,               // Length
                )
            IO (Decode16,
                0x00C0,             // Range Minimum
                0x00C0,             // Range Maximum
                0x01,               // Alignment
                0x20,               // Length
                )
            DMA (Compatibility, NotBusMaster, Transfer8_16, )
                {4}
        })
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

    Device (_SB.PCI0.FWHD)
    {
        Name (_HID, EisaId ("INT0800") /* Intel 82802 Firmware Hub Device */)  // _HID: Hardware ID
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            Memory32Fixed (ReadOnly,
                0xFF000000,         // Address Base
                0x01000000,         // Address Length
                )
        })
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

    Device (_SB.PCI0.PCHT)
    {
        Name (_ADR, 0x00120000)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x08)
            {
                "AAPL,slot-name", 
                "Built In", 
                "model", 
                Buffer (0x3B)
                {
                    "Intel Cannon Lake 11 Series Chipset PCH Thermal Controller"
                }, 

                "name", 
                Buffer (0x25)
                {
                    "Intel Cannon Lake Thermal Controller"
                }, 

                "device_type", 
                Buffer (0x1D)
                {
                    "Signal Processing Controller"
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

    Device (_SB.PCI0.SRAM)
    {
        Name (_ADR, 0x00140002)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x08)
            {
                "AAPL,slot-name", 
                "Built In", 
                "model", 
                Buffer (0x45)
                {
                    "Intel Cannon Lake 11 Series Chipset PCH Shared System RAM Controller"
                }, 

                "name", 
                Buffer (0x2F)
                {
                    "Intel Cannon Lake Shared System RAM Controller"
                }, 

                "device_type", 
                Buffer (0x16)
                {
                    "RAM Memory Controller"
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

    Device (_SB.PCI0.XSPI)
    {
        Name (_ADR, 0x001F0005)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x0A)
            {
                "AAPL,slot-name", 
                "Built In", 
                "model", 
                Buffer (0x4A)
                {
                    "Intel Cannon Lake 11 Series Chipset PCH SPI Serial Bus Chipset Controller"
                }, 

                "name", 
                Buffer (0x30)
                {
                    "Intel Cannon Lake Serial Bus Chipset Controller"
                }, 

                "device_type", 
                Buffer (0x13)
                {
                    "Chipset Controller"
                }, 

                "pci-device-hidden", 
                Buffer (0x08)
                {
                     0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
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

    Name (\_SB.PCI0.LPCB.HPET._CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
    {
        IRQNoFlags ()
            {0,8,11}
        Memory32Fixed (ReadWrite,
            0xFED00000,         // Address Base
            0x00000400,         // Address Length
            )
    })
    Scope (_SB.PCI0.RP02)
    {
        Scope (PXSX)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Scope (D05D)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (ETH1)
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
                    "Built In", 
                    "model", 
                    Buffer (0x31)
                    {
                        "Intel I211 Wired LAN Gigabit Ethernet Controller"
                    }, 

                    "name", 
                    Buffer (0x27)
                    {
                        "Intel I211 Gigabit Ethernet Controller"
                    }, 

                    "device_type", 
                    Buffer (0x14)
                    {
                        "Ethernet Controller"
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x39, 0x15, 0x00, 0x00                           // 9...
                    }, 

                    "compatible", 
                    Buffer (0x0D)
                    {
                        "pci8086,1539"
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

    Scope (_SB.PCI0.RP04)
    {
        Scope (PXSX)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (ARPT)
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
                    "PCIe x1 Slot", 
                    "model", 
                    Buffer (0x3D)
                    {
                        "Airport Extreme (Broadcom BCM94360CD 802.11 ac/n/g/b/a WiFi)"
                    }, 

                    "name", 
                    Buffer (0x29)
                    {
                        "Airport Extreme Wireless Network Adapter"
                    }, 

                    "device_type", 
                    Buffer (0x10)
                    {
                        "Airport Extreme"
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0xA0, 0x43, 0x00, 0x00                           // .C..
                    }, 

                    "compatible", 
                    Buffer (0x0D)
                    {
                        "pci14e4,43a0"
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

    Scope (_SB.PCI0.PEG0)
    {
        Scope (PEGP)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (GFX0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Local0 = Package (0x0A)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x0E)
                        {
                            "PCIe x16 Slot"
                        }, 

                        "name", 
                        Buffer (0x12)
                        {
                            "AMD Radeon RX 570"
                        }, 

                        "model", 
                        Buffer (0x12)
                        {
                            "AMD Radeon RX 570"
                        }, 

                        "device_type", 
                        Buffer (0x1A)
                        {
                            "VGA Compatible Controller"
                        }, 

                        "hda-gfx", 
                        Buffer (0x0A)
                        {
                            "onboard-1"
                        }
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }

        Device (HDAU)
        {
            Name (_ADR, One)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Local0 = Package (0x0E)
                    {
                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "AAPL,slot-name", 
                        Buffer (0x0E)
                        {
                            "PCIe x16 Slot"
                        }, 

                        "layout-id", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                           // ....
                        }, 

                        "name", 
                        Buffer (0x33)
                        {
                            "AMD Radeon RX 570 High Definition Audio Controller"
                        }, 

                        "model", 
                        Buffer (0x33)
                        {
                            "AMD Radeon RX 570 High Definition Audio Controller"
                        }, 

                        "device_type", 
                        Buffer (0x16)
                        {
                            "Multimedia Controller"
                        }, 

                        "hda-gfx", 
                        Buffer (0x0A)
                        {
                            "onboard-1"
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

    Scope (\_SB.PCI0.XHC.RHUB)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (Zero)
            }
            Else
            {
                Return (0x0F)
            }
        }
    }

    Device (_SB.USBX)
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

            Return (Package (0x08)
            {
                "kUSBSleepPowerSupply", 
                0x13EC, 
                "kUSBSleepPortCurrentLimit", 
                0x0834, 
                "kUSBWakePowerSupply", 
                0x13EC, 
                "kUSBWakePortCurrentLimit", 
                0x0834
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

    Device (_SB.ALS0)
    {
        Name (_HID, "ACPI0008" /* Ambient Light Sensor Device */)  // _HID: Hardware ID
        Name (_CID, "smc-als")  // _CID: Compatible ID
        Name (_ALI, 0x012C)  // _ALI: Ambient Light Illuminance
        Name (_ALR, Package (0x01)  // _ALR: Ambient Light Response
        {
            Package (0x02)
            {
                0x64, 
                0x012C
            }
        })
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

    Method (DTGP, 5, NotSerialized)
    {
        If ((Arg0 == ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b") /* Unknown UUID */))
        {
            If ((Arg1 == One))
            {
                If ((Arg2 == Zero))
                {
                    Arg4 = Buffer (One)
                        {
                             0x03                                             // .
                        }
                    Return (One)
                }

                If ((Arg2 == One))
                {
                    Return (One)
                }
            }
        }

        Arg4 = Buffer (One)
            {
                 0x00                                             // .
            }
        Return (Zero)
    }
}

