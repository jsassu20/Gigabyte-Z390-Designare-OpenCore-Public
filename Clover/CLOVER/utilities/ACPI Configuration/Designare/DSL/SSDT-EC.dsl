DefinitionBlock ("", "SSDT", 2, "Apple", "EC", 0x00000000)
{
    External (STAS, IntObj)
    
    Device (_SB.EC)
    {
        Name (_HID, "MALD0000")  // _HID: Hardware ID
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