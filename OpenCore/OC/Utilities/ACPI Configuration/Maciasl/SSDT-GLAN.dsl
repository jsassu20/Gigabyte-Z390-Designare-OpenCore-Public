DefinitionBlock ("", "SSDT", 1, "Z170D", "GLAN", 0x00000000)
{
    External (_SB_.PCI0.GLAN, DeviceObj)

    Method (_SB.PCI0.GLAN._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (!Arg2)
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package ()
        {
            "AAPL,slot-name", 
            Buffer ()
            {
                "PCIe Bus"
            }, 

            "model", 
            Buffer ()
            {
                "Intel i219V2 Gigabit Ethernet Network Interface"
            }, 

            "name", 
            Buffer ()
            {
                "Intel Gigabit LAN Interface #2"
            },
            
            "device-type", 
            Buffer ()
            {
                "Ethernet Controller"
            }, 

            "built-in", 
            Buffer (One)
            {
                 0x01                                             // .
            }, 

            "device-id", 
            Buffer (0x04)
            {
                 0xB8, 0x15, 0x00, 0x00                           // ....
            },
            
            "vendor-id", 
            Buffer (0x04)
            {
                 0x86, 0x80, 0x00, 0x00                           // ....
            },  

            "subsystem-id", 
            Buffer (0x04)
            {
                 0x00, 0x86, 0x00, 0x00                           // ....
            }, 

            "subsystem-vendor-id", 
            Buffer (0x04)
            {
                 0x43, 0x10, 0x00, 0x00                           // C...
            }
        })
    }
}

