DefinitionBlock ("", "SSDT", 2, "Z170D", "IGPU", 0x00000000)
{
    External (_SB_.PCI0.IGPU, DeviceObj)


        Method (_SB.PCI0.IGPU._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x22)
			{
				"framebuffer-unifiedmem", Buffer () { 0x00, 0x00, 0x00, 0x80 },
				"framebuffer-con2-enable", Buffer () { 0x01, 0x00, 0x00, 0x00 },
				"framebuffer-con3-type", Buffer () { 0x04, 0x00, 0x00, 0x00 },
				"framebuffer-con1-pipe", Buffer () { 0x12, 0x00, 0x00, 0x00 },
				"framebuffer-con2-type", Buffer () { 0x00, 0x08, 0x00, 0x00 },
				"device_type", Buffer () { "VGA Compatible Controller" },
				"hda-gfx", Buffer () { "onboard-1" },
				"framebuffer-patch-enable", Buffer () { 0x01, 0x00, 0x00, 0x00 },
				"framebuffer-con3-pipe", Buffer () { 0x12, 0x00, 0x00, 0x00 },
				"AAPL,slot-name", Buffer () { "PCIe Bus" },
				"AAPL,ig-platform-id", Buffer () { 0x00, 0x00, 0x12, 0x19 },
				"framebuffer-con3-enable", Buffer () { 0x01, 0x00, 0x00, 0x00 },
				"model", Buffer () { "Intel HD Graphics 530" },
				"framebuffer-con1-enable", Buffer () { 0x01, 0x00, 0x00, 0x00 },
				"framebuffer-con2-pipe", Buffer () { 0x12, 0x00, 0x00, 0x00 },
			})
        }

}

