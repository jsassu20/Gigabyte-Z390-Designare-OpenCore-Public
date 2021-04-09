DefinitionBlock ("", "SSDT", 1, "Z170D", "GFX1", 0x00000000)
{
   External (_SB_.PCI0.PEG0.GFX0, DeviceObj)

        
    Device (_SB.PCI0.PEG0.GFX1)
    {
        Name (_SUN, One)  // _SUN: Slot User Number
        Name (_ADR, Zero)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package ()
            {
                "AAPL,slot-name", Buffer () {"PCIe x16 Slot 1"},
                "model", Buffer () {"AMD Radeon RX 570"},
                "device-type", Buffer () {"VGA Compatible Controller"},  
                "hda-gfx", Buffer (0x0A) {"onboard-1"},
                
                "device-id", 
                Buffer (0x04)
                {
                     0xDF, 0x67, 0x00, 0x00                           // ....
                },
                
                "vendor-id", 
                Buffer (0x04)
                {
                     0x02, 0x10, 0x00, 0x00                           // ....
                }, 

                "subsystem-vendor-id", 
                Buffer (0x04)
                {
                     0x02, 0x10, 0x00, 0x00                           // ....
                }, 

                "@0,connector-type", 
                Buffer (0x04)
                {
                     0x00, 0x08, 0x00, 0x00                           // ....
                }, 

                "@1,connector-type", 
                Buffer (0x04)
                {
                     0x00, 0x08, 0x00, 0x00                           // ....
                }, 

                "@2,connector-type", 
                Buffer (0x04)
                {
                     0x00, 0x08, 0x00, 0x00                           // ....
                }, 

                "@3,connector-type", 
                Buffer (0x04)
                {
                     0x00, 0x08, 0x00, 0x00                           // ....
                }, 

                "@4,connector-type", 
                Buffer (0x04)
                {
                     0x00, 0x08, 0x00, 0x00                           // ....
                }, 

                "@5,connector-type", 
                Buffer (0x04)
                {
                     0x00, 0x08, 0x00, 0x00                           // ....
                }
            })
        }
    }

    Device (_SB.PCI0.PEG0.HDAU)
    {
        Name (_ADR, One)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
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
                    "PCIe x16 Slot 1"
                },
                
                "model", 
                Buffer ()
                {
                    "AMD Radeon RX 570 Audio Output Controller"
                },
                
                "device-type", 
                Buffer ()
                {
                    "Audio Device"
                }, 
                
                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 

                "PinConfigurations", 
                Buffer (0x04)
                {
                     0xE0, 0x00, 0x56, 0x28                           // ..V(
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0xF0, 0xAA, 0x00, 0x00                           // ....
                },
                
                "vendor-id", 
                Buffer (0x04)
                {
                     0x02, 0x10, 0x00, 0x00                           // ....
                }
            })
        }
    }

    Name (_SB.PCI0.PEG0.GFX0._STA, Zero)  // _STA: Status
}

