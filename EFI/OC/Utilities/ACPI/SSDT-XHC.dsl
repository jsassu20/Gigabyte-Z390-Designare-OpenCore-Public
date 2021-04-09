DefinitionBlock ("", "SSDT", 1, "AZ170D", "XHC", 0x00000000)
{
    External (_SB_.PCI0.XHC_, DeviceObj)

    Method (_SB.PCI0.XHC._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
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
            Buffer (0x09)
            {
                "Built In"
            }, 

            "name", 
            Buffer ()
            {
                "Intel USB Controller"
            },
            
            "device_type", 
            Buffer (0x0F)
            {
                 "USB Controller"
            },  

            "model", 
            Buffer (0x37)
            {
                "Intel 10 Series Chipset Family USB xHC Host Controller"
            }, 

            "AAPL,current-available", 
            0x0834, 
            "AAPL,current-extra", 
            0x0A8C, 
            "AAPL,current-in-sleep", 
            0x0A8C, 
            "AAPL,max-port-current-in-sleep", 
            0x0834, 
            "AAPL,device-internal", 
            Zero, 
            Buffer (One)
            {
                 0x00                                             // .
            }, 

            "AAPL,clock-id", 
            Buffer (One)
            {
                 0x01                                             // .
            }, 

            "device-id", 
            Buffer (0x04)
            {
                 0x2F, 0xA1, 0x00, 0x00                           // pr..
            },
            
            "vendor-id", 
            Buffer (0x04)
            {
                 0x86, 0x80, 0x00, 0x00                           // ....
            },
            
            "subsystem-id", 
            Buffer (0x04)
            {
                 0x94, 0x86, 0x00, 0x00                           // pr..
            },
            
            "subsystem-vendor-id", 
            Buffer (0x04)
            {
                 0x43, 0x10, 0x00, 0x00                           // ....
            }
        })
    }
}

