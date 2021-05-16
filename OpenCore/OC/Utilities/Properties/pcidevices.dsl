DefinitionBlock ("", "SSDT", 2, "HACK", "PCI", 0x00000000)
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
				"model", Buffer () { "Intel 8th Gen Core Processor Host Bridge/DRAM Registers" },
				"device_type", Buffer () { "Host Bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,0,0" },
			})
		}
	}
	External (_SB_.PCI0.PEG0, DeviceObj)
	Device (_SB.PCI0.PEG0)
	{
		Name (_ADR, 0x00010000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Intel Xeon E3-1200 8th Generation Core Processor PCI Express x16 Controller" },
				"device_type", Buffer () { "PCI Bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,1,0" },
			})
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
				"model", Buffer () { "Intel Xeon E3-1200 8th Gen Core Processor PCI Express Controller (x8)" },
				"device_type", Buffer () { "PCI Bridge" },
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
				"hda-gfx", Buffer () { "onboard-2" },
				"AAPL,slot-name", Buffer () { "Internal@0,2,0" },
				"framebuffer-patch-enable", Buffer () { 0x01, 0x00, 0x00, 0x00 },
				"framebuffer-unifiedmem", Buffer () { 0x00, 0x00, 0x00, 0x80 },
				"AAPL,ig-platform-id", Buffer () { 0x03, 0x00, 0x91, 0x3E },
				"model", Buffer () { "Intel CometLake-S GT2 [UHD Graphics 630]" },
				"device_type", Buffer () { "Display Controller" },
			})
		}
	}
	External (_SB_.PCI0.PCHT, DeviceObj)
	Device (_SB.PCI0.PCHT)
	{
		Name (_ADR, 0x00120000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Intel Cannon Lake 11 Series Chipset PCH Thermal Controller" },
				"device_type", Buffer () { "Signal Processing Controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,18,0" },
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
				"model", Buffer () { "Intel Cannon Lake 11 Series Chipset PCH USB 3.1 xHCI Host Controller" },
				"device_type", Buffer () { "USB Controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,20,0" },
			})
		}
	}
	External (_SB_.PCI0.SRAM, DeviceObj)
	Device (_SB.PCI0.SRAM)
	{
		Name (_ADR, 0x00140002)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Intel Cannon Lake 11 Series Chipset PCH Shared SRAM" },
				"device_type", Buffer () { "RAM Memory" },
				"AAPL,slot-name", Buffer () { "Internal@0,20,2" },
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
				"model", Buffer () { "Intel Cannon Lake 11 Series Chipset PCH HECI Controller" },
				"device_type", Buffer () { "Communication Controller" },
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
				"model", Buffer () { "Intel Cannon Lake 11 Series Chipset PCH SATA AHCI Controller" },
				"device_type", Buffer () { "SATA Controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,23,0" },
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
				"model", Buffer () { "Intel Cannon Lake 11 Series Chipset PCH PCI Express Root Port #17" },
				"device_type", Buffer () { "PCI Bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,27,0" },
			})
		}
	}
	External (_SB_.PCI0.RP21, DeviceObj)
	Device (_SB.PCI0.RP21)
	{
		Name (_ADR, 0x001b0004)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Intel Cannon Lake 11 Series Chipset PCH PCI Express Root Port #21" },
				"device_type", Buffer () { "PCI Bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,27,4" },
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
				"model", Buffer () { "Western Digital Black SN750 NVM Express Solid State Drive" },
				"device_type", Buffer () { "NVM Express Controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,1,1/0,0" },
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
				"model", Buffer () { "Intel Cannon Lake 11 Series Chipset PCH PCI Express Root Port #1" },
				"device_type", Buffer () { "PCI Bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,0" },
			})
		}
	}
	External (_SB_.PCI0.RP02, DeviceObj)
	Device (_SB.PCI0.RP02)
	{
		Name (_ADR, 0x001c0001)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Intel Cannon Lake 11 Series Chipset PCH PCI Express Root Port #2" },
				"device_type", Buffer () { "PCI Bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,1" },
			})
		}
	}
	External (_SB_.PCI0.PEG0.GFX0, DeviceObj)
	Device (_SB.PCI0.PEG0.GFX0)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "AMD Radeon RX 570" },
				"hda-gfx", Buffer () { "onboard-1" },
				"AAPL,slot-name", Buffer () { "Internal@0,1,0/0,0" },
				"device_type", Buffer () { "VGA Compatible Controller" },
			})
		}
	}
	External (_SB_.PCI0.RP04, DeviceObj)
	Device (_SB.PCI0.RP04)
	{
		Name (_ADR, 0x001c0003)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Intel Cannon Lake 11 Series Chipset PCH PCI Express Root Port #4" },
				"device_type", Buffer () { "PCI Bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,3" },
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
				"model", Buffer () { "AMD Radeon RX 570 HDMI Audio [Ellesmere] Polaris" },
				"device_type", Buffer () { "Audio Device" },
				"AAPL,slot-name", Buffer () { "Internal@0,1,0/0,1" },
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
				"model", Buffer () { "Intel Cannon Lake 11 Series Chipset PCH PCI Express Root Port #5" },
				"device_type", Buffer () { "PCI Bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,4" },
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
				"model", Buffer () { "Intel Z390 Chipset LPC/eSPI Controller" },
				"device_type", Buffer () { "ISA Bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,31,0" },
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
				"model", Buffer () { "Intel Cannon Lake 11 Series Chipset PCH PCI Express Root Port #9" },
				"device_type", Buffer () { "PCI Bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,29,0" },
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
				"model", Buffer () { "Intel Cannon Lake 11 Series Chipset PCH cAVS (Realtek ALC1220 High Definition Audio)" },
				"layout-id", Buffer () { 0x10, 0x00, 0x00, 0x00 },
				"hda-gfx", Buffer () { "onboard-1" },
				"AAPL,slot-name", Buffer () { "Internal@0,31,3" },
				"device_type", Buffer () { "Audio Device" },
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
				"model", Buffer () { "Intel Cannon Lake 11 Series Chipset PCH SMBus Controller" },
				"device_type", Buffer () { "SMBus" },
				"AAPL,slot-name", Buffer () { "Internal@0,31,4" },
			})
		}
	}
	External (_SB_.PCI0.XSPI, DeviceObj)
	Device (_SB.PCI0.XSPI)
	{
		Name (_ADR, 0x001f0005)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Intel Cannon Lake 11 Series Chipset PCH SPI Controller" },
				"device_type", Buffer () { "Serial Bus Controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,31,5" },
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
				"model", Buffer () { "Intel I219-V Gigabit LAN Wired Ethernet Controller" },
				"device_type", Buffer () { "Ethernet Controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,31,6" },
			})
		}
	}
	External (_SB_.PCI0.RP17.ANS3, DeviceObj)
	Device (_SB.PCI0.RP17.ANS3)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Western Digital Black SN750 NVM Express Solid State Drive" },
				"device_type", Buffer () { "NVM Express Controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,27,0/0,0" },
			})
		}
	}
	External (_SB_.PCI0.RP21.UPSB, DeviceObj)
	Device (_SB.PCI0.RP21.UPSB)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Intel JHL6540 Alpine Ridge Thunderbolt 3 Bridge" },
				"device_type", Buffer () { "PCI Bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,27,4/0,0" },
			})
		}
	}
	External (_SB_.PCI0.RP02.D05D, DeviceObj)
	Device (_SB.PCI0.RP02.D05D)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Intel I211 Gigabit LAN Wired Ethernet Connection" },
				"device_type", Buffer () { "Ethernet Controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,1/0,0" },
			})
		}
	}
	External (_SB_.PCI0.RP05.UPSB, DeviceObj)
	Device (_SB.PCI0.RP05.UPSB)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Intel JHL7540 Titan Ridge Thunderbolt 3 Bridge" },
				"device_type", Buffer () { "PCI Bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,4/0,0" },
			})
		}
	}
	External (_SB_.PCI0.RP04.ARPT, DeviceObj)
	Device (_SB.PCI0.RP04.ARPT)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "AirPort Extreme WiFi Adapter (Broadcom BCM94360CD Wireless AC Card)" },
				"device_type", Buffer () { "AirPort Extreme" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,3/0,0" },
			})
		}
	}
	External (_SB_.PCI0.RP21.UPSB.DSB0, DeviceObj)
	Device (_SB.PCI0.RP21.UPSB.DSB0)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Intel JHL6540 Alpine Ridge Thunderbolt 3 Bridge" },
				"device_type", Buffer () { "PCI Bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,27,4/0,0/0,0" },
			})
		}
	}
	External (_SB_.PCI0.RP21.UPSB.DSB1, DeviceObj)
	Device (_SB.PCI0.RP21.UPSB.DSB1)
	{
		Name (_ADR, 0x00010000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Intel JHL6540 Alpine Ridge Thunderbolt 3 Bridge" },
				"device_type", Buffer () { "PCI Bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,27,4/0,0/1,0" },
			})
		}
	}
	External (_SB_.PCI0.RP05.UPSB.DSB0, DeviceObj)
	Device (_SB.PCI0.RP05.UPSB.DSB0)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Intel JHL7540 Titan Ridge Thunderbolt 3 Bridge" },
				"device_type", Buffer () { "PCI Bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,4/0,0/0,0" },
			})
		}
	}
	External (_SB_.PCI0.RP21.UPSB.DSB2, DeviceObj)
	Device (_SB.PCI0.RP21.UPSB.DSB2)
	{
		Name (_ADR, 0x00020000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Intel JHL6540 Alpine Ridge Thunderbolt 3 Bridge" },
				"device_type", Buffer () { "PCI Bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,27,4/0,0/2,0" },
			})
		}
	}
	External (_SB_.PCI0.RP05.UPSB.DSB1, DeviceObj)
	Device (_SB.PCI0.RP05.UPSB.DSB1)
	{
		Name (_ADR, 0x00010000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Intel JHL7540 Titan Ridge Thunderbolt 3 Bridge" },
				"device_type", Buffer () { "PCI Bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,4/0,0/1,0" },
			})
		}
	}
	External (_SB_.PCI0.RP21.UPSB.DSB4, DeviceObj)
	Device (_SB.PCI0.RP21.UPSB.DSB4)
	{
		Name (_ADR, 0x00040000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Intel JHL6540 Alpine Ridge Thunderbolt 3 Bridge" },
				"device_type", Buffer () { "PCI Bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,27,4/0,0/4,0" },
			})
		}
	}
	External (_SB_.PCI0.RP05.UPSB.DSB2, DeviceObj)
	Device (_SB.PCI0.RP05.UPSB.DSB2)
	{
		Name (_ADR, 0x00020000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Intel JHL7540 Titan Ridge Thunderbolt 3 Bridge" },
				"device_type", Buffer () { "PCI Bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,4/0,0/2,0" },
			})
		}
	}
	External (_SB_.PCI0.RP05.UPSB.DSB4, DeviceObj)
	Device (_SB.PCI0.RP05.UPSB.DSB4)
	{
		Name (_ADR, 0x00040000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Intel JHL7540 Titan Ridge Thunderbolt 3 Bridge" },
				"device_type", Buffer () { "PCI Bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,4/0,0/4,0" },
			})
		}
	}
	External (_SB_.PCI0.RP21.UPSB.DSB0.NHI0, DeviceObj)
	Device (_SB.PCI0.RP21.UPSB.DSB0.NHI0)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Intel JHL6540 Alpine Ridge Thunderbolt 3 NHI" },
				"device_type", Buffer () { "Thunderbolt 3 NHI" },
				"AAPL,slot-name", Buffer () { "Internal@0,27,4/0,0/0,0/0,0" },
			})
		}
	}
	External (_SB_.PCI0.RP05.UPSB.DSB0.NHI0, DeviceObj)
	Device (_SB.PCI0.RP05.UPSB.DSB0.NHI0)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Intel JHL7540 Titan Ridge Thunderbolt 3 NHI" },
				"device_type", Buffer () { "Thunderbolt 3 NHI" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,4/0,0/0,0/0,0" },
			})
		}
	}
	External (_SB_.PCI0.RP21.UPSB.DSB2.XHC3, DeviceObj)
	Device (_SB.PCI0.RP21.UPSB.DSB2.XHC3)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Intel JHL6540 Alpine Ridge Thunderbolt 3 USB Type-C Controller" },
				"device_type", Buffer () { "USB Controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,27,4/0,0/2,0/0,0" },
			})
		}
	}
	External (_SB_.PCI0.RP05.UPSB.DSB2.XHC2, DeviceObj)
	Device (_SB.PCI0.RP05.UPSB.DSB2.XHC2)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Intel JHL7540 Titan Ridge Thunderbolt 3 USB Type-C Controller" },
				"device_type", Buffer () { "USB Controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,4/0,0/2,0/0,0" },
			})
		}
	}
}
