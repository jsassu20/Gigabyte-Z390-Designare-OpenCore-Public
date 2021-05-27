DefinitionBlock ("", "SSDT", 2, "APPLE", "GPI0", 0x00000000)
{
    External (GPEN, FieldUnitObj)
    External (SBRG, FieldUnitObj)

    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            GPEN = One
            SBRG = One
        }
        Else
        {
        }
    }
}

