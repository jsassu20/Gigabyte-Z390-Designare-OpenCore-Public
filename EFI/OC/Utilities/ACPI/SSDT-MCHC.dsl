DefinitionBlock ("", "SSDT", 2, "Z170D", "MCHC", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.MCHC, DeviceObj)

    Scope (_SB.PCI0)
    {
        Device (MCHC)
        {
            Name (_ADR, 0x00000000)
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
            
  		    Method (_DSM, 4, NotSerialized)
		    {
			    If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			    Return (Package ()
			    {
				"model", Buffer () { "Xeon E3-1200 v5/E3-1500 v5/6th Gen Core Processor Host Bridge/DRAM Registers" },
				"device_type", Buffer () { "Host bridge" },
				"AAPL,slot-name", Buffer () { "PCIe Bridge" },
			     })
            }
		}
    }
}

