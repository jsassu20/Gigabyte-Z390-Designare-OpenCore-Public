DefinitionBlock ("", "SSDT", 2, "APPLE", "PCHT", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)

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

            Return (Package (0x0C)
            {
                "AAPL,slot-name", 
                "Built In", 
                "model", 
                Buffer (0x34)
                {
                    "Intel Cannon Lake 300 Series PCH Thermal Controller"
                }, 

                "name", 
                Buffer (0x28)
                {
                    "Intel Canon Lake PCH Thermal Controller"
                }, 

                "device_type", 
                Buffer (0x1D)
                {
                    "Signal Processing Controller"
                }, 

                "device-id", 
                /**** Is ResourceTemplate, but EndTag not at buffer end ****/ Buffer (0x04)
                {
                     0x79, 0xA3, 0x00, 0x00                           // y...
                }, 

                "compatible", 
                Buffer (0x0D)
                {
                    "pci8086,a379"
                }
            })
        }
    }
}

