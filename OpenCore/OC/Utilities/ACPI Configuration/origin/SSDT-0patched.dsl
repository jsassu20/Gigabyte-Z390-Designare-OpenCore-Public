/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-0.aml, Sun May 16 12:34:45 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000204 (516)
 *     Revision         0x01
 *     Checksum         0x9C
 *     OEM ID           "ALASKA"
 *     OEM Table ID     "A M I"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 1, "ALASKA", "A M I", 0x00001000)
{
    External (_SB_.PCI0.SATA, DeviceObj)
    External (_SB_.PCI0.SATA.PRT0, DeviceObj)
    External (_SB_.PCI0.SATA.PRT1, DeviceObj)
    External (_SB_.PCI0.SATA.PRT2, DeviceObj)
    External (_SB_.PCI0.SATA.PRT3, DeviceObj)
    External (_SB_.PCI0.SATA.PRT4, DeviceObj)
    External (_SB_.PCI0.SATA.PRT5, DeviceObj)

    Scope (\)
    {
        Name (STFE, Buffer (0x07)
        {
             0x10, 0x06, 0x00, 0x00, 0x00, 0x00, 0xEF         // .......
        })
        Name (STFD, Buffer (0x07)
        {
             0x90, 0x06, 0x00, 0x00, 0x00, 0x00, 0xEF         // .......
        })
        Name (FZTF, Buffer (0x07)
        {
             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF5         // .......
        })
        Name (DCFL, Buffer (0x07)
        {
             0xC1, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB1         // .......
        })
        Name (SCBF, Buffer (0x15){})
        Name (CMDC, Zero)
        Method (GTFB, 2, Serialized)
        {
            Multiply (CMDC, 0x38, Local0)
            CreateField (SCBF, Local0, 0x38, CMDX)
            Multiply (CMDC, 0x07, Local0)
            CreateByteField (SCBF, Add (Local0, One), A001)
            Store (Arg0, CMDX) /* \GTFB.CMDX */
            Store (Arg1, A001) /* \GTFB.A001 */
            Increment (CMDC)
        }
    }

    Scope (\_SB.PCI0.SATA)
    {
        Name (TMD0, Buffer (0x14){})
        CreateDWordField (TMD0, Zero, PIO0)
        CreateDWordField (TMD0, 0x04, DMA0)
        CreateDWordField (TMD0, 0x08, PIO1)
        CreateDWordField (TMD0, 0x0C, DMA1)
        CreateDWordField (TMD0, 0x10, CHNF)
        Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
        {
            Store (0x78, PIO0) /* \_SB_.PCI0.SATA.PIO0 */
            Store (0x14, DMA0) /* \_SB_.PCI0.SATA.DMA0 */
            Store (0x78, PIO1) /* \_SB_.PCI0.SATA.PIO1 */
            Store (0x14, DMA1) /* \_SB_.PCI0.SATA.DMA1 */
            Or (CHNF, 0x05, CHNF) /* \_SB_.PCI0.SATA.CHNF */
            Return (TMD0) /* \_SB_.PCI0.SATA.TMD0 */
        }

        Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
        {
        }

        Scope (PRT0)
        {
        }

        Scope (PRT1)
        {
        }

        Scope (PRT2)
        {
        }

        Scope (PRT3)
        {
        }

        Scope (PRT4)
        {
        }

        Scope (PRT5)
        {
        }
    }
}

