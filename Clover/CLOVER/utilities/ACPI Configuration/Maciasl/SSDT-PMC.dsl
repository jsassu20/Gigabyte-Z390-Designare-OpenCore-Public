DefinitionBlock ("", "SSDT", 2, "Z170D", "PMCR", 0x00001000)
{
    External (_SB_.PCI0.LPCB, DeviceObj)

    Scope (\_SB.PCI0.LPCB)
    {
        Device (PMCR)
        {
		    Name (_ADR, 0x001f0002)
		    Method (_DSM, 4, NotSerialized)
		    {
			    If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			    Return (Package ()
			    {
				"model", Buffer () { "100 Series/C230 Series Chipset Family Power Management Controller" },
				"device_type", Buffer () { "Power Management" },
				"AAPL,slot-name", Buffer () { "PCIe Bus" },
			    })
		    }
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
    }
}

