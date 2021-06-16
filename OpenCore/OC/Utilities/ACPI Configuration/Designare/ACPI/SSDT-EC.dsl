DefinitionBlock ("", "SSDT", 2, "APPLE", "SsdtEC", 0x00001000)
{
    External (_SB_.PCI0.LPCB, DeviceObj)

    /*
     * Uncomment replacing EC0 with your own value in case your
     * motherboard has an existing embedded controller of PNP0C09 type.
     *
     * While renaming EC0 to EC might potentially work initially,
     * it connects an incompatible driver (AppleACPIEC) to your hardware.
     * This can make your system unbootable at any time or hide bugs that
     * could trigger randomly.
     */

    
    External (_SB_.PCI0.LPCB.H_EC, DeviceObj)
    External (STAS, IntObj)

    Scope (\_SB.PCI0.LPCB.H_EC)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0)
            }
            Else
            {
                Return (0x0F)
            }
        }
    }
    

    Scope (\_SB.PCI0.LPCB)
    {
        Device (EC)
        {
            Name (_HID, "ACID0001")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (_SB)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (_OSI ("Darwin"))
            {
                STAS = One
            }
        }
    }
}
