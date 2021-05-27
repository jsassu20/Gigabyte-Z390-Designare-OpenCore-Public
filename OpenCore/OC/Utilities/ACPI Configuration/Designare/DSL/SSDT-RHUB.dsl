DefinitionBlock ("", "SSDT", 2, "APPLE", "RHUB", 0x00001000)
{
    External (_SB_.PCI0.XHC1.RHUB, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)
    External (_SB_.PCI0.XHCI.RHUB, DeviceObj)
    External (_SB_.PCI0.RP05.UPSB.DSB2.XHC2.RHUB, DeviceObj)
    External (_SB_.PCI0.RP21.UPSB.DSB2.XHC3.RHUB, DeviceObj)

    If (CondRefOf (\_SB.PCI0.XHC.RHUB))
    {
        Scope (_SB.PCI0.XHC.RHUB)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.XHCI.RHUB))
    {
        Scope (_SB.PCI0.XHCI.RHUB)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.XHC1.RHUB))
    {
        Scope (_SB.PCI0.XHC1.RHUB)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }
    }
    
    If (CondRefOf (\_SB.PCI0.RP05.UPSB.DSB2.XHC2.RHUB))
    {
        Scope (_SB.PCI0.RP05.UPSB.DSB2.XHC2.RHUB)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }
    }
    
    If (CondRefOf (\_SB.PCI0.RP21.UPSB.DSB2.XHC3.RHUB))
    {
        Scope (_SB.PCI0.RP21.UPSB.DSB2.XHC3.RHUB)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }
    }
}

