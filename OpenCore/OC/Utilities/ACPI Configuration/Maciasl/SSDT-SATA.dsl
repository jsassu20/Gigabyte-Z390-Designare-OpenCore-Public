DefinitionBlock ("", "SSDT", 1, "Z170D", "SATA", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.SAT0, DeviceObj)
    External (_SB_.PCI0.SATA, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments
    
    Scope (\_SB.PCI0)
    {
        Scope (SAT0)
        {
            Name (_STA, Zero)  // _STA: Status
        }
        Device (SATA)
        {
            Name (_ADR, 0x00170000)
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (!Arg2)
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x0E)
                {
            "AAPL,slot-name", 
            Buffer (0x09)
            {
                "Built In"
            }, 

            "built-in", 
            Buffer (One)
            {
                 0x00                                             // .
            }, 

            "device-type", 
            Buffer (0x10)
            {
                "AHCI Controller"
            }, 

            "name", 
            Buffer (0x16)
            {
                "Intel AHCI Controller"
            }, 

            "model", 
            Buffer (0x2F)
            {
                "Intel 10 Series Chipset Family SATA Controller"
            }, 

            "compatible", 
            Buffer (0x0D)
            {
                "pci8086,a102"
            }, 

            "device-id", 
            Buffer (0x04)
            {
                 0x02, 0xA1, 0x00, 0x00                           // ....
                }
            })
        }
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
    }
}
}
