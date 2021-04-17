DefinitionBlock ("", "SSDT", 1, "Z170D", "RP03", 0x00000000)
{
    External (_SB_.PCI0.RP03, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG1, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG1.SATX, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG2, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG2.USBC, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG3, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG3.SATA, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG4, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG4.SATB, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG5, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG5.ARPT, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG6, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG6.GLAN, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG7, DeviceObj)
    External (_SB_.PCI0.RP03.PXSX.BRG7.ANS3, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_SB.PCI0.RP03.PXSX)
    {
        Device (BRG1)
        {
               Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (!Arg2)
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Local0 = Package (0x12)
            {
                "AAPL,slot-name", 
                Buffer (0x09)
                {
                    "Built In"
                }, 

                "built-in", 
                Buffer (One)
                {
                     0x01                                             // .
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x87, 0x11, 0x00, 0x00                           // ....
                }, 

                "vendor-id", 
                Buffer (0x04)
                {
                     0x21, 0x1B, 0x00, 0x00                           // !...
                }, 

                "device_type", 
                Buffer (0x07)
                {
                    "Bridge"
                }, 

                "model", 
                Buffer (0x2B)
                {
                    "ASM1187e PCI express x1 Upstream Switch #1"
                }, 

                "name", 
                Buffer (0x60)
                {
                    "ASM1187e, PCI express packet switch, 1 PCIe x1 Gen2 upstream port to 7 PCIe x 1 Gen2 downstream"
                }
            }
        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
        Return (Local0)
    }
            Name (_ADR, 0x00010000)  // _ADR: Address
            Device (SATX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)
                {
	                Store (Package () 
                    {
                        "AAPL,slot-name", Buffer () {"PCIe x1.1"},
                        "built-in", Buffer () {0x00},
                        "name", Buffer () {"Asmedia Serial ATA Express PCI Bus"},
                        "model", Buffer () {"Asmedia SATA Express Controller"},  
                        "device-type", Buffer () {"SATA Controller"},
                        "device-id", Buffer (0x04) {0x87,0x11,0x00,0x00},
                        "vendor-id", Buffer (0x04) {0x21,0x1B,0x00,0x00}
	                }, Local0)
	                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
	                Return (Local0)
                }
            }
        }
        Device (BRG2)
        {
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (!Arg2)
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Local0 = Package (0x12)
            {
                "AAPL,slot-name", 
                Buffer (0x09)
                {
                    "Built In"
                }, 

                "built-in", 
                Buffer (One)
                {
                     0x01                                             // .
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0x87, 0x11, 0x00, 0x00                           // ....
                }, 

                "vendor-id", 
                Buffer (0x04)
                {
                     0x21, 0x1B, 0x00, 0x00                           // !...
                }, 

                "device_type", 
                Buffer (0x07)
                {
                    "Bridge"
                }, 

                "model", 
                Buffer (0x2B)
                {
                    "ASM1187e PCI express x1 Upstream Switch #2"
                }, 

                "name", 
                Buffer (0x60)
                {
                    "ASM1187e, PCI express packet switch, 1 PCIe x1 Gen2 upstream port to 7 PCIe x 1 Gen2 downstream"
                }
            }
        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
        Return (Local0)
    }
            Name (_ADR, 0x00020000)  // _ADR: Address
            Device (USBC)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)
                {
	                Store (Package () 
                    {
                        "AAPL,slot-name", Buffer () {"PCIe x1.2"},
                        "built-in", Buffer () {0x00},
                        "name", Buffer () {"Asmedia USB 3.1 Type-C 19 Pin Header"},
                        "model", Buffer () {"Asmedia USB Type-C Motherboard Expansion Port"},  
                        "device-type", Buffer () {"USB Header"},
                        "device-id", Buffer (0x04) {0xFF,0xFF,0x00,0x00},
                        "vendor-id", Buffer (0x04) {0xFF,0xFF,0x00,0x00}
	                }, Local0)
	                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
	                Return (Local0)
                }
            }
        }
        Device (BRG3)
        {
            
            Name (_ADR, 0x00030000)  // _ADR: Address
            Device (SATA)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)
                {
	                Store (Package () 
                    {
                        "AAPL,slot-name", Buffer () {"PCIe x1.1"},
                        "built-in", Buffer () {0x00},
                        "name", Buffer () {"Asmedia Serial ATA Express PCI Bus"},
                        "model", Buffer () {"Asmedia SATA Express Controller"},  
                        "device-type", Buffer () {"SATA Controller"},
                        "device-id", Buffer (0x04) {0x87,0x11,0x00,0x00},
                        "vendor-id", Buffer (0x04) {0x21,0x1B,0x00,0x00}
	                }, Local0)
	                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
	                Return (Local0)
                }
            }
        }
        
        Device (BRG4)
        {
            Name (_ADR, 0x00040000)  // _ADR: Address
            Device (SATB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)
                {
	                Store (Package () 
                    {
                        "AAPL,slot-name", Buffer () {"PCIe x1.1"},
                        "built-in", Buffer () {0x00},
                        "name", Buffer () {"Asmedia Serial ATA Express PCI Bus"},
                        "model", Buffer () {"Asmedia SATA Express Controller"},  
                        "device-type", Buffer () {"SATA Controller"},
                        "device-id", Buffer (0x04) {0x87,0x11,0x00,0x00},
                        "vendor-id", Buffer (0x04) {0x21,0x1B,0x00,0x00}
	                }, Local0)
	                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
	                Return (Local0)
                }
            }
        }
        Device (BRG5)
        {
            Name (_ADR, 0x00050000)  // _ADR: Address
            Device (ARPT)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)
                {
	                Store (Package () 
                    {
                        "AAPL,slot-name", Buffer () {"PCIe x1.5"},
                        "built-in", Buffer () {0x00},
                        "name", Buffer () {"AirPort Extreme Wireless Network Interface"},
                        "model", Buffer () {"Broadcom BCM94360CD AC Wifi & Bluetooth 4.0 Card"},  
                        "device-type", Buffer () {"AirPort Extreme"},
                        "device-id", Buffer (0x04) {0xE4,0x14,0x00,0x00},
                        "vendor-id", Buffer (0x04) {0xA0,0x43,0x00,0x00}
	                }, Local0)
	                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
	                Return (Local0)
                }
            }
        }

        Device (BRG6)
        {
            Name (_ADR, 0x00060000)  // _ADR: Address
            Device (GLAN)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)
                {
	                Store (Package () 
                    {
                        "AAPL,slot-name", Buffer () {"PCIe x1.6"},
                        "built-in", Buffer () {0x00},
                        "name", Buffer () {"AMD Radeon RX 570"},
                        "model", Buffer () {"VGA Compatible Controller"},  
                        "device-type", Buffer (0x0A) {"onboard-1"},
                        "device-id", Buffer (0x04) {0xB8,0x15,0x00,0x00},
                        "vendor-id", Buffer (0x04) {0x86,0x80,0x00,0x00}
	                }, Local0)
	                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
	                Return (Local0)
                }
            }
        }
        Device (BRG7)
        {
            Name (_ADR, 0x00070000)  // _ADR: Address
            Device (ANS3)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)
                {
	                Store (Package () 
                    {
                        "AAPL,slot-name", Buffer () {"PCIe x1.7"},
                        "built-in", Buffer () {0x00},
                        "name", Buffer () {"Apple NVM Express Solid State Storage"},
                        "model", Buffer () {"Apple Non-Volatile Memory Expansion Controller "},  
                        "device-type", Buffer (0x0A) {"NVME SSD"},
                        "device-id", Buffer (0x04) {0xFF,0xFF,0x00,0x00},
                        "vendor-id", Buffer (0x04) {0xFF,0xFF,0x00,0x00}
	                }, Local0)
	                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
	                Return (Local0)
                }
            }
        }    
    }
}
