DefinitionBlock ("", "SSDT", 1, "Z170D", "SMBU", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.SBUS, DeviceObj)

    OperationRegion (GPIO, SystemIO, 0x0500, 0x3C)
    Field (GPIO, ByteAcc, NoLock, Preserve)
    {
        Offset (0x0C), 
        GL00,   8, 
        Offset (0x2C), 
            ,   1, 
        GI01,   1, 
            ,   1, 
        GI06,   1, 
        Offset (0x2D), 
        GL04,   8
    }

    Device (_SB.PCI0.SBUS)
    {
        Name (_ADR, 0x001f0004)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "100 Series/C230 Series Chipset Family SMBus Controller" },
				"device_type", Buffer () { "SMBus" },
				"AAPL,slot-name", Buffer () { "Internal PCIe Bridge" },
			})
		}
        Device (BUS0)
        {
            Name (_CID, "smbus")  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Device (MKY0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_CID, "mikey")  // _CID: Compatible ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    Return (Package (0x07)
                    {
                        "refnum", 
                        Zero, 
                        "address", 
                        0x39, 
                        "device-id", 
                        0x0CCB, 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }
                    })
                }

                Method (H1EN, 1, Serialized)
                {
                    If ((Arg0 <= One))
                    {
                        If ((Arg0 == One))
                        {
                            GL04 |= 0x04
                        }
                        Else
                        {
                            GL04 &= 0xFB
                        }
                    }
                }

                Method (H1IL, 0, Serialized)
                {
                    Local0 = ((GL00 & 0x02) >> One)
                    Return (Local0)
                }

                Method (H1IP, 1, Serialized)
                {
                    If ((Arg0 <= One))
                    {
                        Arg0 = ~Arg0
                        GI01 = Arg0
                    }
                }

                Name (H1IN, 0x11)
                Scope (\_GPE)
                {
                    Method (_L11, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
                    {
                        Notify (\_SB.PCI0.SBUS.BUS0.MKY0, 0x80) // Status Change
                    }
                }

                Method (P1IL, 0, Serialized)
                {
                    Local0 = ((GL00 & 0x40) >> 0x06)
                    Return (Local0)
                }

                Method (P1IP, 1, Serialized)
                {
                    If ((Arg0 <= One))
                    {
                        Arg0 = ~Arg0
                        GI06 = Arg0
                    }
                }

                Name (P1IN, 0x16)
                Scope (\_GPE)
                {
                    Method (_L14, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
                    {
                        GI06 ^= One
                        Notify (\_SB.PCI0.SBUS.BUS0.MKY0, 0x80) // Status Change
                    }
                }
            }

            Device (DVL0)
            {
                Name (_ADR, 0x57)  // _ADR: Address
                Name (_CID, "diagsvault")  // _CID: Compatible ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    Return (Package (0x03)
                    {
                        "address", 
                        0x57, 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }
                    })
                }
            }

            Device (BLC0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_CID, "smbus-blc")  // _CID: Compatible ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    Return (Package (0x0E)
                    {
                        "refnum", 
                        Zero, 
                        "version", 
                        0x02, 
                        "fault-off", 
                        0x03, 
                        "fault-len", 
                        0x04, 
                        "skey", 
                        0x4C445342, 
                        "type", 
                        0x49324300, 
                        "smask", 
                        0xFF
                    })
                }
            }
        }

        Device (BUS1)
        {
            Name (_CID, "smbus")  // _CID: Compatible ID
            Name (_ADR, One)  // _ADR: Address
        }
    }
}

