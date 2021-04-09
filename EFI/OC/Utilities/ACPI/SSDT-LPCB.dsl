DefinitionBlock ("", "SSDT", 1, "Z170D", "LPCB", 0x00000000)
{
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Method (_SB.PCI0.LPCB._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
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
                    Buffer (0x12)
                    {
                        "Internal PCIe Bus"
                    }, 
            
                    "model", 
                    Buffer ()
                    {
                        "100 Series/C230 Series Chipset LPC Controller"
                    }, 

                    "name", 
                    Buffer ()
                    {
                        "Apple Internal ISA Controller"
                    },
                    
                    "built-in", 
                    Buffer (One)
                    {
                         0x01                                             // .
                    },  

                    "device_type", 
                    Buffer ()
                    {
                        "ISA Bridge"
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0x43, 0x31, 0x00, 0x00                           // :...
                    }, 

                    "vendor-id", 
                    Buffer (0x04)
                    {
                         0x86, 0x80, 0x00, 0x00                           // ....
                    }, 

                    "subsystem-id", 
                    Buffer (0x04)
                    {
                         0x94, 0x86, 0x00, 0x00                           // ....
                    }, 

                    "subsystem-vendor-id", 
                    Buffer (0x04)
                    {
                         0x43, 0x10, 0x00, 0x00                           // C...
                    }
                })
            }
        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
        Return (Local0)
        }
    


