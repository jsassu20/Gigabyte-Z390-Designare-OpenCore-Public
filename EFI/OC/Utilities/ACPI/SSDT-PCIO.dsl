DefinitionBlock ("", "SSDT", 2, "Z170D", "INFO", 0x00000000)
{
    External (_SB_.PCI0.MCHC, DeviceObj)
	Device (_SB.PCI0.MCHC)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Xeon E3-1200 v5/E3-1500 v5/6th Gen Core Processor PCIe Controller (x16)" },
				"device_type", Buffer () { "Host Bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,0,0" },
			})
		}
	}

	External (_SB_.PCI0.PEG0.PEGP, DeviceObj)
	Device (_SB.PCI0.PEG0)
	{
            Scope (PEGP)
            {
                Name (_STA, Zero)  // _STA: Status
            }
            
            Device (GFX0)
            {
                Name (_ADR, 0x00010001)
                Method (_DSM, 4, NotSerialized)
		        {
			        If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			        Return (Package ()
			        {
                    "AAPL,slot-name", 
                    Buffer (0x0D)
                    {
                        "PCIe 3 x16_1"
                    },
                    
                    "name", Buffer () { "AMD Radeon RX 570 Graphics Card" },
                    
                    "model", Buffer () { "Radeon RX 570" },
                    
                    "device_type", Buffer () { "VGA compatible controller" }, 

                    "hda-gfx", 
                    Buffer (0x0A)
                    {
                        "onboard-2"
                    }, 

                    "model", 
                    Buffer (0x0E)
                    {
                        "Radeon RX 570"
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
	}


	External (_SB_.PCI0.PEG1, DeviceObj)
	Device (_SB.PCI0.PEG1)
	{
		Name (_ADR, 0x00010001)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Xeon E3-1200 v5/E3-1500 v5/6th Gen Core Processor PCIe Controller (x8)" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,1,1" },
			})
		}
	}

	External (_SB_.PCI0.IGPU, DeviceObj)
	Device (_SB.PCI0.IGPU)
	{
		Name (_ADR, 0x00020000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"AAPL,ig-platform-id", Buffer () { 0x01, 0x00, 0x12, 0x19 },
				"model", Buffer () { "Intel HD Graphics 530" },
				"hda-gfx", Buffer () { "onboard-1" },
				"AAPL,slot-name", Buffer () { "Internal@0,2,0" },
				"device_type", Buffer () { "VGA compatible controller" },
			})
		}
	}
	External (_SB_.PCI0.RP17, DeviceObj)
	Device (_SB.PCI0.RP17)
	{
		Name (_ADR, 0x001b0000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "100 Series/C230 Series Chipset Family PCI Express Root Port #17" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,27,0" },
			})
		}
	}
	External (_SB_.PCI0.RP01, DeviceObj)
	Device (_SB.PCI0.RP01)
	{
		Name (_ADR, 0x001c0000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "100 Series/C230 Series Chipset Family PCI Express Root Port #1" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,0" },
			})
		}
	}
	External (_SB_.PCI0.RP03, DeviceObj)
	Device (_SB.PCI0.RP03)
	{
		Name (_ADR, 0x001c0002)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "100 Series/C230 Series Chipset Family PCI Express Root Port #3" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,2" },
			})
		}
	}
	External (_SB_.PCI0.PPMC, DeviceObj)
	Device (_SB.PCI0.PPMC)
	{
		Name (_ADR, 0x001f0002)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "100 Series/C230 Series Chipset Family Power Management Controller" },
				"device_type", Buffer () { "Memory controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,31,2" },
			})
		}
	}
	External (_SB_.PCI0.XHC, DeviceObj)
	Device (_SB.PCI0.XHC)
	{
		Name (_ADR, 0x00140000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "100 Series/C230 Series Chipset Family USB 3.0 xHCI Controller" },
				"device_type", Buffer () { "USB controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,20,0" },
			})
		}
	}
	External (_SB_.PCI0.IMEI, DeviceObj)
	Device (_SB.PCI0.IMEI)
	{
		Name (_ADR, 0x00160000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "100 Series/C230 Series Chipset Family MEI Controller #1" },
				"device_type", Buffer () { "Communication controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,22,0" },
			})
		}
	}
	External (_SB_.PCI0.SATA, DeviceObj)
	Device (_SB.PCI0.SATA)
	{
		Name (_ADR, 0x00170000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Q170/Q150/B150/H170/H110/Z170/CM236 Chipset SATA Controller [AHCI Mode]" },
				"device_type", Buffer () { "SATA controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,23,0" },
			})
		}
	}
	External (_SB_.PCI0.PEG1.ANS1, DeviceObj)
	Device (_SB.PCI0.PEG1.ANS1)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "???" },
				"device_type", Buffer () { "Non-Volatile memory controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,1,1/0,0" },
			})
		}
	}
	External (_SB_.PCI0.PEG0.HDAU, DeviceObj)
	Device (_SB.PCI0.PEG0.HDAU)
	{
		Name (_ADR, 0x00000001)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Ellesmere HDMI Audio [Radeon RX 470/480 / 570/580/590]" },
				"device_type", Buffer () { "Audio device" },
				"AAPL,slot-name", Buffer () { "Internal@0,1,0/0,1" },
			})
		}
	}
	External (_SB_.PCI0.RP07, DeviceObj)
	Device (_SB.PCI0.RP07)
	{
		Name (_ADR, 0x001c0006)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "100 Series/C230 Series Chipset Family PCI Express Root Port #7" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,6" },
			})
		}
	}
	External (_SB_.PCI0.RP05, DeviceObj)
	Device (_SB.PCI0.RP05)
	{
		Name (_ADR, 0x001c0004)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "100 Series/C230 Series Chipset Family PCI Express Root Port #5" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,4" },
			})
		}
	}
	External (_SB_.PCI0.RP09, DeviceObj)
	Device (_SB.PCI0.RP09)
	{
		Name (_ADR, 0x001d0000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "100 Series/C230 Series Chipset Family PCI Express Root Port #9" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,29,0" },
			})
		}
	}
	External (_SB_.PCI0.LPCB, DeviceObj)
	Device (_SB.PCI0.LPCB)
	{
		Name (_ADR, 0x001f0000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "???" },
				"device_type", Buffer () { "ISA bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,31,0" },
			})
		}
	}
	External (_SB_.PCI0.GLAN, DeviceObj)
	Device (_SB.PCI0.GLAN)
	{
		Name (_ADR, 0x001f0006)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Ethernet Connection (2) I219-V" },
				"device_type", Buffer () { "Ethernet controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,31,6" },
			})
		}
	}
	External (_SB_.PCI0.HDEF, DeviceObj)
	Device (_SB.PCI0.HDEF)
	{
		Name (_ADR, 0x001f0003)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "100 Series/C230 Series Chipset Family HD Audio Controller" },
				"layout-id", Buffer () { 0x01, 0x00, 0x00, 0x00 },
				"hda-gfx", Buffer () { "onboard-2" },
				"AAPL,slot-name", Buffer () { "Internal@0,31,3" },
				"device_type", Buffer () { "Audio device" },
			})
		}
	}
	External (_SB_.PCI0.SBUS, DeviceObj)
	Device (_SB.PCI0.SBUS)
	{
		Name (_ADR, 0x001f0004)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "100 Series/C230 Series Chipset Family SMBus" },
				"device_type", Buffer () { "SMBus" },
				"AAPL,slot-name", Buffer () { "Internal@0,31,4" },
			})
		}
	}
	External (_SB_.PCI0.RP07.XHC4, DeviceObj)
	Device (_SB.PCI0.RP07.XHC4)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "ASM1142 USB 3.1 Host Controller" },
				"device_type", Buffer () { "USB controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,6/0,0" },
			})
		}
	}
	External (_SB_.PCI0.RP09.ANS2, DeviceObj)
	Device (_SB.PCI0.RP09.ANS2)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "???" },
				"device_type", Buffer () { "Non-Volatile memory controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,29,0/0,0" },
			})
		}
	}
	External (_SB_.PCI0.RP05.XHC3, DeviceObj)
	Device (_SB.PCI0.RP05.XHC3)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "ASM1142 USB 3.1 Host Controller" },
				"device_type", Buffer () { "USB controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,4/0,0" },
			})
		}
	}
	External (_SB_.PCI0.RP01.XHC2, DeviceObj)
	Device (_SB.PCI0.RP01.XHC2)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "ASM1142 USB 3.1 Host Controller" },
				"device_type", Buffer () { "USB controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,0/0,0" },
			})
		}
	}
	External (_SB_.PCI0.RP03.PXSX, DeviceObj)
	Device (_SB.PCI0.RP03.PXSX)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "???" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,2/0,0" },
			})
		}
	}
}