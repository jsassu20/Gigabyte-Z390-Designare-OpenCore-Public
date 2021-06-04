DefinitionBlock ("", "SSDT", 2, "APPLE ", "STAS", 0x00000000)
{
    External (STAS, IntObj)
    
    Scope (_SB)
    {
        Method (_INI, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                STAS = One
            }
        }
    }
}    