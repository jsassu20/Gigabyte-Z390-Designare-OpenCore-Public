DefinitionBlock ("", "SSDT", 2, "Z170D", "IMEI", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.HECI, DeviceObj)
    External (_SB_.PCI0.IMEI, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (_SB_.PCI0)
    {
        Scope (HECI)
        {
            Name (_STA, Zero)  // _STA: Status
        }    
    
        Device (IMEI)
        {
            Name (_ADR, 0x00160000)
		    Method (_DSM, 4, NotSerialized)
		    {
			    If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			    Return (Package ()
			    {
				    "model", Buffer () { "100 Series/C230 Series Chipset Family MEI Controller" },
                    "name", Buffer () { "Apple Internal MEI Controller" },
				    "device_type", Buffer () { "Communication Controller" },
				    "AAPL,slot-name", Buffer () { "Internal PCIe Bus" },
                    "device-id", Buffer () { 0x3A, 0xA1, 0x00, 0x00 },
                    "vendor-id", Buffer () { 0x86, 0x80, 0x00, 0x00 },
                    "subsystem-id", Buffer () { 0x94, 0x86, 0x00, 0x00 },
                    "subsystem-vendor-id", Buffer () { 0x43, 0x10, 0x00, 0x00 },
			    })
            }
        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
        Return (Local0)
        }
    }
}


