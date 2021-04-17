DefinitionBlock ("", "SSDT", 2, "APPLE", "SRAM", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    
    Device (_SB.PCI0.SRAM)
    {
        Name (_ADR, 0x00140002)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer ()
                {
                     0x03                                             // .
                })
            }
            Return (Package ()
            {
                "AAPL,slot-name", 
                "Built In", 
                "model", 
                Buffer ()
                {
                    "Intel Cannon Lake 300 Series PCH Shared System RAM Controller"
                }, 
                "name", 
                Buffer ()
                {
                    "Intel Canon Lake PCH Shared System RAM Controller"
                }, 
                "device_type", 
                Buffer ()
                {
                    "RAM Memory Controller"
                }, 
                "device-id", 
                Buffer ()
                {
                     0x6F, 0xA3, 0x00, 0x00                           // ....
                }, 
                "compatible", 
                Buffer ()
                {
                    "pci8086,a36f"
                }
            })
        }
    }
}