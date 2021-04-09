DefinitionBlock ("", "SSDT", 2, "Z170D", "HDEF", 0x00000000)
{
    External (_SB_.PCI0.HDEF, DeviceObj)

    Method (_SB.PCI0.HDEF._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
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
                "model", 
                Buffer (0x3A)
                {
                    "100 Series/C230 Series Chipset Family HD Audio Controller"
                }, 

                "layout-id", 
                Buffer (0x04)
                {
                     0x01, 0x00, 0x00, 0x00                           // ....
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "AAPL,slot-name", 
                Buffer (0x09)
                {
                    "PCIe Bus"
                }, 

                "device_type", 
                Buffer (0x0D)
                {
                    "Audio Device"
                }
            })
        }
    }


