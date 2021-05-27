/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210331 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-2.aml, Tue May 25 18:04:56 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000842A (33834)
 *     Revision         0x01
 *     Checksum         0x47
 *     OEM ID           "ALASKA"
 *     OEM Table ID     "A M I"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 1, "ALASKA", "A M I", 0x00000001)
{
    External (_SB_.GGIV, MethodObj)    // 1 Arguments
    External (_SB_.GGOV, MethodObj)    // 1 Arguments
    External (_SB_.GPC0, MethodObj)    // 1 Arguments
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (_SB_.SPC0, MethodObj)    // 2 Arguments

    Scope (\)
    {
        Device (GSA1)
        {
            Method (GIO2, 0, Serialized)
            {
            }

            Method (GIO0, 1, Serialized)
            {
                Return (Zero)
            }

            Method (GIO1, 2, Serialized)
            {
            }

            Method (PIOD, 1, Serialized)
            {
                Store (Add (Arg0, Zero), Local0)
                OperationRegion (VARM, SystemIO, 0x80, 0x04)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Store (Local0, VARR) /* \GSA1.PIOD.VARR */
            }

            Method (PIO0, 3, Serialized)
            {
                Add (Arg0, Zero, Local0)
                OperationRegion (VARM, SystemIO, Local0, 0x04)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Store (VARR, Local1)
                Store (0x7FFFFFFF, Local5)
                Or (Local5, 0x80000000, Local5)
                And (ShiftRight (Local1, Arg1), ShiftRight (Local5, Subtract (0x20, Arg2)), 
                    Local2)
                Return (Local2)
            }

            Method (PIO1, 4, Serialized)
            {
                Add (Arg0, Zero, Local0)
                OperationRegion (VARM, SystemIO, Local0, 0x04)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Store (VARR, Local1)
                Store (0x7FFFFFFF, Local5)
                Or (Local5, 0x80000000, Local5)
                Add (Arg1, Arg2, Local2)
                Subtract (0x20, Local2, Local2)
                ShiftRight (And (ShiftLeft (Local5, Local2), Local5), Local2, Local2)
                ShiftLeft (ShiftRight (Local2, Arg1), Arg1, Local2)
                ShiftLeft (Arg3, Arg1, Local3)
                Or (And (Local1, XOr (Local5, Local2)), Local3, Local4)
                Store (Local4, VARR) /* \GSA1.PIO1.VARR */
            }

            Method (PIO6, 2, Serialized)
            {
                Store (Arg0, Local0)
                OperationRegion (VARM, SystemIO, Local0, 0x04)
                Field (VARM, ByteAcc, NoLock, Preserve)
                {
                    VARP,   8
                }

                Field (VARM, WordAcc, NoLock, Preserve)
                {
                    VARQ,   16
                }

                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Switch (Arg1)
                {
                    Case (Zero)
                    {
                        Return (VARP) /* \GSA1.PIO6.VARP */
                    }
                    Case (One)
                    {
                        Return (VARQ) /* \GSA1.PIO6.VARQ */
                    }
                    Case (0x02)
                    {
                        Return (VARR) /* \GSA1.PIO6.VARR */
                    }

                }

                Return (Zero)
            }

            Method (PIO7, 3, Serialized)
            {
                Store (Arg0, Local0)
                OperationRegion (VARM, SystemIO, Local0, 0x04)
                Field (VARM, ByteAcc, NoLock, Preserve)
                {
                    VARP,   8
                }

                Field (VARM, WordAcc, NoLock, Preserve)
                {
                    VARQ,   16
                }

                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Switch (Arg1)
                {
                    Case (Zero)
                    {
                        Store (Arg2, VARP) /* \GSA1.PIO7.VARP */
                    }
                    Case (One)
                    {
                        Store (Arg2, VARQ) /* \GSA1.PIO7.VARQ */
                    }
                    Case (0x02)
                    {
                        Store (Arg2, VARR) /* \GSA1.PIO7.VARR */
                    }

                }
            }

            Method (PFM8, 4, Serialized)
            {
                Store (Arg0, Local1)
                Store (0x7FFFFFFF, Local5)
                Or (Local5, 0x80000000, Local5)
                Add (Arg1, Arg2, Local2)
                Subtract (0x20, Local2, Local2)
                ShiftRight (And (ShiftLeft (Local5, Local2), Local5), Local2, Local2)
                ShiftLeft (ShiftRight (Local2, Arg1), Arg1, Local2)
                ShiftLeft (Arg3, Arg1, Local3)
                Or (And (Local1, XOr (Local5, Local2)), Local3, Local4)
                Return (Local4)
            }

            Method (PFM9, 3, Serialized)
            {
                Store (Arg0, Local1)
                Store (0x7FFFFFFF, Local5)
                Or (Local5, 0x80000000, Local5)
                And (ShiftRight (Local1, Arg1), ShiftRight (Local5, Subtract (0x20, Arg2)), 
                    Local2)
                Return (Local2)
            }

            Name (GGGD, "CNL:B360/H310/H370/Z390/C246")
            Method (PFM0, 0, Serialized)
            {
            }

            Method (PFM1, 1, Serialized)
            {
                PFM0 ()
            }

            Method (PFM2, 1, Serialized)
            {
            }

            Name (PFMH, Package (0x02)
            {
                Buffer (0x03)
                {
                     0x02, 0xA0, 0x00                                 // ...
                }, 

                Buffer (0x03)
                {
                     0x02, 0xA4, 0x00                                 // ...
                }
            })
            Method (PFM7, 0, Serialized)
            {
                Return (RefOf (PFMH))
            }

            Mutex (MEMB, 0x00)
            Method (MEM8, 0, Serialized)
            {
            }

            Method (MEM9, 1, Serialized)
            {
                MEM8 ()
            }

            Method (MEMA, 1, Serialized)
            {
            }

            Method (MEM0, 3, Serialized)
            {
                Store (Arg0, Local0)
                OperationRegion (VARM, SystemMemory, Local0, 0x04)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Store (VARR, Local1)
                Store (0x7FFFFFFF, Local5)
                Or (Local5, 0x80000000, Local5)
                And (ShiftRight (Local1, Arg1), ShiftRight (Local5, Subtract (0x20, Arg2)), 
                    Local2)
                Return (Local2)
            }

            Method (MEM1, 4, Serialized)
            {
                Store (Arg0, Local0)
                OperationRegion (VARM, SystemMemory, Local0, 0x04)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Store (VARR, Local1)
                Store (0x7FFFFFFF, Local5)
                Or (Local5, 0x80000000, Local5)
                Add (Arg1, Arg2, Local2)
                Subtract (0x20, Local2, Local2)
                ShiftRight (And (ShiftLeft (Local5, Local2), Local5), Local2, Local2)
                ShiftLeft (ShiftRight (Local2, Arg1), Arg1, Local2)
                ShiftLeft (Arg3, Arg1, Local3)
                Or (And (Local1, XOr (Local5, Local2)), Local3, Local4)
                Store (Local4, VARR) /* \GSA1.MEM1.VARR */
            }

            Method (MEM4, 2, Serialized)
            {
                Store (Arg0, Local0)
                OperationRegion (VARM, SystemMemory, Local0, 0x04)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Field (VARM, WordAcc, NoLock, Preserve)
                {
                    VARQ,   16
                }

                Field (VARM, ByteAcc, NoLock, Preserve)
                {
                    VARP,   8
                }

                Switch (Arg1)
                {
                    Case (Zero)
                    {
                        Return (VARP) /* \GSA1.MEM4.VARP */
                    }
                    Case (One)
                    {
                        Return (VARQ) /* \GSA1.MEM4.VARQ */
                    }
                    Case (0x02)
                    {
                        Return (VARR) /* \GSA1.MEM4.VARR */
                    }

                }

                Return (Zero)
            }

            Method (MEM5, 3, Serialized)
            {
                Store (Arg0, Local0)
                OperationRegion (VARM, SystemMemory, Local0, 0x04)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    VARR,   32
                }

                Field (VARM, WordAcc, NoLock, Preserve)
                {
                    VARQ,   16
                }

                Field (VARM, ByteAcc, NoLock, Preserve)
                {
                    VARP,   8
                }

                Switch (Arg1)
                {
                    Case (Zero)
                    {
                        Store (Arg2, VARP) /* \GSA1.MEM5.VARP */
                    }
                    Case (One)
                    {
                        Store (Arg2, VARQ) /* \GSA1.MEM5.VARQ */
                    }
                    Case (0x02)
                    {
                        Store (Arg2, VARR) /* \GSA1.MEM5.VARR */
                    }

                }
            }

            Method (PCI0, 0, Serialized)
            {
            }

            Method (PCI1, 1, Serialized)
            {
                PCI0 ()
            }

            Method (PCI2, 1, Serialized)
            {
            }

            Method (PCI4, 0, Serialized)
            {
                Return (PCIB) /* \GSA1.PCIB */
            }

            Name (PCIB, 0xE0000000)
            Method (PCI9, 5, Serialized)
            {
                Store (PCIB, Local0)
                Add (ShiftLeft (Arg0, 0x14), Local0, Local0)
                Add (ShiftLeft (Arg1, 0x0F), Local0, Local0)
                Add (ShiftLeft (Arg2, 0x0C), Local0, Local0)
                Add (Arg3, Local0, Local0)
                Return (MEM4 (Local0, Arg4))
            }

            Method (PCIA, 6, Serialized)
            {
                Store (PCIB, Local0)
                Add (ShiftLeft (Arg0, 0x14), Local0, Local0)
                Add (ShiftLeft (Arg1, 0x0F), Local0, Local0)
                Add (ShiftLeft (Arg2, 0x0C), Local0, Local0)
                Add (Arg3, Local0, Local0)
                MEM5 (Local0, Arg4, Arg5)
            }

            Method (PCIE, 4, Serialized)
            {
                Return (PCI9 (Arg0, Arg1, Arg2, Arg3, Zero))
            }

            Method (PCIF, 5, Serialized)
            {
                PCIA (Arg0, Arg1, Arg2, Arg3, Zero, Arg4)
            }

            Method (PCIG, 4, Serialized)
            {
                Return (PCI9 (Arg0, Arg1, Arg2, Arg3, One))
            }

            Method (PCIH, 5, Serialized)
            {
                PCIA (Arg0, Arg1, Arg2, Arg3, One, Arg4)
            }

            Method (PCI7, 4, Serialized)
            {
                Return (PCI9 (Arg0, Arg1, Arg2, Arg3, 0x02))
            }

            Method (PCI8, 5, Serialized)
            {
                PCIA (Arg0, Arg1, Arg2, Arg3, 0x02, Arg4)
            }

            Method (PCI5, 6, Serialized)
            {
                Store (PCIB, Local0)
                Add (ShiftLeft (Arg0, 0x14), Local0, Local0)
                Add (ShiftLeft (Arg1, 0x0F), Local0, Local0)
                Add (ShiftLeft (Arg2, 0x0C), Local0, Local0)
                Return (MEM0 (Add (Local0, Arg3), Arg4, Arg5))
            }

            Method (PCI6, 7, Serialized)
            {
                Store (PCIB, Local0)
                Add (ShiftLeft (Arg0, 0x14), Local0, Local0)
                Add (ShiftLeft (Arg1, 0x0F), Local0, Local0)
                Add (ShiftLeft (Arg2, 0x0C), Local0, Local0)
                If (LNotEqual (MEM0 (Local0, Zero, 0x20), Ones))
                {
                    MEM1 (Add (Local0, Arg3), Arg4, Arg5, Arg6)
                }
            }

            Method (SMBB, 0, Serialized)
            {
                Store (PCI7 (Zero, 0x1F, 0x04, 0x20), Local0)
                Return (And (Local0, 0xFFFFFFFE))
            }

            Mutex (SMMB, 0x00)
            Method (SMB8, 0, Serialized)
            {
            }

            Method (SMBG, 1, Serialized)
            {
                SMB8 ()
            }

            Method (SMBH, 1, Serialized)
            {
            }

            OperationRegion (SMBD, SystemIO, SMBB (), 0x20)
            Field (SMBD, ByteAcc, NoLock, Preserve)
            {
                HSTS,   8, 
                Offset (0x02), 
                HCNT,   8, 
                HCMD,   8, 
                TXSA,   8, 
                DAT0,   8, 
                DAT1,   8, 
                HBDR,   8, 
                PECK,   8, 
                RXSA,   8, 
                RXDA,   16, 
                AUXS,   8, 
                AUXC,   8, 
                SLPC,   8, 
                SBPC,   8, 
                SSTS,   8, 
                SCMD,   8, 
                NADR,   8, 
                NDLB,   8, 
                NDLH,   8
            }

            Method (KILL, 0, Serialized)
            {
                Or (HCNT, 0x02, HCNT) /* \GSA1.HCNT */
                Or (HSTS, 0xFF, HSTS) /* \GSA1.HSTS */
            }

            Method (CMPL, 0, Serialized)
            {
                Store (0x0FA0, Local0)
                While (Local0)
                {
                    If (And (HSTS, 0x02))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Stall (0x32)
                        Decrement (Local0)
                        If (LEqual (Local0, Zero))
                        {
                            KILL ()
                        }
                    }
                }

                Return (Zero)
            }

            Method (SRDY, 0, Serialized)
            {
                Store (0xC8, Local0)
                While (Local0)
                {
                    If (And (HSTS, 0x40))
                    {
                        Sleep (One)
                        Decrement (Local0)
                        If (LEqual (Local0, Zero))
                        {
                            Store (0xBF, HSTS) /* \GSA1.HSTS */
                        }
                    }
                    Else
                    {
                        Store (Zero, Local0)
                    }
                }

                Store (0x0FA0, Local0)
                While (Local0)
                {
                    If (And (HSTS, One))
                    {
                        Stall (0x32)
                        Decrement (Local0)
                        If (LEqual (Local0, Zero))
                        {
                            KILL ()
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (SMB0, 2, Serialized)
            {
                If (SRDY ())
                {
                    Return (Zero)
                }

                Store (0xBF, HSTS) /* \GSA1.HSTS */
                Store (Arg0, TXSA) /* \GSA1.TXSA */
                Store (Arg1, HCMD) /* \GSA1.HCMD */
                Store (0x44, HCNT) /* \GSA1.HCNT */
                If (CMPL ())
                {
                    If (And (HSTS, 0x0C))
                    {
                        Or (HSTS, 0xFF, HSTS) /* \GSA1.HSTS */
                        Return (Zero)
                    }
                    Else
                    {
                        Or (HSTS, 0xFF, HSTS) /* \GSA1.HSTS */
                        Return (One)
                    }
                }

                Return (Zero)
            }

            Method (SMB1, 1, Serialized)
            {
                If (SRDY ())
                {
                    Return (0xFFFF)
                }

                Store (0xBF, HSTS) /* \GSA1.HSTS */
                Store (Or (Arg0, One), TXSA) /* \GSA1.TXSA */
                Store (0x44, HCNT) /* \GSA1.HCNT */
                If (CMPL ())
                {
                    If (And (HSTS, 0x0C))
                    {
                        Or (HSTS, 0xFF, HSTS) /* \GSA1.HSTS */
                        Return (0xFFFF)
                    }
                    Else
                    {
                        Or (HSTS, 0xFF, HSTS) /* \GSA1.HSTS */
                        Return (DAT0) /* \GSA1.DAT0 */
                    }
                }

                Return (0xFFFF)
            }

            Method (SMB2, 3, Serialized)
            {
                If (SRDY ())
                {
                    Return (Zero)
                }

                Store (0xBF, HSTS) /* \GSA1.HSTS */
                Store (Arg0, TXSA) /* \GSA1.TXSA */
                Store (Arg1, HCMD) /* \GSA1.HCMD */
                Store (Arg2, DAT0) /* \GSA1.DAT0 */
                Store (0x48, HCNT) /* \GSA1.HCNT */
                If (CMPL ())
                {
                    If (And (HSTS, 0x0C))
                    {
                        Or (HSTS, 0xFF, HSTS) /* \GSA1.HSTS */
                        Return (Zero)
                    }
                    Else
                    {
                        Or (HSTS, 0xFF, HSTS) /* \GSA1.HSTS */
                        Return (One)
                    }
                }

                Return (Zero)
            }

            Method (SMB3, 2, Serialized)
            {
                If (SRDY ())
                {
                    Return (0xFFFF)
                }

                Store (0xBF, HSTS) /* \GSA1.HSTS */
                Store (Or (Arg0, One), TXSA) /* \GSA1.TXSA */
                Store (Arg1, HCMD) /* \GSA1.HCMD */
                Store (0x48, HCNT) /* \GSA1.HCNT */
                If (CMPL ())
                {
                    If (And (HSTS, 0x0C))
                    {
                        Or (HSTS, 0xFF, HSTS) /* \GSA1.HSTS */
                        Return (0xFFFF)
                    }
                    Else
                    {
                        Or (HSTS, 0xFF, HSTS) /* \GSA1.HSTS */
                        Return (DAT0) /* \GSA1.DAT0 */
                    }
                }

                Return (0xFFFF)
            }

            Method (SMB4, 3, Serialized)
            {
                If (SRDY ())
                {
                    Return (Zero)
                }

                Store (0xBF, HSTS) /* \GSA1.HSTS */
                Store (Arg0, TXSA) /* \GSA1.TXSA */
                Store (Arg1, HCMD) /* \GSA1.HCMD */
                And (Arg2, 0xFF, DAT0) /* \GSA1.DAT0 */
                And (ShiftRight (Arg2, 0x08), 0xFF, DAT1) /* \GSA1.DAT1 */
                Store (0x4C, HCNT) /* \GSA1.HCNT */
                If (CMPL ())
                {
                    If (And (HSTS, 0x0C))
                    {
                        Or (HSTS, 0xFF, HSTS) /* \GSA1.HSTS */
                        Return (Zero)
                    }
                    Else
                    {
                        Or (HSTS, 0xFF, HSTS) /* \GSA1.HSTS */
                        Return (One)
                    }
                }

                Return (Zero)
            }

            Method (SMB5, 2, Serialized)
            {
                If (SRDY ())
                {
                    Return (Ones)
                }

                Store (0xBF, HSTS) /* \GSA1.HSTS */
                Store (Or (Arg0, One), TXSA) /* \GSA1.TXSA */
                Store (Arg1, HCMD) /* \GSA1.HCMD */
                Store (0x4C, HCNT) /* \GSA1.HCNT */
                If (CMPL ())
                {
                    If (And (HSTS, 0x0C))
                    {
                        Or (HSTS, 0xFF, HSTS) /* \GSA1.HSTS */
                        Return (Ones)
                    }
                    Else
                    {
                        Or (HSTS, 0xFF, HSTS) /* \GSA1.HSTS */
                        Return (Or (ShiftLeft (DAT1, 0x08), DAT0))
                    }
                }

                Return (Ones)
            }

            Method (SMB9, 4, Serialized)
            {
                If (SRDY ())
                {
                    Return (Zero)
                }

                Store (0xBF, HSTS) /* \GSA1.HSTS */
                Store (Arg0, TXSA) /* \GSA1.TXSA */
                Store (Arg1, HCMD) /* \GSA1.HCMD */
                Store (SizeOf (Arg2), DAT0) /* \GSA1.DAT0 */
                Store (Zero, Local1)
                Store (DerefOf (Index (Arg2, Zero)), HBDR) /* \GSA1.HBDR */
                Store (0x54, HCNT) /* \GSA1.HCNT */
                While (LGreater (SizeOf (Arg2), Local1))
                {
                    Store (0x0FA0, Local0)
                    While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                    }

                    If (LNot (Local0))
                    {
                        KILL ()
                        Return (Zero)
                    }

                    Store (0x80, HSTS) /* \GSA1.HSTS */
                    Increment (Local1)
                    If (LGreater (SizeOf (Arg2), Local1))
                    {
                        Store (DerefOf (Index (Arg2, Local1)), HBDR) /* \GSA1.HBDR */
                    }
                }

                If (CMPL ())
                {
                    Or (HSTS, 0xFF, HSTS) /* \GSA1.HSTS */
                    Return (One)
                }

                Return (Zero)
            }

            Method (SMBA, 3, Serialized)
            {
                Store (Zero, AUXC) /* \GSA1.AUXC */
                If (SRDY ())
                {
                    Return (0xFFFF)
                }

                Store (0xBF, HSTS) /* \GSA1.HSTS */
                Store (Or (Arg0, One), TXSA) /* \GSA1.TXSA */
                Store (Arg1, HCMD) /* \GSA1.HCMD */
                Store (0x54, HCNT) /* \GSA1.HCNT */
                Store (0x0FA0, Local0)
                While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                {
                    Decrement (Local0)
                    Stall (0x32)
                }

                If (LNot (Local0))
                {
                    KILL ()
                    Return (0xFFFF)
                }

                Store (DAT0, Local6)
                Store (HBDR, Index (Arg2, Zero))
                Store (One, Local1)
                Store (0x80, HSTS) /* \GSA1.HSTS */
                While (LLess (Local1, Local6))
                {
                    Store (0x0FA0, Local0)
                    While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                    }

                    If (LNot (Local0))
                    {
                        KILL ()
                        Return (0xFFFF)
                    }

                    Store (HBDR, Index (Arg2, Local1))
                    Store (0x80, HSTS) /* \GSA1.HSTS */
                    Increment (Local1)
                }

                If (CMPL ())
                {
                    If (And (HSTS, 0x0C))
                    {
                        Or (HSTS, 0xFF, HSTS) /* \GSA1.HSTS */
                        Return (0xFFFF)
                    }
                    Else
                    {
                        Or (HSTS, 0xFF, HSTS) /* \GSA1.HSTS */
                        Return (DAT0) /* \GSA1.DAT0 */
                    }
                }

                Return (0xFFFF)
            }

            Method (SMBF, 1, Serialized)
            {
                If (LEqual (Arg0, Zero))
                {
                    SMB2 (0x6C, Zero, Zero)
                }
                Else
                {
                    SMB2 (0x6E, Zero, Zero)
                }
            }

            Method (SMBE, 2, Serialized)
            {
                Store (Zero, Local0)
                While (LLess (Local0, 0x0200))
                {
                    If (LEqual (Local0, Zero))
                    {
                        SMBF (Zero)
                    }

                    If (LEqual (Local0, 0x0100))
                    {
                        SMBF (One)
                    }

                    Store (SMB3 (Arg0, Mod (Local0, 0x0100)), Local1)
                    If (LEqual (Local1, 0xFFFF))
                    {
                        Return (0xFFFF)
                    }
                    Else
                    {
                        Store (Local1, Index (Arg1, Local0))
                        Increment (Local0)
                    }
                }

                SMBF (Zero)
                Return (Zero)
            }

            Method (SMM9, 1, Serialized)
            {
                If (LEqual (Arg0, 0x02))
                {
                    Acquire (SMMB, 0xFFFF)
                    Store (Zero, Local0)
                    Return (Local0)
                }

                Return (Zero)
            }

            Method (SMMA, 1, Serialized)
            {
                If (LEqual (Arg0, 0x02))
                {
                    Store (Zero, Local0)
                    Release (SMMB)
                    Return (Local0)
                }

                Return (Zero)
            }

            Method (SMM0, 3, Serialized)
            {
                If (LEqual (Arg0, 0x02))
                {
                    Acquire (SMMB, 0xFFFF)
                    Store (SMB0 (Arg1, Arg2), Local0)
                    Release (SMMB)
                    Return (Local0)
                }

                Return (Zero)
            }

            Method (SMM1, 2, Serialized)
            {
                If (LEqual (Arg0, 0x02))
                {
                    Store (Zero, Local0)
                    Acquire (SMMB, 0xFFFF)
                    Store (SMB1 (Arg1), Local0)
                    Release (SMMB)
                    Return (Local0)
                }

                Return (0xFFFF)
            }

            Method (SMM2, 4, Serialized)
            {
                If (LEqual (Arg0, 0x02))
                {
                    Acquire (SMMB, 0xFFFF)
                    Store (SMB2 (Arg1, Arg2, Arg3), Local0)
                    Release (SMMB)
                    Return (Local0)
                }

                Return (Zero)
            }

            Method (SMM3, 3, Serialized)
            {
                If (LEqual (Arg0, 0x02))
                {
                    Acquire (SMMB, 0xFFFF)
                    Store (SMB3 (Arg1, Arg2), Local0)
                    Release (SMMB)
                    Return (Local0)
                }

                Return (0xFFFF)
            }

            Method (SMM4, 4, Serialized)
            {
                If (LEqual (Arg0, 0x02))
                {
                    Acquire (SMMB, 0xFFFF)
                    Store (SMB4 (Arg1, Arg2, Arg3), Local0)
                    Release (SMMB)
                    Return (Local0)
                }

                Return (Zero)
            }

            Method (SMM5, 3, Serialized)
            {
                If (LEqual (Arg0, 0x02))
                {
                    Acquire (SMMB, 0xFFFF)
                    Store (SMB5 (Arg1, Arg2), Local0)
                    Release (SMMB)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (SMM6, 5, Serialized)
            {
                If (LEqual (Arg0, 0x02))
                {
                    Store (Zero, Local0)
                    Acquire (SMMB, 0xFFFF)
                    Release (SMMB)
                    Return (Local0)
                }

                Return (Zero)
            }

            Method (SMM7, 3, Serialized)
            {
                Name (DATB, Buffer (0x0100){})
                Name (DATC, Buffer (0x04){})
                CreateWordField (DATC, Zero, SMMF)
                CreateWordField (DATC, 0x02, SMMG)
                If (LEqual (Arg0, 0x02))
                {
                    Acquire (SMMB, 0xFFFF)
                    Store (SMBA (Arg1, Arg2, DATB), Local0)
                    Release (SMMB)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (0xFFFF, SMMF) /* \GSA1.SMM7.SMMF */
                        Store (Zero, SMMG) /* \GSA1.SMM7.SMMG */
                        Concatenate (DATC, DATB, Local1)
                    }
                    Else
                    {
                        Store (Zero, SMMF) /* \GSA1.SMM7.SMMF */
                        Store (Local0, SMMG) /* \GSA1.SMM7.SMMG */
                        Concatenate (DATC, DATB, Local1)
                    }

                    Return (Local1)
                }

                Return (Ones)
            }

            Method (SMM8, 3, Serialized)
            {
                If (LEqual (Arg0, 0x02))
                {
                    Acquire (SMMB, 0xFFFF)
                    Store (SMBE (Arg1, Arg2), Local0)
                    Release (SMMB)
                    Return (Local0)
                }
            }

            Method (MM17, 1, NotSerialized)
            {
                Store (Arg0, Local7)
                Store (Zero, Local0)
                Store ("", Local1)
                While (LLess (Local0, SizeOf (Local7)))
                {
                    If (LNotEqual (Local0, Zero))
                    {
                        Concatenate (Local1, ":", Local1)
                    }

                    Store (ToHexString (DerefOf (Index (Local7, Local0)), Local2), Local6)
                    Concatenate (Local1, Local6, Local1)
                    Increment (Local0)
                }

                Return (Local1)
            }

            Method (MM18, 1, NotSerialized)
            {
                Store (Arg0, Local7)
                Store (Zero, Local0)
                Store ("", Local1)
                While (LLess (Local0, SizeOf (Local7)))
                {
                    If (LNotEqual (Local0, Zero))
                    {
                        Concatenate (Local1, ":", Local1)
                    }

                    Concatenate (Local1, DerefOf (Index (Local7, Local0)), Local1)
                    Increment (Local0)
                }

                Return (Local1)
            }

            Method (MM00, 0, NotSerialized)
            {
                If (LAnd (LEqual (CCNT, 0x08), LEqual (E8CV, One)))
                {
                    Return (SizeOf (GSA8))
                }
                Else
                {
                    Return (SizeOf (GSAT))
                }
            }

            Method (MM01, 1, NotSerialized)
            {
                If (LEqual (Arg0, 0x06))
                {
                    If (LAnd (LEqual (CCNT, 0x08), LEqual (E8CV, One)))
                    {
                        Store (Zero, Local0)
                        Store (SizeOf (GSA8), Local1)
                        While (LLess (Local0, Local1))
                        {
                            If (LEqual (DerefOf (Index (DerefOf (Index (GSA8, Local0)), Zero)), Arg0))
                            {
                                Return (DerefOf (Index (GSA8, Local0)))
                            }

                            Increment (Local0)
                        }
                    }
                    Else
                    {
                        Store (Zero, Local0)
                        Store (SizeOf (GSAT), Local1)
                        While (LLess (Local0, Local1))
                        {
                            If (LEqual (DerefOf (Index (DerefOf (Index (GSAT, Local0)), Zero)), Arg0))
                            {
                                Return (DerefOf (Index (GSAT, Local0)))
                            }

                            Increment (Local0)
                        }
                    }
                }
                ElseIf (LEqual (CCNT, 0x08))
                {
                    Store (Zero, Local0)
                    Store (SizeOf (GSA8), Local1)
                    While (LLess (Local0, Local1))
                    {
                        If (LEqual (DerefOf (Index (DerefOf (Index (GSA8, Local0)), Zero)), Arg0))
                        {
                            Return (DerefOf (Index (GSA8, Local0)))
                        }

                        Increment (Local0)
                    }
                }
                Else
                {
                    Store (Zero, Local0)
                    Store (SizeOf (GSAT), Local1)
                    While (LLess (Local0, Local1))
                    {
                        If (LEqual (DerefOf (Index (DerefOf (Index (GSAT, Local0)), Zero)), Arg0))
                        {
                            Return (DerefOf (Index (GSAT, Local0)))
                        }

                        Increment (Local0)
                    }
                }

                Return (Ones)
            }

            Method (MM19, 1, NotSerialized)
            {
                If (LEqual (Arg0, 0x06))
                {
                    If (LAnd (LEqual (CCNT, 0x08), LEqual (E8CV, One)))
                    {
                        Store (Zero, Local0)
                        Store (SizeOf (GSA8), Local1)
                        While (LLess (Local0, Local1))
                        {
                            If (LEqual (DerefOf (Index (DerefOf (Index (GSA8, Local0)), Zero)), Arg0))
                            {
                                Return (Local0)
                            }

                            Increment (Local0)
                        }
                    }
                    Else
                    {
                        Store (Zero, Local0)
                        Store (SizeOf (GSAT), Local1)
                        While (LLess (Local0, Local1))
                        {
                            If (LEqual (DerefOf (Index (DerefOf (Index (GSAT, Local0)), Zero)), Arg0))
                            {
                                Return (Local0)
                            }

                            Increment (Local0)
                        }
                    }
                }
                ElseIf (LEqual (CCNT, 0x08))
                {
                    Store (Zero, Local0)
                    Store (SizeOf (GSA8), Local1)
                    While (LLess (Local0, Local1))
                    {
                        If (LEqual (DerefOf (Index (DerefOf (Index (GSA8, Local0)), Zero)), Arg0))
                        {
                            Return (Local0)
                        }

                        Increment (Local0)
                    }
                }
                Else
                {
                    Store (Zero, Local0)
                    Store (SizeOf (GSAT), Local1)
                    While (LLess (Local0, Local1))
                    {
                        If (LEqual (DerefOf (Index (DerefOf (Index (GSAT, Local0)), Zero)), Arg0))
                        {
                            Return (Local0)
                        }

                        Increment (Local0)
                    }
                }

                Return (Ones)
            }

            Method (MM02, 1, NotSerialized)
            {
                Store (MM01 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    Return (DerefOf (Index (Local0, One)))
                }

                Return (Ones)
            }

            Method (MM04, 1, NotSerialized)
            {
                Store (MM01 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    Return (DerefOf (Index (Local0, 0x02)))
                }

                Return (Ones)
            }

            Method (MM14, 1, NotSerialized)
            {
                Store (MM01 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    Return (DerefOf (Index (Local0, 0x03)))
                }

                Return (Ones)
            }

            Method (MM03, 1, NotSerialized)
            {
                Store (MM01 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    Return (DerefOf (Index (Local0, 0x04)))
                }

                Return (Ones)
            }

            Method (MM06, 2, Serialized)
            {
                Store (MM03 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    Name (IFPK, Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    })
                    If (LGreaterEqual (Arg1, SizeOf (Local0)))
                    {
                        Return (Ones)
                    }

                    If (LLess (Arg1, SizeOf (Local0)))
                    {
                        Store (DerefOf (Index (Local0, Arg1)), Local1)
                        If (LEqual (ObjectType (Local1), 0x04))
                        {
                            Store (DerefOf (Index (Local1, Zero)), Index (IFPK, Zero))
                            Store (DerefOf (Index (Local1, One)), Index (IFPK, One))
                            Store (DerefOf (Index (DerefOf (Index (Local1, 0x02)), Zero)), Index (IFPK, 
                                0x02))
                            Store (DerefOf (Index (DerefOf (Index (Local1, 0x02)), One)), Index (IFPK, 
                                0x03))
                            Store (DerefOf (Index (DerefOf (Index (Local1, 0x02)), 0x02)), Index (IFPK, 
                                0x04))
                            Store (DerefOf (Index (DerefOf (Index (Local1, 0x02)), 0x03)), Index (IFPK, 
                                0x05))
                            Return (IFPK) /* \GSA1.MM06.IFPK */
                        }
                    }
                }

                Return (Ones)
            }

            Method (MM07, 2, Serialized)
            {
                Store (MM03 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    Name (IFPK, Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    })
                    If (LLess (Arg1, SizeOf (Local0)))
                    {
                        Store (DerefOf (Index (Local0, Arg1)), Local1)
                        If (LEqual (ObjectType (Local1), 0x04))
                        {
                            Store (DerefOf (Index (Local1, Zero)), Index (IFPK, Zero))
                            Store (DerefOf (Index (Local1, One)), Index (IFPK, One))
                            Store (DerefOf (Index (DerefOf (Index (Local1, 0x03)), Zero)), Index (IFPK, 
                                0x02))
                            Store (DerefOf (Index (DerefOf (Index (Local1, 0x03)), One)), Index (IFPK, 
                                0x03))
                            Store (DerefOf (Index (DerefOf (Index (Local1, 0x03)), 0x02)), Index (IFPK, 
                                0x04))
                            Store (DerefOf (Index (DerefOf (Index (Local1, 0x03)), 0x03)), Index (IFPK, 
                                0x05))
                            Return (IFPK) /* \GSA1.MM07.IFPK */
                        }
                    }
                }

                Return (Ones)
            }

            Method (MM10, 1, NotSerialized)
            {
                Return (Zero)
            }

            Method (MM11, 2, NotSerialized)
            {
                Return (Zero)
            }

            Method (MM12, 2, NotSerialized)
            {
                Store (Arg1, Local6)
                Store (Zero, Local0)
                While (One)
                {
                    Store (MM06 (Arg0, Local0), Local1)
                    If (LEqual (ObjectType (Local1), 0x04))
                    {
                        If (LLessEqual (DerefOf (Index (Local1, 0x02)), DerefOf (Index (Local1, 0x03
                            ))))
                        {
                            If (LAnd (LGreaterEqual (Local6, DerefOf (Index (Local1, 0x02))), LLessEqual (
                                Local6, DerefOf (Index (Local1, 0x03)))))
                            {
                                Subtract (Local6, DerefOf (Index (Local1, 0x02)), Local3)
                                Store (DerefOf (Index (Local1, 0x04)), Local5)
                                If (LEqual (Mod (Local3, DerefOf (Index (Local1, 0x04))), Zero))
                                {
                                    Store (MM07 (Arg0, Local0), Local2)
                                    Divide (Local3, DerefOf (Index (Local1, 0x04)), , Local3)
                                    If (LLessEqual (DerefOf (Index (Local2, 0x02)), DerefOf (Index (Local2, 0x03
                                        ))))
                                    {
                                        Add (DerefOf (Index (Local2, 0x02)), Multiply (Local3, DerefOf (Index (Local2, 0x04
                                            ))), Local4)
                                    }
                                    Else
                                    {
                                        Subtract (DerefOf (Index (Local2, 0x02)), Multiply (Local3, DerefOf (Index (Local2, 0x04
                                            ))), Local4)
                                    }

                                    Return (Local4)
                                }
                            }
                        }
                        ElseIf (LAnd (LGreaterEqual (Local6, DerefOf (Index (Local1, 0x03))), 
                            LLessEqual (Local6, DerefOf (Index (Local1, 0x02)))))
                        {
                            Subtract (DerefOf (Index (Local1, 0x02)), Local6, Local3)
                            If (LEqual (Mod (Local3, DerefOf (Index (Local1, 0x04))), Zero))
                            {
                                Store (MM07 (Arg0, Local0), Local2)
                                Divide (Local3, DerefOf (Index (Local1, 0x04)), , Local3)
                                If (LLessEqual (DerefOf (Index (Local2, 0x02)), DerefOf (Index (Local2, 0x03
                                    ))))
                                {
                                    Add (DerefOf (Index (Local2, 0x02)), Multiply (Local3, DerefOf (Index (Local2, 0x04
                                        ))), Local4)
                                }
                                Else
                                {
                                    Subtract (DerefOf (Index (Local2, 0x02)), Multiply (Local3, DerefOf (Index (Local2, 0x04
                                        ))), Local4)
                                }

                                Return (Local4)
                            }
                        }

                        Increment (Local0)
                    }
                    Else
                    {
                        Break
                    }
                }

                Return (Ones)
            }

            Method (MM13, 2, NotSerialized)
            {
                Store (Arg1, Local6)
                Store (Zero, Local0)
                While (One)
                {
                    Store (MM07 (Arg0, Local0), Local1)
                    If (LEqual (ObjectType (Local1), 0x04))
                    {
                        If (LLessEqual (DerefOf (Index (Local1, 0x02)), DerefOf (Index (Local1, 0x03
                            ))))
                        {
                            If (LAnd (LGreaterEqual (Local6, DerefOf (Index (Local1, 0x02))), LLessEqual (
                                Local6, DerefOf (Index (Local1, 0x03)))))
                            {
                                Subtract (Local6, DerefOf (Index (Local1, 0x02)), Local3)
                                If (LEqual (Mod (Local3, DerefOf (Index (Local1, 0x04))), Zero))
                                {
                                    Store (MM06 (Arg0, Local0), Local2)
                                    Divide (Local3, DerefOf (Index (Local1, 0x04)), , Local3)
                                    If (LLessEqual (DerefOf (Index (Local2, 0x02)), DerefOf (Index (Local2, 0x03
                                        ))))
                                    {
                                        Add (DerefOf (Index (Local2, 0x02)), Multiply (Local3, DerefOf (Index (Local2, 0x04
                                            ))), Local4)
                                    }
                                    Else
                                    {
                                        Subtract (DerefOf (Index (Local2, 0x02)), Multiply (Local3, DerefOf (Index (Local2, 0x04
                                            ))), Local4)
                                    }

                                    Return (Local4)
                                }
                            }
                        }
                        ElseIf (LAnd (LGreaterEqual (Local6, DerefOf (Index (Local1, 0x03))), 
                            LLessEqual (Local6, DerefOf (Index (Local1, 0x02)))))
                        {
                            Subtract (DerefOf (Index (Local1, 0x02)), Local6, Local3)
                            If (LEqual (Mod (Local3, DerefOf (Index (Local1, 0x04))), Zero))
                            {
                                Store (MM06 (Arg0, Local0), Local2)
                                Divide (Local3, DerefOf (Index (Local1, 0x04)), , Local3)
                                If (LLessEqual (DerefOf (Index (Local2, 0x02)), DerefOf (Index (Local2, 0x03
                                    ))))
                                {
                                    Add (DerefOf (Index (Local2, 0x02)), Multiply (Local3, DerefOf (Index (Local2, 0x04
                                        ))), Local4)
                                }
                                Else
                                {
                                    Subtract (DerefOf (Index (Local2, 0x02)), Multiply (Local3, DerefOf (Index (Local2, 0x04
                                        ))), Local4)
                                }

                                Return (Local4)
                            }
                        }

                        Increment (Local0)
                    }
                    Else
                    {
                        Break
                    }
                }

                Return (Ones)
            }

            Method (MM08, 1, NotSerialized)
            {
                Store (MM10 (Arg0), Local6)
                Store (Zero, Local0)
                While (One)
                {
                    Store (MM07 (Arg0, Local0), Local1)
                    If (LNotEqual (Local1, Ones))
                    {
                        If (LLessEqual (DerefOf (Index (Local1, 0x02)), DerefOf (Index (Local1, 0x03
                            ))))
                        {
                            If (LAnd (LGreaterEqual (Local6, DerefOf (Index (Local1, 0x02))), LLessEqual (
                                Local6, DerefOf (Index (Local1, 0x03)))))
                            {
                                Subtract (Local6, DerefOf (Index (Local1, 0x02)), Local3)
                                If (LEqual (Mod (Local3, DerefOf (Index (Local1, 0x04))), Zero))
                                {
                                    Store (MM06 (Arg0, Local0), Local2)
                                    Add (DerefOf (Index (Local2, 0x02)), Multiply (Divide (Local3, DerefOf (Index (Local1, 
                                        0x04)), ), DerefOf (Index (Local2, 0x04))), Local4)
                                    Return (Local4)
                                }
                            }
                        }
                        ElseIf (LAnd (LGreaterEqual (Local6, DerefOf (Index (Local1, 0x03))), 
                            LLessEqual (Local6, DerefOf (Index (Local1, 0x02)))))
                        {
                            Subtract (DerefOf (Index (Local1, 0x02)), Local6, Local3)
                            If (LEqual (Mod (Local3, DerefOf (Index (Local1, 0x04))), Zero))
                            {
                                Store (MM06 (Arg0, Local0), Local2)
                                Add (DerefOf (Index (Local2, 0x02)), Multiply (Divide (Local3, DerefOf (Index (Local1, 
                                    0x04)), ), DerefOf (Index (Local2, 0x04))), Local4)
                                Return (Local4)
                            }
                        }

                        Increment (Local0)
                    }
                    Else
                    {
                        Break
                    }
                }

                Return (Ones)
            }

            Method (MM09, 2, NotSerialized)
            {
                Store (Zero, Local0)
                While (One)
                {
                    Store (MM06 (Arg0, Local0), Local1)
                    If (LEqual (ObjectType (Local1), 0x04))
                    {
                        If (LAnd (LGreaterEqual (Arg1, DerefOf (Index (Local1, 0x02))), LLessEqual (
                            Arg1, DerefOf (Index (Local1, 0x03)))))
                        {
                            Subtract (Arg1, DerefOf (Index (Local1, 0x02)), Local3)
                            If (LEqual (Mod (Local3, DerefOf (Index (Local1, 0x04))), Zero))
                            {
                                Store (MM07 (Arg0, Local0), Local2)
                                Add (DerefOf (Index (Local2, 0x02)), Multiply (Divide (Local3, DerefOf (Index (Local1, 
                                    0x04)), ), DerefOf (Index (Local2, 0x04))), Local4)
                                Return (Zero)
                            }
                        }

                        Increment (Local0)
                    }
                    Else
                    {
                        Break
                    }
                }

                Return (Ones)
            }

            Method (MM15, 2, NotSerialized)
            {
                Store (MM14 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    If (LEqual (DerefOf (Index (Local0, One)), One))
                    {
                        Store (DerefOf (Index (Local0, 0x02)), Local4)
                        Store (SizeOf (Local4), Local2)
                        Store (Zero, Local3)
                        While (LLess (Local3, Local2))
                        {
                            If (LEqual (Arg1, DerefOf (Index (Local4, Local3))))
                            {
                                Return (DerefOf (Index (DerefOf (Index (Local0, 0x03)), Local3)))
                            }

                            Increment (Local3)
                        }
                    }
                }

                Return (Ones)
            }

            Method (MM16, 2, NotSerialized)
            {
                Store (MM14 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    If (LEqual (DerefOf (Index (Local0, One)), One))
                    {
                        Store (Match (DerefOf (Index (Local0, 0x03)), MEQ, Arg1, MTR, Zero, Zero), 
                            Local1)
                        If (LNotEqual (Local1, Ones))
                        {
                            Return (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Local1)))
                        }
                    }
                }

                Return ("Unknown")
            }

            Name (GSAT, Package (0x13)
            {
                Package (0x04)
                {
                    0x1B, 
                    "CPU Vcore Loadline Calibration", 
                    Package (0x05)
                    {
                        0x08, 
                        "ISl69138_0x82_B", 
                        0x82, 
                        One, 
                        0x00100028
                    }, 

                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Package (0x07)
                        {
                            "Standard", 
                            "Low", 
                            "Medium", 
                            "High", 
                            "Turbo", 
                            "Extreme", 
                            "Ultra Extreme"
                        }, 

                        Package (0x07)
                        {
                            0xD2, 
                            0x9D, 
                            0x78, 
                            0x69, 
                            0x34, 
                            0x1F, 
                            Zero
                        }, 

                        "Standard"
                    }
                }, 

                Package (0x06)
                {
                    0x06, 
                    "CPU VCore DVID Offset", 
                    Package (0x05)
                    {
                        0x08, 
                        "ISL69138_0x82_B", 
                        0x82, 
                        One, 
                        0x00100023
                    }, 

                    Package (0x03)
                    {
                        One, 
                        Zero, 
                        Package (0x04)
                        {
                            0xFFFFFED4, 
                            0x0190, 
                            0x05, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0xFFFFFED4, 
                                Ones, 
                                One, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0xFED4, 
                                0xFFFF, 
                                One, 
                                0x03E8
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                Zero, 
                                0x0190, 
                                One, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x0190, 
                                One, 
                                0x03E8
                            }
                        }
                    }, 

                    Zero
                }, 

                Package (0x06)
                {
                    0x05, 
                    "CPU VCore", 
                    Package (0x05)
                    {
                        0x08, 
                        "ISl69138_0x82_B", 
                        0x82, 
                        One, 
                        0x00100021
                    }, 

                    Package (0x03)
                    {
                        One, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0258, 
                            0x0708, 
                            0x05, 
                            0x03E8
                        }
                    }, 

                    Package (0x01)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0258, 
                                0x0708, 
                                One, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x0258, 
                                0x0708, 
                                One, 
                                0x03E8
                            }
                        }
                    }, 

                    0x04B0
                }, 

                Package (0x04)
                {
                    0x80000005, 
                    "CPU VCore Mode", 
                    Package (0x05)
                    {
                        0x08, 
                        "ISl69138_0x82_B", 
                        0x82, 
                        One, 
                        0x000204F0
                    }, 

                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Package (0x03)
                        {
                            "Auto", 
                            "Dynamic Offset", 
                            "Static"
                        }, 

                        Package (0x03)
                        {
                            Zero, 
                            0x02, 
                            0x03
                        }, 

                        "Auto"
                    }
                }, 

                Package (0x06)
                {
                    0x0A, 
                    "CPU VAXG", 
                    Package (0x05)
                    {
                        0x08, 
                        "ISl69138_0x82_A", 
                        0x82, 
                        Zero, 
                        0x00100021
                    }, 

                    Package (0x03)
                    {
                        One, 
                        Zero, 
                        Package (0x04)
                        {
                            Zero, 
                            0x05DC, 
                            0x05, 
                            0x03E8
                        }
                    }, 

                    Package (0x01)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                Zero, 
                                0x05DC, 
                                One, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x05DC, 
                                One, 
                                0x03E8
                            }
                        }
                    }, 

                    0x03E8
                }, 

                Package (0x04)
                {
                    0x8000000A, 
                    "GFX VCore Mode", 
                    Package (0x05)
                    {
                        0x08, 
                        "ISl69138_0x82_A", 
                        0x82, 
                        Zero, 
                        0x000204F0
                    }, 

                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Package (0x02)
                        {
                            "Auto", 
                            "Static"
                        }, 

                        Package (0x02)
                        {
                            Zero, 
                            0x03
                        }, 

                        "Auto"
                    }
                }, 

                Package (0x06)
                {
                    0x62, 
                    "CPU VCCIO", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x2A_VRF2", 
                        0x2A, 
                        0x02, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0320, 
                            0x05DC, 
                            0x0A, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0320, 
                                0x03AC, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x8F, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x03B6, 
                                0x05DC, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x37, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x03B6
                }, 

                Package (0x06)
                {
                    0x09, 
                    "CPU System Agent", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x2A_VRF3", 
                        0x2A, 
                        0x03, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0320, 
                            0x05DC, 
                            0x0A, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0320, 
                                0x0410, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x99, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x041A, 
                                0x05DC, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x2D, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x041A
                }, 

                Package (0x06)
                {
                    0x0C, 
                    "PCH Core", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x20_VRF1", 
                        0x20, 
                        One, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0320, 
                            0x0514, 
                            0x14, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0320, 
                                0x03D4, 
                                0x14, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x8A, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x03E8, 
                                0x0514, 
                                0x14, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x0F, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x03E8
                }, 

                Package (0x06)
                {
                    0x0F, 
                    "DRAM Voltage (CH A/B)", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x20_VRF3", 
                        0x20, 
                        0x03, 
                        0x0F
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x03E8, 
                            0x07D0, 
                            0x0A, 
                            0x03E8
                        }
                    }, 

                    Package (0x03)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x03E8, 
                                0x04A6, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x94, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x04B0, 
                                0x05D2, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x1D, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F3", 
                            Zero, 
                            Package (0x04)
                            {
                                0x05DC, 
                                0x07D0, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x1F, 
                                0x51, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x04B0
                }, 

                Package (0x06)
                {
                    0x18, 
                    "DDRVPP (CH A/B) Voltage", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x20_VRF2", 
                        0x20, 
                        0x02, 
                        0x18
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x07BC, 
                            0x0B04, 
                            0x28, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x07BC, 
                                0x099C, 
                                0x28, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x8D, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x09C4, 
                                0x0B04, 
                                0x28, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x08, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x09C4
                }, 

                Package (0x06)
                {
                    0x10, 
                    "DRAM CH(A/B) Termination", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x2A_VRF1", 
                        0x2A, 
                        One, 
                        0x10
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x01C2, 
                            0x03E8, 
                            0x05, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x01C2, 
                                0x0258, 
                                0x05, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x1E, 
                                Zero, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x025D, 
                                0x03E8, 
                                0x05, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x81, 
                                0xD0, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x0258
                }, 

                Package (0x06)
                {
                    0x6D, 
                    "VCC VTT", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x24_VRF1", 
                        0x24, 
                        One, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0320, 
                            0x07D0, 
                            0x0A, 
                            0x03E8
                        }
                    }, 

                    Package (0x03)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0320, 
                                0x03F2, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x96, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x03FC, 
                                0x0564, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x24, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F3", 
                            Zero, 
                            Package (0x04)
                            {
                                0x056E, 
                                0x07D0, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x26, 
                                0x63, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x03FC
                }, 

                Package (0x06)
                {
                    0x6E, 
                    "VCC DMI PEG", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x24_VRF2", 
                        0x24, 
                        0x02, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0320, 
                            0x07D0, 
                            0x0A, 
                            0x03E8
                        }
                    }, 

                    Package (0x04)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0320, 
                                0x03DE, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x94, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x03E8, 
                                0x04A6, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x13, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F3", 
                            Zero, 
                            Package (0x04)
                            {
                                0x04B0, 
                                0x0730, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x15, 
                                0x55, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F4", 
                            Zero, 
                            Package (0x04)
                            {
                                0x073A, 
                                0x07D0, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x57, 
                                0x66, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x03E8
                }, 

                Package (0x06)
                {
                    0x75, 
                    "VCCPLL_OC", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x26_VRF1", 
                        0x26, 
                        One, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x032A, 
                            0x0BC2, 
                            0x14, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x032A, 
                                0x04CE, 
                                0x14, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x96, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x04E2, 
                                0x0BC2, 
                                0x14, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x58, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x04E2
                }, 

                Package (0x06)
                {
                    0x74, 
                    "VCCPLL", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x26_VRF2", 
                        0x26, 
                        0x02, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0320, 
                            0x05DC, 
                            0x0A, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0320, 
                                0x03F2, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x96, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x03FC, 
                                0x05DC, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x30, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x03FC
                }, 

                Package (0x06)
                {
                    0x73, 
                    "VCC Substained", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x26_VRF3", 
                        0x26, 
                        0x03, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0320, 
                            0x05DC, 
                            0x0A, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0320, 
                                0x03F2, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x96, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x03FC, 
                                0x05DC, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x30, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x03FC
                }, 

                Package (0x04)
                {
                    0x70, 
                    "Rear USB3.0 DacUp Port0/1", 
                    Package (0x04)
                    {
                        Zero, 
                        "NCT3933_0x24_VRF3_C9", 
                        0x24, 
                        0x03
                    }, 

                    Package (0x05)
                    {
                        One, 
                        One, 
                        Package (0x04)
                        {
                            "5.0", 
                            "5.1", 
                            "5.2", 
                            "5.3"
                        }, 

                        Package (0x04)
                        {
                            Zero, 
                            One, 
                            0x02, 
                            0x03
                        }, 

                        "5.0"
                    }
                }, 

                Package (0x04)
                {
                    0x80000070, 
                    "Rear USB3.0 DacUp Port SW", 
                    Package (0x03)
                    {
                        0x03, 
                        "PCHGPIO_GPP_C9", 
                        0x03020009
                    }, 

                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Package (0x02)
                        {
                            "On", 
                            "Off"
                        }, 

                        Package (0x02)
                        {
                            Zero, 
                            One
                        }, 

                        "On"
                    }
                }
            })
            Name (GSA8, Package (0x13)
            {
                Package (0x04)
                {
                    0x1B, 
                    "CPU Vcore Loadline Calibration", 
                    Package (0x05)
                    {
                        0x08, 
                        "ISl69138_0x82_B", 
                        0x82, 
                        One, 
                        0x00100028
                    }, 

                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Package (0x07)
                        {
                            "Standard", 
                            "Low", 
                            "Medium", 
                            "High", 
                            "Turbo", 
                            "Extreme", 
                            "Ultra Extreme"
                        }, 

                        Package (0x07)
                        {
                            0xA0, 
                            0x78, 
                            0x60, 
                            0x50, 
                            0x28, 
                            0x18, 
                            Zero
                        }, 

                        "Standard"
                    }
                }, 

                Package (0x06)
                {
                    0x06, 
                    "CPU VCore DVID Offset", 
                    Package (0x05)
                    {
                        0x08, 
                        "ISL69138_0x82_B", 
                        0x82, 
                        One, 
                        0x00100023
                    }, 

                    Package (0x03)
                    {
                        One, 
                        Zero, 
                        Package (0x04)
                        {
                            0xFFFFFED4, 
                            0x0190, 
                            0x05, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0xFFFFFED4, 
                                Ones, 
                                One, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0xFED4, 
                                0xFFFF, 
                                One, 
                                0x03E8
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                Zero, 
                                0x0190, 
                                One, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x0190, 
                                One, 
                                0x03E8
                            }
                        }
                    }, 

                    Zero
                }, 

                Package (0x06)
                {
                    0x05, 
                    "CPU VCore", 
                    Package (0x05)
                    {
                        0x08, 
                        "ISl69138_0x82_B", 
                        0x82, 
                        One, 
                        0x00100021
                    }, 

                    Package (0x03)
                    {
                        One, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0258, 
                            0x0708, 
                            0x05, 
                            0x03E8
                        }
                    }, 

                    Package (0x01)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0258, 
                                0x0708, 
                                One, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x0258, 
                                0x0708, 
                                One, 
                                0x03E8
                            }
                        }
                    }, 

                    0x04B0
                }, 

                Package (0x04)
                {
                    0x80000005, 
                    "CPU VCore Mode", 
                    Package (0x05)
                    {
                        0x08, 
                        "ISl69138_0x82_B", 
                        0x82, 
                        One, 
                        0x000204F0
                    }, 

                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Package (0x03)
                        {
                            "Auto", 
                            "Dynamic Offset", 
                            "Static"
                        }, 

                        Package (0x03)
                        {
                            Zero, 
                            0x02, 
                            0x03
                        }, 

                        "Auto"
                    }
                }, 

                Package (0x06)
                {
                    0x0A, 
                    "CPU VAXG", 
                    Package (0x05)
                    {
                        0x08, 
                        "ISl69138_0x82_A", 
                        0x82, 
                        Zero, 
                        0x00100021
                    }, 

                    Package (0x03)
                    {
                        One, 
                        Zero, 
                        Package (0x04)
                        {
                            Zero, 
                            0x05DC, 
                            0x05, 
                            0x03E8
                        }
                    }, 

                    Package (0x01)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                Zero, 
                                0x05DC, 
                                One, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x05DC, 
                                One, 
                                0x03E8
                            }
                        }
                    }, 

                    0x03E8
                }, 

                Package (0x04)
                {
                    0x8000000A, 
                    "GFX VCore Mode", 
                    Package (0x05)
                    {
                        0x08, 
                        "ISl69138_0x82_A", 
                        0x82, 
                        Zero, 
                        0x000204F0
                    }, 

                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Package (0x02)
                        {
                            "Auto", 
                            "Static"
                        }, 

                        Package (0x02)
                        {
                            Zero, 
                            0x03
                        }, 

                        "Auto"
                    }
                }, 

                Package (0x06)
                {
                    0x62, 
                    "CPU VCCIO", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x2A_VRF2", 
                        0x2A, 
                        0x02, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0320, 
                            0x05DC, 
                            0x0A, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0320, 
                                0x03AC, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x8F, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x03B6, 
                                0x05DC, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x37, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x03B6
                }, 

                Package (0x06)
                {
                    0x09, 
                    "CPU System Agent", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x2A_VRF3", 
                        0x2A, 
                        0x03, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0320, 
                            0x05DC, 
                            0x0A, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0320, 
                                0x0410, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x99, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x041A, 
                                0x05DC, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x2D, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x041A
                }, 

                Package (0x06)
                {
                    0x0C, 
                    "PCH Core", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x20_VRF1", 
                        0x20, 
                        One, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0320, 
                            0x0514, 
                            0x14, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0320, 
                                0x03D4, 
                                0x14, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x8A, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x03E8, 
                                0x0514, 
                                0x14, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x0F, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x03E8
                }, 

                Package (0x06)
                {
                    0x0F, 
                    "DRAM Voltage (CH A/B)", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x20_VRF3", 
                        0x20, 
                        0x03, 
                        0x0F
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x03E8, 
                            0x07D0, 
                            0x0A, 
                            0x03E8
                        }
                    }, 

                    Package (0x03)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x03E8, 
                                0x04A6, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x94, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x04B0, 
                                0x05D2, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x1D, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F3", 
                            Zero, 
                            Package (0x04)
                            {
                                0x05DC, 
                                0x07D0, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x1F, 
                                0x51, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x04B0
                }, 

                Package (0x06)
                {
                    0x18, 
                    "DDRVPP (CH A/B) Voltage", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x20_VRF2", 
                        0x20, 
                        0x02, 
                        0x18
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x07BC, 
                            0x0B04, 
                            0x28, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x07BC, 
                                0x099C, 
                                0x28, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x8D, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x09C4, 
                                0x0B04, 
                                0x28, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x08, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x09C4
                }, 

                Package (0x06)
                {
                    0x10, 
                    "DRAM CH(A/B) Termination", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x2A_VRF1", 
                        0x2A, 
                        One, 
                        0x10
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x01C2, 
                            0x03E8, 
                            0x05, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x01C2, 
                                0x0258, 
                                0x05, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x1E, 
                                Zero, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x025D, 
                                0x03E8, 
                                0x05, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x81, 
                                0xD0, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x0258
                }, 

                Package (0x06)
                {
                    0x6D, 
                    "VCC VTT", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x24_VRF1", 
                        0x24, 
                        One, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0320, 
                            0x07D0, 
                            0x0A, 
                            0x03E8
                        }
                    }, 

                    Package (0x03)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0320, 
                                0x03F2, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x96, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x03FC, 
                                0x0564, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x24, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F3", 
                            Zero, 
                            Package (0x04)
                            {
                                0x056E, 
                                0x07D0, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x26, 
                                0x63, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x03FC
                }, 

                Package (0x06)
                {
                    0x6E, 
                    "VCC DMI PEG", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x24_VRF2", 
                        0x24, 
                        0x02, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0320, 
                            0x07D0, 
                            0x0A, 
                            0x03E8
                        }
                    }, 

                    Package (0x04)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0320, 
                                0x03DE, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x94, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x03E8, 
                                0x04A6, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x13, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F3", 
                            Zero, 
                            Package (0x04)
                            {
                                0x04B0, 
                                0x0730, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x15, 
                                0x55, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F4", 
                            Zero, 
                            Package (0x04)
                            {
                                0x073A, 
                                0x07D0, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x57, 
                                0x66, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x03E8
                }, 

                Package (0x06)
                {
                    0x75, 
                    "VCCPLL_OC", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x26_VRF1", 
                        0x26, 
                        One, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x032A, 
                            0x0BC2, 
                            0x14, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x032A, 
                                0x04CE, 
                                0x14, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x96, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x04E2, 
                                0x0BC2, 
                                0x14, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x58, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x04E2
                }, 

                Package (0x06)
                {
                    0x74, 
                    "VCCPLL", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x26_VRF2", 
                        0x26, 
                        0x02, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0320, 
                            0x05DC, 
                            0x0A, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0320, 
                                0x03F2, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x96, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x03FC, 
                                0x05DC, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x30, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x03FC
                }, 

                Package (0x06)
                {
                    0x73, 
                    "VCC Substained", 
                    Package (0x05)
                    {
                        Zero, 
                        "NCT3933_0x26_VRF3", 
                        0x26, 
                        0x03, 
                        Zero
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Package (0x04)
                        {
                            0x0320, 
                            0x05DC, 
                            0x0A, 
                            0x03E8
                        }
                    }, 

                    Package (0x02)
                    {
                        Package (0x04)
                        {
                            "F1", 
                            Zero, 
                            Package (0x04)
                            {
                                0x0320, 
                                0x03F2, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                0x96, 
                                0x81, 
                                One, 
                                One
                            }
                        }, 

                        Package (0x04)
                        {
                            "F2", 
                            Zero, 
                            Package (0x04)
                            {
                                0x03FC, 
                                0x05DC, 
                                0x0A, 
                                0x03E8
                            }, 

                            Package (0x04)
                            {
                                Zero, 
                                0x30, 
                                One, 
                                One
                            }
                        }
                    }, 

                    0x03FC
                }, 

                Package (0x04)
                {
                    0x70, 
                    "Rear USB3.0 DacUp Port0/1", 
                    Package (0x04)
                    {
                        Zero, 
                        "NCT3933_0x24_VRF3_C9", 
                        0x24, 
                        0x03
                    }, 

                    Package (0x05)
                    {
                        One, 
                        One, 
                        Package (0x04)
                        {
                            "5.0", 
                            "5.1", 
                            "5.2", 
                            "5.3"
                        }, 

                        Package (0x04)
                        {
                            Zero, 
                            One, 
                            0x02, 
                            0x03
                        }, 

                        "5.0"
                    }
                }, 

                Package (0x04)
                {
                    0x80000070, 
                    "Rear USB3.0 DacUp Port SW", 
                    Package (0x03)
                    {
                        0x03, 
                        "PCHGPIO_GPP_C9", 
                        0x03020009
                    }, 

                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Package (0x02)
                        {
                            "On", 
                            "Off"
                        }, 

                        Package (0x02)
                        {
                            Zero, 
                            One
                        }, 

                        "On"
                    }
                }
            })
            Method (IRCU, 1, Serialized)
            {
                Return (Ones)
            }

            Method (IRCE, 2, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Ones)
            }

            Method (IRCF, 3, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Zero)
            }

            Method (IRC9, 2, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Ones)
            }

            Method (IRCA, 3, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Zero)
            }

            Method (IRCC, 2, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Ones)
            }

            Method (IRCB, 3, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Zero)
            }

            Method (IRCD, 2, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Ones)
            }

            Method (IRCM, 2, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Ones)
            }

            Method (IRCN, 3, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Zero)
            }

            Method (IRCO, 2, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Ones)
            }

            Method (IRCP, 3, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Zero)
            }

            Method (IRCQ, 2, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Ones)
            }

            Method (IRCR, 3, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Zero)
            }

            Method (IRCS, 2, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Ones)
            }

            Method (IRCT, 3, Serialized)
            {
                Store (IRCU (Arg0), Local0)
                If (Zero){}
                Return (Zero)
            }

            Method (ISM0, 1, Serialized)
            {
                Return (Zero)
            }

            Method (ISMD, 1, Serialized)
            {
                Return (Zero)
            }

            Method (ISMF, 2, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x000204F0, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                Store (SMM5 (0x02, Arg0, And (Local1, 0xFF)), Local2)
                Store (PFM9 (Local2, And (ShiftRight (Local1, 0x08), 0xFF), And (ShiftRight (
                    Local1, 0x10), 0xFF)), Local2)
                Return (Local2)
            }

            Method (ISMG, 3, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x000204F0, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                Store (SMM5 (0x02, Arg0, And (Local1, 0xFF)), Local2)
                Store (PFM8 (Local2, And (ShiftRight (Local1, 0x08), 0xFF), And (ShiftRight (
                    Local1, 0x10), 0xFF), Arg2), Local2)
                SMM4 (0x02, Arg0, And (Local1, 0xFF), Local2)
                Return (Zero)
            }

            Method (ISM5, 2, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x00100028, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                Store (SMM5 (0x02, Arg0, And (Local1, 0xFF)), Local3)
                Return (Local3)
            }

            Method (ISM6, 3, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x00100028, Local1)
                Store (0x000800E7, Local2)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                SMM4 (0x02, Arg0, And (Local1, 0xFF), And (Arg2, 0xFFFF))
                SMM2 (0x02, Arg0, And (Local2, 0xFF), One)
                Return (Zero)
            }

            Method (ISME, 2, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x0010008B, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                Return (SMM5 (0x02, Arg0, And (Local1, 0xFF)))
            }

            Method (ISM4, 2, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x00100023, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                Return (SMM5 (0x02, Arg0, And (Local1, 0xFF)))
            }

            Method (ISM3, 3, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x00100023, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                SMM4 (0x02, Arg0, And (Local1, 0xFF), And (Arg2, 0xFFFF))
                Return (Zero)
            }

            Method (ISM2, 2, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x00100021, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                Return (SMM5 (0x02, Arg0, And (Local1, 0xFF)))
            }

            Method (ISM1, 3, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x00100021, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                SMM4 (0x02, Arg0, And (Local1, 0xFF), And (Arg2, 0xFFFF))
                Return (Zero)
            }

            Method (ISM7, 2, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x00100055, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                Store (SMM5 (0x02, Arg0, And (Local1, 0xFF)), Local3)
                Return (Local3)
            }

            Method (ISM8, 3, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x00100055, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                SMM4 (0x02, Arg0, And (Local1, 0xFF), And (Arg2, 0xFFFF))
                Return (Zero)
            }

            Method (ISM9, 2, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x0010005B, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                Store (SMM5 (0x02, Arg0, And (Local1, 0xFF)), Local3)
                Return (Local3)
            }

            Method (ISMA, 3, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x0010005B, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                SMM4 (0x02, Arg0, And (Local1, 0xFF), And (Arg2, 0xFFFF))
                Return (Zero)
            }

            Method (ISMH, 2, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x00100042, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                Store (SMM5 (0x02, Arg0, And (Local1, 0xFF)), Local3)
                Return (Local3)
            }

            Method (ISMI, 3, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x00100042, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                SMM4 (0x02, Arg0, And (Local1, 0xFF), And (Arg2, 0xFFFF))
                Return (Zero)
            }

            Method (ISMJ, 2, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x00100046, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                Store (SMM5 (0x02, Arg0, And (Local1, 0xFF)), Local3)
                Return (Local3)
            }

            Method (ISMK, 3, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x00100046, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                SMM4 (0x02, Arg0, And (Local1, 0xFF), And (Arg2, 0xFFFF))
                Return (Zero)
            }

            Method (ISML, 2, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x001000E6, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                Store (SMM5 (0x02, Arg0, And (Local1, 0xFF)), Local3)
                Return (Local3)
            }

            Method (ISMM, 3, Serialized)
            {
                Store (0x00080000, Local0)
                Store (0x001000E6, Local1)
                SMM2 (0x02, Arg0, And (Local0, 0xFF), Arg1)
                SMM4 (0x02, Arg0, And (Local1, 0xFF), And (Arg2, 0xFFFF))
                Return (Zero)
            }

            Method (ISK0, 1, Serialized)
            {
                If (ISMD (Arg0))
                {
                    Return (Zero)
                }

                Return (Ones)
            }

            Method (ISK5, 2, Serialized)
            {
                Store (ISK0 (Arg0), Local0)
                If (Zero){}
                ElseIf (LEqual (Local0, Zero))
                {
                    Return (ISM5 (Arg0, Arg1))
                }

                Return (Ones)
            }

            Method (ISK6, 3, Serialized)
            {
                Store (ISK0 (Arg0), Local0)
                If (Zero){}
                ElseIf (LEqual (Local0, Zero))
                {
                    ISM6 (Arg0, Arg1, Arg2)
                }

                Return (Zero)
            }

            Method (ISK4, 2, Serialized)
            {
                Store (ISK0 (Arg0), Local0)
                If (Zero){}
                ElseIf (LEqual (Local0, Zero))
                {
                    Return (ISM4 (Arg0, Arg1))
                }

                Return (Ones)
            }

            Method (ISK3, 3, Serialized)
            {
                Store (ISK0 (Arg0), Local0)
                If (Zero){}
                ElseIf (LEqual (Local0, Zero))
                {
                    ISM3 (Arg0, Arg1, Arg2)
                }

                Return (Zero)
            }

            Method (ISK2, 2, Serialized)
            {
                Store (ISK0 (Arg0), Local0)
                If (Zero){}
                ElseIf (LEqual (Local0, Zero))
                {
                    Return (ISM2 (Arg0, Arg1))
                }

                Return (Ones)
            }

            Method (ISK1, 3, Serialized)
            {
                Store (ISK0 (Arg0), Local0)
                If (Zero){}
                ElseIf (LEqual (Local0, Zero))
                {
                    ISM1 (Arg0, Arg1, Arg2)
                }

                Return (Zero)
            }

            Method (ISK7, 2, Serialized)
            {
                Store (ISK0 (Arg0), Local0)
                If (Zero){}
                ElseIf (LEqual (Local0, Zero))
                {
                    Return (ISM7 (Arg0, Arg1))
                }

                Return (Ones)
            }

            Method (ISK8, 3, Serialized)
            {
                Store (ISK0 (Arg0), Local0)
                If (Zero){}
                ElseIf (LEqual (Local0, Zero))
                {
                    ISM8 (Arg0, Arg1, Arg2)
                }

                Return (Zero)
            }

            Method (ISK9, 2, Serialized)
            {
                Store (ISK0 (Arg0), Local0)
                If (Zero){}
                ElseIf (LEqual (Local0, Zero))
                {
                    Return (ISM9 (Arg0, Arg1))
                }

                Return (Ones)
            }

            Method (ISKA, 3, Serialized)
            {
                Store (ISK0 (Arg0), Local0)
                If (Zero){}
                ElseIf (LEqual (Local0, Zero))
                {
                    ISMA (Arg0, Arg1, Arg2)
                }

                Return (Zero)
            }

            Method (NCT0, 1, Serialized)
            {
                Return (Or (SMM3 (0x02, Arg0, 0x5D), ShiftLeft (SMM3 (0x02, Arg0, 0x5E), 0x08
                    )))
            }

            Method (NCT1, 2, Serialized)
            {
                Return (SMM3 (0x02, Arg0, Arg1))
            }

            Method (NCT2, 3, Serialized)
            {
                Store (SMM2 (0x02, Arg0, Arg1, Arg2), Local1)
                Return (Local1)
            }

            Name (EZVN, 0xFF)
            Name (EZVQ, "5.0")
            Name (EZVT, 0xFF)
            Method (EZV7, 1, Serialized)
            {
                EZVI (0x70, EZVQ)
                \_SB.SGOV (0x03020009, EZVN)
                Sleep (0x05)
                \_SB.SGOV (0x0302000A, Zero)
                EZV4 (0x0C, EZVT)
            }

            Method (EZV8, 1, Serialized)
            {
                If (LEqual (Arg0, 0x05))
                {
                    Store (\_SB.GGOV (0x03020009), EZVN) /* \GSA1.EZVN */
                    Store (EZVH (0x70), EZVQ) /* \GSA1.EZVQ */
                    If (LEqual (\_SB.GGOV (0x03020009), Zero))
                    {
                        \_SB.SGOV (0x0302000A, One)
                        Sleep (0x05)
                        \_SB.SGOV (0x03020009, One)
                    }
                }
                Else
                {
                    Store (\_SB.GGOV (0x03020009), EZVN) /* \GSA1.EZVN */
                    Store (EZVH (0x70), EZVQ) /* \GSA1.EZVQ */
                    If (LEqual (\_SB.GGOV (0x03020009), Zero))
                    {
                        \_SB.SGOV (0x0302000A, One)
                        Sleep (0x05)
                        \_SB.SGOV (0x03020009, One)
                    }

                    Store (EZV3 (0x0C), EZVT) /* \GSA1.EZVT */
                }
            }

            Method (EZV5, 0, Serialized)
            {
                EZW3 ()
                EZVM ()
            }

            Method (EZW3, 0, Serialized)
            {
            }

            Method (EZW4, 1, Serialized)
            {
                If (LEqual (CCNT, 0x08))
                {
                    Store (MM19 (Arg0), Local0)
                    If (LNotEqual (Local0, Ones))
                    {
                        Store (Ones, Index (DerefOf (Index (GSA8, Local0)), Zero))
                    }
                }
                Else
                {
                    Store (MM19 (Arg0), Local0)
                    If (LNotEqual (Local0, Ones))
                    {
                        Store (Ones, Index (DerefOf (Index (GSAT, Local0)), Zero))
                    }
                }
            }

            Method (EZVM, 0, Serialized)
            {
                \_SB.SGOV (0x0302000A, Zero)
                If (LNotEqual (And (\_SB.GPC0 (0x03020009), 0x0100), Zero))
                {
                    Store (And (\_SB.GPC0 (0x03020009), 0x0001FCFE), Local0)
                    \_SB.SPC0 (0x03020009, Or (Local0, 0x44000200))
                }
            }

            Name (EZW2, "1.0")
            Name (EZVZ, "")
            Method (EZVY, 3, NotSerialized)
            {
                Store (EZVZ, Local7)
                Store (DerefOf (Index (Local7, 0x02)), Local6)
                Return (Zero)
            }

            Method (EZV6, 0, Serialized)
            {
                Return (0x0148)
            }

            Method (EZV0, 1, NotSerialized)
            {
                Store (MM01 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    Store (DerefOf (Index (Local0, One)), Local1)
                    If (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x03)), One)), Zero))
                    {
                        Store ("I", Local7)
                        Store (ToHexString (DerefOf (Index (Local0, 0x05)), Local4), Local3)
                        Store ("", Local2)
                        Store (Zero, Local6)
                        Store (DerefOf (Index (Local0, 0x03)), Local4)
                        Subtract (SizeOf (Local4), 0x02, Local4)
                        While (LLess (Local6, Local4))
                        {
                            If (LNotEqual (Local6, Zero))
                            {
                                Concatenate (Local2, ":", Local2)
                            }

                            Store (MM17 (DerefOf (Index (DerefOf (Index (Local0, 0x03)), Add (0x02, Local6
                                )))), Local5)
                            Concatenate (Local2, Local5, Local2)
                            Increment (Local6)
                        }
                    }
                    Else
                    {
                        Store ("S", Local7)
                        Store (DerefOf (Index (DerefOf (Index (Local0, 0x03)), 0x04)), Local3)
                        Store (MM18 (DerefOf (Index (DerefOf (Index (Local0, 0x03)), 0x02))), Local2)
                    }

                    Concatenate (Local1, ":", Local1)
                    Store (ToHexString (DerefOf (Index (DerefOf (Index (Local0, 0x03)), Zero))), 
                        Local4)
                    Concatenate (Local1, Local4, Local1)
                    Concatenate (Local1, ":", Local1)
                    Concatenate (Local1, Local7, Local1)
                    Concatenate (Local1, ":", Local1)
                    Concatenate (Local1, Local3, Local1)
                    Concatenate (Local1, ":", Local1)
                    Concatenate (Local1, Local2, Local1)
                    Return (Local1)
                }

                Return (Ones)
            }

            Method (EZVC, 1, NotSerialized)
            {
                Store (MM01 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    Return (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x04)))
                }

                Return (Ones)
            }

            Method (EZVB, 1, NotSerialized)
            {
                Store (EZVC (Arg0), Local0)
                Store (MM01 (Local0), Local1)
                If (LEqual (ObjectType (Local1), 0x04))
                {
                    Return (DerefOf (Index (Local1, 0x02)))
                }

                Return (Ones)
            }

            Method (EZV1, 1, NotSerialized)
            {
                Store (EZVB (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    Store (Zero, Local2)
                    If (LEqual (Local2, DerefOf (Index (Local0, 0x03))))
                    {
                        Return (One)
                    }

                    Return (Zero)
                }

                Return (Ones)
            }

            Method (EZV2, 2, NotSerialized)
            {
                Store (EZVB (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    If (LEqual (Arg1, One))
                    {
                        Store (DerefOf (Index (Local0, 0x03)), Local1)
                    }
                    Else
                    {
                        Store (DerefOf (Index (Local0, 0x04)), Local1)
                    }
                }
            }

            Method (EZV3, 1, Serialized)
            {
                Store (MM01 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    If (Zero){}
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 
                        Zero))
                    {
                        Store (NCT1 (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), DerefOf (
                            Index (DerefOf (Index (Local0, 0x02)), 0x03))), Local1)
                        If (LNotEqual (Local1, Ones))
                        {
                            Store (MM13 (Arg0, Local1), Local2)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 
                        0x08))
                    {
                        Store (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), Local7)
                        Store (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x03)), Local6)
                        Switch (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x04)))
                        {
                            Case (0x00100021)
                            {
                                Store (ISM2 (Local7, Local6), Local1)
                                If (LEqual (Local1, Zero))
                                {
                                    Return (Local1)
                                }

                                If (LEqual (Arg0, 0x0A))
                                {
                                    If (LGreater (Local1, 0x05DC))
                                    {
                                        Store (Zero, Local1)
                                    }
                                }
                            }
                            Case (0x00100023)
                            {
                                Store (ISM4 (Local7, Local6), Local1)
                                If (LEqual (Local1, Zero))
                                {
                                    Return (Local1)
                                }
                            }
                            Default
                            {
                                Store (Ones, Local1)
                            }

                        }

                        If (LNotEqual (Local1, Ones))
                        {
                            Store (MM13 (Arg0, Local1), Local2)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                    Else
                    {
                        Return (Ones)
                    }
                }

                Return (Ones)
            }

            Method (EZV4, 2, Serialized)
            {
                Store (MM01 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    If (Zero){}
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 
                        Zero))
                    {
                        Store (MM12 (Arg0, Arg1), Local2)
                        If (LNotEqual (Local2, Ones))
                        {
                            Store (NCT2 (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), DerefOf (
                                Index (DerefOf (Index (Local0, 0x02)), 0x03)), Local2), Local1)
                            If (LEqual (Local1, 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 
                        0x08))
                    {
                        Store (MM12 (Arg0, Arg1), Local2)
                        If (LNotEqual (Local2, Ones))
                        {
                            Store (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), Local7)
                            Store (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x03)), Local6)
                            Switch (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x04)))
                            {
                                Case (0x00100021)
                                {
                                    Store (ISM3 (Local7, Local6, Zero), Local1)
                                    Store (ISM1 (Local7, Local6, Local2), Local1)
                                    Store (ISMG (Local7, Local6, 0x03), Local1)
                                }
                                Case (0x00100023)
                                {
                                    Store (ISM3 (Local7, Local6, Local2), Local1)
                                    Store (ISMG (Local7, Local6, 0x02), Local1)
                                }
                                Default
                                {
                                    Store (0xFFFF, Local1)
                                }

                            }

                            If (LEqual (Local1, 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Return (Ones)
                    }
                }

                Return (One)
            }

            Method (EZV9, 1, NotSerialized)
            {
                Store (MM01 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    Return (DerefOf (Index (Local0, 0x05)))
                }

                Return (One)
            }

            Method (EZVA, 1, NotSerialized)
            {
                Store (MM02 (Arg0), Local0)
                Return (Local0)
            }

            Method (EZVF, 2, NotSerialized)
            {
                Store (MM13 (Arg0, Arg1), Local0)
                Return (Local0)
            }

            Method (EZVG, 2, NotSerialized)
            {
                Store (MM12 (Arg0, Arg1), Local0)
                Return (Local0)
            }

            Method (EZVH, 1, Serialized)
            {
                Store (MM01 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    If (Zero){}
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 
                        0x08))
                    {
                        Store (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), Local7)
                        Store (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x03)), Local6)
                        Switch (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x04)))
                        {
                            Case (0x000204F0)
                            {
                                Store (ISMF (Local7, Local6), Local1)
                            }
                            Case (0x00100028)
                            {
                                Store (ISM5 (Local7, Local6), Local1)
                            }
                            Case (0x00100042)
                            {
                                Store (ISMH (Local7, Local6), Local1)
                            }
                            Case (0x00100046)
                            {
                                Store (ISMJ (Local7, Local6), Local1)
                            }
                            Case (0x001000E6)
                            {
                                Store (ISML (Local7, Local6), Local1)
                            }
                            Default
                            {
                                Store (Ones, Local1)
                            }

                        }

                        If (LNotEqual (Local1, Ones))
                        {
                            Store (MM16 (Arg0, Local1), Local2)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 
                        Zero))
                    {
                        Store (NCT1 (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), DerefOf (
                            Index (DerefOf (Index (Local0, 0x02)), 0x03))), Local1)
                        If (LNotEqual (Local1, Ones))
                        {
                            Store (MM16 (Arg0, Local1), Local2)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 
                        0x03))
                    {
                        Store (\_SB.GGOV (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02))), Local1)
                        If (LNotEqual (Local1, Ones))
                        {
                            Store (MM16 (Arg0, Local1), Local2)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 
                        0x0A))
                    {
                        Store (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), Local3)
                        Store (Zero, Local2)
                        Store (Zero, Local1)
                        While (LLess (Local2, Local3))
                        {
                            Or (ShiftLeft (Local1, One), \_SB.GGOV (DerefOf (Index (DerefOf (Index (Local0, 0x02
                                )), Add (0x03, Local2)))), Local1)
                            Increment (Local2)
                        }

                        If (LNotEqual (Local1, Ones))
                        {
                            Store (MM16 (Arg0, Local1), Local2)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 
                        0x12))
                    {
                        Store (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), Local3)
                        Store (Zero, Local2)
                        Store (Zero, Local1)
                        While (LLess (Local2, Local3))
                        {
                            Or (ShiftLeft (Local1, One), \_SB.GGIV (DerefOf (Index (DerefOf (Index (Local0, 0x02
                                )), Add (0x03, Local2)))), Local1)
                            Increment (Local2)
                        }

                        If (LNotEqual (Local1, Ones))
                        {
                            Store (MM16 (Arg0, Local1), Local2)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 
                        0x0C))
                    {
                        Subtract (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), 0x10, Local4)
                        Store (PIO0 (Add (0x0A00, ShiftRight (Local4, 0x04)), And (Local4, 0x0F
                            ), One), Local1)
                        If (LNotEqual (Local1, Ones))
                        {
                            Store (MM16 (Arg0, Local1), Local2)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 
                        0x0D))
                    {
                        Store (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), Local3)
                        Store (Zero, Local2)
                        Store (Zero, Local1)
                        While (LLess (Local2, Local3))
                        {
                            Subtract (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Add (0x03, Local2)
                                )), 0x10, Local4)
                            Or (ShiftLeft (Local1, One), PIO0 (Add (0x0A00, ShiftRight (Local4, 0x04)
                                ), And (Local4, 0x0F), One), Local1)
                            Increment (Local2)
                        }

                        If (LNotEqual (Local1, Ones))
                        {
                            Store (MM16 (Arg0, Local1), Local2)
                            Return (Local2)
                        }

                        Return (Ones)
                    }
                }

                Return (Ones)
            }

            Method (EZVI, 2, Serialized)
            {
                Store (MM01 (Arg0), Local0)
                If (LEqual (ObjectType (Local0), 0x04))
                {
                    If (Zero){}
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 
                        0x08))
                    {
                        Store (MM15 (Arg0, Arg1), Local2)
                        If (LNotEqual (Local2, Ones))
                        {
                            Store (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), Local7)
                            Store (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x03)), Local6)
                            Switch (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x04)))
                            {
                                Case (0x000204F0)
                                {
                                    If (LEqual (Local2, 0x03))
                                    {
                                        If (LEqual (Arg0, 0x80000005))
                                        {
                                            EZV4 (0x05, 0x04B0)
                                            ISM3 (Local7, Local6, Zero)
                                            Store (ISMG (Local7, Local6, Local2), Local1)
                                        }
                                        ElseIf (LEqual (Arg0, 0x8000000A))
                                        {
                                            EZV4 (0x0A, 0x0384)
                                            ISM3 (Local7, Local6, Zero)
                                            Store (ISMG (Local7, Local6, Local2), Local1)
                                        }
                                    }

                                    If (LEqual (Local2, 0x02))
                                    {
                                        Store (ISMG (Local7, Local6, Local2), Local1)
                                        Store (ISM3 (Local7, Local6, Zero), Local1)
                                    }

                                    If (LEqual (Local2, Zero))
                                    {
                                        Store (ISMG (Local7, Local6, Local2), Local1)
                                        Store (ISM3 (Local7, Local6, Zero), Local1)
                                    }
                                }
                                Case (0x00100028)
                                {
                                    Store (ISM6 (Local7, Local6, Local2), Local1)
                                }
                                Case (0x00100042)
                                {
                                    Store (ISMI (Local7, Local6, Local2), Local1)
                                }
                                Case (0x00100046)
                                {
                                    Store (ISMK (Local7, Local6, Local2), Local1)
                                }
                                Case (0x001000E6)
                                {
                                    Store (ISMM (Local7, Local6, Local2), Local1)
                                }
                                Default
                                {
                                    Store (0xFFFF, Local1)
                                }

                            }

                            If (LEqual (Local1, 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Return (One)
                    }
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 
                        Zero))
                    {
                        Store (MM15 (Arg0, Arg1), Local2)
                        If (LNotEqual (Local2, Ones))
                        {
                            Store (NCT2 (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), DerefOf (
                                Index (DerefOf (Index (Local0, 0x02)), 0x03)), Local2), Local1)
                            If (LEqual (Local1, 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Return (One)
                    }
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 
                        0x03))
                    {
                        Store (MM15 (Arg0, Arg1), Local2)
                        If (LNotEqual (Local2, Ones))
                        {
                            \_SB.SGOV (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), Local2)
                            Store (Zero, Local1)
                            If (LEqual (Local1, 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 
                        0x0A))
                    {
                        Store (MM15 (Arg0, Arg1), Local2)
                        If (LNotEqual (Local2, Ones))
                        {
                            Store (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), Local3)
                            Store (Zero, Local1)
                            While (LLess (Local1, Local3))
                            {
                                And (ShiftRight (Local2, Subtract (Subtract (Local3, Local1), One)), One, 
                                    Local4)
                                \_SB.SGOV (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Add (0x03, Local1)
                                    )), Local4)
                                Increment (Local1)
                            }

                            Store (Zero, Local1)
                            If (LEqual (Local1, 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 
                        0x0C))
                    {
                        Store (MM15 (Arg0, Arg1), Local2)
                        If (LNotEqual (Local2, Ones))
                        {
                            Subtract (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Add (0x03, Local1)
                                )), 0x10, Local5)
                            PIO1 (Add (0x0A00, ShiftRight (Local5, 0x04)), And (Local5, 0x0F), 
                                One, Local2)
                            Store (Zero, Local1)
                            If (LEqual (Local1, 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                    ElseIf (LEqual (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Zero)), 
                        0x0D))
                    {
                        Store (MM15 (Arg0, Arg1), Local2)
                        If (LNotEqual (Local2, Ones))
                        {
                            Store (DerefOf (Index (DerefOf (Index (Local0, 0x02)), 0x02)), Local3)
                            Store (Zero, Local1)
                            While (LLess (Local1, Local3))
                            {
                                And (ShiftRight (Local2, Subtract (Subtract (Local3, Local1), One)), One, 
                                    Local4)
                                Subtract (DerefOf (Index (DerefOf (Index (Local0, 0x02)), Add (0x03, Local1)
                                    )), 0x10, Local5)
                                PIO1 (Add (0x0A00, ShiftRight (Local5, 0x04)), And (Local5, 0x0F), 
                                    One, Local4)
                                Increment (Local1)
                            }

                            Store (Zero, Local1)
                            If (LEqual (Local1, 0xFFFF))
                            {
                                Return (One)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                }

                Return (One)
            }

            Method (EZVJ, 2, NotSerialized)
            {
                Store (MM16 (Arg0, Arg1), Local0)
                Return (Local0)
            }

            Method (EZVK, 2, NotSerialized)
            {
                Store (MM15 (Arg0, Arg1), Local0)
                Return (Local0)
            }

            Name (SIOG, 0x0A45)
            OperationRegion (SIO1, SystemIO, SIOG, 0x02)
            Field (SIO1, ByteAcc, Lock, WriteAsZeros)
            {
                SIO2,   8, 
                SIO3,   8
            }

            IndexField (SIO2, SIO3, ByteAcc, Lock, Preserve)
            {
                Offset (0x0B), 
                FTD1,   3, 
                FTD2,   3, 
                Offset (0x0D), 
                FTA1,   8, 
                FTA2,   8, 
                FTA3,   8, 
                Offset (0x13), 
                FAE1,   1, 
                FAE2,   1, 
                FAE3,   1, 
                REV1,   1, 
                FTE1,   1, 
                FTE2,   1, 
                FTE3,   1, 
                Offset (0x14), 
                FBE1,   1, 
                FBE2,   1, 
                FBE3,   1, 
                REV2,   4, 
                Offset (0x15), 
                FP10,   7, 
                FP17,   1, 
                FP20,   7, 
                FP27,   1, 
                FP30,   7, 
                FP37,   1, 
                FTB1,   8, 
                FTB2,   8, 
                FTB3,   8, 
                Offset (0x29), 
                FET1,   8, 
                FET2,   8, 
                FET3,   8, 
                FET4,   8, 
                FET5,   8, 
                FET6,   8, 
                Offset (0x44), 
                BEEP,   8, 
                Offset (0x4C), 
                FTA6,   8, 
                FTB6,   8, 
                Offset (0x5C), 
                FBEC,   3, 
                Offset (0x60), 
                FC10,   8, 
                FC11,   8, 
                FC12,   8, 
                FC13,   8, 
                FC14,   8, 
                FC15,   8, 
                FC16,   8, 
                FC17,   8, 
                FC20,   8, 
                FC21,   8, 
                FC22,   8, 
                FC23,   8, 
                FC24,   8, 
                FC25,   8, 
                FC26,   8, 
                FC27,   8, 
                FC30,   8, 
                FC31,   8, 
                FC32,   8, 
                FC33,   8, 
                FC34,   8, 
                FC35,   8, 
                FC36,   8, 
                FC37,   8, 
                FC40,   8, 
                FC41,   8, 
                FC42,   8, 
                FC43,   8, 
                FC44,   8, 
                FC45,   8, 
                FC46,   8, 
                FC47,   8, 
                FTA4,   8, 
                FTB4,   8, 
                FTA5,   8, 
                FTB5,   8, 
                Offset (0xA0), 
                FC50,   8, 
                FC51,   8, 
                FC52,   8, 
                FC53,   8, 
                FC54,   8, 
                FC55,   8, 
                FC56,   8, 
                FC57,   8, 
                FC60,   8, 
                FC61,   8, 
                FC62,   8, 
                FC63,   8, 
                FC64,   8, 
                FC65,   8, 
                FC66,   8, 
                FC67,   8
            }

            Method (SIOE, 0, NotSerialized)
            {
                Return (FBEC) /* \GSA1.FBEC */
            }

            Method (SIOF, 1, NotSerialized)
            {
                Store (Arg0, FBEC) /* \GSA1.FBEC */
            }

            Method (SIOA, 1, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        Store (Zero, FBE1) /* \GSA1.FBE1 */
                        Store (Zero, FAE1) /* \GSA1.FAE1 */
                    }
                    Case (One)
                    {
                        Store (Zero, FBE2) /* \GSA1.FBE2 */
                        Store (Zero, FAE2) /* \GSA1.FAE2 */
                    }
                    Case (0x02)
                    {
                        Store (Zero, FBE3) /* \GSA1.FBE3 */
                        Store (Zero, FAE3) /* \GSA1.FAE3 */
                    }

                }
            }

            Method (SIO9, 1, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        Store (Zero, FBE1) /* \GSA1.FBE1 */
                        Store (One, FAE1) /* \GSA1.FAE1 */
                    }
                    Case (One)
                    {
                        Store (Zero, FBE2) /* \GSA1.FBE2 */
                        Store (One, FAE2) /* \GSA1.FAE2 */
                    }
                    Case (0x02)
                    {
                        Store (Zero, FBE3) /* \GSA1.FBE3 */
                        Store (One, FAE3) /* \GSA1.FAE3 */
                    }

                }
            }

            Method (SIOD, 1, Serialized)
            {
                Store (Zero, Local1)
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        If (LAnd (LEqual (FBE1, Zero), LEqual (FAE1, Zero)))
                        {
                            Store (One, Local1)
                        }
                    }
                    Case (One)
                    {
                        If (LAnd (LEqual (FBE2, Zero), LEqual (FAE2, Zero)))
                        {
                            Store (One, Local1)
                        }
                    }
                    Case (0x02)
                    {
                        If (LAnd (LEqual (FBE3, Zero), LEqual (FAE3, Zero)))
                        {
                            Store (One, Local1)
                        }
                    }

                }

                Return (Local1)
            }

            Method (SIO0, 1, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        Return (FET1) /* \GSA1.FET1 */
                    }
                    Case (One)
                    {
                        Return (FET2) /* \GSA1.FET2 */
                    }
                    Case (0x02)
                    {
                        Return (FET3) /* \GSA1.FET3 */
                    }
                    Case (0x03)
                    {
                        Return (FET4) /* \GSA1.FET4 */
                    }
                    Case (0x04)
                    {
                        Return (FET5) /* \GSA1.FET5 */
                    }
                    Case (0x05)
                    {
                        Return (FET6) /* \GSA1.FET6 */
                    }

                }
            }

            Method (SIO4, 1, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        Return (Or (ShiftLeft (FTB1, 0x08), FTA1))
                    }
                    Case (One)
                    {
                        Return (Or (ShiftLeft (FTB2, 0x08), FTA2))
                    }
                    Case (0x02)
                    {
                        Return (Or (ShiftLeft (FTB3, 0x08), FTA3))
                    }
                    Case (0x03)
                    {
                        Return (Or (ShiftLeft (FTB4, 0x08), FTA4))
                    }
                    Case (0x04)
                    {
                        Return (Or (ShiftLeft (FTB5, 0x08), FTA5))
                    }
                    Case (0x05)
                    {
                        Return (Or (ShiftRight (FTB6, 0x08), FTA6))
                    }

                }
            }

            Method (SIOC, 2, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        Store (Arg1, FP10) /* \GSA1.FP10 */
                    }
                    Case (One)
                    {
                        Store (Arg1, FP20) /* \GSA1.FP20 */
                    }
                    Case (0x02)
                    {
                        Store (Arg1, FP30) /* \GSA1.FP30 */
                    }

                }
            }

            Method (SIOB, 1, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        Return (FP10) /* \GSA1.FP10 */
                    }
                    Case (One)
                    {
                        Return (FP20) /* \GSA1.FP20 */
                    }
                    Case (0x02)
                    {
                        Return (FP30) /* \GSA1.FP30 */
                    }

                }

                Return (Zero)
            }

            Method (SIO7, 1, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        Return (FC10) /* \GSA1.FC10 */
                    }
                    Case (One)
                    {
                        Return (FC20) /* \GSA1.FC20 */
                    }
                    Case (0x02)
                    {
                        Return (FC30) /* \GSA1.FC30 */
                    }
                    Case (0x03)
                    {
                        Return (FC40) /* \GSA1.FC40 */
                    }
                    Case (0x04)
                    {
                        Return (FC50) /* \GSA1.FC50 */
                    }
                    Case (0x05)
                    {
                        Return (FC60) /* \GSA1.FC60 */
                    }

                }

                Return (Zero)
            }

            Method (SIO5, 1, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        Return (FC11) /* \GSA1.FC11 */
                    }
                    Case (One)
                    {
                        Return (FC21) /* \GSA1.FC21 */
                    }
                    Case (0x02)
                    {
                        Return (FC31) /* \GSA1.FC31 */
                    }
                    Case (0x03)
                    {
                        Return (FC41) /* \GSA1.FC41 */
                    }
                    Case (0x04)
                    {
                        Return (FC51) /* \GSA1.FC51 */
                    }
                    Case (0x05)
                    {
                        Return (FC61) /* \GSA1.FC61 */
                    }

                }

                Return (Zero)
            }

            Method (SIO8, 2, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        Store (Arg1, FC10) /* \GSA1.FC10 */
                    }
                    Case (One)
                    {
                        Store (Arg1, FC20) /* \GSA1.FC20 */
                    }
                    Case (0x02)
                    {
                        Store (Arg1, FC30) /* \GSA1.FC30 */
                    }
                    Case (0x03)
                    {
                        Store (Arg1, FC40) /* \GSA1.FC40 */
                    }
                    Case (0x04)
                    {
                        Store (Arg1, FC50) /* \GSA1.FC50 */
                    }
                    Case (0x05)
                    {
                        Store (Arg1, FC60) /* \GSA1.FC60 */
                    }

                }
            }

            Method (SIO6, 2, Serialized)
            {
                Switch (Arg0)
                {
                    Case (Zero)
                    {
                        Store (Arg1, FC11) /* \GSA1.FC11 */
                    }
                    Case (One)
                    {
                        Store (Arg1, FC21) /* \GSA1.FC21 */
                    }
                    Case (0x02)
                    {
                        Store (Arg1, FC31) /* \GSA1.FC31 */
                    }
                    Case (0x03)
                    {
                        Store (Arg1, FC41) /* \GSA1.FC41 */
                    }
                    Case (0x04)
                    {
                        Store (Arg1, FC51) /* \GSA1.FC51 */
                    }
                    Case (0x05)
                    {
                        Store (Arg1, FC61) /* \GSA1.FC61 */
                    }

                }
            }

            Scope (\_TZ)
            {
                ThermalZone (TZ10)
                {
                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        \GSA1.ZRC0 ()
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (\_OSI ("Windows 2001"))
                        {
                            Store (0x04, Local0)
                        }

                        If (\_OSI ("Windows 2001.1"))
                        {
                            Store (0x05, Local0)
                        }

                        If (\_OSI ("FreeBSD"))
                        {
                            Store (0x06, Local0)
                        }

                        If (\_OSI ("HP-UX"))
                        {
                            Store (0x07, Local0)
                        }

                        If (\_OSI ("OpenVMS"))
                        {
                            Store (0x08, Local0)
                        }

                        If (\_OSI ("Windows 2001 SP1"))
                        {
                            Store (0x09, Local0)
                        }

                        If (\_OSI ("Windows 2001 SP2"))
                        {
                            Store (0x0A, Local0)
                        }

                        If (\_OSI ("Windows 2001 SP3"))
                        {
                            Store (0x0B, Local0)
                        }

                        If (\_OSI ("Windows 2006"))
                        {
                            Store (0x0C, Local0)
                        }

                        If (\_OSI ("Windows 2006 SP1"))
                        {
                            Store (0x0D, Local0)
                        }

                        If (\_OSI ("Windows 2009"))
                        {
                            Store (0x0E, Local0)
                        }

                        If (\_OSI ("Windows 2012"))
                        {
                            Store (0x0F, Local0)
                        }

                        If (\_OSI ("Windows 2013"))
                        {
                            Store (0x10, Local0)
                        }

                        If (\_OSI ("Windows 2015"))
                        {
                            Store (0x11, Local0)
                        }

                        If (\_OSI ("Windows 2016"))
                        {
                            Store (0x12, Local0)
                        }

                        If (\_OSI ("Windows 2017"))
                        {
                            Store (0x13, Local0)
                        }

                        If (\_OSI ("Windows 2017.2"))
                        {
                            Store (0x14, Local0)
                        }

                        If (\_OSI ("Windows 2018"))
                        {
                            Store (0x15, Local0)
                        }

                        If (\_OSI ("Windows 2018.2"))
                        {
                            Store (0x16, Local0)
                        }

                        If (LLessEqual (Local0, 0x0E))
                        {
                            Store (One, \GSA1.ZRD2)
                        }

                        Return (0x0B)
                    }

                    Name (TZD, Package (0x00){})
                    Method (_TZD, 0, Serialized)  // _TZD: Thermal Zone Devices
                    {
                        Return (TZD) /* \_TZ_.TZ10.TZD_ */
                    }

                    Name (PSL, Package (0x00){})
                    Method (_PSL, 0, Serialized)  // _PSL: Passive List
                    {
                        Return (PSL) /* \_TZ_.TZ10.PSL_ */
                    }

                    Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
                    {
                        Return (0x0B54)
                    }

                    Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
                    {
                        Return (0x0B72)
                    }

                    Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
                    {
                        Return (0x0B7C)
                    }

                    Method (_TC1, 0, Serialized)  // _TC1: Thermal Constant 1
                    {
                        Return (Zero)
                    }

                    Method (_TC2, 0, Serialized)  // _TC2: Thermal Constant 2
                    {
                        Return (Zero)
                    }

                    Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
                    {
                        Return (0x0A)
                    }

                    Method (_TZP, 0, Serialized)  // _TZP: Thermal Zone Polling
                    {
                        Return (0x0A)
                    }

                    Method (_TMP, 0, Serialized)  // _TMP: Temperature
                    {
                        \GSA1.ZRC3 ()
                        If (LEqual (\GSA1.ZRD1, One))
                        {
                            Sleep (0x03E8)
                            Notify (\_TZ.TZ10, 0x81) // Thermal Trip Point Change
                        }

                        Return (0x0B54)
                    }

                    Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
                    {
                    }
                }
            }

            Name (ZRC8, Package (0x05)
            {
                Package (0x02)
                {
                    Zero, 
                    0x03010003
                }, 

                Package (0x02)
                {
                    One, 
                    0x03010004
                }, 

                Package (0x02)
                {
                    0x02, 
                    0x0301000F
                }, 

                Package (0x02)
                {
                    0x03, 
                    0x03010010
                }, 

                Package (0x02)
                {
                    0x04, 
                    0x03010011
                }
            })
            Name (ZRCL, Buffer (0x23)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0018 */  0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0020 */  0x00, 0x02, 0x00                                 // ...
            })
            Name (ZRCT, Zero)
            Name (ZRCF, Zero)
            Name (ZRCG, 0x1E)
            Method (ZRCQ, 0, NotSerialized)
            {
                ZRCU (Zero)
                Store (SIOE (), Local0)
                SIOF (Zero)
                Store (Zero, Local6)
                Store (SizeOf (ZRC8), Local5)
                While (LLess (Local6, Local5))
                {
                    Store (ZRCJ (Local6), Local7)
                    If (LEqual (ObjectType (Local7), 0x04))
                    {
                        Store (DerefOf (Index (Local7, Zero)), Local1)
                        Store (ZRC1 (Local1), Index (ZRCL, Add (Multiply (Local6, 0x07), 0x02)
                            ))
                        ZRC2 (Local1, 0x02)
                        If (LNotEqual (SIO4 (Local1), 0xFFFF))
                        {
                            Store (0xFF, Index (ZRCL, Add (Multiply (Local6, 0x07), 0x03)))
                        }
                        Else
                        {
                            Store (Zero, Index (ZRCL, Add (Multiply (Local6, 0x07), 0x03)))
                        }

                        If (LEqual (Local1, 0x02))
                        {
                            Store (0xFF, Index (ZRCL, Add (Multiply (Local6, 0x07), 0x03)))
                        }
                    }

                    Increment (Local6)
                }

                Store (Zero, Local6)
                Store (SizeOf (ZRC8), Local5)
                While (LLess (Local6, Local5))
                {
                    Store (ZRCJ (Local6), Local7)
                    If (LEqual (ObjectType (Local7), 0x04))
                    {
                        Store (DerefOf (Index (Local7, Zero)), Local1)
                        If (DerefOf (Index (ZRCL, Add (Multiply (Local6, 0x07), 0x03))))
                        {
                            ZRC2 (Local1, 0x02)
                            SIOA (Local1)
                        }
                    }

                    Increment (Local6)
                }

                Sleep (0x1770)
                Store (Zero, Local6)
                Store (SizeOf (ZRC8), Local5)
                While (LLess (Local6, Local5))
                {
                    Store (ZRCJ (Local6), Local7)
                    If (LEqual (ObjectType (Local7), 0x04))
                    {
                        Store (DerefOf (Index (Local7, Zero)), Local1)
                        If (DerefOf (Index (ZRCL, Add (Multiply (Local6, 0x07), 0x03))))
                        {
                            Store (SIO4 (Local1), Local3)
                            If (LAnd (LEqual (Local3, 0xFFFF), LNotEqual (Local1, 0x02)))
                            {
                                ZRC2 (Local1, DerefOf (Index (ZRCL, Add (Multiply (Local6, 0x07), 0x02)
                                    )))
                                Store (0x03, Index (ZRCL, Add (Multiply (Local6, 0x07), 0x04)))
                            }
                            Else
                            {
                                ZRC2 (Local1, DerefOf (Index (ZRCL, Add (Multiply (Local6, 0x07), 0x02)
                                    )))
                                Store (0x04, Index (ZRCL, Add (Multiply (Local6, 0x07), 0x04)))
                            }

                            SIO9 (Local1)
                        }
                    }

                    Increment (Local6)
                }

                SIOF (Local0)
                ZRCU (One)
            }

            Method (ZRCB, 1, Serialized)
            {
                ZRCU (Zero)
            }

            Method (ZRCP, 1, Serialized)
            {
                ZRC0 ()
            }

            Name (ZRD0, Zero)
            Method (ZRC0, 0, NotSerialized)
            {
                ZRCU (Zero)
                ZRCV ()
                Store (One, ZRD0) /* \GSA1.ZRD0 */
                ZRCU (One)
            }

            Method (ZRCU, 1, Serialized)
            {
                If (Arg0)
                {
                    Store (One, ZRCT) /* \GSA1.ZRCT */
                }
                Else
                {
                    Store (Zero, ZRCT) /* \GSA1.ZRCT */
                }
            }

            Method (ZRC9, 0, Serialized)
            {
                Return (One)
            }

            Method (ZRCW, 1, NotSerialized)
            {
                Return (DerefOf (Index (ZRCL, Add (Multiply (Arg0, 0x07), 0x05))))
            }

            Method (ZRCX, 2, NotSerialized)
            {
                Store (Arg1, Index (ZRCL, Add (Multiply (Arg0, 0x07), 0x05)))
            }

            Method (ZRCY, 1, NotSerialized)
            {
                Return (DerefOf (Index (ZRCL, Add (Multiply (Arg0, 0x07), 0x06))))
            }

            Method (ZRCZ, 2, NotSerialized)
            {
                If (LAnd (LEqual (ZRD1, Zero), LEqual (ZRD2, One)))
                {
                    Store (One, ZRD1) /* \GSA1.ZRD1 */
                    Notify (\_TZ.TZ10, 0x81) // Thermal Trip Point Change
                }

                Store (Arg1, Index (ZRCL, Add (Multiply (Arg0, 0x07), 0x06)))
                Sleep (0x03E8)
                If (LEqual (Arg1, Zero))
                {
                    ZRCM (Arg0, One)
                }
            }

            Method (ZRC5, 1, NotSerialized)
            {
                Return (SIO4 (Arg0))
            }

            Method (ZRCD, 1, NotSerialized)
            {
                If (ZRCF)
                {
                    Return (ZRCG) /* \GSA1.ZRCG */
                }
                ElseIf (LEqual (Arg0, 0x0A))
                {
                    Return (ZRCG) /* \GSA1.ZRCG */
                }
                Else
                {
                    Return (SIO0 (Arg0))
                }
            }

            Method (ZRCE, 1, NotSerialized)
            {
                Store (Arg0, ZRCG) /* \GSA1.ZRCG */
            }

            Method (ZRCJ, 1, NotSerialized)
            {
                Store (Zero, Local0)
                Store (SizeOf (ZRC8), Local1)
                While (LLess (Local0, Local1))
                {
                    If (LEqual (DerefOf (Index (DerefOf (Index (ZRC8, Local0)), Zero)), Arg0))
                    {
                        Return (DerefOf (Index (ZRC8, Local0)))
                    }

                    Increment (Local0)
                }

                Return (Ones)
            }

            Method (ZRCK, 1, NotSerialized)
            {
                Store (Zero, Local0)
                Store (SizeOf (ZRC8), Local1)
                While (LLess (Local0, Local1))
                {
                    If (LEqual (DerefOf (Index (DerefOf (Index (ZRC8, Local0)), Zero)), Arg0))
                    {
                        Return (Local0)
                    }

                    Increment (Local0)
                }

                Return (Ones)
            }

            Method (ZRCV, 0, NotSerialized)
            {
                Store (And (\_SB.GPC0 (0x03010014), 0x0001FCFF), Local0)
                \_SB.SPC0 (0x03010014, Or (Local0, 0x82000300))
            }

            Method (ZRC1, 1, NotSerialized)
            {
                Store (ZRCJ (Arg0), Local7)
                If (LEqual (ObjectType (Local7), 0x04))
                {
                    Store (DerefOf (Index (Local7, One)), Local1)
                    If (LNotEqual (And (\_SB.GPC0 (Local1), 0x0100), Zero))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        If (LEqual (And (\_SB.GPC0 (Local1), One), Zero))
                        {
                            Return (Zero)
                        }

                        Return (One)
                    }
                }

                Return (Ones)
            }

            Method (ZRC2, 2, NotSerialized)
            {
                Store (ZRCJ (Arg0), Local7)
                If (LEqual (ObjectType (Local7), 0x04))
                {
                    Store (DerefOf (Index (Local7, One)), Local1)
                    If (LEqual (Arg1, One))
                    {
                        Store (And (\_SB.GPC0 (Local1), 0x0001FCFE), Local0)
                        \_SB.SPC0 (Local1, Or (Local0, 0x84000201))
                    }
                    ElseIf (LEqual (Arg1, Zero))
                    {
                        Store (And (\_SB.GPC0 (Local1), 0x0001FCFE), Local0)
                        \_SB.SPC0 (Local1, Or (Local0, 0x84000200))
                    }
                    Else
                    {
                        Store (And (\_SB.GPC0 (Local1), 0x0001FCFE), Local0)
                        \_SB.SPC0 (Local1, Or (Local0, 0x84000101))
                    }

                    If (LEqual (Arg0, 0x02))
                    {
                        If (LEqual (Arg1, One))
                        {
                            Store (And (\_SB.GPC0 (0x03010015), 0x0001FCFE), Local0)
                            \_SB.SPC0 (0x03010015, Or (Local0, 0x84000201))
                        }
                        ElseIf (LEqual (Arg1, Zero))
                        {
                            Store (And (\_SB.GPC0 (0x03010015), 0x0001FCFE), Local0)
                            \_SB.SPC0 (0x03010015, Or (Local0, 0x84000200))
                        }
                        Else
                        {
                            Store (And (\_SB.GPC0 (0x03010015), 0x0001FCFE), Local0)
                            \_SB.SPC0 (0x03010015, Or (Local0, 0x84000101))
                        }
                    }
                }
            }

            Method (ZRC7, 3, NotSerialized)
            {
                Store (ZRCJ (Arg0), Local7)
                If (LEqual (ObjectType (Local7), 0x04))
                {
                    Store (Arg1, Index (ZRCL, Add (Multiply (Arg0, 0x07), Zero)))
                    Store (Arg2, Index (ZRCL, Add (Multiply (Arg0, 0x07), One)))
                }
            }

            Method (ZRCA, 1, NotSerialized)
            {
                Store (ZRCJ (Arg0), Local7)
                If (LEqual (ObjectType (Local7), 0x04))
                {
                    Store (DerefOf (Index (ZRCL, Add (Multiply (Arg0, 0x07), Zero))), 
                        Local0)
                    Store (DerefOf (Index (ZRCL, Add (Multiply (Arg0, 0x07), One))), 
                        Local1)
                    Return (Or (Local0, ShiftLeft (Local1, 0x08)))
                }

                Return (Ones)
            }

            Method (ZRCR, 1, NotSerialized)
            {
                Return (DerefOf (Index (ZRCL, Add (Multiply (Arg0, 0x07), 0x04))))
            }

            Method (ZRCM, 2, NotSerialized)
            {
                Store (ZRCK (Arg0), Local7)
                If (LNotEqual (Local7, Ones))
                {
                    If (Arg1)
                    {
                        If (LEqual (ZRCR (Arg0), 0x04))
                        {
                            ZRC2 (Arg0, One)
                            SIO9 (Arg0)
                            Sleep (0x01F4)
                            ZRC2 (Arg0, DerefOf (Index (ZRCL, Add (Multiply (Arg0, 0x07), 0x02)
                                )))
                        }
                        Else
                        {
                            ZRC2 (Arg0, One)
                            SIO9 (Arg0)
                            Sleep (0x01F4)
                            ZRC2 (Arg0, DerefOf (Index (ZRCL, Add (Multiply (Arg0, 0x07), 0x02)
                                )))
                        }
                    }
                    Else
                    {
                        ZRC2 (Arg0, Zero)
                        SIOA (Arg0)
                    }
                }
            }

            Name (ZRD1, Zero)
            Name (ZRD2, Zero)
            Method (ZRC3, 0, NotSerialized)
            {
                If (LEqual (ZRCT, One))
                {
                    If (LEqual (ZRD0, One))
                    {
                        ZRCU (Zero)
                        ZRCQ ()
                        Store (Zero, ZRD0) /* \GSA1.ZRD0 */
                        ZRCU (One)
                    }

                    Store (Zero, Local6)
                    Store (SizeOf (ZRC8), Local5)
                    While (LLess (Local6, Local5))
                    {
                        If (DerefOf (Index (ZRCL, Add (Multiply (Local6, 0x07), 0x06))))
                        {
                            Store (ZRCD (DerefOf (Index (ZRCL, Add (Multiply (Local6, 0x07), 0x05)
                                ))), Local0)
                            Store (ZRCJ (Local6), Local7)
                            If (LEqual (ObjectType (Local7), 0x04))
                            {
                                Store (DerefOf (Index (Local7, Zero)), Local1)
                                If (DerefOf (Index (ZRCL, Add (Multiply (Local6, 0x07), 0x03))))
                                {
                                    Store (DerefOf (Index (ZRCL, Add (Multiply (Local1, 0x07), One))), 
                                        Local2)
                                    Store (DerefOf (Index (ZRCL, Add (Multiply (Local1, 0x07), Zero))), 
                                        Local3)
                                    Store (SIO4 (Local1), Local4)
                                    If (LEqual (Local1, 0x02))
                                    {
                                        If (LEqual (Local4, 0xFFFF))
                                        {
                                            If (SIOD (Local1))
                                            {
                                                Store (0xFFFF, Local4)
                                            }
                                            Else
                                            {
                                                Store (0x0BB8, Local4)
                                            }
                                        }
                                    }

                                    If (LNotEqual (Local4, 0xFFFF))
                                    {
                                        If (LLessEqual (Local0, Local3))
                                        {
                                            ZRCM (Local1, Zero)
                                        }
                                    }
                                    ElseIf (LGreaterEqual (Local0, Local2))
                                    {
                                        ZRCM (Local1, One)
                                    }
                                }
                            }
                        }

                        Increment (Local6)
                    }
                }
            }

            Name (DIC3, Package (0x04)
            {
                Buffer (0x04)
                {
                     0x09, 0x09, 0x01, 0x07                           // ....
                }, 

                Buffer (0x04)
                {
                     0x04, 0x04, 0x02, 0x07                           // ....
                }, 

                Buffer (0x04)
                {
                     0x01, 0x01, 0x02, 0x01                           // ....
                }, 

                Buffer (0x04)
                {
                     0x00, 0x01, 0x02, 0x01                           // ....
                }
            })
            Method (DIM0, 0, Serialized)
            {
                Store (PFM7 (), Local2)
                Store (DerefOf (Local2), Local7)
                Store (SizeOf (Local7), Local0)
                Store (Zero, Local1)
                While (LLess (Local1, Local0))
                {
                    Store (DerefOf (Index (DerefOf (Index (Local7, Local1)), Zero)), Local5)
                    Store (DerefOf (Index (DerefOf (Index (Local7, Local1)), One)), Local6)
                    Store (Zero, Local4)
                    If (LNotEqual (SMM3 (Local5, Local6, Zero), 0xFFFF))
                    {
                        Store (One, Local4)
                        If (LNotEqual (SMM3 (Local5, Or (And (Local6, 0x0F), 0x30), 
                            Zero), 0xFFFF))
                        {
                            Or (Local4, 0x04, Local4)
                        }
                    }

                    Store (Local4, Index (DerefOf (Index (DerefOf (Local2), Local1)), 0x02))
                    Increment (Local1)
                }
            }

            Method (DIM6, 1, Serialized)
            {
                Return ("KingStone")
            }

            Method (DIMC, 0, Serialized)
            {
                Name (DIMG, Buffer (0x03){})
                Store (PFM7 (), Local2)
                Store (DerefOf (Local2), Local7)
                Store (SizeOf (Local7), Local0)
                Store (Zero, Local1)
                While (LLess (Local1, Local0))
                {
                    Store (DerefOf (Index (DerefOf (Index (Local7, Local1)), 0x02)), Local4)
                    ShiftLeft (One, Local1, Local5)
                    If (And (Local4, One))
                    {
                        Store (Or (DerefOf (Index (DIMG, Zero)), Local5), Index (DIMG, Zero
                            ))
                    }

                    If (And (Local4, 0x02))
                    {
                        Store (Or (DerefOf (Index (DIMG, One)), Local5), Index (DIMG, One
                            ))
                    }

                    If (And (Local4, 0x04))
                    {
                        Store (Or (DerefOf (Index (DIMG, 0x02)), Local5), Index (DIMG, 0x02
                            ))
                    }

                    Increment (Local1)
                }

                Return (DIMG) /* \GSA1.DIMC.DIMG */
            }

            Method (DIMD, 1, Serialized)
            {
                Store (PFM7 (), Local2)
                Store (DerefOf (Local2), Local7)
                If (LLess (Arg0, SizeOf (Local7)))
                {
                    Store (DerefOf (Index (DerefOf (Index (Local7, Arg0)), Zero)), Local5)
                    Or (And (DerefOf (Index (DerefOf (Index (Local7, Arg0)), One)), 0x0F
                        ), 0x30, Local6)
                    Store (DerefOf (Index (DerefOf (Index (Local7, Arg0)), 0x02)), Local4)
                    If (And (Local4, 0x04))
                    {
                        Return (And (SMM5 (Local5, Local6, 0x05), 0x1FFF))
                    }
                }

                Return (Ones)
            }

            Method (DIM1, 1, Serialized)
            {
                Name (DATB, Buffer (0x0200){})
                Name (DATC, Buffer (0x04){})
                CreateWordField (DATC, Zero, DIM8)
                CreateWordField (DATC, 0x02, DIM9)
                Store (PFM7 (), Local2)
                Store (DerefOf (Local2), Local7)
                If (LLess (Arg0, SizeOf (Local7)))
                {
                    Store (SMM8 (DerefOf (Index (DerefOf (Index (Local7, Arg0)), Zero)), DerefOf (
                        Index (DerefOf (Index (Local7, Arg0)), One)), DATB), Local0)
                    If (LEqual (Local0, Zero))
                    {
                        Store (Zero, DIM8) /* \GSA1.DIM1.DIM8 */
                        Store (0x0200, DIM9) /* \GSA1.DIM1.DIM9 */
                        Concatenate (DATC, DATB, Local1)
                        Return (Local1)
                    }
                }

                Store (0xFFFF, DIM8) /* \GSA1.DIM1.DIM8 */
                Store (Zero, DIM9) /* \GSA1.DIM1.DIM9 */
                Concatenate (DATC, DATB, Local1)
                Return (Local1)
            }

            Name (EVT1, Zero)
            Method (EVT0, 0, Serialized)
            {
            }

            Method (EVT2, 1, Serialized)
            {
                Store (Arg0, EVT1) /* \GSA1.EVT1 */
                Notify (\GSA1, 0xE2) // Hardware-Specific
            }

            Name (GGGA, Package (0x05)
            {
                "F9j", 
                "Z390 DESIGNARE", 
                "Z390DESIGNARE", 
                "8A1FAG0U", 
                0x01000000
            })
            Name (GGGB, "20191210")
            Name (GGGC, Zero)
            Method (GGG1, 0, Serialized)
            {
                Return (GGGB) /* \GSA1.GGGB */
            }

            Method (GGG2, 0, Serialized)
            {
                Return (GGGD) /* \GSA1.GGGD */
            }

            Method (GGG3, 0, Serialized)
            {
                Return (DerefOf (Index (GGGA, 0x03)))
            }

            Method (GGG4, 0, Serialized)
            {
                Return (DerefOf (Index (GGGA, Zero)))
            }

            Method (GGG5, 0, Serialized)
            {
                Return (DerefOf (Index (GGGA, One)))
            }

            Method (GGG6, 0, Serialized)
            {
                Return (DerefOf (Index (GGGA, 0x04)))
            }

            Method (GGG7, 0, Serialized)
            {
                Return (GGG9 (Zero))
            }

            Method (GGG8, 0, Serialized)
            {
                Return (GGGB) /* \GSA1.GGGB */
            }

            Method (GGG9, 1, Serialized)
            {
                Store (Zero, Local0)
                Switch (ToInteger (Arg0))
                {
                    Case (Zero)
                    {
                        Store (GGGC, Local0)
                    }
                    Case (0x04)
                    {
                        Store (0x40050607, Local0)
                    }
                    Case (0x08)
                    {
                        Store (0x0162204F, Local0)
                    }
                    Case (0x0C)
                    {
                        Store (0x0148, Local0)
                    }

                }

                Return (Local0)
            }

            Name (GGGK, Package (0x16)
            {
                0x23A1, 
                0x1FBE, 
                0x1C48, 
                0x1AB1, 
                0x17C8, 
                0x1530, 
                0x12E0, 
                0x11D1, 
                0x0FDF, 
                0x0E24, 
                0x0D59, 
                0x0BE4, 
                0x0A98, 
                0x0970, 
                0x08E8, 
                0x07F0, 
                0x0712, 
                0x06AC, 
                0x05F2, 
                0x054C, 
                0x04B8, 
                0x0474
            })
            Method (GGGH, 3, Serialized)
            {
                Store (0x11D1, Local0)
                If (LEqual (Arg0, 0x03))
                {
                    Store (SizeOf (GGGK), Local5)
                    Store (Zero, Local0)
                    If (LAnd (LGreater (Arg1, Zero), LLessEqual (Arg1, Local5)))
                    {
                        Store (DerefOf (Index (GGGK, Subtract (Arg1, One))), Local0)
                    }

                    Store (Arg2, Local1)
                }
                ElseIf (LEqual (Arg0, 0x02))
                {
                    Store (Arg1, Local0)
                    Store (Arg2, Local1)
                }
                ElseIf (LEqual (Arg0, 0x04))
                {
                    Divide (Add (0x001234DE, ShiftRight (Arg1, One)), Arg1, , Local0)
                    Store (Arg2, Local1)
                }
                ElseIf (LEqual (Arg0, One))
                {
                    Store (0x11D1, Local0)
                    Store (0x03E8, Local1)
                }
                ElseIf (LEqual (Arg0, Zero))
                {
                    Store (0x11D1, Local0)
                    Store (0x03E8, Local1)
                }

                If (Local0)
                {
                    PIO7 (0x53, Zero, 0xB6)
                    PIO7 (0x52, Zero, And (Local0, 0xFF))
                    PIO7 (0x52, Zero, And (ShiftRight (Local0, 0x08), 0xFF))
                    PIO7 (0x61, Zero, Or (PIO6 (0x61, Zero), 0x03))
                    Sleep (Local1)
                    PIO7 (0x61, Zero, And (PIO6 (0x61, Zero), 0xFC))
                }
                Else
                {
                    Sleep (Local1)
                }
            }

            OperationRegion (DBS0, SystemIO, 0x2E, 0x02)
            Field (DBS0, ByteAcc, NoLock, Preserve)
            {
                DBS1,   8, 
                DBS2,   8
            }

            IndexField (DBS1, DBS2, ByteAcc, NoLock, Preserve)
            {
                Offset (0x07), 
                DBS4,   8, 
                Offset (0xEF), 
                DBS8,   1, 
                DBS9,   1
            }

            Mutex (DBS3, 0x00)
            Method (DBS5, 1, NotSerialized)
            {
                Acquire (DBS3, 0xFFFF)
                Store (0x87, DBS1) /* \GSA1.DBS1 */
                Store (One, DBS1) /* \GSA1.DBS1 */
                Store (0x55, DBS1) /* \GSA1.DBS1 */
                If (Ones)
                {
                    Store (0x55, DBS1) /* \GSA1.DBS1 */
                }
                Else
                {
                    Store (0xAA, DBS1) /* \GSA1.DBS1 */
                }

                Store (Arg0, DBS4) /* \GSA1.DBS4 */
            }

            Method (DBS6, 0, NotSerialized)
            {
                Store (0x02, DBS1) /* \GSA1.DBS1 */
                Store (0x02, DBS2) /* \GSA1.DBS2 */
                Release (DBS3)
            }

            Method (GGGG, 0, Serialized)
            {
                DBS5 (0x07)
                Store (DBS9, Local0)
                DBS6 ()
                Return (Local0)
            }

            Method (GGGE, 0, Serialized)
            {
                DBS5 (0x07)
                Store (DBS8, Local0)
                DBS6 ()
                Return (Local0)
            }

            Method (GGGF, 1, Serialized)
            {
                DBS5 (0x07)
                Store (Arg0, DBS8) /* \GSA1.DBS8 */
                Store (DBS8, Local0)
                DBS6 ()
                Return (Local0)
            }

            Method (MPTS, 1, NotSerialized)
            {
                EZV8 (Arg0)
            }

            Method (MWAK, 1, NotSerialized)
            {
                PFM1 (Arg0)
                EZV7 (Arg0)
            }

            OperationRegion (GGGT, SystemMemory, 0x36F70118, 0x0100)
            Field (GGGT, DWordAcc, Lock, Preserve)
            {
                Offset (0x08), 
                PGRV,   8, 
                CCNT,   8, 
                E8CV,   8
            }

            Name (_HID, EisaId ("PNP0C14") /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, "GSADEV0")  // _UID: Unique ID
            Name (MARK, "Mark Tsai<mark@gigabyte.com><marktsai0316@gmail.com>")
            Method (_INI, 0, Serialized)  // _INI: Initialize
            {
                If (LEqual (GGGG (), One))
                {
                    Store (Or (GGGC, 0x00040000), GGGC) /* \GSA1.GGGC */
                }

                PFM0 ()
                Store (Or (GGGC, 0x10), GGGC) /* \GSA1.GGGC */
                Store (Or (GGGC, 0x20), GGGC) /* \GSA1.GGGC */
                Store (Or (GGGC, 0x40), GGGC) /* \GSA1.GGGC */
                Store (Or (GGGC, 0x80), GGGC) /* \GSA1.GGGC */
                Store (Or (GGGC, 0x0800), GGGC) /* \GSA1.GGGC */
                EVT0 ()
                Store (Or (GGGC, 0x2000), GGGC) /* \GSA1.GGGC */
                EZV5 ()
                DIM0 ()
                Store (Or (GGGC, 0x4000), GGGC) /* \GSA1.GGGC */
            }

            Method (_WDG, 0, Serialized)
            {
                Return (QWDG) /* \GSA1.QWDG */
            }

            Name (QWDG, Buffer (0x50)
            {
                /* 0000 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,  // !...f...
                /* 0008 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,  // ......).
                /* 0010 */  0x43, 0x43, 0x01, 0x00, 0xEF, 0xBE, 0xAD, 0xDE,  // CC......
                /* 0018 */  0x00, 0x10, 0x00, 0x00, 0x00, 0xA0, 0xC9, 0x06,  // ........
                /* 0020 */  0x29, 0x10, 0x00, 0x00, 0x41, 0x41, 0x01, 0x01,  // )...AA..
                /* 0028 */  0xEF, 0xBE, 0xAD, 0xDE, 0x01, 0x20, 0x00, 0x00,  // ..... ..
                /* 0030 */  0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10, 0x00, 0x00,  // ....)...
                /* 0038 */  0x42, 0x42, 0x01, 0x02, 0xEF, 0xBE, 0xAD, 0xDE,  // BB......
                /* 0040 */  0x02, 0x40, 0x00, 0x00, 0x00, 0xA0, 0xC9, 0x06,  // .@......
                /* 0048 */  0x29, 0x10, 0x00, 0x00, 0xE2, 0x00, 0x01, 0x08   // ).......
            })
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (0x0B)
            }

            Name (WQCC, Buffer (0x25A7)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                /* 0008 */  0x97, 0x25, 0x00, 0x00, 0xA0, 0x8B, 0x01, 0x00,  // .%......
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                /* 0018 */  0x28, 0x57, 0xBE, 0x01, 0x01, 0x08, 0x09, 0x42,  // (W.....B
                /* 0020 */  0xD8, 0x07, 0x84, 0xC4, 0x39, 0xA0, 0x10, 0x81,  // ....9...
                /* 0028 */  0xB8, 0x24, 0x40, 0x0E, 0x0C, 0x4A, 0x02, 0x88,  // .$@..J..
                /* 0030 */  0xE4, 0x40, 0xC8, 0x05, 0x13, 0x13, 0x20, 0x02,  // .@.... .
                /* 0038 */  0x42, 0x5E, 0x05, 0xD8, 0x14, 0x60, 0x12, 0x44,  // B^...`.D
                /* 0040 */  0xFD, 0xFB, 0x43, 0x94, 0x06, 0x45, 0x09, 0x2C,  // ..C..E.,
                /* 0048 */  0x04, 0x42, 0x32, 0x05, 0xF8, 0x16, 0xE0, 0x58,  // .B2....X
                /* 0050 */  0x80, 0x61, 0x01, 0xB2, 0x05, 0x58, 0x86, 0x22,  // .a...X."
                /* 0058 */  0xA8, 0x9D, 0x0A, 0x90, 0x2B, 0x40, 0x98, 0x00,  // ....+@..
                /* 0060 */  0xF1, 0xA8, 0xC2, 0x68, 0x0E, 0x8A, 0x84, 0x83,  // ...h....
                /* 0068 */  0x46, 0x89, 0x81, 0x90, 0x44, 0x58, 0x39, 0xC7,  // F...DX9.
                /* 0070 */  0x96, 0x72, 0x01, 0xA6, 0x05, 0x08, 0x17, 0x20,  // .r..... 
                /* 0078 */  0x1D, 0x43, 0x23, 0xA8, 0x1B, 0x4C, 0x52, 0x05,  // .C#..LR.
                /* 0080 */  0x88, 0x86, 0x11, 0x5A, 0x41, 0x70, 0x1A, 0xC4,  // ...ZAp..
                /* 0088 */  0x51, 0x44, 0x09, 0xC3, 0xF0, 0x8C, 0x19, 0x28,  // QD.....(
                /* 0090 */  0x5C, 0x90, 0x48, 0x86, 0x09, 0x7A, 0x02, 0x41,  // \.H..z.A
                /* 0098 */  0x4A, 0xC6, 0x90, 0x66, 0x2C, 0x02, 0x71, 0x06,  // J..f,.q.
                /* 00A0 */  0x1C, 0x2B, 0x46, 0xA8, 0x90, 0x98, 0x81, 0x04,  // .+F.....
                /* 00A8 */  0x3F, 0x81, 0xAE, 0x31, 0xE4, 0x19, 0x88, 0x58,  // ?..1...X
                /* 00B0 */  0x9F, 0x80, 0x40, 0xA2, 0x47, 0x09, 0x6E, 0x5C,  // ..@.G.n\
                /* 00B8 */  0xA3, 0xB2, 0x31, 0x9D, 0x0D, 0x6E, 0x60, 0x26,  // ..1..n`&
                /* 00C0 */  0x88, 0x73, 0x78, 0x18, 0x19, 0x10, 0x9A, 0x40,  // .sx....@
                /* 00C8 */  0xFC, 0xD8, 0xE1, 0x13, 0xD8, 0xFD, 0x0C, 0x65,  // .......e
                /* 00D0 */  0x51, 0x80, 0x41, 0x0C, 0x29, 0x04, 0x11, 0x42,  // Q.A.)..B
                /* 00D8 */  0x8D, 0x02, 0x6C, 0x0D, 0x56, 0xC6, 0x20, 0x84,  // ..l.V. .
                /* 00E0 */  0x10, 0xC5, 0x08, 0x0C, 0x85, 0x61, 0x46, 0xB1,  // .....aF.
                /* 00E8 */  0xC3, 0x39, 0x0B, 0xA4, 0x36, 0x01, 0xCA, 0x40,  // .9..6..@
                /* 00F0 */  0x04, 0xCA, 0x10, 0x98, 0xFD, 0x41, 0x90, 0x40,  // .....A.@
                /* 00F8 */  0xE7, 0x01, 0xFD, 0x08, 0x2C, 0x09, 0x44, 0x46,  // ....,.DF
                /* 0100 */  0xB6, 0x94, 0x80, 0x1C, 0x06, 0x12, 0x1C, 0x8E,  // ........
                /* 0108 */  0x27, 0xD2, 0xFC, 0xCC, 0x34, 0x2A, 0x26, 0x01,  // '...4*&.
                /* 0110 */  0x50, 0x1A, 0x40, 0x24, 0x0A, 0x42, 0xBF, 0x03,  // P.@$.B..
                /* 0118 */  0x2A, 0x40, 0xCA, 0xC9, 0x80, 0xD8, 0x1E, 0x97,  // *@......
                /* 0120 */  0xE6, 0x74, 0x80, 0xA7, 0xEE, 0xBB, 0xC1, 0x99,  // .t......
                /* 0128 */  0xF9, 0xAC, 0xE0, 0x2D, 0xF8, 0xFF, 0x7F, 0x46,  // ...-...F
                /* 0130 */  0xE0, 0x63, 0xF0, 0x50, 0x0F, 0x21, 0xE0, 0x11,  // .c.P.!..
                /* 0138 */  0xB2, 0x43, 0x82, 0x01, 0xF1, 0xDE, 0x6F, 0x05,  // .C....o.
                /* 0140 */  0x64, 0x2E, 0x06, 0x64, 0x07, 0x85, 0xE7, 0x03,  // d..d....
                /* 0148 */  0xB0, 0x4C, 0xF2, 0x34, 0x8F, 0xA1, 0xE2, 0xA9,  // .L.4....
                /* 0150 */  0x21, 0x8E, 0x04, 0x7C, 0x2A, 0x27, 0xC5, 0x08,  // !..|*'..
                /* 0158 */  0x7C, 0x8C, 0xF0, 0xE8, 0xF8, 0x28, 0x7C, 0x76,  // |....(|v
                /* 0160 */  0x38, 0xED, 0x62, 0x8F, 0x10, 0x54, 0xD6, 0x31,  // 8.b..T.1
                /* 0168 */  0x02, 0x3D, 0xF7, 0x23, 0x0C, 0xF8, 0xD2, 0xD0,  // .=.#....
                /* 0170 */  0xAC, 0x00, 0xA1, 0xF7, 0x00, 0x11, 0xBC, 0x0E,  // ........
                /* 0178 */  0xF8, 0xC6, 0x60, 0x71, 0x30, 0x3A, 0x51, 0xE0,  // ..`q0:Q.
                /* 0180 */  0x87, 0x6E, 0xBF, 0x02, 0x10, 0x42, 0x9F, 0xDB,  // .n...B..
                /* 0188 */  0x49, 0x3C, 0x50, 0x44, 0x48, 0xD0, 0x23, 0x86,  // I<PDH.#.
                /* 0190 */  0x60, 0xCE, 0x2A, 0xD6, 0x01, 0x3C, 0x09, 0x24,  // `.*..<.$
                /* 0198 */  0x28, 0x70, 0x88, 0x68, 0x68, 0xAE, 0x13, 0x53,  // (p.hh..S
                /* 01A0 */  0x43, 0x39, 0x91, 0xB8, 0x41, 0xA3, 0x9C, 0xC0,  // C9..A...
                /* 01A8 */  0xB1, 0x78, 0x9C, 0xC7, 0xF7, 0xD8, 0xE0, 0x23,  // .x.....#
                /* 01B0 */  0xC6, 0x39, 0xBF, 0x05, 0x78, 0x70, 0x9C, 0xC0,  // .9..xp..
                /* 01B8 */  0x12, 0x1F, 0x1E, 0x3E, 0x7B, 0x50, 0x51, 0x30,  // ...>{PQ0
                /* 01C0 */  0xA8, 0xE3, 0x07, 0xE0, 0xE6, 0xFF, 0x7F, 0xFC,  // ........
                /* 01C8 */  0x00, 0x2C, 0x41, 0x3C, 0x7E, 0x80, 0x33, 0x96,  // .,A<~.3.
                /* 01D0 */  0x82, 0xF3, 0x00, 0x3B, 0x7E, 0x00, 0xDC, 0xF8,  // ...;~...
                /* 01D8 */  0xFF, 0x1F, 0x3F, 0xB8, 0x8C, 0x91, 0x1B, 0x96,  // ..?.....
                /* 01E0 */  0x8E, 0xDC, 0xC0, 0xBE, 0x4D, 0x9C, 0x89, 0x21,  // ....M..!
                /* 01E8 */  0x1E, 0x14, 0x4C, 0xE0, 0xD0, 0x10, 0xB2, 0x30,  // ..L....0
                /* 01F0 */  0x74, 0xD0, 0x7C, 0x07, 0x34, 0x74, 0x40, 0xC6,  // t.|.4t@.
                /* 01F8 */  0x09, 0x06, 0xB8, 0x61, 0x3C, 0xC1, 0x00, 0x93,  // ...a<...
                /* 0200 */  0xF0, 0x67, 0x04, 0x54, 0x5C, 0x18, 0x14, 0x81,  // .g.T\...
                /* 0208 */  0xA3, 0x1E, 0x07, 0xE8, 0xC8, 0x3C, 0x30, 0xF8,  // .....<0.
                /* 0210 */  0x07, 0x19, 0x36, 0x97, 0xDA, 0x27, 0xAD, 0x61,  // ..6..'.a
                /* 0218 */  0x9A, 0xC0, 0x23, 0x83, 0xF3, 0xFF, 0x1F, 0x19,  // ..#.....
                /* 0220 */  0xB8, 0xE6, 0x7E, 0x00, 0x98, 0xE3, 0x84, 0x07,  // ..~.....
                /* 0228 */  0xC0, 0xC1, 0x5B, 0xBD, 0x01, 0x10, 0xA5, 0x13,  // ..[.....
                /* 0230 */  0x42, 0x12, 0x84, 0x33, 0xD6, 0xDB, 0xCD, 0x19,  // B..3....
                /* 0238 */  0xBC, 0x1C, 0xF8, 0x28, 0x63, 0x8C, 0xF7, 0x83,  // ...(c...
                /* 0240 */  0xA3, 0xC2, 0x9E, 0x7F, 0x10, 0x47, 0x39, 0x94,  // .....G9.
                /* 0248 */  0xA8, 0xD3, 0x1C, 0x40, 0xA4, 0xCB, 0x0F, 0xEE,  // ...@....
                /* 0250 */  0xFC, 0x03, 0xEB, 0xFF, 0x7F, 0xFE, 0x81, 0x78,  // .......x
                /* 0258 */  0x9A, 0x03, 0xA8, 0x72, 0x0C, 0xC1, 0x1D, 0x5E,  // ...r...^
                /* 0260 */  0xC0, 0x71, 0x61, 0xC0, 0x1D, 0x4B, 0x80, 0x03,  // .qa..K..
                /* 0268 */  0x3C, 0x17, 0x78, 0xFC, 0x40, 0x49, 0x3A, 0x81,  // <.x.@I:.
                /* 0270 */  0x80, 0xE6, 0xFF, 0x7F, 0x02, 0x01, 0x58, 0x72,  // ......Xr
                /* 0278 */  0xA0, 0x03, 0x6B, 0xA8, 0x13, 0x08, 0x15, 0x74,  // ..k....t
                /* 0280 */  0x02, 0x81, 0xFE, 0xEC, 0xF0, 0x09, 0x04, 0xB8,  // ........
                /* 0288 */  0x8A, 0x1C, 0x31, 0xEA, 0xFF, 0x7F, 0x3E, 0x80,  // ..1...>.
                /* 0290 */  0x6B, 0x6D, 0x94, 0x9A, 0xE6, 0x1B, 0x08, 0xF6,  // km......
                /* 0298 */  0x00, 0x02, 0x8E, 0xF7, 0x9A, 0x0F, 0x20, 0xC0,  // ...... .
                /* 02A0 */  0x0C, 0xE4, 0xC8, 0xCE, 0xE8, 0xAC, 0xF9, 0x01,  // ........
                /* 02A8 */  0x04, 0xB8, 0x08, 0x7A, 0xE7, 0xF9, 0xF4, 0xC1,  // ...z....
                /* 02B0 */  0x61, 0x70, 0x07, 0x10, 0x40, 0xED, 0xFF, 0xFF,  // ap..@...
                /* 02B8 */  0x00, 0x02, 0x2C, 0x6F, 0x10, 0x0F, 0x20, 0xE0,  // ..,o.. .
                /* 02C0 */  0x0C, 0xF1, 0x8E, 0xD0, 0x8F, 0xC0, 0xC1, 0x21,  // .......!
                /* 02C8 */  0xA4, 0xE4, 0x5C, 0x09, 0x3D, 0xE6, 0xB9, 0x12,  // ..\.=...
                /* 02D0 */  0x54, 0x27, 0x10, 0xE0, 0x70, 0xD0, 0xC0, 0x1D,  // T'..p...
                /* 02D8 */  0x10, 0xE0, 0x12, 0xF8, 0x24, 0xED, 0x33, 0x07,  // ....$.3.
                /* 02E0 */  0x38, 0x4E, 0x57, 0x26, 0xF0, 0x60, 0xE1, 0x9C,  // 8NW&.`..
                /* 02E8 */  0x22, 0x9E, 0xFE, 0x7C, 0x17, 0x78, 0x2D, 0xF0,  // "..|.x-.
                /* 02F0 */  0x60, 0xC1, 0x77, 0x26, 0x85, 0xFB, 0xFF, 0x1F,  // `.w&....
                /* 02F8 */  0x2C, 0xE0, 0xE0, 0xE0, 0x03, 0x5C, 0x0E, 0x43,  // ,....\.C
                /* 0300 */  0xE4, 0xE0, 0x03, 0xC8, 0x9F, 0x7E, 0xF8, 0x77,  // .....~.w
                /* 0308 */  0x95, 0x08, 0xE7, 0xE5, 0x83, 0x00, 0x3B, 0xF8,  // ......;.
                /* 0310 */  0xC0, 0xFD, 0xFF, 0x1F, 0x7C, 0x00, 0x16, 0x3A,  // ....|..:
                /* 0318 */  0x3B, 0xF8, 0x00, 0xF1, 0xFF, 0xFF, 0xC1, 0x07,  // ;.......
                /* 0320 */  0xE0, 0xFF, 0xFF, 0xFF, 0xE0, 0x03, 0xDC, 0x2E,  // ........
                /* 0328 */  0x17, 0xBE, 0x5E, 0x3C, 0xA5, 0xBC, 0xF8, 0xC0,  // ..^<....
                /* 0330 */  0x3B, 0xF8, 0x40, 0x7C, 0xC4, 0xE8, 0xE0, 0x03,  // ;.@|....
                /* 0338 */  0x0C, 0xE7, 0xC5, 0x06, 0x80, 0x3F, 0xF8, 0x00,  // .....?..
                /* 0340 */  0xBE, 0xFF, 0xFF, 0x07, 0x1F, 0xC0, 0xD2, 0x70,  // .......p
                /* 0348 */  0x1F, 0x7C, 0x00, 0x5E, 0xFD, 0xFF, 0x0F, 0x3E,  // .|.^...>
                /* 0350 */  0x00, 0xF7, 0xEE, 0x28, 0x6C, 0x84, 0x0F, 0x3E,  // ...(l..>
                /* 0358 */  0x20, 0x5C, 0xB5, 0x0E, 0x3E, 0xC0, 0xE3, 0xFF,  //  \..>...
                /* 0360 */  0x7F, 0xF0, 0x81, 0x39, 0xAF, 0x97, 0x10, 0x76,  // ...9...v
                /* 0368 */  0xF0, 0x01, 0x26, 0x12, 0xD7, 0x48, 0x4F, 0x3D,  // ..&..HO=
                /* 0370 */  0x16, 0x05, 0x83, 0x3A, 0xF8, 0x00, 0x0C, 0x3A,  // ...:...:
                /* 0378 */  0xAB, 0x3E, 0xF8, 0x80, 0x33, 0xD6, 0x79, 0x40,  // .>..3.y@
                /* 0380 */  0xFF, 0xFF, 0x1F, 0x81, 0x25, 0x1D, 0x40, 0xA0,  // ....%.@.
                /* 0388 */  0x4B, 0x38, 0x80, 0x80, 0xEA, 0xDC, 0x03, 0x1C,  // K8......
                /* 0390 */  0x0E, 0x0A, 0xCF, 0x07, 0x60, 0x99, 0xE5, 0xE1,  // ....`...
                /* 0398 */  0xBE, 0x7F, 0xE0, 0xAF, 0x04, 0xEC, 0x04, 0x02,  // ........
                /* 03A0 */  0x8A, 0xA5, 0xE9, 0x04, 0x02, 0x0C, 0x27, 0xC6,  // ......'.
                /* 03A8 */  0x4E, 0xC4, 0x80, 0x9B, 0xFF, 0xFF, 0x09, 0x04,  // N.......
                /* 03B0 */  0x60, 0xC2, 0xD1, 0xE0, 0x49, 0x0E, 0x70, 0xFE,  // `...I.p.
                /* 03B8 */  0xFF, 0x3F, 0xC9, 0x01, 0xFC, 0x3E, 0xF9, 0xC0,  // .?...>..
                /* 03C0 */  0xB9, 0xF7, 0x60, 0x08, 0xFE, 0xFF, 0x0F, 0x3E,  // ..`....>
                /* 03C8 */  0xC0, 0x7F, 0x5C, 0xAF, 0x04, 0x3E, 0xF8, 0x00,  // ..\..>..
                /* 03D0 */  0x93, 0x48, 0x0A, 0xAF, 0x1F, 0x26, 0x18, 0x83,  // .H...&..
                /* 03D8 */  0x43, 0xE2, 0x96, 0x49, 0x61, 0x7C, 0x2E, 0xF0,  // C..Ia|..
                /* 03E0 */  0xC1, 0x07, 0xAE, 0x24, 0x38, 0xD4, 0x00, 0x7D,  // ...$8..}
                /* 03E8 */  0x08, 0x38, 0xF8, 0xE3, 0x3C, 0xF2, 0x03, 0xF1,  // .8..<...
                /* 03F0 */  0x2D, 0xE0, 0x09, 0x08, 0xC6, 0x39, 0xC1, 0x93,  // -....9..
                /* 03F8 */  0x3A, 0x25, 0x6B, 0x3F, 0xC7, 0x90, 0x2B, 0x8D,  // :%k?..+.
                /* 0400 */  0x09, 0x7C, 0x58, 0x60, 0x68, 0xFC, 0x38, 0x04,  // .|X`h.8.
                /* 0408 */  0xD6, 0x03, 0xC2, 0x73, 0x02, 0x58, 0xE6, 0xFC,  // ...s.X..
                /* 0410 */  0x2E, 0x84, 0x39, 0xF8, 0x60, 0x00, 0xE3, 0x3D,  // ..9.`..=
                /* 0418 */  0xF8, 0x18, 0xF5, 0xA8, 0x7C, 0x55, 0xF0, 0x01,  // ....|U..
                /* 0420 */  0xC8, 0xE3, 0x0F, 0x1B, 0x21, 0xC8, 0x79, 0xC5,  // ....!.y.
                /* 0428 */  0x79, 0x30, 0x31, 0x60, 0xD8, 0xE0, 0xFE, 0xFF,  // y01`....
                /* 0430 */  0x13, 0xF8, 0xF0, 0x03, 0xBE, 0xDB, 0xC1, 0x03,  // ........
                /* 0438 */  0x8F, 0x8F, 0x08, 0x4F, 0x73, 0xE0, 0x3D, 0x5B,  // ...Os.=[
                /* 0440 */  0x39, 0xD2, 0x68, 0x50, 0x67, 0x05, 0x9F, 0x0B,  // 9.hPg...
                /* 0448 */  0x7C, 0x26, 0x78, 0x74, 0xF2, 0xB5, 0xC2, 0x20,  // |&xt... 
                /* 0450 */  0xE7, 0x7A, 0x68, 0xCF, 0x0B, 0x0F, 0x04, 0x1E,  // .zh.....
                /* 0458 */  0x3A, 0xC3, 0x7A, 0xB4, 0x60, 0x27, 0x04, 0xFC,  // :.z.`'..
                /* 0460 */  0xC5, 0x29, 0xE0, 0xAB, 0xC1, 0xD3, 0x07, 0xAC,  // .)......
                /* 0468 */  0x53, 0x08, 0xFE, 0xB4, 0x02, 0x7F, 0x3C, 0x3E,  // S.....<>
                /* 0470 */  0x09, 0xF8, 0x84, 0xE3, 0x63, 0x18, 0x19, 0x04,  // ....c...
                /* 0478 */  0xEA, 0xA4, 0xC3, 0x47, 0x7A, 0x5A, 0x2F, 0x04,  // ...GzZ/.
                /* 0480 */  0x3E, 0x27, 0x1C, 0x16, 0x3B, 0x7B, 0xF8, 0x7C,  // >'..;{.|
                /* 0488 */  0x03, 0x8E, 0xF1, 0xC0, 0x3F, 0x98, 0x3C, 0x65,  // ....?.<e
                /* 0490 */  0xF8, 0xD6, 0xE0, 0xF9, 0xFA, 0xB4, 0xE0, 0x43,  // .......C
                /* 0498 */  0x08, 0xB8, 0xAE, 0x1D, 0x1E, 0xC2, 0x49, 0xF8,  // ......I.
                /* 04A0 */  0x9E, 0x80, 0x39, 0x85, 0x80, 0xE5, 0xFF, 0x7F,  // ..9.....
                /* 04A8 */  0x0A, 0x81, 0x2B, 0xD6, 0xDF, 0xDB, 0xE0, 0x79,  // ..+....y
                /* 04B0 */  0xC3, 0xE2, 0x16, 0x2A, 0x1B, 0xE7, 0x1D, 0x3A,  // ...*...:
                /* 04B8 */  0x26, 0x8B, 0x3D, 0x21, 0x68, 0x3C, 0xE7, 0x7E,  // &.=!h<.~
                /* 04C0 */  0x6A, 0x07, 0xF8, 0x5A, 0xE1, 0x73, 0x81, 0x45,  // j..Z.s.E
                /* 04C8 */  0x42, 0xE9, 0x3A, 0x62, 0x08, 0xCB, 0x3B, 0x8F,  // B.:b..;.
                /* 04D0 */  0x18, 0x42, 0x83, 0xF1, 0x49, 0x86, 0xC0, 0x51,  // .B..I..Q
                /* 04D8 */  0x10, 0x8F, 0xDD, 0x51, 0x21, 0x64, 0xE3, 0x18,  // ...Q!d..
                /* 04E0 */  0x80, 0x1A, 0xBC, 0x2F, 0x3E, 0x9C, 0xC0, 0xD1,  // .../>...
                /* 04E8 */  0x4E, 0x93, 0x3E, 0x2B, 0x40, 0x19, 0xD8, 0x63,  // N.>+@..c
                /* 04F0 */  0xC5, 0xB1, 0xF8, 0xAC, 0x04, 0xBE, 0x93, 0x0E,  // ........
                /* 04F8 */  0x7E, 0xE8, 0xEF, 0x01, 0x26, 0x60, 0x47, 0x20,  // ~...&`G 
                /* 0500 */  0xDC, 0xB1, 0x00, 0xCE, 0x0C, 0x5E, 0x0B, 0xAA,  // .....^..
                /* 0508 */  0x1E, 0x87, 0x6E, 0x0B, 0x56, 0x77, 0x19, 0x40,  // ..n.Vw.@
                /* 0510 */  0xE1, 0x3D, 0xD8, 0xE1, 0x0E, 0x3C, 0x60, 0x01,  // .=...<`.
                /* 0518 */  0xF2, 0x65, 0xC0, 0x4A, 0x0F, 0x04, 0x74, 0x26,  // .e.J..t&
                /* 0520 */  0x21, 0xC2, 0x44, 0x33, 0x3C, 0xE6, 0xF4, 0xC5,  // !.D3<...
                /* 0528 */  0x07, 0xEA, 0xD1, 0xF1, 0x81, 0xFA, 0x18, 0xC3,  // ........
                /* 0530 */  0x0E, 0x0A, 0xB8, 0xA3, 0x1B, 0x06, 0xD6, 0x43,  // .......C
                /* 0538 */  0xE7, 0xB0, 0x46, 0x0B, 0x7B, 0xC4, 0xCF, 0x10,  // ..F.{...
                /* 0540 */  0xBE, 0x7F, 0xF8, 0x62, 0xE4, 0x6B, 0x8B, 0x4F,  // ...b.k.O
                /* 0548 */  0x1E, 0xB0, 0xFE, 0xFF, 0x27, 0x31, 0xE0, 0x26,  // ....'1.&
                /* 0550 */  0xED, 0xF8, 0x80, 0x3A, 0x08, 0x59, 0xEA, 0xF1,  // ...:.Y..
                /* 0558 */  0x01, 0x81, 0x71, 0x88, 0x3E, 0x0F, 0x9C, 0xE5,  // ..q.>...
                /* 0560 */  0x33, 0x81, 0x8F, 0x7E, 0x3E, 0x8E, 0xE0, 0x84,  // 3..~>...
                /* 0568 */  0x9D, 0x21, 0x50, 0xE7, 0x5A, 0x9F, 0xC7, 0x7C,  // .!P.Z..|
                /* 0570 */  0x86, 0xE0, 0x67, 0x5A, 0x83, 0x19, 0xC4, 0x67,  // ..gZ...g
                /* 0578 */  0x08, 0xC7, 0x3B, 0xC2, 0xA0, 0x47, 0x67, 0xAD,  // ..;..Gg.
                /* 0580 */  0x07, 0x21, 0x72, 0x76, 0x38, 0x3A, 0xC7, 0x39,  // .!rv8:.9
                /* 0588 */  0x43, 0x00, 0xD5, 0x83, 0x0C, 0xF8, 0x4E, 0x0F,  // C.....N.
                /* 0590 */  0xC0, 0x7B, 0xF8, 0x3E, 0x3D, 0xF0, 0xFF, 0xFF,  // .{.>=...
                /* 0598 */  0xE9, 0x01, 0xF0, 0x75, 0xA0, 0x3A, 0xCB, 0x23,  // ...u.:.#
                /* 05A0 */  0x7E, 0x1B, 0xF1, 0xED, 0x01, 0x7B, 0x7A, 0x00,  // ~....{z.
                /* 05A8 */  0x78, 0xF3, 0xFF, 0x3F, 0x3D, 0x80, 0x07, 0xD2,  // x..?=...
                /* 05B0 */  0xA7, 0x07, 0xC0, 0xDD, 0x41, 0xE1, 0x9D, 0xCF,  // ....A...
                /* 05B8 */  0xA7, 0x07, 0x80, 0x11, 0xFF, 0xFF, 0xD3, 0x03,  // ........
                /* 05C0 */  0x70, 0x1B, 0xB4, 0x4F, 0x0F, 0x80, 0xBB, 0x1B,  // p..O....
                /* 05C8 */  0xAA, 0xCF, 0x6B, 0x4F, 0x0F, 0x80, 0xDD, 0xFF,  // ..kO....
                /* 05D0 */  0xFF, 0xE9, 0x01, 0xF0, 0x01, 0xCB, 0x4F, 0x0F,  // ......O.
                /* 05D8 */  0x80, 0x13, 0x61, 0xA7, 0x07, 0x14, 0x87, 0x85,  // ..a.....
                /* 05E0 */  0x9E, 0x1E, 0x20, 0x1C, 0x8A, 0xD9, 0x20, 0x8F,  // .. ... .
                /* 05E8 */  0x38, 0x78, 0xF5, 0x23, 0x21, 0x87, 0x07, 0xF0,  // 8x.#!...
                /* 05F0 */  0x39, 0x39, 0x3C, 0x00, 0xDD, 0xFF, 0xFF, 0xE1,  // 99<.....
                /* 05F8 */  0x01, 0xBC, 0xE7, 0x75, 0xEE, 0xEC, 0xA8, 0xAC,  // ...u....
                /* 0600 */  0xC3, 0x03, 0x70, 0x3F, 0xA6, 0xFB, 0xF0, 0x00,  // ..p?....
                /* 0608 */  0x78, 0x39, 0xFE, 0xE2, 0x44, 0x1D, 0x7F, 0x91,  // x9..D...
                /* 0610 */  0x87, 0x07, 0x36, 0xEE, 0x28, 0xA1, 0x43, 0xBC,  // ..6.(.C.
                /* 0618 */  0xC8, 0xC6, 0x3E, 0xB7, 0x33, 0xF1, 0x15, 0xFB,  // ..>.3...
                /* 0620 */  0x20, 0x1E, 0xFA, 0xD9, 0xF1, 0x01, 0x78, 0xFE,  //  .....x.
                /* 0628 */  0xFF, 0x8F, 0x0F, 0x80, 0x77, 0x0F, 0xE7, 0x2A,  // ....w..*
                /* 0630 */  0x40, 0xDD, 0x8D, 0x9A, 0x5D, 0xF2, 0x18, 0x56,  // @...]..V
                /* 0638 */  0x74, 0xCC, 0xB9, 0x0A, 0x9C, 0xFF, 0xFF, 0x73,  // t......s
                /* 0640 */  0x15, 0xC0, 0x15, 0x70, 0x9F, 0x1E, 0x00, 0x2F,  // ...p.../
                /* 0648 */  0xB2, 0x4E, 0x0F, 0xA8, 0xB3, 0x80, 0x65, 0x1E,  // .N....e.
                /* 0650 */  0x15, 0x34, 0xD9, 0x6A, 0x4F, 0x09, 0x3A, 0x3D,  // .4.jO.:=
                /* 0658 */  0xB0, 0xBB, 0x03, 0xFE, 0xEC, 0xC0, 0xFF, 0xFF,  // ........
                /* 0660 */  0x67, 0x07, 0x80, 0x57, 0x26, 0xCE, 0x0E, 0x80,  // g..W&...
                /* 0668 */  0x1A, 0x7D, 0x0B, 0xD4, 0xD9, 0x81, 0xFF, 0xFF,  // .}......
                /* 0670 */  0x39, 0xAC, 0xF7, 0xA5, 0xA0, 0x83, 0x0C, 0x4E,  // 9......N
                /* 0678 */  0xE4, 0x2C, 0x35, 0xF0, 0xC0, 0xD6, 0x0C, 0xAE,  // .,5.....
                /* 0680 */  0x23, 0x00, 0xD3, 0x07, 0xA9, 0x53, 0x83, 0x0F,  // #....S..
                /* 0688 */  0x0D, 0x56, 0x46, 0x21, 0x1D, 0x87, 0x07, 0x54,  // .VF!...T
                /* 0690 */  0xF2, 0x23, 0x04, 0x05, 0x31, 0xA0, 0x63, 0x1D,  // .#..1.c.
                /* 0698 */  0xAA, 0xD0, 0x27, 0x33, 0x0F, 0xE1, 0x18, 0x9D,  // ..'3....
                /* 06A0 */  0xE4, 0xEA, 0x40, 0x27, 0xE6, 0x39, 0x72, 0x3C,  // ..@'.9r<
                /* 06A8 */  0x36, 0x2E, 0xA3, 0x56, 0x35, 0x43, 0x10, 0xA9,  // 6..V5C..
                /* 06B0 */  0x39, 0x12, 0xA0, 0x26, 0xE0, 0x93, 0x03, 0x46,  // 9..&...F
                /* 06B8 */  0xD7, 0x85, 0x0A, 0x64, 0xFA, 0x0E, 0x0E, 0x20,  // ...d... 
                /* 06C0 */  0x47, 0xE7, 0xF7, 0x32, 0xC0, 0xD1, 0xA8, 0x7C,  // G..2...|
                /* 06C8 */  0xFF, 0x80, 0xF1, 0xFF, 0xBF, 0x97, 0x01, 0x56,  // .......V
                /* 06D0 */  0x54, 0xDC, 0x58, 0x01, 0x75, 0xF0, 0x15, 0xCE,  // T.X.u...
                /* 06D8 */  0x5B, 0xC0, 0xF1, 0x23, 0x9D, 0x08, 0xBB, 0x23,  // [..#...#
                /* 06E0 */  0x02, 0x6E, 0xFE, 0xFF, 0x77, 0x44, 0xC0, 0xE2,  // .n..wD..
                /* 06E8 */  0x90, 0x7D, 0x17, 0x02, 0x8C, 0x8D, 0xF6, 0xE1,  // .}......
                /* 06F0 */  0x01, 0xDE, 0x5D, 0x08, 0x18, 0xCC, 0xC7, 0x77,  // ..]....w
                /* 06F8 */  0x21, 0x70, 0xFC, 0xFF, 0xEF, 0x42, 0x00, 0xFF,  // !p...B..
                /* 0700 */  0xFF, 0xFF, 0xA7, 0x0D, 0x8F, 0xDC, 0xF7, 0x0F,  // ........
                /* 0708 */  0xC0, 0x4B, 0xAC, 0xFB, 0x07, 0x3A, 0xE6, 0xFD,  // .K...:..
                /* 0710 */  0x03, 0x05, 0x7B, 0x38, 0x76, 0x7D, 0xCD, 0x24,  // ..{8v}.$
                /* 0718 */  0x27, 0x90, 0x18, 0x11, 0x22, 0x85, 0x26, 0xF7,  // '...".&.
                /* 0720 */  0x0F, 0x0A, 0xE1, 0x40, 0x30, 0x8A, 0x03, 0xA1,  // ...@0...
                /* 0728 */  0xC3, 0x03, 0x0F, 0x00, 0x47, 0x41, 0x7C, 0x64,  // ....GA|d
                /* 0730 */  0xF0, 0xE1, 0xC1, 0x4A, 0x0E, 0x0F, 0xE8, 0x29,  // ...J...)
                /* 0738 */  0x1D, 0xB7, 0xAF, 0x24, 0xEC, 0xF0, 0x00, 0xEF,  // ...$....
                /* 0740 */  0x04, 0xC2, 0xEE, 0x42, 0xC0, 0xDA, 0x98, 0x00,  // ...B....
                /* 0748 */  0x6D, 0x90, 0x64, 0x7C, 0x70, 0xB4, 0x9F, 0x35,  // m.d|p..5
                /* 0750 */  0x40, 0x31, 0x3E, 0xDC, 0xFF, 0xFF, 0xAC, 0x01,  // @1>.....
                /* 0758 */  0x7C, 0xC7, 0xC7, 0x03, 0x8E, 0x0F, 0x0D, 0xED,  // |.......
                /* 0760 */  0xD3, 0x40, 0xCC, 0xC3, 0x39, 0x1A, 0xCC, 0x00,  // .@..9...
                /* 0768 */  0x81, 0xE7, 0xF1, 0xC5, 0x03, 0x04, 0xDF, 0xD9,  // ........
                /* 0770 */  0x04, 0x78, 0xDB, 0x38, 0x9B, 0x00, 0x9D, 0xFF,  // .x.8....
                /* 0778 */  0xFF, 0xD9, 0x04, 0xB8, 0xC8, 0xB9, 0xF6, 0xA1,  // ........
                /* 0780 */  0x46, 0x6D, 0x79, 0xD7, 0x3E, 0xC4, 0x8C, 0x8F,  // Fmy.>...
                /* 0788 */  0xF7, 0x70, 0x99, 0xAC, 0x2B, 0x1F, 0xEA, 0x88,  // .p..+...
                /* 0790 */  0x64, 0x39, 0x67, 0x24, 0x14, 0x95, 0xC1, 0x4C,  // d9g$...L
                /* 0798 */  0xE1, 0x53, 0x81, 0xC3, 0x9D, 0x91, 0xD0, 0xE7,  // .S......
                /* 07A0 */  0x05, 0x36, 0x3E, 0x76, 0x2C, 0x01, 0x9C, 0x1C,  // .6>v,...
                /* 07A8 */  0x91, 0x80, 0xBF, 0x8E, 0x73, 0x03, 0x28, 0xFF,  // ....s.(.
                /* 07B0 */  0xFF, 0xE7, 0x06, 0xC0, 0xC0, 0x1C, 0x4F, 0xB8,  // ......O.
                /* 07B8 */  0xCB, 0x73, 0x03, 0x40, 0x30, 0x1F, 0xE7, 0x06,  // .s.@0...
                /* 07C0 */  0x68, 0xFF, 0xFF, 0x73, 0x03, 0xE0, 0x40, 0xD0,  // h..s..@.
                /* 07C8 */  0xB9, 0x01, 0x2D, 0xF0, 0xA4, 0xA0, 0x09, 0x36,  // ..-....6
                /* 07D0 */  0x3F, 0x07, 0x02, 0xFD, 0x34, 0xE4, 0x0B, 0x30,  // ?...4..0
                /* 07D8 */  0x18, 0xC7, 0xC3, 0x2F, 0xC0, 0x80, 0x9F, 0x81,  // .../....
                /* 07E0 */  0x7A, 0x14, 0x1E, 0x43, 0xCF, 0x07, 0x07, 0x20,  // z..C... 
                /* 07E8 */  0xFD, 0xFF, 0x3F, 0x38, 0xF0, 0x41, 0x3C, 0x38,  // ..?8.A<8
                /* 07F0 */  0x00, 0xE6, 0xAE, 0x21, 0x3E, 0x38, 0x00, 0xBC,  // ...!>8..
                /* 07F8 */  0xF9, 0xFF, 0x1F, 0x1C, 0xC0, 0x63, 0xF4, 0xE0,  // .....c..
                /* 0800 */  0x00, 0xA8, 0x3B, 0x0F, 0x3D, 0x38, 0x00, 0xCC,  // ..;.=8..
                /* 0808 */  0xF8, 0xFF, 0x1F, 0x1C, 0x80, 0xC7, 0x00, 0x1E,  // ........
                /* 0810 */  0x1C, 0x00, 0x33, 0xB2, 0x0E, 0x0E, 0xA8, 0xB3,  // ..3.....
                /* 0818 */  0x80, 0x65, 0x1E, 0x15, 0x34, 0xD7, 0x23, 0x7C,  // .e..4.#|
                /* 0820 */  0x7A, 0x3E, 0xB1, 0x98, 0x31, 0x0E, 0x27, 0x7A,  // z>..1.'z
                /* 0828 */  0xFC, 0x63, 0x3E, 0x9F, 0x08, 0x07, 0xF0, 0xEC,  // .c>.....
                /* 0830 */  0x00, 0xC6, 0x13, 0x31, 0x7E, 0x06, 0x27, 0x71,  // ...1~.'q
                /* 0838 */  0x42, 0x21, 0x9E, 0xE9, 0xE0, 0x9E, 0x1D, 0x80,  // B!......
                /* 0840 */  0xF3, 0x09, 0x17, 0xCE, 0xFF, 0xFF, 0xEC, 0x00,  // ........
                /* 0848 */  0x9C, 0x21, 0x7C, 0x76, 0x00, 0xBC, 0x24, 0x79,  // .!|v..$y
                /* 0850 */  0x1B, 0xE8, 0xEC, 0xC0, 0x61, 0x9D, 0x6C, 0x91,  // ....a.l.
                /* 0858 */  0x3A, 0x3B, 0x30, 0x8C, 0xC3, 0xF2, 0x6C, 0xA2,  // :;0...l.
                /* 0860 */  0xBC, 0xC6, 0x30, 0x82, 0x69, 0xE0, 0x74, 0x66,  // ..0.i.tf
                /* 0868 */  0xF0, 0x91, 0xC1, 0x39, 0x60, 0xA4, 0xFA, 0x28,  // ...9`..(
                /* 0870 */  0x8F, 0xD2, 0x79, 0x94, 0xA7, 0x20, 0x3E, 0x30,  // ..y.. >0
                /* 0878 */  0x38, 0x16, 0x84, 0x8C, 0x1C, 0x2E, 0xD1, 0x8A,  // 8.......
                /* 0880 */  0x2F, 0x05, 0x1A, 0x52, 0x82, 0x41, 0x4E, 0x0E,  // /..R.AN.
                /* 0888 */  0x74, 0x30, 0x1E, 0x22, 0xD7, 0x70, 0xB8, 0x44,  // t0.".p.D
                /* 0890 */  0xC0, 0x56, 0x35, 0x40, 0x10, 0xA9, 0xB9, 0x10,  // .V5@....
                /* 0898 */  0xA0, 0x26, 0xE0, 0x7B, 0x03, 0x66, 0xC4, 0xB8,  // .&.{.f..
                /* 08A0 */  0x73, 0x03, 0xEE, 0xFF, 0x7F, 0x6E, 0xC0, 0x8B,  // s....n..
                /* 08A8 */  0x83, 0x51, 0xAE, 0xB1, 0xA1, 0x55, 0x80, 0xE8,  // .Q...U..
                /* 08B0 */  0x30, 0xE0, 0x7B, 0x07, 0x9B, 0x1B, 0xF0, 0x9B,  // 0.{.....
                /* 08B8 */  0xBD, 0xE7, 0x06, 0xFE, 0x0B, 0x09, 0x66, 0x6E,  // ......fn
                /* 08C0 */  0xC0, 0xEF, 0xBC, 0xE0, 0xB9, 0x81, 0x4B, 0xDF,  // ......K.
                /* 08C8 */  0x69, 0x04, 0xE4, 0xE8, 0xFC, 0x52, 0x03, 0x7F,  // i....R..
                /* 08D0 */  0xD0, 0xB8, 0x99, 0xF8, 0xE6, 0xE4, 0x49, 0xFB,  // ......I.
                /* 08D8 */  0x30, 0xC1, 0x08, 0x86, 0xB9, 0xD5, 0x20, 0xFE,  // 0..... .
                /* 08E0 */  0xFF, 0xB7, 0x1A, 0x60, 0x07, 0xE5, 0x79, 0x83,  // ...`..y.
                /* 08E8 */  0xEB, 0x52, 0x03, 0xBC, 0xEF, 0x28, 0xBE, 0xD4,  // .R...(..
                /* 08F0 */  0x00, 0x5E, 0x22, 0x5D, 0x6A, 0x50, 0x1C, 0x8E,  // .^"]jP..
                /* 08F8 */  0x78, 0xA9, 0x41, 0xCC, 0x36, 0x76, 0xE8, 0x10,  // x.A.6v..
                /* 0900 */  0x71, 0x6B, 0xC7, 0xD0, 0xB1, 0x06, 0x03, 0xAD,  // qk......
                /* 0908 */  0x6B, 0x0D, 0x2A, 0x0C, 0x8C, 0xE2, 0x1D, 0x1E,  // k.*.....
                /* 0910 */  0x50, 0x81, 0x0E, 0x0F, 0x14, 0xC4, 0x6C, 0xFF,  // P.....l.
                /* 0918 */  0xFF, 0xD7, 0x1A, 0x80, 0x5B, 0x67, 0x15, 0x60,  // ....[g.`
                /* 0920 */  0x11, 0xF6, 0x7C, 0x80, 0x3A, 0x22, 0x78, 0x46,  // ..|.:"xF
                /* 0928 */  0x06, 0xF1, 0xC0, 0x7C, 0xE3, 0xF7, 0xA0, 0x71,  // ...|...q
                /* 0930 */  0xF7, 0x39, 0xFC, 0x51, 0x05, 0x0C, 0xFF, 0xFF,  // .9.Q....
                /* 0938 */  0xA3, 0x0A, 0xB0, 0xB8, 0xF1, 0x80, 0xEF, 0x64,  // .......d
                /* 0940 */  0x03, 0x70, 0x46, 0xF3, 0xC9, 0x06, 0x48, 0xFD,  // .pF...H.
                /* 0948 */  0xFF, 0x4F, 0x36, 0xC0, 0x42, 0xE1, 0x12, 0x75,  // .O6.B..u
                /* 0950 */  0x11, 0xC5, 0x29, 0x7E, 0x1E, 0xE8, 0x64, 0xC3,  // ..)~..d.
                /* 0958 */  0xE6, 0x78, 0x16, 0xFC, 0x60, 0x83, 0xD3, 0x08,  // .x..`...
                /* 0960 */  0xA8, 0x83, 0x0D, 0x57, 0x07, 0x23, 0x2D, 0x0B,  // ...W.#-.
                /* 0968 */  0xD6, 0x49, 0x83, 0xA7, 0xBF, 0xFE, 0x51, 0x10,  // .I....Q.
                /* 0970 */  0x0F, 0xDC, 0x07, 0x1B, 0x80, 0x59, 0xD7, 0x00,  // .....Y..
                /* 0978 */  0xFF, 0xFF, 0xAF, 0x01, 0xF8, 0xB9, 0xBC, 0x42,  // .......B
                /* 0980 */  0x3C, 0x39, 0xF8, 0xF8, 0x07, 0xF8, 0xB8, 0x29,  // <9.....)
                /* 0988 */  0x02, 0xFB, 0x93, 0x0B, 0xF8, 0x6E, 0x8A, 0x80,  // .....n..
                /* 0990 */  0xA9, 0xFF, 0xFF, 0x05, 0x08, 0x38, 0x8C, 0xC4,  // .....8..
                /* 0998 */  0x17, 0x20, 0xC0, 0xD1, 0xC5, 0xDF, 0x17, 0x20,  // . ..... 
                /* 09A0 */  0xC0, 0x8B, 0xC8, 0x0B, 0x10, 0x0A, 0xD6, 0xA2,  // ........
                /* 09A8 */  0x2F, 0x40, 0x88, 0x9B, 0xA2, 0x67, 0xE3, 0x03,  // /@...g..
                /* 09B0 */  0x10, 0x46, 0xE8, 0xFD, 0x07, 0x25, 0x11, 0x46,  // .F...%.F
                /* 09B8 */  0xA2, 0x8F, 0xD3, 0x28, 0x99, 0xF7, 0x1F, 0x0A,  // ...(....
                /* 09C0 */  0xE2, 0xE3, 0x34, 0x38, 0xFE, 0xFF, 0xF7, 0x1F,  // ..48....
                /* 09C8 */  0x80, 0xE5, 0x87, 0x1A, 0x98, 0xFF, 0xFF, 0x2B,  // .......+
                /* 09D0 */  0x25, 0xE0, 0xF3, 0x6A, 0x04, 0xBE, 0x23, 0x10,  // %..j..#.
                /* 09D8 */  0xE0, 0xFF, 0xFF, 0x7F, 0x04, 0x02, 0x27, 0xCC,  // ......'.
                /* 09E0 */  0x23, 0x10, 0x60, 0xE9, 0x28, 0xE0, 0x23, 0x10,  // #.`.(.#.
                /* 09E8 */  0xE6, 0x4A, 0x89, 0x41, 0x09, 0x1C, 0xE6, 0x80,  // .J.A....
                /* 09F0 */  0x98, 0xCC, 0x33, 0x10, 0x4A, 0x20, 0x8C, 0xC4,  // ..3.J ..
                /* 09F8 */  0x5C, 0x29, 0x51, 0xF1, 0xCF, 0x40, 0x14, 0xC4,  // \)Q..@..
                /* 0A00 */  0x57, 0x4A, 0xC0, 0xEB, 0xFF, 0xFF, 0x0C, 0x04,  // WJ......
                /* 0A08 */  0x30, 0x26, 0x18, 0x84, 0x94, 0x5C, 0x29, 0x21,  // 0&...\)!
                /* 0A10 */  0x26, 0xB9, 0x52, 0x02, 0x45, 0x5D, 0x73, 0x03,  // &.R.E]s.
                /* 0A18 */  0x8D, 0x31, 0x01, 0xDA, 0xCE, 0x4B, 0x20, 0xF8,  // .1...K .
                /* 0A20 */  0xFF, 0x9F, 0x97, 0xC0, 0x23, 0xE9, 0xBC, 0x84,  // ....#...
                /* 0A28 */  0x12, 0x71, 0x5E, 0xA2, 0x20, 0x9E, 0xBF, 0x03,  // .q^. ...
                /* 0A30 */  0x4E, 0x1A, 0x7D, 0x02, 0x82, 0x13, 0xE7, 0x04,  // N.}.....
                /* 0A38 */  0x04, 0x54, 0x85, 0x0D, 0x1C, 0x64, 0x47, 0x20,  // .T...dG 
                /* 0A40 */  0x60, 0x0E, 0xF5, 0x08, 0x04, 0x18, 0xF8, 0xFF,  // `.......
                /* 0A48 */  0x1F, 0x04, 0xE0, 0x09, 0x3D, 0x54, 0xA2, 0x85,  // ....=T..
                /* 0A50 */  0x1F, 0x2A, 0x21, 0xDC, 0x80, 0x30, 0x62, 0x4F,  // .*!..0bO
                /* 0A58 */  0x40, 0xA8, 0x43, 0x90, 0x0F, 0x95, 0x00, 0x57,  // @.C....W
                /* 0A60 */  0xFF, 0xFF, 0x87, 0x4A, 0xC0, 0x5D, 0xE0, 0x53,  // ...J.].S
                /* 0A68 */  0x0D, 0x2A, 0xE2, 0xA9, 0x86, 0x82, 0x78, 0x60,  // .*....x`
                /* 0A70 */  0x3E, 0x26, 0xFA, 0x54, 0x83, 0x3B, 0x54, 0xE2,  // >&.T.;T.
                /* 0A78 */  0x0F, 0x35, 0xC0, 0x13, 0xCA, 0x87, 0x1A, 0xF0,  // .5......
                /* 0A80 */  0x1D, 0x82, 0x80, 0xEB, 0xFF, 0xFF, 0x10, 0x04,  // ........
                /* 0A88 */  0xB8, 0x54, 0x7D, 0x08, 0x02, 0xD4, 0x28, 0x3E,  // .T}...(>
                /* 0A90 */  0x56, 0xA2, 0x13, 0x1C, 0x82, 0x10, 0x08, 0xE7,  // V.......
                /* 0A98 */  0x15, 0x34, 0x76, 0xD7, 0x17, 0x4B, 0x14, 0x41,  // .4v..K.A
                /* 0AA0 */  0xCD, 0xA7, 0x20, 0x94, 0x5A, 0x18, 0x29, 0x3B,  // .. .Z.);
                /* 0AA8 */  0x56, 0xA2, 0xB4, 0xC0, 0x08, 0xCE, 0x20, 0x3E,  // V..... >
                /* 0AB0 */  0x56, 0x82, 0xFF, 0xFF, 0x7F, 0x0A, 0x02, 0x98,  // V.......
                /* 0AB8 */  0x9C, 0x12, 0x42, 0x36, 0x8E, 0x95, 0x10, 0xA7,  // ..B6....
                /* 0AC0 */  0xE8, 0xB9, 0xC1, 0xF9, 0xFF, 0x1F, 0x2B, 0x81,  // ......+.
                /* 0AC8 */  0x8B, 0xC8, 0xB9, 0x41, 0x9F, 0xC0, 0x5B, 0xC5,  // ...A..[.
                /* 0AD0 */  0x93, 0xC9, 0x61, 0x9C, 0xC5, 0x41, 0x54, 0x27,  // ..a..AT'
                /* 0AD8 */  0xC0, 0xE3, 0x81, 0x43, 0xE7, 0x95, 0xA7, 0x97,  // ...C....
                /* 0AE0 */  0x47, 0x96, 0x17, 0x8E, 0x43, 0xAC, 0x19, 0x41,  // G...C..A
                /* 0AE8 */  0xCA, 0x04, 0x58, 0xBB, 0x5C, 0x02, 0x84, 0xFB,  // ..X.\...
                /* 0AF0 */  0xFF, 0x5F, 0x84, 0xC0, 0x76, 0xB2, 0x79, 0x11,  // ._..v.y.
                /* 0AF8 */  0x02, 0xCC, 0xC4, 0x7A, 0x02, 0xE8, 0x22, 0x84,  // ...z..".
                /* 0B00 */  0x8B, 0xB9, 0x48, 0x5D, 0x84, 0xF0, 0xE7, 0x4B,  // ..H]...K
                /* 0B08 */  0x4E, 0xE0, 0x60, 0x37, 0x20, 0x7A, 0x68, 0x70,  // N.`7 zhp
                /* 0B10 */  0x24, 0x18, 0xDD, 0x2E, 0x01, 0xEB, 0xFF, 0xFF,  // $.......
                /* 0B18 */  0xDB, 0x25, 0xC0, 0x38, 0x71, 0xC7, 0x1A, 0x94,  // .%.8q...
                /* 0B20 */  0x9C, 0x63, 0x0D, 0x05, 0xF1, 0x9C, 0x1C, 0xF5,  // .c......
                /* 0B28 */  0x84, 0x84, 0xBE, 0x5D, 0xE2, 0xA3, 0x9D, 0x6A,  // ...]...j
                /* 0B30 */  0x80, 0xD0, 0xFF, 0xFF, 0x76, 0x09, 0xF3, 0x8E,  // ....v...
                /* 0B38 */  0x04, 0x0C, 0xCE, 0x36, 0x8F, 0x39, 0x3E, 0xDB,  // ...6.9>.
                /* 0B40 */  0x00, 0xEF, 0xD3, 0xCA, 0xB3, 0x0D, 0x60, 0xE6,  // ......`.
                /* 0B48 */  0x8E, 0xE8, 0xB3, 0x0D, 0x97, 0x02, 0x21, 0xA5,  // ......!.
                /* 0B50 */  0xEF, 0x05, 0x0D, 0xF8, 0xBC, 0xFA, 0xBC, 0xD8,  // ........
                /* 0B58 */  0x20, 0x0E, 0x13, 0xBE, 0x4C, 0xE8, 0x48, 0x43,  //  ...L.HC
                /* 0B60 */  0xCF, 0x0D, 0x56, 0x46, 0x21, 0x25, 0xE7, 0x07,  // ..VF!%..
                /* 0B68 */  0x54, 0xF6, 0xBB, 0x08, 0x05, 0x31, 0xA0, 0x83,  // T....1..
                /* 0B70 */  0x9D, 0xB2, 0xD0, 0xC7, 0x15, 0x0F, 0xE7, 0xC9,  // ........
                /* 0B78 */  0xDC, 0xD7, 0x06, 0x27, 0x39, 0x83, 0x40, 0xFB,  // ...'9.@.
                /* 0B80 */  0xFF, 0xDF, 0x6C, 0x80, 0x8B, 0xAE, 0x1B, 0x16,  // ..l.....
                /* 0B88 */  0xC8, 0xEE, 0x20, 0xC0, 0xE2, 0xFA, 0xE1, 0x49,  // .. ....I
                /* 0B90 */  0xF3, 0x3D, 0x7B, 0xD2, 0xA6, 0xF0, 0xA4, 0x1D,  // .={.....
                /* 0B98 */  0xEE, 0x1C, 0x83, 0xBE, 0x83, 0xE0, 0xC3, 0xDC,  // ........
                /* 0BA0 */  0x41, 0x80, 0xE6, 0xA9, 0x07, 0x7C, 0x97, 0x0F,  // A....|..
                /* 0BA8 */  0xE0, 0xFA, 0xFF, 0xBF, 0x7C, 0xE0, 0x86, 0xE8,  // ....|...
                /* 0BB0 */  0xCB, 0x07, 0xE0, 0x25, 0xEE, 0x23, 0x41, 0x97,  // ...%.#A.
                /* 0BB8 */  0x0F, 0x5C, 0xFC, 0x57, 0x80, 0x2E, 0x1F, 0xEC,  // .\.W....
                /* 0BC0 */  0xF6, 0x8B, 0x19, 0xBF, 0x43, 0x9F, 0x18, 0x28,  // ....C..(
                /* 0BC8 */  0x84, 0xE3, 0x52, 0x28, 0xEC, 0xC1, 0x01, 0x15,  // ..R(....
                /* 0BD0 */  0x0F, 0x8E, 0x82, 0xF8, 0xE4, 0x0E, 0xEF, 0xF2,  // ........
                /* 0BD8 */  0x81, 0xB9, 0x30, 0xC2, 0x3C, 0x7D, 0xB0, 0x83,  // ..0.<}..
                /* 0BE0 */  0x03, 0x30, 0x21, 0xF0, 0x85, 0x11, 0x7C, 0xE7,  // .0!...|.
                /* 0BE8 */  0x0C, 0xF0, 0x8E, 0x0F, 0xFF, 0xFF, 0x3F, 0x67,  // ......?g
                /* 0BF0 */  0x00, 0x9E, 0x51, 0x9E, 0x33, 0x00, 0x33, 0xDA,  // ..Q.3.3.
                /* 0BF8 */  0xEE, 0x4C, 0x68, 0xAD, 0x77, 0x26, 0x08, 0xB7,  // .Lh.w&..
                /* 0C00 */  0x05, 0xA6, 0xF0, 0xCE, 0x84, 0xD2, 0x76, 0x67,  // ......vg
                /* 0C08 */  0x02, 0x1A, 0xFF, 0xFF, 0x3B, 0x13, 0x60, 0x53,  // ....;.`S
                /* 0C10 */  0xD0, 0xA4, 0x51, 0x12, 0xEE, 0x2A, 0x14, 0xC4,  // ..Q..*..
                /* 0C18 */  0x93, 0xF6, 0x5D, 0x05, 0xCE, 0xE5, 0x03, 0x77,  // ..]....w
                /* 0C20 */  0x58, 0x06, 0x9E, 0xA3, 0xF2, 0x61, 0x19, 0x30,  // X....a.0
                /* 0C28 */  0xF1, 0xFF, 0xBF, 0x7D, 0xC0, 0x1E, 0xE5, 0xDB,  // ...}....
                /* 0C30 */  0x07, 0x60, 0x26, 0xF2, 0xA5, 0x09, 0x05, 0x6B,  // .`&....k
                /* 0C38 */  0x09, 0xB7, 0x0F, 0xC4, 0xA5, 0x09, 0x73, 0x00,  // ......s.
                /* 0C40 */  0xE0, 0xB1, 0x6F, 0x4D, 0xA8, 0xC0, 0x14, 0xBA,  // ..oM....
                /* 0C48 */  0x36, 0xF9, 0xE8, 0xC0, 0x03, 0xC2, 0x51, 0x10,  // 6.....Q.
                /* 0C50 */  0xDF, 0x9A, 0x00, 0x7F, 0x27, 0x0D, 0x30, 0xFE,  // ....'.0.
                /* 0C58 */  0xFF, 0x6F, 0x4D, 0xC0, 0xEC, 0xA4, 0x01, 0x78,  // .oM....x
                /* 0C60 */  0x32, 0x7E, 0x6D, 0x02, 0xE4, 0x39, 0x3B, 0x0A,  // 2~m..9;.
                /* 0C68 */  0xEB, 0xDA, 0x04, 0xEE, 0xFF, 0xFF, 0xB5, 0x09,  // ........
                /* 0C70 */  0xE0, 0x81, 0x93, 0x6B, 0x13, 0xA0, 0xEB, 0xB8,  // ...k....
                /* 0C78 */  0xC0, 0x6E, 0x1F, 0xC0, 0xE0, 0xFF, 0x7F, 0xFB,  // .n......
                /* 0C80 */  0x00, 0xEF, 0x30, 0x5F, 0x9B, 0x00, 0x7B, 0x07,  // ..0_..{.
                /* 0C88 */  0x00, 0x7E, 0x6D, 0x02, 0x5C, 0x9F, 0x34, 0xE0,  // .~m.\.4.
                /* 0C90 */  0xFC, 0xFF, 0xAF, 0x4D, 0x80, 0x9B, 0x93, 0x06,  // ...M....
                /* 0C98 */  0xF0, 0x1F, 0xE7, 0x93, 0x06, 0x60, 0x46, 0xE0,  // .....`F.
                /* 0CA0 */  0x49, 0x03, 0x75, 0x08, 0xB0, 0xE0, 0x43, 0x37,  // I.u...C7
                /* 0CA8 */  0xB9, 0x02, 0xD8, 0xE3, 0x10, 0x09, 0x4C, 0xF0,  // ......L.
                /* 0CB0 */  0xC0, 0x51, 0xCE, 0xF2, 0x38, 0x0D, 0x5E, 0xE1,  // .Q..8.^.
                /* 0CB8 */  0x94, 0x34, 0x86, 0x40, 0xE7, 0x7D, 0x50, 0x11,  // .4.@.}P.
                /* 0CC0 */  0xDE, 0x4F, 0x0C, 0x2E, 0x68, 0xFD, 0xFF, 0xCF,  // .O..h...
                /* 0CC8 */  0x1B, 0x5C, 0x12, 0x85, 0x4E, 0x3E, 0x80, 0xA3,  // .\..N>..
                /* 0CD0 */  0xF3, 0x06, 0xB8, 0x0E, 0x10, 0xC0, 0x5F, 0xFC,  // ......_.
                /* 0CD8 */  0x01, 0x02, 0x50, 0xA3, 0x72, 0x89, 0x3A, 0x40,  // ..P.r.:@
                /* 0CE0 */  0xF8, 0xFF, 0x7F, 0x8D, 0xE3, 0xAA, 0xDF, 0x07,  // ........
                /* 0CE8 */  0x3A, 0x40, 0xB0, 0x6B, 0x1C, 0xBF, 0x9B, 0xFB,  // :@.k....
                /* 0CF0 */  0x32, 0x27, 0x30, 0x5D, 0xE3, 0xB8, 0x4A, 0x18,  // 2'0]..J.
                /* 0CF8 */  0xA9, 0x5A, 0xAE, 0x4E, 0x0E, 0x5C, 0x07, 0x8C,  // .Z.N.\..
                /* 0D00 */  0xE0, 0x0C, 0xE2, 0x61, 0x3B, 0xD6, 0xA9, 0x1E,  // ...a;...
                /* 0D08 */  0x3D, 0x26, 0x2B, 0xBE, 0x13, 0xE8, 0x08, 0xE2,  // =&+.....
                /* 0D10 */  0x20, 0xC7, 0x38, 0xA0, 0x78, 0xA4, 0x07, 0x57,  //  .8.x..W
                /* 0D18 */  0xB6, 0xB1, 0xA1, 0x8F, 0x49, 0xD6, 0x8C, 0x28,  // ....I..(
                /* 0D20 */  0xC0, 0xA3, 0x39, 0x17, 0xCC, 0xEC, 0x80, 0xDF,  // ..9.....
                /* 0D28 */  0xFD, 0x1F, 0x7C, 0xC9, 0x66, 0x87, 0xD6, 0x71,  // ..|.f..q
                /* 0D30 */  0x23, 0x21, 0xA3, 0xA9, 0x1D, 0x52, 0xB3, 0x79,  // #!...R.y
                /* 0D38 */  0x64, 0xF0, 0xE4, 0xC0, 0xF7, 0xFF, 0x9F, 0x1C,  // d.......
                /* 0D40 */  0xF8, 0x8E, 0x0C, 0x9E, 0x1C, 0xB8, 0xA2, 0x9D,  // ........
                /* 0D48 */  0xBE, 0xD0, 0x93, 0xF3, 0x44, 0x5E, 0x05, 0x22,  // ....D^."
                /* 0D50 */  0xBC, 0xD3, 0xF8, 0x32, 0x09, 0x1C, 0x91, 0x7C,  // ...2...|
                /* 0D58 */  0x99, 0x04, 0xCE, 0x72, 0xEE, 0x40, 0xA8, 0xA7,  // ...r.@..
                /* 0D60 */  0x82, 0xCF, 0x0A, 0xA6, 0xF0, 0x05, 0xC0, 0xE1,  // ........
                /* 0D68 */  0x8E, 0x08, 0xE8, 0x3B, 0x10, 0x3E, 0xCC, 0x1D,  // ...;.>..
                /* 0D70 */  0x08, 0x68, 0x8E, 0xE4, 0xFF, 0xFF, 0x8E, 0x00,  // .h......
                /* 0D78 */  0xB6, 0x2B, 0x10, 0xF0, 0x36, 0x7F, 0x05, 0x02,  // .+..6...
                /* 0D80 */  0xD4, 0x08, 0xB9, 0x02, 0xA1, 0x85, 0x5D, 0x81,  // ......].
                /* 0D88 */  0x10, 0x77, 0x49, 0xCC, 0xF8, 0x2D, 0xE7, 0x0A,  // .wI..-..
                /* 0D90 */  0x44, 0x21, 0x2C, 0x04, 0x46, 0x32, 0x20, 0x74,  // D!,.F2 t
                /* 0D98 */  0x70, 0xE0, 0xC1, 0xAF, 0x40, 0x14, 0xC4, 0xD7,  // p...@...
                /* 0DA0 */  0x0B, 0xDF, 0x3E, 0x7C, 0x05, 0x82, 0x77, 0x6E,  // ..>|..wn
                /* 0DA8 */  0x80, 0x77, 0x35, 0x04, 0xEB, 0xFF, 0xFF, 0x2A,  // .w5....*
                /* 0DB0 */  0x06, 0xFB, 0xDC, 0x00, 0xAE, 0x80, 0xA3, 0x43,  // .......C
                /* 0DB8 */  0x8F, 0xD9, 0x97, 0x20, 0x18, 0x03, 0x04, 0xA6,  // ... ....
                /* 0DC0 */  0xE7, 0x20, 0xF0, 0x5D, 0xF4, 0x3C, 0x40, 0x1C,  // . .].<@.
                /* 0DC8 */  0xB0, 0xCF, 0x41, 0xD8, 0xF1, 0x01, 0xD3, 0x9B,  // ..A.....
                /* 0DD0 */  0x10, 0xF8, 0xCE, 0x03, 0xBE, 0x09, 0xE1, 0x80,  // ........
                /* 0DD8 */  0x7D, 0x13, 0xC2, 0x5E, 0x0C, 0xE1, 0xFD, 0xFF,  // }..^....
                /* 0DE0 */  0xC7, 0x07, 0x8C, 0xA0, 0x7C, 0xAF, 0x05, 0xDF,  // ....|...
                /* 0DE8 */  0xA1, 0x07, 0xBC, 0xE3, 0x03, 0x3E, 0x87, 0x1E,  // .....>..
                /* 0DF0 */  0xC0, 0x93, 0xFA, 0x43, 0x0F, 0x10, 0xF9, 0xFF,  // ...C....
                /* 0DF8 */  0x1F, 0x7A, 0x80, 0x91, 0xCE, 0x43, 0x0F, 0x5A,  // .z...C.Z
                /* 0E00 */  0xF7, 0x35, 0x12, 0xC2, 0x6D, 0x81, 0xA9, 0xBD,  // .5..m...
                /* 0E08 */  0x46, 0xA2, 0x74, 0x5E, 0x23, 0x01, 0xE2, 0xFD,  // F.t^#...
                /* 0E10 */  0xFF, 0xAF, 0x91, 0x00, 0x67, 0x8F, 0xE6, 0xF0,  // ....g...
                /* 0E18 */  0x67, 0x8D, 0x3B, 0x9A, 0xC3, 0xFF, 0xFF, 0x5F,  // g.;...._
                /* 0E20 */  0x23, 0x81, 0xDB, 0x8D, 0x09, 0x7C, 0x77, 0x20,  // #....|w 
                /* 0E28 */  0xE0, 0xED, 0xFE, 0x0E, 0x04, 0xA8, 0x11, 0x73,  // .......s
                /* 0E30 */  0x07, 0x42, 0xC1, 0x5A, 0xDC, 0x3D, 0x12, 0xCA,  // .B.Z.=..
                /* 0E38 */  0x01, 0x80, 0x0B, 0xBA, 0x48, 0xA2, 0xA4, 0xC0,  // ....H...
                /* 0E40 */  0xE8, 0x26, 0xE9, 0xA3, 0x03, 0x8F, 0x7E, 0x09,  // .&....~.
                /* 0E48 */  0xA2, 0x20, 0xBE, 0x48, 0xE2, 0xFE, 0xFF, 0x17,  // . .H....
                /* 0E50 */  0x49, 0x80, 0xFF, 0xFF, 0xFF, 0x8B, 0x24, 0xE0,  // I.....$.
                /* 0E58 */  0xF9, 0xD8, 0x03, 0xDE, 0x8B, 0x24, 0x70, 0x3A,  // .....$p:
                /* 0E60 */  0xF6, 0x00, 0x2E, 0xFE, 0xFF, 0xC7, 0x1E, 0xB8,  // ........
                /* 0E68 */  0xF2, 0x6F, 0x92, 0x80, 0x3C, 0x67, 0x02, 0x94,  // .o..<g..
                /* 0E70 */  0xDD, 0x24, 0x01, 0x8A, 0xFC, 0xFF, 0x6F, 0x92,  // .$....o.
                /* 0E78 */  0x00, 0xFF, 0xFF, 0xFF, 0x37, 0x49, 0x30, 0x3B,  // ....7I0;
                /* 0E80 */  0xB9, 0x49, 0x02, 0xBA, 0x0E, 0x2D, 0xEC, 0x0E,  // .I...-..
                /* 0E88 */  0x04, 0xCC, 0xED, 0xDF, 0x81, 0x00, 0x29, 0xFF,  // ......).
                /* 0E90 */  0xFF, 0x9B, 0x24, 0x98, 0x0E, 0x00, 0xFC, 0x26,  // ..$....&
                /* 0E98 */  0x09, 0xB0, 0xF9, 0xFF, 0x7F, 0x93, 0x04, 0x18,  // ........
                /* 0EA0 */  0x75, 0xEC, 0x01, 0xE7, 0x4D, 0x12, 0x98, 0xFF,  // u...M...
                /* 0EA8 */  0xFF, 0x8F, 0x3D, 0x80, 0x01, 0xFD, 0xC7, 0x1E,  // ..=.....
                /* 0EB0 */  0x40, 0x4D, 0xB6, 0x17, 0x8E, 0x8E, 0x3D, 0xFC,  // @M....=.
                /* 0EB8 */  0x2C, 0xE0, 0xAC, 0xCB, 0xD4, 0x4D, 0x12, 0x86,  // ,....M..
                /* 0EC0 */  0xC2, 0x81, 0x90, 0x53, 0x8E, 0xD3, 0x01, 0xEA,  // ...S....
                /* 0EC8 */  0x2E, 0xC9, 0x73, 0xC1, 0x28, 0xC5, 0xB9, 0x07,  // ..s.(...
                /* 0ED0 */  0x75, 0xB1, 0x34, 0x9C, 0x41, 0xEC, 0xE1, 0x2E,  // u.4.A...
                /* 0ED8 */  0x09, 0x88, 0xF8, 0xFF, 0xDF, 0x25, 0x01, 0xFE,  // .....%..
                /* 0EE0 */  0xFF, 0xFF, 0xEF, 0x92, 0xC0, 0x20, 0xD8, 0x4D,  // ..... .M
                /* 0EE8 */  0x00, 0x7D, 0x1A, 0xF1, 0x64, 0x5E, 0x76, 0x3C,  // .}..d^v<
                /* 0EF0 */  0x9A, 0x93, 0xF3, 0x49, 0x00, 0xF8, 0x8D, 0xC3,  // ...I....
                /* 0EF8 */  0x27, 0x01, 0x70, 0x0D, 0x0E, 0xCE, 0xC9, 0x25,  // '.p....%
                /* 0F00 */  0xE0, 0x6B, 0xC3, 0x63, 0x8D, 0x07, 0x07, 0x0C,  // .k.c....
                /* 0F08 */  0xCF, 0x3D, 0x7C, 0x70, 0xE0, 0xB9, 0xA3, 0x02,  // .=|p....
                /* 0F10 */  0xBB, 0xFF, 0xFF, 0x1D, 0x15, 0x70, 0x31, 0x72,  // .....p1r
                /* 0F18 */  0xDF, 0xAE, 0x00, 0x4F, 0xFE, 0x6F, 0x57, 0x80,  // ...O.oW.
                /* 0F20 */  0x9A, 0x20, 0xB7, 0x2B, 0x14, 0x87, 0x83, 0xDD,  // . .+....
                /* 0F28 */  0xAE, 0x10, 0x77, 0x54, 0xEC, 0xF1, 0xCA, 0xFF,  // ..wT....
                /* 0F30 */  0xFF, 0xE3, 0x15, 0x83, 0xD6, 0xF5, 0x8A, 0x42,  // .......B
                /* 0F38 */  0x38, 0x02, 0x8C, 0x02, 0x40, 0xE8, 0xF0, 0xC0,  // 8...@...
                /* 0F40 */  0x25, 0xC3, 0x51, 0x10, 0x8F, 0xC8, 0xB7, 0x54,  // %.Q....T
                /* 0F48 */  0x80, 0xCB, 0xFF, 0xFF, 0x5B, 0x2A, 0xC0, 0x91,  // ....[*..
                /* 0F50 */  0x70, 0x17, 0x2D, 0xE8, 0xC7, 0x01, 0xE0, 0x79,  // p.-....y
                /* 0F58 */  0xD5, 0x02, 0xDF, 0xF0, 0xE0, 0x5C, 0xB5, 0x70,  // .....\.p
                /* 0F60 */  0xC3, 0xF3, 0xFF, 0x7F, 0x78, 0xC0, 0xF1, 0xB2,  // ....x...
                /* 0F68 */  0x05, 0xBE, 0x1B, 0x30, 0xE0, 0xE1, 0x50, 0x05,  // ...0..P.
                /* 0F70 */  0xB8, 0x0A, 0x70, 0xA8, 0x02, 0xED, 0xFF, 0xFF,  // ..p.....
                /* 0F78 */  0x50, 0x05, 0x1C, 0x95, 0x2D, 0x50, 0x87, 0x2A,  // P...-P.*
                /* 0F80 */  0x7E, 0x1C, 0xB2, 0xD2, 0x07, 0x8C, 0x86, 0x6B,  // ~......k
                /* 0F88 */  0x88, 0x37, 0x60, 0x7E, 0x5B, 0xF0, 0x55, 0x4F,  // .7`~[.UO
                /* 0F90 */  0x60, 0xBA, 0xFF, 0x72, 0x65, 0x14, 0x52, 0x72,  // `..re.Rr
                /* 0F98 */  0xBA, 0x43, 0x65, 0x3F, 0xFD, 0x50, 0x10, 0x03,  // .Ce?.P..
                /* 0FA0 */  0xFA, 0x86, 0xE8, 0x93, 0x03, 0x4E, 0x05, 0x88,  // .....N..
                /* 0FA8 */  0xA6, 0x60, 0x84, 0x13, 0x7A, 0xF3, 0x04, 0x86,  // .`..z...
                /* 0FB0 */  0x04, 0xBE, 0x79, 0x82, 0xE7, 0xDA, 0xC0, 0x6E,  // ..y....n
                /* 0FB8 */  0x88, 0xC0, 0x42, 0xCE, 0xA4, 0x51, 0x7B, 0xF6,  // ..B..Q{.
                /* 0FC0 */  0xA4, 0x4D, 0xE1, 0x49, 0xFB, 0xAE, 0x02, 0xE7,  // .M.I....
                /* 0FC8 */  0xF6, 0x81, 0xBB, 0xAB, 0xC0, 0xFA, 0xFF, 0xDF,  // ........
                /* 0FD0 */  0x10, 0x81, 0xD1, 0x35, 0x0B, 0x7C, 0x97, 0x0F,  // ...5.|..
                /* 0FD8 */  0xE0, 0x9D, 0xE0, 0xF2, 0x01, 0xA8, 0x89, 0xFB,  // ........
                /* 0FE0 */  0x48, 0xD0, 0xE5, 0x03, 0x17, 0xFF, 0x15, 0xA0,  // H.......
                /* 0FE8 */  0xCB, 0x07, 0xBB, 0x20, 0x62, 0xC6, 0xEF, 0xD0,  // ... b...
                /* 0FF0 */  0x27, 0x06, 0x0A, 0xE1, 0xB8, 0x14, 0x0A, 0x7B,  // '......{
                /* 0FF8 */  0x70, 0x40, 0xC5, 0x83, 0xA3, 0x20, 0x1E, 0xB4,  // p@... ..
                /* 1000 */  0x6F, 0x41, 0x70, 0x06, 0xF8, 0xFF, 0x7F, 0xF9,  // oAp.....
                /* 1008 */  0xE0, 0xB7, 0x20, 0x60, 0x4A, 0xE0, 0x5B, 0x10,  // .. `J.[.
                /* 1010 */  0xF8, 0xCE, 0x19, 0xE0, 0xBD, 0x1D, 0x02, 0xFF,  // ........
                /* 1018 */  0x73, 0x06, 0xF0, 0x6E, 0x70, 0xCE, 0x00, 0xD1,  // s..np...
                /* 1020 */  0xFF, 0xFF, 0x9C, 0x01, 0x8C, 0xB5, 0xDD, 0x99,  // ........
                /* 1028 */  0xD0, 0x5A, 0xEF, 0x4C, 0x10, 0x8E, 0x83, 0x4C,  // .Z.L...L
                /* 1030 */  0xE1, 0x9D, 0x09, 0xA5, 0xED, 0xCE, 0x04, 0x90,  // ........
                /* 1038 */  0xE2, 0x94, 0x0E, 0xFF, 0x34, 0x8A, 0x3B, 0x01,  // ....4.;.
                /* 1040 */  0xC2, 0xFB, 0xFF, 0xDF, 0x99, 0x80, 0xE3, 0x61,  // .......a
                /* 1048 */  0x14, 0x7C, 0xB7, 0x0F, 0xE0, 0x1D, 0xE1, 0xF6,  // .|......
                /* 1050 */  0x01, 0xA8, 0x89, 0x7C, 0x69, 0x42, 0xC1, 0x5A,  // ...|iB.Z
                /* 1058 */  0xC2, 0xED, 0x03, 0x71, 0x69, 0xC2, 0x1C, 0x00,  // ...qi...
                /* 1060 */  0x78, 0xEC, 0x5B, 0x13, 0x2A, 0x30, 0x85, 0xAE,  // x.[.*0..
                /* 1068 */  0x4D, 0x3E, 0x3A, 0xF0, 0x80, 0x70, 0x14, 0xC4,  // M>:..p..
                /* 1070 */  0xA3, 0xF6, 0xFF, 0xFF, 0xD6, 0x04, 0xB8, 0x3B,  // .......;
                /* 1078 */  0x69, 0x80, 0xF7, 0xD6, 0x04, 0x9C, 0x4E, 0x1A,  // i.....N.
                /* 1080 */  0x80, 0xA7, 0x0A, 0x27, 0x0D, 0xF4, 0xFF, 0xFF,  // ...'....
                /* 1088 */  0xDA, 0x04, 0xD8, 0xBA, 0x2E, 0xB0, 0x6B, 0x13,  // ......k.
                /* 1090 */  0xC0, 0xA0, 0x49, 0x63, 0xFE, 0xFF, 0xD7, 0x26,  // ..Ic...&
                /* 1098 */  0xC0, 0xD2, 0x3D, 0x1C, 0xF8, 0x67, 0xB8, 0x36,  // ..=..g.6
                /* 10A0 */  0x01, 0xFA, 0x0E, 0x00, 0xFC, 0xDA, 0x04, 0xE3,  // ........
                /* 10A8 */  0xFF, 0x7F, 0x6D, 0x02, 0xCC, 0x9E, 0x34, 0xC0,  // ..m...4.
                /* 10B0 */  0x79, 0x6D, 0x02, 0xEE, 0x27, 0x0D, 0x60, 0xFD,  // ym..'.`.
                /* 10B8 */  0xFF, 0x3F, 0x69, 0x60, 0x3A, 0x9C, 0x34, 0x00,  // .?i`:.4.
                /* 10C0 */  0x35, 0x79, 0xDE, 0x06, 0x3A, 0x69, 0xF0, 0xB3,  // 5y..:i..
                /* 10C8 */  0x80, 0xF3, 0x2D, 0x52, 0xD7, 0x26, 0x18, 0x0A,  // ..-R.&..
                /* 10D0 */  0x07, 0x42, 0x46, 0x90, 0x60, 0x22, 0x40, 0x5D,  // .BF.`"@]
                /* 10D8 */  0x9C, 0x78, 0x16, 0x18, 0x29, 0x27, 0xD1, 0x51,  // .x..)'.Q
                /* 10E0 */  0x83, 0xDF, 0xA2, 0x0C, 0x67, 0x10, 0x9F, 0x18,  // ....g...
                /* 10E8 */  0x7C, 0x71, 0x02, 0x7C, 0x0D, 0xCE, 0x67, 0x6E,  // |q.|..gn
                /* 10F0 */  0xFC, 0x64, 0x5E, 0x33, 0x3C, 0x9A, 0x07, 0x23,  // .d^3<..#
                /* 10F8 */  0x07, 0x99, 0x1C, 0xC8, 0xFE, 0xFF, 0x93, 0x03,  // ........
                /* 1100 */  0xE3, 0x89, 0x1B, 0x7C, 0x83, 0x83, 0x73, 0x66,  // ...|..sf
                /* 1108 */  0x08, 0xF8, 0x20, 0xF0, 0x40, 0xE1, 0xC1, 0x01,  // .. .@...
                /* 1110 */  0xC3, 0x13, 0x83, 0x07, 0x07, 0xAE, 0x0B, 0x19,  // ........
                /* 1118 */  0x60, 0x1A, 0xCA, 0xFF, 0xFF, 0x7B, 0x0D, 0xE0,  // `....{..
                /* 1120 */  0x29, 0xC4, 0xBD, 0x06, 0x50, 0x23, 0xF7, 0x5E,  // )...P#.^
                /* 1128 */  0x83, 0xE2, 0xB0, 0xFC, 0x7B, 0x0D, 0xE2, 0x42,  // ....{..B
                /* 1130 */  0x86, 0x3D, 0xD8, 0x60, 0xA0, 0x75, 0xB1, 0xA1,  // .=.`.u..
                /* 1138 */  0x10, 0x16, 0x0A, 0x23, 0x99, 0x10, 0x3A, 0x3C,  // ...#..:<
                /* 1140 */  0x70, 0x61, 0x70, 0x14, 0xC4, 0x23, 0xF7, 0x95,  // pap..#..
                /* 1148 */  0x0C, 0xB8, 0xFD, 0xFF, 0xAF, 0x64, 0xC0, 0x2F,  // .....d./
                /* 1150 */  0xDC, 0xDD, 0x06, 0x7A, 0x98, 0x2B, 0x19, 0x50,  // ...z.+.P
                /* 1158 */  0xBD, 0xB1, 0x80, 0x6B, 0x78, 0x70, 0x6E, 0x37,  // ...kxpn7
                /* 1160 */  0xB8, 0xE1, 0x01, 0xCF, 0xFB, 0x0D, 0xF8, 0xCE,  // ........
                /* 1168 */  0x31, 0xE0, 0xFB, 0xFF, 0x0F, 0x0F, 0x78, 0x9D,  // 1.....x.
                /* 1170 */  0x63, 0x00, 0x57, 0x25, 0xCE, 0x31, 0x80, 0x1A,  // c.W%.1..
                /* 1178 */  0x71, 0xF7, 0x54, 0x94, 0x28, 0x08, 0x89, 0x7D,  // q.T.(..}
                /* 1180 */  0x62, 0xE8, 0x08, 0x73, 0xB2, 0x7D, 0x0E, 0x58,  // b..s.}.X
                /* 1188 */  0xE0, 0xA7, 0x7D, 0xD8, 0x1E, 0xF1, 0x51, 0xC7,  // ..}...Q.
                /* 1190 */  0x38, 0x33, 0x8F, 0xE8, 0x9C, 0x6B, 0x1F, 0x1C,  // 83...k..
                /* 1198 */  0x3D, 0x10, 0xE8, 0xAE, 0x8A, 0x92, 0x44, 0xA1,  // =.....D.
                /* 11A0 */  0x53, 0x15, 0x9C, 0xFF, 0xFF, 0xA9, 0x0A, 0xEE,  // S.......
                /* 11A8 */  0x14, 0xCE, 0xF2, 0x84, 0xDF, 0x0C, 0x0E, 0xCF,  // ........
                /* 11B0 */  0xA7, 0x2A, 0xE0, 0x79, 0x92, 0x01, 0xE7, 0xF1,  // .*.y....
                /* 11B8 */  0x01, 0x78, 0xE7, 0x3B, 0x3E, 0x00, 0x6A, 0x44,  // .x.;>.jD
                /* 11C0 */  0xDD, 0x9A, 0xD1, 0x22, 0x8F, 0x0A, 0xBA, 0x3C,  // ..."...<
                /* 11C8 */  0x58, 0xA5, 0x00, 0x8F, 0x43, 0x24, 0xD3, 0x7D,  // X...C$.}
                /* 11D0 */  0x69, 0xB1, 0x67, 0x01, 0xFF, 0xFF, 0x71, 0xF8,  // i.g...q.
                /* 11D8 */  0xE8, 0x00, 0x3E, 0x25, 0x47, 0x07, 0x40, 0x97,  // ..>%G.@.
                /* 11E0 */  0x31, 0x01, 0xDA, 0x8E, 0x0E, 0x40, 0x3E, 0xEE,  // 1....@>.
                /* 11E8 */  0xD1, 0x01, 0x50, 0xF3, 0xFF, 0x97, 0x74, 0x74,  // ..P...tt
                /* 11F0 */  0x40, 0x4B, 0x3C, 0x3A, 0xA0, 0x45, 0xCE, 0x43,  // @K<:.E.C
                /* 11F8 */  0x33, 0x64, 0xC3, 0xD0, 0xD1, 0x01, 0x75, 0x72,  // 3d....ur
                /* 1200 */  0xB0, 0x9C, 0xA3, 0x03, 0x8A, 0xCA, 0x60, 0xA6,  // ......`.
                /* 1208 */  0xF0, 0xD1, 0xC1, 0x07, 0x30, 0x38, 0x47, 0x07,  // ....08G.
                /* 1210 */  0xDC, 0x01, 0x0C, 0xDE, 0xD1, 0x01, 0x38, 0x1D,  // ......8.
                /* 1218 */  0xC0, 0xC0, 0x75, 0x72, 0x00, 0xDE, 0x75, 0x4F,  // ..ur..uO
                /* 1220 */  0x0E, 0x40, 0xFB, 0xFF, 0x7F, 0x0E, 0x00, 0x87,  // .@......
                /* 1228 */  0xA0, 0x93, 0x03, 0x4A, 0xCA, 0xC8, 0x7D, 0x52,  // ...J..}R
                /* 1230 */  0xD0, 0x6C, 0x7D, 0xA4, 0x8A, 0x11, 0xF2, 0x6C,  // .l}....l
                /* 1238 */  0x2A, 0x1E, 0x19, 0x39, 0x38, 0x00, 0xCB, 0x53,  // *..98..S
                /* 1240 */  0x26, 0x70, 0x3A, 0x38, 0x00, 0x8E, 0x32, 0x1F,  // &p:8..2.
                /* 1248 */  0x1C, 0x80, 0xD6, 0xFF, 0xFF, 0x04, 0x03, 0xBC,  // ........
                /* 1250 */  0x0E, 0x0E, 0xEC, 0x04, 0xC3, 0xE6, 0x78, 0x88,  // ......x.
                /* 1258 */  0x9E, 0x86, 0x4F, 0x30, 0x00, 0xBB, 0x3A, 0x9F,  // ..O0..:.
                /* 1260 */  0x1C, 0x40, 0xF9, 0xFF, 0x3F, 0x39, 0x00, 0x06,  // .@..?9..
                /* 1268 */  0xAE, 0x97, 0x3E, 0x39, 0x00, 0xE3, 0x23, 0x0C,  // ..>9..#.
                /* 1270 */  0xE0, 0x3D, 0xF4, 0xC9, 0x01, 0xFD, 0xFF, 0x3F,  // .=.....?
                /* 1278 */  0xC2, 0x00, 0xAE, 0xCE, 0x74, 0x00, 0xA7, 0xFE,  // ....t...
                /* 1280 */  0xFF, 0x27, 0x07, 0x38, 0xA5, 0x8F, 0xB9, 0x80,  // .'.8....
                /* 1288 */  0xA6, 0xA3, 0x80, 0x8F, 0xB9, 0xB6, 0x3A, 0x58,  // ......:X
                /* 1290 */  0x8D, 0xF1, 0x31, 0x17, 0x07, 0xF1, 0x08, 0x70,  // ..1....p
                /* 1298 */  0x02, 0x8F, 0x0E, 0x00, 0x47, 0xFE, 0xFF, 0x47,  // ....G..G
                /* 12A0 */  0x07, 0x70, 0x07, 0x3F, 0x3A, 0x00, 0xD2, 0x0E,  // .p.?:...
                /* 12A8 */  0x53, 0xEC, 0xE8, 0x00, 0x9C, 0x4F, 0x53, 0x80,  // S....OS.
                /* 12B0 */  0x93, 0xFF, 0xFF, 0xD1, 0x01, 0x38, 0x16, 0x3F,  // .....8.?
                /* 12B8 */  0x4D, 0x01, 0xBA, 0x0E, 0x31, 0xB8, 0xD3, 0x14,  // M...1...
                /* 12C0 */  0xE0, 0xF7, 0xFF, 0x7F, 0x72, 0x00, 0x3C, 0x24,  // ....r.<$
                /* 12C8 */  0x3F, 0x39, 0x00, 0x6A, 0x04, 0x2E, 0x50, 0x27,  // ?9.j..P'
                /* 12D0 */  0x07, 0xCE, 0x61, 0xC1, 0x0F, 0x05, 0xE9, 0x9C,  // ..a.....
                /* 12D8 */  0xB4, 0x86, 0xFB, 0xE4, 0xC0, 0x50, 0x4E, 0x31,  // .....PN1
                /* 12E0 */  0xB6, 0x07, 0x17, 0xB9, 0x66, 0x70, 0x41, 0x13,  // ....fpA.
                /* 12E8 */  0x48, 0x1D, 0x1A, 0x7C, 0x66, 0xB0, 0x34, 0x0A,  // H..|f.4.
                /* 12F0 */  0x09, 0x39, 0x3B, 0xA0, 0xA2, 0x9F, 0x20, 0x28,  // .9;... (
                /* 12F8 */  0x88, 0x01, 0x9D, 0xEB, 0xEC, 0x80, 0x56, 0x01,  // ......V.
                /* 1300 */  0xA2, 0x6B, 0xC0, 0x31, 0x46, 0x38, 0xA7, 0x04,  // .k.1F8..
                /* 1308 */  0x83, 0x5C, 0x1D, 0xE8, 0xCC, 0x3C, 0x49, 0xAE,  // .\...<I.
                /* 1310 */  0xE1, 0x0E, 0x83, 0xC0, 0xAD, 0x6A, 0x8A, 0x20,  // .....j. 
                /* 1318 */  0x52, 0x73, 0x26, 0x40, 0x4D, 0xC0, 0x27, 0x07,  // Rs&@M.'.
                /* 1320 */  0xFF, 0xFF, 0x2F, 0x0E, 0x60, 0xD4, 0x77, 0x71,  // ../.`.wq
                /* 1328 */  0x00, 0x39, 0x3A, 0x3F, 0x80, 0x78, 0xD0, 0x5C,  // .9:?.x.\
                /* 1330 */  0xC2, 0xF9, 0x83, 0x82, 0x78, 0xD0, 0x8E, 0x07,  // ....x...
                /* 1338 */  0x21, 0x25, 0xE7, 0x0F, 0xA8, 0x71, 0xCE, 0x1F,  // !%...q..
                /* 1340 */  0x40, 0x73, 0x54, 0x16, 0x36, 0x6D, 0xD0, 0x18,  // @sT.6m..
                /* 1348 */  0x13, 0xA0, 0xED, 0xB8, 0xC0, 0x0E, 0x20, 0x40,  // ...... @
                /* 1350 */  0x3B, 0xFD, 0x01, 0x04, 0xB4, 0xFF, 0xFF, 0x03,  // ;.......
                /* 1358 */  0x08, 0x70, 0x94, 0xF2, 0x36, 0xD0, 0x99, 0x0C,  // .p..6...
                /* 1360 */  0x27, 0x62, 0x91, 0x3A, 0x80, 0xE0, 0xB4, 0xCE,  // 'b.:....
                /* 1368 */  0x57, 0x1A, 0x21, 0x04, 0xD3, 0x33, 0x24, 0x89,  // W.!..3$.
                /* 1370 */  0x7D, 0xFE, 0x40, 0x05, 0xA6, 0x50, 0xC0, 0xB3,  // }.@..P..
                /* 1378 */  0x03, 0x2A, 0xD2, 0xD9, 0x81, 0x82, 0x78, 0xD8,  // .*....x.
                /* 1380 */  0x3E, 0x7F, 0x00, 0xB6, 0x82, 0xDD, 0x9A, 0xA0,  // >.......
                /* 1388 */  0xDC, 0x5E, 0x7C, 0xDD, 0xB6, 0xF8, 0xC1, 0x01,  // .^|.....
                /* 1390 */  0xC5, 0xE9, 0x7B, 0x70, 0xD8, 0xFF, 0xFF, 0x59,  // ..{p...Y
                /* 1398 */  0x05, 0x38, 0x1E, 0xBD, 0xC0, 0x77, 0x68, 0x78,  // .8...whx
                /* 13A0 */  0xF4, 0x02, 0xC6, 0x63, 0xF2, 0xD1, 0x0B, 0x38,  // ...c...8
                /* 13A8 */  0x87, 0x3F, 0xAA, 0x80, 0xAE, 0xFD, 0x51, 0x05,  // .?....Q.
                /* 13B0 */  0xE8, 0xFC, 0xFF, 0x8F, 0x2A, 0xF0, 0xC5, 0x9E,  // ....*...
                /* 13B8 */  0x03, 0x40, 0x83, 0xF1, 0xBA, 0x15, 0xE1, 0xB4,  // .@......
                /* 13C0 */  0x42, 0x9D, 0xF9, 0x29, 0x45, 0x8C, 0x19, 0xE6,  // B..)E...
                /* 13C8 */  0x98, 0x63, 0x85, 0x09, 0x11, 0xF6, 0x4C, 0xC2,  // .c....L.
                /* 13D0 */  0x34, 0x8F, 0xAD, 0x91, 0x79, 0x7E, 0x3E, 0x26,  // 4...y~>&
                /* 13D8 */  0xE8, 0x14, 0x86, 0x3A, 0x15, 0x38, 0xDC, 0x29,  // ...:.8.)
                /* 13E0 */  0x0C, 0x71, 0x30, 0x65, 0xA7, 0x16, 0x7C, 0x9C,  // .q0e..|.
                /* 13E8 */  0x53, 0x0B, 0x85, 0x70, 0x10, 0x18, 0xC5, 0x80,  // S..p....
                /* 13F0 */  0xD0, 0x29, 0x82, 0x0B, 0x87, 0xA3, 0x20, 0x3E,  // .).... >
                /* 13F8 */  0x3B, 0xF8, 0x14, 0x01, 0xE7, 0xD4, 0x82, 0x39,  // ;......9
                /* 1400 */  0x98, 0x02, 0x66, 0x86, 0x07, 0xE7, 0xDE, 0x82,  // ..f.....
                /* 1408 */  0x1B, 0x1E, 0x70, 0xFA, 0xFF, 0x1F, 0xB7, 0xE0,  // ..p.....
                /* 1410 */  0x0D, 0x0F, 0xFC, 0x27, 0x14, 0x70, 0x0C, 0x0F,  // ...'.p..
                /* 1418 */  0xF8, 0x9C, 0x50, 0x80, 0xF7, 0xD9, 0x0C, 0x7C,  // ..P....|
                /* 1420 */  0xF1, 0xCF, 0x66, 0x80, 0x8A, 0xFF, 0xFF, 0x39,  // ..f....9
                /* 1428 */  0x00, 0xAF, 0xEE, 0x58, 0x82, 0x56, 0xFB, 0x0A,  // ...X.V..
                /* 1430 */  0xD0, 0x64, 0xAB, 0x3D, 0x24, 0xE8, 0x6C, 0xC6,  // .d.=$.l.
                /* 1438 */  0x4F, 0x29, 0x3E, 0x7F, 0xFB, 0x58, 0x72, 0x20,  // O)>..Xr 
                /* 1440 */  0xD6, 0x77, 0x36, 0x43, 0x29, 0xA3, 0x90, 0x8E,  // .w6C)...
                /* 1448 */  0xB3, 0x12, 0xEA, 0x94, 0x6A, 0x38, 0x83, 0x18,  // ....j8..
                /* 1450 */  0xD0, 0xB1, 0x06, 0x8E, 0x82, 0xF4, 0xB1, 0x8A,  // ........
                /* 1458 */  0x0D, 0xD1, 0x49, 0x8E, 0x66, 0x40, 0x51, 0xD7,  // ..I.f@Q.
                /* 1460 */  0xB5, 0x01, 0xFA, 0x20, 0x5E, 0x1B, 0x98, 0xB3,  // ... ^...
                /* 1468 */  0x21, 0xBE, 0x69, 0x02, 0xD1, 0x39, 0xE3, 0x6E,  // !.i..9.n
                /* 1470 */  0x1F, 0xF8, 0x9B, 0x26, 0xB0, 0xFC, 0xFF, 0xDF,  // ...&....
                /* 1478 */  0x34, 0xC1, 0x32, 0x6E, 0xEC, 0xF5, 0x03, 0x98,  // 4.2n....
                /* 1480 */  0x8B, 0x59, 0x9B, 0xAE, 0x1F, 0x80, 0x97, 0xC8,  // .Y......
                /* 1488 */  0x57, 0x78, 0xD4, 0x59, 0xC0, 0x12, 0xAE, 0x1F,  // Wx.Y....
                /* 1490 */  0x88, 0x4B, 0x16, 0xBF, 0x7E, 0x60, 0x43, 0xDF,  // .K..~`C.
                /* 1498 */  0xE1, 0x51, 0x71, 0x29, 0x14, 0xF6, 0xEC, 0x80,  // .Qq)....
                /* 14A0 */  0x8A, 0x07, 0x47, 0x41, 0x3C, 0x6C, 0x5F, 0x84,  // ..GA<l_.
                /* 14A8 */  0x7C, 0x76, 0xC0, 0x1D, 0x10, 0xD8, 0x10, 0xD9,  // |v......
                /* 14B0 */  0xD1, 0x01, 0xDE, 0x3D, 0x08, 0x2C, 0xFF, 0xFF,  // ...=.,..
                /* 14B8 */  0x3B, 0x16, 0xD8, 0x8E, 0x0E, 0xE0, 0x3B, 0x69,  // ;.....;i
                /* 14C0 */  0x80, 0xF7, 0x92, 0x05, 0x9C, 0x4E, 0x1A, 0x80,  // .....N..
                /* 14C8 */  0x27, 0x33, 0x27, 0x0D, 0x20, 0xFB, 0xFF, 0x3F,  // '3'. ..?
                /* 14D0 */  0x08, 0x80, 0x4D, 0xD2, 0x49, 0x03, 0x05, 0x4B,  // ..M.I..K
                /* 14D8 */  0xC6, 0xA6, 0x7B, 0x13, 0x4E, 0xE4, 0x3C, 0x74,  // ..{.N.<t
                /* 14E0 */  0xAC, 0xE0, 0xB2, 0x0E, 0x1A, 0xA8, 0x23, 0x8F,  // ......#.
                /* 14E8 */  0x6F, 0xAC, 0xE0, 0xBB, 0xAC, 0xE3, 0x6E, 0xAC,  // o.....n.
                /* 14F0 */  0xC0, 0xF3, 0x72, 0x08, 0xBE, 0x93, 0x03, 0xF0,  // ..r.....
                /* 14F8 */  0x56, 0x73, 0x72, 0x00, 0x22, 0xFF, 0xFF, 0x93,  // Vsr."...
                /* 1500 */  0x03, 0x30, 0x0A, 0x7F, 0x81, 0x43, 0x81, 0x5B,  // .0...C.[
                /* 1508 */  0x0C, 0x90, 0x4E, 0x0E, 0xEC, 0xDE, 0xE0, 0xFB,  // ..N.....
                /* 1510 */  0x0A, 0xE6, 0x26, 0x72, 0x72, 0x27, 0xE2, 0xB9,  // ..&rr'..
                /* 1518 */  0xBD, 0xB4, 0xE0, 0xEE, 0xEB, 0x30, 0x4E, 0x3C,  // .....0N<
                /* 1520 */  0x3E, 0x3E, 0xF0, 0x40, 0xC7, 0x07, 0x0A, 0xE2,  // >>.@....
                /* 1528 */  0xA1, 0xFB, 0x12, 0x07, 0xB8, 0xBA, 0xDA, 0xFB,  // ........
                /* 1530 */  0x84, 0x04, 0x03, 0xF0, 0x7C, 0xCF, 0x0D, 0x18,  // ....|...
                /* 1538 */  0x8E, 0xDE, 0x73, 0x83, 0xF5, 0xFF, 0x3F, 0xF0,  // ..s...?.
                /* 1540 */  0x01, 0x7B, 0x27, 0xA7, 0x15, 0xA8, 0x07, 0x3E,  // .{'....>
                /* 1548 */  0xE0, 0x39, 0x26, 0x9F, 0x9B, 0xE0, 0x9F, 0x56,  // .9&....V
                /* 1550 */  0xF8, 0xB9, 0x09, 0xF8, 0xBB, 0x39, 0xAE, 0x00,  // .....9..
                /* 1558 */  0xA1, 0xFF, 0xFF, 0x71, 0x05, 0x38, 0x1E, 0x55,  // ...q.8.U
                /* 1560 */  0x60, 0xDC, 0x00, 0x9E, 0x59, 0xB0, 0xC7, 0x15,  // `...Y...
                /* 1568 */  0x80, 0x79, 0xFF, 0xFF, 0xE3, 0x0A, 0xC0, 0xD2,  // .y......
                /* 1570 */  0xF3, 0x9F, 0x8F, 0x2B, 0xC0, 0xEA, 0xFF, 0x7F,  // ...+....
                /* 1578 */  0x79, 0x07, 0x86, 0x56, 0xA7, 0xA6, 0xC3, 0x86,  // y..V....
                /* 1580 */  0x35, 0x43, 0x8B, 0xC0, 0x97, 0x77, 0x80, 0x3D,  // 5C...w.=
                /* 1588 */  0xA0, 0xFC, 0xFA, 0x01, 0x3C, 0xFE, 0xFF, 0x77,  // ....<..w
                /* 1590 */  0x60, 0x60, 0x36, 0x86, 0xA3, 0xF0, 0x18, 0xDE,  // ``6.....
                /* 1598 */  0xB5, 0x5F, 0x3F, 0x80, 0xBB, 0x9D, 0xEB, 0x07,  // ._?.....
                /* 15A0 */  0xA0, 0x26, 0xFA, 0xF5, 0x03, 0x25, 0x0A, 0x42,  // .&...%.B
                /* 15A8 */  0x52, 0xAE, 0x9E, 0x20, 0x18, 0xF3, 0x5B, 0x80,  // R.. ..[.
                /* 15B0 */  0xEF, 0x5E, 0xC0, 0xE5, 0xFF, 0x7F, 0xF7, 0x02,  // .^......
                /* 15B8 */  0x9C, 0xDC, 0x9B, 0x70, 0x77, 0x2F, 0xC0, 0xC7,  // ...pw/..
                /* 15C0 */  0xA5, 0x09, 0x7B, 0x5A, 0x01, 0x0C, 0xFE, 0xFF,  // ..{Z....
                /* 15C8 */  0xEF, 0x5E, 0xC0, 0xE5, 0xB4, 0x02, 0x78, 0xD0,  // .^....x.
                /* 15D0 */  0x73, 0x5A, 0x01, 0xA4, 0x9D, 0x54, 0xB0, 0x17,  // sZ...T..
                /* 15D8 */  0x4F, 0xE0, 0xF9, 0xFF, 0x3F, 0xAD, 0x00, 0x1E,  // O...?...
                /* 15E0 */  0x4E, 0x1A, 0xB8, 0x8B, 0x27, 0x60, 0xE4, 0x98,  // N...'`..
                /* 15E8 */  0x81, 0xBB, 0x78, 0x02, 0x36, 0xFF, 0xFF, 0x17,  // ..x.6...
                /* 15F0 */  0x4F, 0xC0, 0xA3, 0x9F, 0xD3, 0x0A, 0xA0, 0x46,  // O......F
                /* 15F8 */  0xDB, 0x69, 0x05, 0x05, 0x6B, 0xAD, 0x17, 0x4F,  // .i..k..O
                /* 1600 */  0xF4, 0x75, 0x85, 0xDF, 0x3B, 0x81, 0xF3, 0xFF,  // .u..;...
                /* 1608 */  0xFF, 0xDE, 0x09, 0xD8, 0x3D, 0x00, 0xE1, 0xEE,  // ....=...
                /* 1610 */  0x9D, 0x00, 0x27, 0x0E, 0x01, 0xFF, 0xFF, 0xB7,  // ..'.....
                /* 1618 */  0x0F, 0xC0, 0xCC, 0x45, 0xCB, 0xB7, 0x0F, 0xDC,  // ...E....
                /* 1620 */  0x4B, 0xC1, 0xB7, 0x0F, 0x36, 0xDA, 0xB7, 0x0F,  // K...6...
                /* 1628 */  0x7C, 0xE8, 0x33, 0x03, 0x85, 0x70, 0x5C, 0x0A,  // |.3..p\.
                /* 1630 */  0x85, 0x3D, 0x3A, 0xA0, 0x6E, 0x5E, 0x06, 0x33,  // .=:.n^.3
                /* 1638 */  0x88, 0x47, 0xED, 0x70, 0xB7, 0x0F, 0xF4, 0xF9,  // .G.p....
                /* 1640 */  0x80, 0x8D, 0x90, 0x9D, 0x1C, 0xE0, 0x1D, 0x3F,  // .......?
                /* 1648 */  0xD8, 0xC9, 0x01, 0x98, 0x10, 0xF8, 0xE4, 0x00,  // ........
                /* 1650 */  0x86, 0x6B, 0x10, 0xF6, 0xA0, 0x01, 0xDE, 0xF1,  // .k......
                /* 1658 */  0xC1, 0xFE, 0xFF, 0x1F, 0x34, 0x00, 0xBB, 0x86,  // ....4...
                /* 1660 */  0x0E, 0x1A, 0x80, 0x9A, 0xB0, 0x07, 0x0D, 0xD4,  // ........
                /* 1668 */  0xA8, 0x1D, 0x7E, 0x6C, 0x3A, 0x68, 0xB0, 0x01,  // ..~l:h..
                /* 1670 */  0x47, 0xF0, 0x31, 0x03, 0x58, 0xFE, 0xFF, 0x8F,  // G.1.X...
                /* 1678 */  0x19, 0x00, 0x6B, 0x43, 0x53, 0xEA, 0x98, 0x01,  // ..kCS...
                /* 1680 */  0x2C, 0xFE, 0xFF, 0xC7, 0x0C, 0x60, 0x24, 0xE9,  // ,....`$.
                /* 1688 */  0x78, 0x84, 0x96, 0xF8, 0x0C, 0xD0, 0x2D, 0xA3,  // x.....-.
                /* 1690 */  0xC6, 0x51, 0xEB, 0xAE, 0xC7, 0x8E, 0xB9, 0x3E,  // .Q.....>
                /* 1698 */  0x56, 0x70, 0x59, 0x07, 0x0D, 0xD4, 0x99, 0xCA,  // VpY.....
                /* 16A0 */  0x72, 0x0E, 0x1A, 0x28, 0x2A, 0x83, 0x99, 0xC2,  // r..(*...
                /* 16A8 */  0x07, 0x35, 0x1F, 0x34, 0x6C, 0xE4, 0xD6, 0x09,  // .5.4l...
                /* 16B0 */  0x35, 0xCC, 0x41, 0x0D, 0x68, 0x0E, 0x8F, 0xDC,  // 5.A.h...
                /* 16B8 */  0x3A, 0x41, 0x23, 0xEE, 0xE4, 0x00, 0xD4, 0x15,  // :A#.....
                /* 16C0 */  0x9D, 0x77, 0x40, 0xF2, 0xFF, 0x3F, 0x39, 0x00,  // .w@..?9.
                /* 16C8 */  0x6B, 0x81, 0x37, 0x6E, 0xB4, 0xE0, 0x87, 0x82,  // k.7n....
                /* 16D0 */  0x4E, 0x0E, 0x38, 0x94, 0xD3, 0x09, 0xFB, 0xCA,  // N.8.....
                /* 16D8 */  0x6D, 0xE8, 0xF0, 0x41, 0x0C, 0x14, 0xE2, 0x2D,  // m..A...-
                /* 16E0 */  0xE0, 0x20, 0x12, 0x14, 0x77, 0xF1, 0x44, 0xC9,  // . ..w.D.
                /* 16E8 */  0xA2, 0x90, 0x8C, 0xD3, 0x03, 0x2A, 0xF8, 0x19,  // .....*..
                /* 16F0 */  0x82, 0x82, 0x18, 0xD0, 0xA9, 0x4E, 0x0F, 0xE8,  // .....N..
                /* 16F8 */  0x13, 0x27, 0x1B, 0xA5, 0x83, 0x5C, 0x3C, 0x81,  // .'...\<.
                /* 1700 */  0xE2, 0xCD, 0x01, 0x5C, 0x07, 0x4F, 0x60, 0x71,  // ...\.O`q
                /* 1708 */  0x00, 0x01, 0xDF, 0x80, 0xFE, 0xFF, 0x47, 0x79,  // ......Gy
                /* 1710 */  0x88, 0xFC, 0x00, 0x02, 0x3C, 0x47, 0xE5, 0x03,  // ....<G..
                /* 1718 */  0x08, 0xE0, 0xC8, 0xD1, 0x01, 0x04, 0x50, 0x13,  // ......P.
                /* 1720 */  0xFA, 0x24, 0x84, 0x3A, 0x80, 0x58, 0xC4, 0x01,  // .$.:.X..
                /* 1728 */  0x04, 0x71, 0xEE, 0x64, 0x07, 0x10, 0xB8, 0x81,  // .q.d....
                /* 1730 */  0x4F, 0x43, 0xA8, 0xA8, 0x06, 0xFE, 0xFF, 0x10,  // OC......
                /* 1738 */  0x83, 0x9E, 0x1E, 0x50, 0xD1, 0xE0, 0x28, 0x88,  // ...P..(.
                /* 1740 */  0x47, 0xEE, 0x68, 0xA7, 0x07, 0xF4, 0x71, 0x8C,  // G.h...q.
                /* 1748 */  0x8D, 0x92, 0x1D, 0x1E, 0xE0, 0x9D, 0xE2, 0x80,  // ........
                /* 1750 */  0xD3, 0xE1, 0x01, 0x5C, 0x47, 0x0D, 0xF0, 0x1E,  // ...\G...
                /* 1758 */  0xE2, 0x80, 0xD3, 0x51, 0x03, 0x30, 0xF4, 0xFF,  // ...Q.0..
                /* 1760 */  0x3F, 0x9C, 0xE9, 0xA8, 0x01, 0xA8, 0x91, 0x77,  // ?......w
                /* 1768 */  0x74, 0x42, 0x49, 0x82, 0x90, 0xDC, 0xA3, 0x13,  // tBI.....
                /* 1770 */  0x1A, 0xE4, 0x05, 0x20, 0xF8, 0x09, 0x79, 0x64,  // ... ..yd
                /* 1778 */  0x9E, 0xF3, 0xC1, 0x79, 0x04, 0x4F, 0x4E, 0x00,  // ...y.ON.
                /* 1780 */  0x57, 0xFE, 0xFF, 0x27, 0x41, 0xC0, 0xCA, 0xF9,  // W..'A...
                /* 1788 */  0x03, 0xF0, 0x64, 0xE9, 0xFC, 0x01, 0xA8, 0x11,  // ..d.....
                /* 1790 */  0x76, 0x72, 0x42, 0x9D, 0x3F, 0x2C, 0xF4, 0x48,  // vrB.?,.H
                /* 1798 */  0x8A, 0x38, 0x39, 0xB1, 0x93, 0x70, 0xDC, 0xE0,  // .89..p..
                /* 17A0 */  0xFF, 0xFF, 0xB7, 0x26, 0x1F, 0x14, 0x7C, 0xFE,  // ...&..|.
                /* 17A8 */  0xC0, 0x9C, 0x4A, 0x81, 0xE3, 0xC9, 0x09, 0xF8,  // ..J.....
                /* 17B0 */  0x1F, 0x1E, 0x80, 0xB7, 0xA6, 0xC3, 0x03, 0x20,  // ....... 
                /* 17B8 */  0xE4, 0xFF, 0x7F, 0x0E, 0xC0, 0x48, 0x3C, 0x95,  // .....H<.
                /* 17C0 */  0xA2, 0x25, 0x9F, 0x4A, 0x21, 0xCD, 0x38, 0x46,  // .%.J!.8F
                /* 17C8 */  0xFC, 0xF7, 0xED, 0x48, 0x3E, 0x3D, 0x60, 0xE4,  // ...H>=`.
                /* 17D0 */  0x1D, 0x86, 0x50, 0xC7, 0x09, 0x1F, 0x86, 0x00,  // ..P.....
                /* 17D8 */  0x2E, 0x9C, 0x40, 0x3C, 0x66, 0x2E, 0xE1, 0x00,  // ..@<f...
                /* 17E0 */  0x42, 0x41, 0x3C, 0x66, 0x9F, 0xF7, 0x3D, 0x66,  // BA<f..=f
                /* 17E8 */  0xDC, 0x4C, 0x7C, 0x3F, 0xF0, 0x2D, 0xC0, 0x47,  // .L|?.-.G
                /* 17F0 */  0x41, 0xF8, 0xA7, 0x21, 0x60, 0xF1, 0xFF, 0x3F,  // A..!`..?
                /* 17F8 */  0x0D, 0x01, 0xC6, 0x3C, 0x9D, 0x40, 0x00, 0x35,  // ...<.@.5
                /* 1800 */  0xB1, 0x8F, 0xA5, 0x68, 0x19, 0xC7, 0x52, 0x48,  // ...h..RH
                /* 1808 */  0x27, 0x10, 0x58, 0x91, 0x8F, 0x43, 0xA8, 0xB0,  // '.X..C..
                /* 1810 */  0x14, 0x3A, 0x97, 0xFA, 0xF8, 0xC0, 0xC3, 0xC1,  // .:......
                /* 1818 */  0x51, 0x10, 0x1F, 0x4B, 0x81, 0xCD, 0xFF, 0xFF,  // Q..K....
                /* 1820 */  0x34, 0x04, 0x4C, 0xCF, 0x1A, 0xE0, 0x3E, 0x97,  // 4.L...>.
                /* 1828 */  0x02, 0xDE, 0x45, 0x9D, 0x35, 0x80, 0xE0, 0xFF,  // ..E.5...
                /* 1830 */  0xFF, 0xAC, 0x01, 0xE6, 0xE0, 0x87, 0x27, 0xB4,  // ......'.
                /* 1838 */  0x10, 0x20, 0x1D, 0x9E, 0xE0, 0x5C, 0x14, 0xD8,  // . ...\..
                /* 1840 */  0xD0, 0xC3, 0x1F, 0xA9, 0x2F, 0x37, 0x3E, 0x60,  // ..../7>`
                /* 1848 */  0xB3, 0xC3, 0x13, 0x8F, 0x7B, 0x78, 0x02, 0xE8,  // ....{x..
                /* 1850 */  0x10, 0x73, 0xCC, 0xA8, 0x60, 0xC7, 0x15, 0x0A,  // .s..`...
                /* 1858 */  0xE2, 0xE3, 0x0A, 0xBC, 0x11, 0xD6, 0x8C, 0xA0,  // ........
                /* 1860 */  0xA3, 0x13, 0x78, 0xFF, 0xFF, 0xE7, 0x0F, 0x60,  // ..x....`
                /* 1868 */  0x38, 0x3A, 0x58, 0x67, 0x72, 0xD8, 0xA3, 0x03,  // 8:Xgr...
                /* 1870 */  0x3E, 0x47, 0x66, 0x72, 0x58, 0x01, 0x14, 0x99,  // >GfrX...
                /* 1878 */  0x3A, 0xAC, 0x00, 0xE1, 0xFF, 0xFF, 0x39, 0x00,  // :.....9.
                /* 1880 */  0x4C, 0x69, 0x9E, 0x06, 0x3A, 0xAC, 0xE0, 0xD2,  // Li..:...
                /* 1888 */  0x1D, 0x56, 0x10, 0xE7, 0x2C, 0xEC, 0x61, 0x05,  // .V..,.a.
                /* 1890 */  0x4E, 0x12, 0x58, 0x1D, 0x56, 0x78, 0x06, 0x18,  // N.X.Vx..
                /* 1898 */  0x29, 0x26, 0xD1, 0x49, 0x83, 0x6B, 0x3C, 0xB3,  // )&.I.k<.
                /* 18A0 */  0x50, 0x10, 0x9F, 0x19, 0x7C, 0x58, 0x01, 0x4C,  // P...|X.L
                /* 18A8 */  0xC5, 0xBA, 0x93, 0x40, 0x1D, 0x1B, 0xF0, 0xBB,  // ...@....
                /* 18B0 */  0x91, 0x80, 0xEF, 0x16, 0x00, 0x67, 0x22, 0xFE,  // .....g".
                /* 18B8 */  0xFF, 0x4F, 0x0D, 0x18, 0x9E, 0x47, 0xC0, 0x77,  // .O...G.w
                /* 18C0 */  0x1B, 0x05, 0x96, 0xA0, 0xFC, 0x76, 0x0D, 0x27,  // .....v.'
                /* 18C8 */  0xCE, 0xAD, 0x06, 0x68, 0x42, 0x59, 0xD8, 0xB4,  // ...hBY..
                /* 18D0 */  0xA1, 0x8F, 0xE2, 0x18, 0x8E, 0xC2, 0x63, 0x78,  // ......cx
                /* 18D8 */  0x78, 0x4C, 0xE0, 0x6B, 0x0D, 0xF0, 0xF9, 0xFF,  // xL.k....
                /* 18E0 */  0x5F, 0x6B, 0xC0, 0xA3, 0xEA, 0x5A, 0x03, 0xA8,  // _k...Z..
                /* 18E8 */  0x09, 0x7B, 0x1B, 0x45, 0xC1, 0x3A, 0xFC, 0x55,  // .{.E.:.U
                /* 18F0 */  0x1F, 0x71, 0xAA, 0x61, 0x3E, 0x21, 0xC8, 0xB1,  // .q.a>!..
                /* 18F8 */  0x84, 0x05, 0xBE, 0x89, 0xA2, 0x2E, 0xA2, 0x0E,  // ........
                /* 1900 */  0x7A, 0x74, 0x40, 0x45, 0x83, 0xA3, 0x20, 0xBE,  // zt@E.. .
                /* 1908 */  0x89, 0x02, 0xDE, 0xC2, 0x8D, 0x0E, 0x7D, 0x0E,  // ......}.
                /* 1910 */  0xF0, 0x70, 0x9F, 0x0C, 0x0E, 0xF9, 0x01, 0x82,  // .p......
                /* 1918 */  0x0D, 0x0F, 0xFF, 0xFF, 0xBF, 0x88, 0x02, 0xFE,  // ........
                /* 1920 */  0x5D, 0x1D, 0x33, 0x00, 0x35, 0x41, 0x2E, 0xA2,  // ].3.5A..
                /* 1928 */  0xA8, 0xA3, 0x80, 0x83, 0x1D, 0x35, 0x04, 0x1C,  // .....5..
                /* 1930 */  0xE1, 0x68, 0x5F, 0x44, 0xD9, 0xB8, 0x4F, 0x27,  // .h_D..O'
                /* 1938 */  0x74, 0x88, 0x8A, 0xC7, 0x46, 0x08, 0x46, 0xB9,  // t...F.F.
                /* 1940 */  0x82, 0x51, 0x08, 0x87, 0x80, 0x51, 0x84, 0x9B,  // .Q...Q..
                /* 1948 */  0x18, 0x4A, 0x34, 0x1C, 0x05, 0xF1, 0x81, 0xC1,  // .J4.....
                /* 1950 */  0xE7, 0x0C, 0xFE, 0xFF, 0x3F, 0x67, 0xE0, 0x86,  // ....?g..
                /* 1958 */  0x74, 0x0E, 0xA7, 0xE8, 0x5B, 0x21, 0xF0, 0x3C,  // t...[!.<
                /* 1960 */  0x67, 0x80, 0x6F, 0x74, 0x70, 0x8E, 0xE0, 0x1E,  // g.otp...
                /* 1968 */  0xF0, 0xFB, 0x26, 0x60, 0xE6, 0x50, 0x02, 0xE7,  // ..&`.P..
                /* 1970 */  0xB6, 0xCD, 0x2F, 0x9C, 0x80, 0x83, 0xFF, 0xFF,  // ../.....
                /* 1978 */  0xA1, 0x04, 0xF0, 0x21, 0xEB, 0x50, 0x02, 0xA8,  // ...!.P..
                /* 1980 */  0xD1, 0x7A, 0x28, 0x41, 0x6B, 0x3F, 0x94, 0xA0,  // .z(Ak?..
                /* 1988 */  0xA7, 0xFB, 0x00, 0x62, 0xA0, 0x03, 0x0A, 0x13,  // ...b....
                /* 1990 */  0xE2, 0x89, 0x4A, 0x37, 0x6D, 0x94, 0x4E, 0x0A,  // ..J7m.N.
                /* 1998 */  0x29, 0x39, 0x4B, 0xA1, 0xB2, 0x9F, 0x21, 0x28,  // )9K...!(
                /* 19A0 */  0x88, 0x01, 0x1D, 0xEC, 0xE8, 0x00, 0x65, 0xB8,  // ......e.
                /* 19A8 */  0xA7, 0x73, 0x10, 0xA7, 0x51, 0xFC, 0xCD, 0x10,  // .s..Q...
                /* 19B0 */  0xA8, 0xFD, 0xFF, 0xCF, 0xDA, 0xC0, 0x5E, 0xDC,  // ......^.
                /* 19B8 */  0xA4, 0x51, 0x72, 0xEE, 0x63, 0x14, 0xC4, 0x93,  // .Qr.c...
                /* 19C0 */  0x76, 0x54, 0x08, 0xD9, 0x98, 0x34, 0x7A, 0xCE,  // vT...4z.
                /* 19C8 */  0xCF, 0x01, 0xFC, 0xCE, 0xC2, 0x2E, 0x2B, 0xC0,  // ......+.
                /* 19D0 */  0x53, 0xE4, 0xB4, 0xA1, 0xCF, 0xE0, 0x89, 0xA6,  // S.......
                /* 19D8 */  0xEA, 0x71, 0x68, 0x1A, 0x47, 0x51, 0xDD, 0x9D,  // .qh.GQ..
                /* 19E0 */  0x41, 0x23, 0x3D, 0xD9, 0xC6, 0xE6, 0x2B, 0x85,  // A#=...+.
                /* 19E8 */  0x63, 0xD2, 0x71, 0xCE, 0xD6, 0x70, 0xA4, 0xED,  // c.q..p..
                /* 19F0 */  0x16, 0x02, 0xD4, 0xB5, 0xDD, 0x42, 0x20, 0xFE,  // .....B .
                /* 19F8 */  0xFF, 0xEF, 0x87, 0x80, 0x95, 0x71, 0x05, 0x8C,  // .....q..
                /* 1A00 */  0x79, 0xC6, 0x0F, 0x13, 0x9E, 0xE3, 0x21, 0x7A,  // y.....!z
                /* 1A08 */  0x1A, 0xBE, 0x1F, 0x02, 0x83, 0xF1, 0x3C, 0x7C,  // ......<|
                /* 1A10 */  0xB0, 0xFB, 0x21, 0xE0, 0xEA, 0x5E, 0x70, 0xC0,  // ..!..^p.
                /* 1A18 */  0x98, 0xE1, 0x01, 0xA3, 0xFF, 0xFF, 0xFD, 0x10,  // ........
                /* 1A20 */  0xB0, 0x27, 0xF0, 0x98, 0x01, 0xA8, 0x09, 0x7C,  // .'.....|
                /* 1A28 */  0xCC, 0x40, 0x71, 0x10, 0x20, 0x1D, 0x33, 0x18,  // .@q. .3.
                /* 1A30 */  0x76, 0xD0, 0xB7, 0xBB, 0xC3, 0xF0, 0x69, 0xDA,  // v.....i.
                /* 1A38 */  0xE3, 0x3C, 0x12, 0xCC, 0x41, 0x03, 0x18, 0xFF,  // .<..A...
                /* 1A40 */  0xFF, 0x0F, 0x1A, 0x80, 0x81, 0xEB, 0x38, 0xEE,  // ......8.
                /* 1A48 */  0xA0, 0x01, 0xF0, 0xC1, 0xE0, 0x41, 0x03, 0x08,  // .....A..
                /* 1A50 */  0xFE, 0xFF, 0x0F, 0x1A, 0x60, 0x56, 0x77, 0xE7,  // ....`Vw.
                /* 1A58 */  0x43, 0x71, 0xF8, 0xAE, 0xE7, 0x83, 0x06, 0x9C,  // Cq......
                /* 1A60 */  0x11, 0x1F, 0x11, 0x46, 0xDD, 0xA5, 0x0F, 0xA5,  // ...F....
                /* 1A68 */  0x8B, 0x42, 0x3A, 0x0E, 0x1A, 0xA8, 0xE4, 0xC7,  // .B:.....
                /* 1A70 */  0x02, 0x0A, 0x62, 0x40, 0xC7, 0x3A, 0x68, 0x40,  // ..b@.:h@
                /* 1A78 */  0xBD, 0xF3, 0x01, 0x56, 0xAF, 0x7B, 0x9E, 0x33,  // ...V.{.3
                /* 1A80 */  0xDF, 0xB2, 0xE7, 0x6C, 0x0A, 0xCF, 0xD9, 0xD7,  // ...l....
                /* 1A88 */  0x0F, 0xF0, 0xDE, 0xF9, 0xE0, 0xFF, 0xFF, 0xAF,  // ........
                /* 1A90 */  0x1F, 0x80, 0x57, 0x85, 0xD7, 0x0F, 0x40, 0x8D,  // ..W...@.
                /* 1A98 */  0xB4, 0xEB, 0x07, 0x0A, 0xD6, 0x52, 0x1F, 0x0A,  // .....R..
                /* 1AA0 */  0x1A, 0x70, 0xE4, 0x37, 0x58, 0x7E, 0xFC, 0x30,  // .p.7X~.0
                /* 1AA8 */  0xC4, 0x1B, 0xC0, 0x01, 0x24, 0x28, 0xEF, 0xF2,  // ....$(..
                /* 1AB0 */  0x81, 0x12, 0x46, 0x21, 0x21, 0x27, 0x07, 0x54,  // ..F!!'.T
                /* 1AB8 */  0xF4, 0x43, 0x01, 0x05, 0x31, 0xA0, 0x73, 0x9D,  // .C..1.s.
                /* 1AC0 */  0x1C, 0xD0, 0x2A, 0x2E, 0x1F, 0x64, 0x38, 0x47,  // ..*..d8G
                /* 1AC8 */  0xF4, 0xC2, 0xE0, 0xD3, 0x07, 0xAC, 0xFF, 0xFF,  // ........
                /* 1AD0 */  0xE9, 0x03, 0xE0, 0xFF, 0xFF, 0xFF, 0xF4, 0x81,  // ........
                /* 1AD8 */  0xB3, 0x78, 0xFA, 0x00, 0xD4, 0xC4, 0xBD, 0xB9,  // .x......
                /* 1AE0 */  0xA2, 0xE3, 0x8F, 0x4D, 0xA7, 0x0F, 0x4F, 0xF6,  // ...M..O.
                /* 1AE8 */  0xE9, 0x03, 0x46, 0xE4, 0x1B, 0x20, 0x2A, 0x2C,  // ..F.. *,
                /* 1AF0 */  0x85, 0xAE, 0x80, 0x3E, 0x39, 0xF0, 0x70, 0x70,  // ...>9.pp
                /* 1AF8 */  0x14, 0xC4, 0xA3, 0xF6, 0xC9, 0x01, 0xCE, 0xE9,  // ........
                /* 1B00 */  0x03, 0x73, 0x05, 0x04, 0x0C, 0xFF, 0xFF, 0xCF,  // .s......
                /* 1B08 */  0x19, 0x80, 0x67, 0x8D, 0xE7, 0x0C, 0x40, 0x8D,  // ..g...@.
                /* 1B10 */  0xA0, 0x73, 0x06, 0x4A, 0xCA, 0x2D, 0x97, 0x1E,  // .s.J.-..
                /* 1B18 */  0x9A, 0x30, 0xE7, 0xF9, 0xE3, 0x38, 0x42, 0x26,  // .0...8B&
                /* 1B20 */  0xEB, 0x98, 0x81, 0x12, 0x44, 0xA1, 0xF3, 0x0E,  // ....D...
                /* 1B28 */  0x70, 0xF8, 0xFF, 0x9F, 0x77, 0x80, 0xDF, 0x31,  // p...w..1
                /* 1B30 */  0x03, 0x7C, 0x07, 0x07, 0xE0, 0xED, 0xF1, 0xE0,  // .|......
                /* 1B38 */  0x00, 0xA8, 0x91, 0x77, 0x78, 0x43, 0x1D, 0x05,  // ...wxC..
                /* 1B40 */  0x2C, 0xF7, 0xF0, 0x86, 0x44, 0x79, 0xB7, 0x61,  // ,...Dy.a
                /* 1B48 */  0x73, 0x0B, 0x5C, 0x33, 0x8C, 0x4E, 0x00, 0x3A,  // s.\3.N.:
                /* 1B50 */  0xBD, 0xA1, 0xA4, 0x9D, 0xDE, 0xA0, 0xFF, 0xFF,  // ........
                /* 1B58 */  0x4F, 0x6F, 0x80, 0xF3, 0xF3, 0x87, 0x07, 0xCD,  // Oo......
                /* 1B60 */  0x25, 0x1C, 0x3F, 0x28, 0x88, 0x07, 0xED, 0x78,  // %.?(...x
                /* 1B68 */  0xA0, 0xA8, 0xE3, 0x07, 0x9C, 0x38, 0xA7, 0x37,  // .....8.7
                /* 1B70 */  0xA0, 0x2A, 0x6C, 0xDA, 0xD0, 0x47, 0x71, 0x0C,  // .*l..Gq.
                /* 1B78 */  0x47, 0xE1, 0x31, 0xBC, 0x0B, 0x27, 0xF0, 0xF9,  // G.1..'..
                /* 1B80 */  0x03, 0x9C, 0xFF, 0xFF, 0xF3, 0x07, 0x70, 0x10,  // ......p.
                /* 1B88 */  0x79, 0xFE, 0x00, 0xD4, 0xC8, 0x3A, 0x07, 0xA1,  // y....:..
                /* 1B90 */  0x38, 0x2C, 0xF3, 0x1C, 0x84, 0x3C, 0x7F, 0xF0,  // 8,...<..
                /* 1B98 */  0x89, 0x3F, 0x20, 0x78, 0x66, 0x86, 0x26, 0x47,  // .? xf.&G
                /* 1BA0 */  0x21, 0x40, 0xF5, 0xFF, 0xFF, 0xEC, 0x00, 0x7C,  // !@.....|
                /* 1BA8 */  0x4D, 0x9E, 0x1D, 0x00, 0x35, 0x61, 0x8F, 0x64,  // M...5a.d
                /* 1BB0 */  0xE8, 0xF0, 0x27, 0x49, 0xE4, 0x18, 0xCF, 0xD0,  // ..'I....
                /* 1BB8 */  0xC3, 0xF0, 0x41, 0x12, 0x70, 0xF9, 0xFF, 0x3F,  // ..A.p..?
                /* 1BC0 */  0x48, 0x02, 0x3C, 0x52, 0x79, 0xCC, 0x00, 0xD4,  // H.<Ry...
                /* 1BC8 */  0x08, 0x3B, 0xC0, 0xA1, 0x8E, 0x19, 0x16, 0x7A,  // .;.....z
                /* 1BD0 */  0x80, 0x43, 0xFD, 0xFF, 0x8F, 0x19, 0xB8, 0xB3,  // .C......
                /* 1BD8 */  0x3C, 0xC0, 0xF9, 0xFF, 0xFF, 0xE1, 0x03, 0x78,  // <......x
                /* 1BE0 */  0xBB, 0x3C, 0x7C, 0x00, 0x6A, 0xE4, 0x1C, 0x99,  // .<|.j...
                /* 1BE8 */  0x50, 0xA3, 0xB6, 0xBC, 0x23, 0x13, 0xF5, 0x79,  // P...#..y
                /* 1BF0 */  0x10, 0x15, 0x42, 0x8C, 0xA0, 0x3E, 0xB9, 0x81,  // ..B..>..
                /* 1BF8 */  0xFF, 0xC4, 0x04, 0x78, 0xF8, 0xFF, 0x9F, 0x1B,  // ...x....
                /* 1C00 */  0x00, 0x27, 0x27, 0x43, 0x9F, 0xCD, 0x01, 0x57,  // .''C...W
                /* 1C08 */  0x97, 0x86, 0x13, 0xAE, 0x70, 0xB8, 0x82, 0x3C,  // ....p..<
                /* 1C10 */  0x9B, 0x8A, 0x47, 0x46, 0x4E, 0x90, 0xC0, 0xF2,  // ..GFN...
                /* 1C18 */  0xE0, 0x00, 0x1C, 0xFE, 0xFF, 0x07, 0x07, 0xC0,  // ........
                /* 1C20 */  0x99, 0xCF, 0x83, 0x03, 0xA0, 0x46, 0xD2, 0xC1,  // .....F..
                /* 1C28 */  0x01, 0x05, 0x4B, 0x0E, 0x0E, 0x88, 0xBB, 0x18,  // ..K.....
                /* 1C30 */  0x13, 0x39, 0x0F, 0xCD, 0x90, 0x1D, 0x65, 0x01,  // .9....e.
                /* 1C38 */  0x0B, 0xFF, 0xFF, 0x93, 0x03, 0xE0, 0x55, 0xE8,  // ......U.
                /* 1C40 */  0xC9, 0x01, 0x50, 0x13, 0xEF, 0x69, 0xE0, 0x33,  // ..P..i.3
                /* 1C48 */  0xBC, 0x47, 0xA6, 0x40, 0x30, 0xA8, 0x83, 0x9E,  // .G.@0...
                /* 1C50 */  0x0F, 0x08, 0xF8, 0x81, 0x1E, 0xE7, 0xE1, 0x1D,  // ........
                /* 1C58 */  0x09, 0x93, 0x04, 0x87, 0x3A, 0x03, 0x78, 0x24,  // ....:.x$
                /* 1C60 */  0xCD, 0x9F, 0x66, 0xC8, 0x84, 0x3D, 0x95, 0x90,  // ..f..=..
                /* 1C68 */  0x4C, 0xDA, 0x90, 0x50, 0x67, 0x45, 0x32, 0x21,  // L..PgE2!
                /* 1C70 */  0x4D, 0xE7, 0xD5, 0x21, 0xE2, 0x93, 0xA2, 0x61,  // M..!...a
                /* 1C78 */  0x12, 0x78, 0xF4, 0x0C, 0x8D, 0xFD, 0xFF, 0xD1,  // .x......
                /* 1C80 */  0x12, 0x0C, 0x30, 0x3E, 0xD0, 0x9C, 0x0E, 0x8E,  // ..0>....
                /* 1C88 */  0xFF, 0x5C, 0xA2, 0x45, 0x38, 0xE7, 0x78, 0xA1,  // .\.E8.x.
                /* 1C90 */  0x0C, 0x17, 0xE8, 0x59, 0xC1, 0x27, 0x7A, 0x86,  // ...Y.'z.
                /* 1C98 */  0x15, 0xFC, 0x20, 0x5E, 0x03, 0x18, 0x4C, 0xA0,  // .. ^..L.
                /* 1CA0 */  0x28, 0x1E, 0x8D, 0x21, 0x5F, 0x05, 0x18, 0x54,  // (..!_..T
                /* 1CA8 */  0xAB, 0xB7, 0x05, 0x81, 0x1B, 0xD6, 0x40, 0xC1,  // ......@.
                /* 1CB0 */  0x0C, 0x71, 0x74, 0xD8, 0x61, 0x1A, 0xD2, 0x03,  // .qt.a...
                /* 1CB8 */  0x79, 0xCE, 0xF0, 0x3D, 0xC0, 0x04, 0x27, 0xFC,  // y..=..'.
                /* 1CC0 */  0xCC, 0x50, 0xEE, 0x9D, 0x5F, 0xE2, 0x51, 0x85,  // .P.._.Q.
                /* 1CC8 */  0xD1, 0x1C, 0x14, 0x81, 0x0B, 0x8D, 0x39, 0x14,  // ......9.
                /* 1CD0 */  0x78, 0x12, 0x6F, 0x13, 0x3E, 0x1C, 0x30, 0xF7,  // x.o.>.0.
                /* 1CD8 */  0x13, 0xD4, 0x05, 0xE2, 0x19, 0x22, 0xC6, 0x5B,  // .....".[
                /* 1CE0 */  0x91, 0x11, 0x6A, 0x14, 0x60, 0x0B, 0x9D, 0x20,  // ..j.`.. 
                /* 1CE8 */  0x18, 0x25, 0x08, 0x43, 0xE1, 0x98, 0x51, 0x3C,  // .%.C..Q<
                /* 1CF0 */  0xCD, 0xB3, 0x08, 0x52, 0x9B, 0x00, 0x65, 0x20,  // ...R..e 
                /* 1CF8 */  0x32, 0x86, 0x88, 0x40, 0x68, 0x7F, 0x10, 0x44,  // 2..@h..D
                /* 1D00 */  0xC2, 0x63, 0x42, 0xE7, 0x02, 0x47, 0x1A, 0x0D,  // .cB..G..
                /* 1D08 */  0xEA, 0x88, 0xE1, 0xB3, 0x81, 0xCF, 0x05, 0xE7,  // ........
                /* 1D10 */  0x78, 0xD0, 0x87, 0x68, 0x90, 0xA3, 0x3B, 0xB8,  // x..h..;.
                /* 1D18 */  0x3A, 0x0F, 0x05, 0x64, 0x78, 0xEC, 0x38, 0xE2,  // :..dx.8.
                /* 1D20 */  0xB3, 0x85, 0x4F, 0x09, 0x78, 0xD7, 0x80, 0xBA,  // ..O.x...
                /* 1D28 */  0x1E, 0x3C, 0x4E, 0x80, 0x65, 0x44, 0xCF, 0x22,  // .<N.eD."
                /* 1D30 */  0xB0, 0xC7, 0xE3, 0xA3, 0x81, 0x4F, 0x01, 0x26,  // .....O.&
                /* 1D38 */  0xB0, 0xFC, 0x41, 0xA0, 0x46, 0x66, 0x68, 0x8F,  // ..A.Ffh.
                /* 1D40 */  0xF4, 0xB4, 0xDE, 0x10, 0x7C, 0x2E, 0x30, 0x81,  // ....|.0.
                /* 1D48 */  0xC5, 0x9E, 0x50, 0xE9, 0x78, 0xFC, 0xFF, 0x1F,  // ..P.x...
                /* 1D50 */  0x0F, 0xB8, 0xCF, 0x5A, 0x8F, 0x06, 0x11, 0xDE,  // ...Z....
                /* 1D58 */  0x0C, 0x3C, 0x5F, 0x9F, 0x6D, 0x98, 0x93, 0x93,  // .<_.m...
                /* 1D60 */  0x0D, 0xFA, 0xB2, 0x80, 0x21, 0x18, 0xF8, 0x84,  // ....!...
                /* 1D68 */  0x42, 0x45, 0x9D, 0x50, 0x50, 0x27, 0x0B, 0x1F,  // BE.PP'..
                /* 1D70 */  0x2A, 0xD8, 0xDD, 0xE0, 0xA1, 0x81, 0x1D, 0x50,  // *......P
                /* 1D78 */  0xD8, 0xA9, 0x87, 0x9C, 0x4A, 0x40, 0x7F, 0x9E,  // ....J@..
                /* 1D80 */  0xC1, 0x1D, 0x33, 0xE0, 0xDE, 0x2A, 0x70, 0x33,  // ..3..*p3
                /* 1D88 */  0xE2, 0xC7, 0x5F, 0x72, 0xD4, 0x01, 0x8D, 0xB3,  // .._r....
                /* 1D90 */  0xE3, 0x83, 0x8E, 0x01, 0xFC, 0xAC, 0x03, 0xFF,  // ........
                /* 1D98 */  0xC6, 0x14, 0x23, 0xCC, 0x93, 0x44, 0xAC, 0x18,  // ..#..D..
                /* 1DA0 */  0x87, 0x73, 0x2E, 0x27, 0xF1, 0xDE, 0x54, 0x25,  // .s.'..T%
                /* 1DA8 */  0x8C, 0x20, 0xBB, 0xBC, 0xF1, 0x90, 0x43, 0x92,  // . ....C.
                /* 1DB0 */  0x87, 0x74, 0x1E, 0x8F, 0x20, 0x9C, 0xC0, 0x43,  // .t.. ..C
                /* 1DB8 */  0xC4, 0x0F, 0x83, 0x9F, 0x25, 0x1E, 0x7E, 0xD8,  // ....%.~.
                /* 1DC0 */  0x24, 0xDE, 0x7F, 0x3C, 0x81, 0xA3, 0xF2, 0x29,  // $..<...)
                /* 1DC8 */  0xC5, 0x08, 0xC1, 0x1F, 0x3E, 0xCE, 0xF9, 0x2D,  // ....>..-
                /* 1DD0 */  0xC0, 0x04, 0xBE, 0x1E, 0xF9, 0x84, 0x8B, 0x18,  // ........
                /* 1DD8 */  0x00, 0x0A, 0xFC, 0x84, 0xFE, 0xFF, 0xA7, 0xE8,  // ........
                /* 1DE0 */  0xB3, 0xD0, 0x89, 0xE1, 0x0E, 0x05, 0x7C, 0x44,  // ......|D
                /* 1DE8 */  0xD8, 0x01, 0xF0, 0xF3, 0x0D, 0xC0, 0xBC, 0xD3,  // ........
                /* 1DF0 */  0xC3, 0xF3, 0x0D, 0x70, 0xFA, 0xFF, 0x9F, 0x6F,  // ...p...o
                /* 1DF8 */  0x00, 0xFE, 0xFF, 0xFF, 0xCF, 0x37, 0x60, 0x9D,  // .....7`.
                /* 1E00 */  0x40, 0xB0, 0xC7, 0x9B, 0x73, 0x38, 0x9F, 0xE7,  // @...s8..
                /* 1E08 */  0x97, 0x47, 0x8B, 0x28, 0x21, 0xA2, 0xC4, 0x89,  // .G.(!...
                /* 1E10 */  0x10, 0xE5, 0x09, 0x22, 0x9E, 0xAF, 0x2F, 0x98,  // ..."../.
                /* 1E18 */  0xF3, 0x0D, 0xE0, 0x22, 0xDA, 0xE1, 0x06, 0x15,  // ..."....
                /* 1E20 */  0xE6, 0x7C, 0x03, 0xD0, 0xE0, 0xFF, 0x7F, 0xBE,  // .|......
                /* 1E28 */  0x01, 0x96, 0x27, 0x89, 0xE7, 0x1B, 0x70, 0xC6,  // ..'...p.
                /* 1E30 */  0x7F, 0xAA, 0xE8, 0x7C, 0x03, 0xF0, 0xEB, 0xFF,  // ...|....
                /* 1E38 */  0x7F, 0xBE, 0x01, 0x1C, 0x62, 0x3D, 0xDF, 0x80,  // ....b=..
                /* 1E40 */  0xEB, 0x5C, 0xF1, 0xF4, 0xF2, 0x68, 0xF3, 0x66,  // .\...h.f
                /* 1E48 */  0x61, 0xC0, 0x78, 0x1E, 0xC6, 0xCB, 0x0D, 0xF6,  // a.x.....
                /* 1E50 */  0x30, 0x08, 0xD8, 0xFE, 0xFF, 0x9F, 0x6E, 0x00,  // 0.....n.
                /* 1E58 */  0x66, 0xDC, 0x23, 0x1E, 0x06, 0x01, 0xC7, 0xFF,  // f.#.....
                /* 1E60 */  0xFF, 0xC3, 0x20, 0xC0, 0xD2, 0xC3, 0x4D, 0xB0,  // .. ...M.
                /* 1E68 */  0xA7, 0x19, 0x5F, 0x1E, 0x8E, 0x21, 0xE0, 0xBB,  // .._..!..
                /* 1E70 */  0x20, 0xCC, 0xF3, 0x0D, 0x18, 0xFF, 0xFF, 0xE7,  //  .......
                /* 1E78 */  0x1B, 0xE0, 0xA6, 0xD0, 0xA6, 0x4F, 0x8D, 0x46,  // .....O.F
                /* 1E80 */  0xAD, 0x1A, 0x94, 0xA9, 0x51, 0xA6, 0x41, 0xAD,  // ....Q.A.
                /* 1E88 */  0x3E, 0x95, 0x1A, 0x33, 0x96, 0xF9, 0x69, 0xA0,  // >..3..i.
                /* 1E90 */  0x48, 0x6F, 0x08, 0x1D, 0x12, 0x1C, 0xF7, 0x9D,  // Ho......
                /* 1E98 */  0x20, 0x10, 0x87, 0x7E, 0x7B, 0x08, 0xC4, 0x62,  //  ..~{..b
                /* 1EA0 */  0xDE, 0x05, 0x02, 0xB1, 0x58, 0x1D, 0x20, 0x4C,  // ....X. L
                /* 1EA8 */  0xB2, 0x11, 0x10, 0x26, 0x55, 0x09, 0x08, 0x13,  // ...&U...
                /* 1EB0 */  0xFF, 0x76, 0x10, 0x88, 0x23, 0x68, 0x01, 0x61,  // .v..#h.a
                /* 1EB8 */  0xD2, 0xBD, 0x80, 0xB0, 0x30, 0x2B, 0x15, 0x88,  // ....0+..
                /* 1EC0 */  0x23, 0xB9, 0x01, 0x61, 0x51, 0x56, 0x27, 0x10,  // #..aQV'.
                /* 1EC8 */  0x87, 0xB3, 0x03, 0xC2, 0xE2, 0x3F, 0x17, 0x04,  // .....?..
                /* 1ED0 */  0x62, 0x11, 0x8F, 0x1E, 0x81, 0x38, 0x3C, 0x08,  // b....8<.
                /* 1ED8 */  0x95, 0xA3, 0x09, 0x84, 0xC5, 0x7E, 0x48, 0x08,  // .....~H.
                /* 1EE0 */  0xC4, 0xA2, 0x4D, 0x81, 0xB0, 0xC8, 0xAA, 0x20,  // ..M.... 
                /* 1EE8 */  0x6E, 0x47, 0x04, 0x5D, 0x01, 0x31, 0x61, 0x8F,  // nG.].1a.
                /* 1EF0 */  0x95, 0x40, 0x44, 0x26, 0x88, 0x86, 0x45, 0x7C,  // .@D&..E|
                /* 1EF8 */  0x01, 0xB1, 0x00, 0x20, 0x1A, 0x10, 0xF9, 0x17,  // ... ....
                /* 1F00 */  0x04, 0x22, 0xD1, 0x40, 0x04, 0xE4, 0x98, 0x0F,  // .".@....
                /* 1F08 */  0x85, 0x40, 0x24, 0x34, 0x88, 0x06, 0x44, 0xAC,  // .@$4..D.
                /* 1F10 */  0x01, 0x31, 0x31, 0x8F, 0x97, 0x40, 0x44, 0x9A,  // .11..@D.
                /* 1F18 */  0x38, 0x20, 0x26, 0x14, 0x44, 0xC3, 0x21, 0xEA,  // 8 &.D.!.
                /* 1F20 */  0x80, 0x58, 0x04, 0x10, 0x0D, 0x90, 0xC8, 0x03,  // .X......
                /* 1F28 */  0x62, 0xC1, 0x40, 0x34, 0x44, 0xA2, 0x0F, 0x88,  // b.@4D...
                /* 1F30 */  0x25, 0x05, 0x11, 0x90, 0x93, 0xFA, 0x03, 0x62,  // %......b
                /* 1F38 */  0xB9, 0x41, 0x04, 0x64, 0x05, 0x6F, 0x86, 0x40,  // .A.d.o.@
                /* 1F40 */  0x44, 0x0F, 0x88, 0x80, 0xAC, 0xE9, 0x81, 0x20,  // D...... 
                /* 1F48 */  0x20, 0x0B, 0x04, 0x11, 0x90, 0x05, 0x3E, 0x15,  //  .....>.
                /* 1F50 */  0x04, 0x64, 0xB9, 0x20, 0x02, 0xB2, 0xF0, 0x57,  // .d. ...W
                /* 1F58 */  0x44, 0x20, 0x12, 0x03, 0x44, 0x40, 0xFE, 0xFF,  // D ..D@..
                /* 1F60 */  0xCB, 0x12, 0x09, 0xC4, 0x44, 0x82, 0x68, 0xD0,  // ....D.h.
                /* 1F68 */  0x04, 0x88, 0x8A, 0x78, 0x42, 0x69, 0xF8, 0xE4,  // ...xBi..
                /* 1F70 */  0x57, 0x1F, 0x88, 0x48, 0x02, 0x11, 0x90, 0x25,  // W..H...%
                /* 1F78 */  0xBD, 0x20, 0x0E, 0x84, 0x81, 0x08, 0xC8, 0x12,  // . ......
                /* 1F80 */  0x5F, 0x14, 0x81, 0x88, 0x60, 0x10, 0x0D, 0x9C,  // _...`...
                /* 1F88 */  0x18, 0x1D, 0x38, 0x05, 0xD1, 0xE1, 0x80, 0xFC,  // ..8.....
                /* 1F90 */  0x1C, 0x04, 0xE4, 0x40, 0x20, 0x02, 0x72, 0xB0,  // ...@ .r.
                /* 1F98 */  0x1F, 0x44, 0x20, 0x12, 0x13, 0x44, 0x40, 0xCE,  // .D ..D@.
                /* 1FA0 */  0xF9, 0x80, 0x38, 0x78, 0x06, 0x22, 0x20, 0xCB,  // ..8x." .
                /* 1FA8 */  0x7F, 0x76, 0x08, 0xC8, 0x59, 0x40, 0x04, 0x64,  // .v..Y@.d
                /* 1FB0 */  0x55, 0x0F, 0x90, 0x40, 0x44, 0x22, 0x88, 0x80,  // U..@D"..
                /* 1FB8 */  0xAC, 0x51, 0x2D, 0x10, 0x53, 0x0C, 0xA2, 0x03,  // .Q-.S...
                /* 1FC0 */  0x00, 0x79, 0x5F, 0x04, 0x22, 0x09, 0x40, 0x04,  // .y_.".@.
                /* 1FC8 */  0x64, 0x2D, 0x76, 0x81, 0x98, 0x30, 0x10, 0x01,  // d-v..0..
                /* 1FD0 */  0x59, 0x97, 0x5E, 0x20, 0xA6, 0x12, 0x44, 0x40,  // Y.^ ..D@
                /* 1FD8 */  0x4E, 0x0D, 0x44, 0x35, 0x7C, 0x32, 0x0E, 0x94,  // N.D5|2..
                /* 1FE0 */  0xFD, 0x4F, 0x04, 0x64, 0x45, 0x20, 0x02, 0x72,  // .O.dE .r
                /* 1FE8 */  0x36, 0x20, 0x1A, 0x14, 0x88, 0x2A, 0x7E, 0xDE,  // 6 ...*~.
                /* 1FF0 */  0x04, 0x22, 0xF2, 0x41, 0x04, 0x64, 0x21, 0xEF,  // .".A.d!.
                /* 1FF8 */  0x2F, 0x01, 0x59, 0x15, 0x88, 0x0E, 0x00, 0xE4,  // /.Y.....
                /* 2000 */  0x23, 0xA3, 0x03, 0x00, 0x01, 0xD1, 0xC0, 0x88,  // #.......
                /* 2008 */  0xE6, 0x41, 0x53, 0x10, 0x01, 0x39, 0x3A, 0x10,  // .AS..9:.
                /* 2010 */  0xD5, 0xF1, 0xCA, 0x11, 0x90, 0x03, 0x81, 0x08,  // ........
                /* 2018 */  0xC8, 0xE9, 0x80, 0x68, 0x38, 0xD1, 0x40, 0x2C,  // ...h8.@,
                /* 2020 */  0x2A, 0x88, 0x8E, 0x19, 0xE4, 0x47, 0x22, 0x20,  // *....G" 
                /* 2028 */  0x07, 0x01, 0x11, 0x90, 0x93, 0x3C, 0x98, 0x02,  // .....<..
                /* 2030 */  0x91, 0x58, 0x20, 0x3A, 0x24, 0x90, 0x37, 0x96,  // .X :$.7.
                /* 2038 */  0x80, 0xAC, 0x16, 0x44, 0x87, 0x03, 0x02, 0x44,  // ...D...D
                /* 2040 */  0x35, 0xFC, 0x48, 0x02, 0x91, 0x34, 0x20, 0x3A,  // 5.H..4 :
                /* 2048 */  0x54, 0x10, 0x20, 0x1A, 0xEE, 0x75, 0xA3, 0x81,  // T. ..u..
                /* 2050 */  0x10, 0x10, 0x01, 0x39, 0xEB, 0x1B, 0x27, 0x10,  // ...9..'.
                /* 2058 */  0x09, 0x0E, 0x22, 0x20, 0xFF, 0xFF, 0x23, 0x18,  // .." ..#.
                /* 2060 */  0x07, 0x62, 0x79, 0x40, 0x74, 0xD8, 0x20, 0xBF,  // .by@t. .
                /* 2068 */  0x35, 0x0D, 0x9E, 0x80, 0x08, 0xC8, 0x22, 0x5F,  // 5....."_
                /* 2070 */  0x3C, 0x81, 0x88, 0x64, 0x10, 0x0D, 0x9E, 0x7C,  // <..d...|
                /* 2078 */  0x54, 0x74, 0x68, 0x20, 0x20, 0x3A, 0x18, 0x90,  // Tth  :..
                /* 2080 */  0x57, 0x9B, 0x0E, 0x06, 0x04, 0x44, 0x40, 0x0E,  // W....D@.
                /* 2088 */  0x0B, 0x44, 0x93, 0x03, 0xD1, 0x08, 0xDF, 0x98,  // .D......
                /* 2090 */  0x03, 0x61, 0x20, 0x02, 0xB2, 0xB2, 0x67, 0xD9,  // .a ...g.
                /* 2098 */  0x43, 0x08, 0x03, 0x11, 0x90, 0x55, 0xBF, 0xB3,  // C....U..
                /* 20A0 */  0x04, 0xE4, 0x0C, 0x20, 0x02, 0x72, 0x8C, 0x47,  // ... .r.G
                /* 20A8 */  0x59, 0x20, 0x92, 0x09, 0x44, 0x40, 0x56, 0xF7,  // Y ..D@V.
                /* 20B0 */  0xB2, 0x12, 0x90, 0xA5, 0x82, 0x08, 0xC8, 0x99,  // ........
                /* 20B8 */  0x81, 0xE8, 0x5F, 0xCC, 0x40, 0xCE, 0x0F, 0x22,  // .._.@.."
                /* 20C0 */  0x20, 0xAB, 0xD1, 0x3F, 0x10, 0xFA, 0xB0, 0xD3,  //  ..?....
                /* 20C8 */  0x40, 0x08, 0x88, 0x80, 0x2C, 0xB3, 0x00, 0x10,  // @...,...
                /* 20D0 */  0x13, 0x0D, 0x22, 0x20, 0xCB, 0x6E, 0x00, 0xC4,  // .." .n..
                /* 20D8 */  0x42, 0x80, 0x08, 0xC8, 0xA2, 0x22, 0x0C, 0x90,  // B...."..
                /* 20E0 */  0x82, 0xE8, 0x20, 0x40, 0x32, 0x1C, 0x04, 0x28,  // .. @2..(
                /* 20E8 */  0x88, 0x80, 0xAC, 0xB6, 0x03, 0x10, 0xD3, 0x0E,  // ........
                /* 20F0 */  0x22, 0x20, 0x27, 0x28, 0x31, 0x48, 0x0A, 0x22,  // " '(1H."
                /* 20F8 */  0x20, 0xEB, 0x4B, 0x01, 0x4C, 0x41, 0x04, 0x4C,  //  .K.LA.L
                /* 2100 */  0x62, 0x00, 0x31, 0xE9, 0x20, 0x3A, 0x24, 0x90,  // b.1. :$.
                /* 2108 */  0x1A, 0x87, 0x04, 0x0A, 0x22, 0x20, 0xC7, 0xE9,  // ...." ..
                /* 2110 */  0x01, 0xC4, 0xC2, 0x81, 0xE8, 0xB0, 0x43, 0x82,  // ......C.
                /* 2118 */  0x00, 0x53, 0x10, 0x1D, 0x62, 0x48, 0x92, 0x03,  // .S..bH..
                /* 2120 */  0x02, 0x05, 0x11, 0x90, 0x93, 0x45, 0x39, 0x7C,  // .....E9|
                /* 2128 */  0x50, 0x10, 0x1D, 0x36, 0x48, 0x95, 0xC3, 0x06,  // P..6H...
                /* 2130 */  0x05, 0x11, 0x90, 0xD5, 0x64, 0x01, 0x62, 0xD2,  // ....d.b.
                /* 2138 */  0x40, 0x74, 0xA0, 0x21, 0x40, 0x34, 0x33, 0x10,  // @t.!@43.
                /* 2140 */  0xCD, 0xDC, 0x05, 0x88, 0x29, 0x08, 0x73, 0x78,  // ....).sx
                /* 2148 */  0xA1, 0x69, 0x0E, 0x2F, 0x14, 0x44, 0x40, 0xFE,  // .i./.D@.
                /* 2150 */  0xFF, 0x27, 0x04, 0xA2, 0x79, 0x81, 0xA8, 0xFE,  // .'..y...
                /* 2158 */  0x36, 0x40, 0x2C, 0x0D, 0x88, 0x0E, 0x04, 0x24,  // 6@,....$
                /* 2160 */  0x0E, 0x10, 0xD3, 0x0A, 0x22, 0x20, 0x67, 0x07,  // ...." g.
                /* 2168 */  0xA2, 0x4A, 0xEA, 0x00, 0x31, 0x19, 0x7D, 0x80,  // .J..1.}.
                /* 2170 */  0x98, 0x26, 0x10, 0x0D, 0x82, 0x00, 0xD1, 0xB8,  // .&......
                /* 2178 */  0x40, 0x54, 0x7A, 0x20, 0x20, 0x96, 0x03, 0x44,  // @Tz  ..D
                /* 2180 */  0x07, 0x1B, 0x52, 0xE8, 0x00, 0x43, 0x41, 0x74,  // ..R..CAt
                /* 2188 */  0x18, 0x20, 0x89, 0x0E, 0x36, 0x14, 0x44, 0x07,  // . ..6.D.
                /* 2190 */  0x18, 0xF2, 0xFC, 0xD3, 0x01, 0x86, 0x80, 0xE8,  // ........
                /* 2198 */  0x30, 0x43, 0x2A, 0x01, 0x53, 0x10, 0x01, 0x39,  // 0C*.S..9
                /* 21A0 */  0x30, 0x10, 0x8D, 0x0F, 0x44, 0xE3, 0x64, 0x3A,  // 0...D.d:
                /* 21A8 */  0x04, 0x50, 0x10, 0x1D, 0x02, 0x48, 0xA7, 0x43,  // .P...H.C
                /* 21B0 */  0x00, 0x05, 0x11, 0x90, 0x95, 0x97, 0x3A, 0xEC,  // ......:.
                /* 21B8 */  0x50, 0x10, 0x1D, 0x16, 0x48, 0x2A, 0x20, 0xA6,  // P...H* .
                /* 21C0 */  0x10, 0x44, 0x40, 0x4E, 0x0B, 0x44, 0xA3, 0x03,  // .D@N.D..
                /* 21C8 */  0xD1, 0x18, 0xAD, 0x0E, 0x14, 0x14, 0x44, 0x40,  // ......D@
                /* 21D0 */  0xCE, 0x14, 0x0B, 0x88, 0x25, 0x04, 0x11, 0x90,  // ....%...
                /* 21D8 */  0x53, 0xE6, 0x3A, 0x08, 0x50, 0x10, 0x01, 0x39,  // S.:.P..9
                /* 21E0 */  0x45, 0x2F, 0x60, 0x0A, 0xA2, 0x03, 0x0B, 0x09,  // E/`.....
                /* 21E8 */  0x76, 0xB0, 0xA1, 0x20, 0x3A, 0x0C, 0x90, 0x62,  // v.. :..b
                /* 21F0 */  0x87, 0x01, 0x0A, 0x22, 0x20, 0xE7, 0x03, 0xA2,  // ..." ...
                /* 21F8 */  0x69, 0x81, 0x68, 0xE0, 0x66, 0x40, 0x2C, 0x3D,  // i.h.f@,=
                /* 2200 */  0x88, 0x80, 0x9C, 0x25, 0xDA, 0x81, 0x89, 0x82,  // ...%....
                /* 2208 */  0xE8, 0x40, 0x42, 0xAA, 0x0D, 0x82, 0x82, 0x08,  // .@B.....
                /* 2210 */  0xC8, 0xE9, 0x81, 0xA8, 0x94, 0x6C, 0x40, 0x2C,  // .....l@,
                /* 2218 */  0x16, 0x88, 0x80, 0x9C, 0x11, 0x88, 0xCA, 0xED,  // ........
                /* 2220 */  0x76, 0xB8, 0xA0, 0x20, 0x3A, 0x10, 0x90, 0x70,  // v.. :..p
                /* 2228 */  0x07, 0x0A, 0x0A, 0xA2, 0x03, 0x0D, 0x49, 0x07,  // ......I.
                /* 2230 */  0xC4, 0xE2, 0x81, 0x08, 0xC8, 0xFF, 0x7F, 0xC1,  // ........
                /* 2238 */  0xED, 0x0E, 0x3A, 0x14, 0x44, 0xC7, 0x2E, 0x12,  // ..:.D...
                /* 2240 */  0x0F, 0x88, 0x89, 0x03, 0xD1, 0x21, 0x85, 0x00,  // .....!..
                /* 2248 */  0xD1, 0xE8, 0x40, 0x34, 0x4A, 0xBD, 0x81, 0x51,  // ..@4J..Q
                /* 2250 */  0x10, 0x1D, 0x44, 0x48, 0xBE, 0x83, 0x08, 0x05,  // ..DH....
                /* 2258 */  0x11, 0x90, 0x25, 0xF4, 0x03, 0x62, 0x82, 0x40,  // ..%..b.@
                /* 2260 */  0x04, 0x64, 0x41, 0x05, 0x81, 0x98, 0x3A, 0x10,  // .dA...:.
                /* 2268 */  0x1D, 0x22, 0x48, 0xC2, 0x43, 0x04, 0x05, 0xD1,  // ."H.C...
                /* 2270 */  0xE1, 0x83, 0x44, 0x1C, 0x1C, 0x05, 0xD1, 0x01,  // ..D.....
                /* 2278 */  0x89, 0x54, 0x04, 0x62, 0xCA, 0x40, 0x74, 0x40,  // .T.b.@t@
                /* 2280 */  0x22, 0x1D, 0x0F, 0x42, 0x14, 0x44, 0x83, 0x26,  // "..B.D.&
                /* 2288 */  0x21, 0x0F, 0x35, 0x14, 0x44, 0x87, 0x2C, 0x92,  // !.5.D.,.
                /* 2290 */  0xF2, 0xA0, 0x40, 0x41, 0x74, 0x28, 0x22, 0x2D,  // ..@At("-
                /* 2298 */  0x81, 0x29, 0x88, 0x80, 0x49, 0xCD, 0x03, 0x00,  // .)..I...
                /* 22A0 */  0x05, 0xD1, 0x21, 0x89, 0xE4, 0x04, 0x62, 0xFA,  // ..!...b.
                /* 22A8 */  0x41, 0x74, 0x40, 0x20, 0x41, 0x0F, 0x08, 0x14,  // At@ A...
                /* 22B0 */  0x44, 0x07, 0x04, 0x52, 0x14, 0x98, 0x82, 0xE8,  // D..R....
                /* 22B8 */  0x60, 0x43, 0x9A, 0x1E, 0xCC, 0x28, 0x88, 0x06,  // `C...(..
                /* 22C0 */  0x4E, 0xA2, 0x02, 0x31, 0x6D, 0x20, 0x3A, 0x8C,  // N..1m :.
                /* 22C8 */  0x10, 0x20, 0x9A, 0x19, 0x88, 0x46, 0xAE, 0x7A,  // . ...F.z
                /* 22D0 */  0xB0, 0xA1, 0x59, 0x81, 0x98, 0x94, 0xB0, 0x87,  // ..Y.....
                /* 22D8 */  0x2A, 0x0A, 0x22, 0x20, 0x07, 0x05, 0xA2, 0xB1,  // *." ....
                /* 22E0 */  0x81, 0x68, 0x88, 0xB2, 0x40, 0x2C, 0x12, 0x88,  // .h..@,..
                /* 22E8 */  0x0E, 0x1D, 0x24, 0xED, 0xA1, 0x83, 0x82, 0xE8,  // ..$.....
                /* 22F0 */  0xB8, 0x47, 0xE2, 0x02, 0xB1, 0x28, 0x20, 0x3A,  // .G...( :
                /* 22F8 */  0x20, 0x90, 0xBC, 0x07, 0x04, 0x0A, 0x22, 0x20,  //  ....." 
                /* 2300 */  0x87, 0x7C, 0x7A, 0x0A, 0xC8, 0x91, 0x41, 0x74,  // .|z...At
                /* 2308 */  0x08, 0x24, 0x89, 0x81, 0x98, 0x84, 0xC6, 0x07,  // .$......
                /* 2310 */  0x13, 0x5A, 0x19, 0x88, 0x89, 0x02, 0xD1, 0x41,  // .Z.....A
                /* 2318 */  0x89, 0x74, 0x3E, 0xF8, 0x50, 0x10, 0x01, 0xF9,  // .t>.P...
                /* 2320 */  0xFF, 0x2F, 0xB5, 0x34, 0x10, 0x13, 0x0E, 0xA2,  // ./.4....
                /* 2328 */  0x03, 0x19, 0x69, 0x0D, 0xC4, 0xC2, 0x80, 0xE8,  // ..i.....
                /* 2330 */  0x18, 0x48, 0x6A, 0x03, 0xB1, 0x80, 0x20, 0x1A,  // .Hj... .
                /* 2338 */  0x0C, 0xE9, 0x3D, 0x18, 0x0A, 0xA2, 0x03, 0x15,  // ..=.....
                /* 2340 */  0x29, 0x7E, 0xA0, 0xA2, 0xC9, 0x0F, 0x0C, 0xB4,  // )~......
                /* 2348 */  0xF9, 0x81, 0x81, 0x82, 0xE8, 0x30, 0x42, 0xAA,  // .....0B.
                /* 2350 */  0x1F, 0x46, 0x28, 0x88, 0x0E, 0x11, 0x04, 0x88,  // .F(.....
                /* 2358 */  0x26, 0x07, 0xA2, 0xC1, 0xB3, 0x03, 0x31, 0x19,  // &.....1.
                /* 2360 */  0xDD, 0x0F, 0x71, 0xB4, 0xFC, 0x01, 0x8C, 0x82,  // ..q.....
                /* 2368 */  0xE8, 0x00, 0x48, 0x80, 0xA8, 0x98, 0xF4, 0x40,  // ..H....@
                /* 2370 */  0x2C, 0x1A, 0x88, 0x0E, 0x66, 0x04, 0x88, 0x06,  // ,...f...
                /* 2378 */  0x8D, 0x0F, 0xC4, 0x52, 0x83, 0xE8, 0xA0, 0x46,  // ...R...F
                /* 2380 */  0xEA, 0x0F, 0x8A, 0xE6, 0x07, 0x62, 0xFF, 0xC7,  // .....b..
                /* 2388 */  0xAF, 0xC9, 0x40, 0xD6, 0x05, 0xA2, 0xC3, 0x1C,  // ..@.....
                /* 2390 */  0x01, 0xA2, 0xA9, 0x81, 0x68, 0x76, 0x05, 0x40,  // ....hv.@
                /* 2398 */  0x4C, 0x89, 0x03, 0x20, 0xA6, 0xC8, 0x02, 0x10,  // L.. ....
                /* 23A0 */  0x93, 0x07, 0xA2, 0x81, 0x10, 0x20, 0x9A, 0x1A,  // ..... ..
                /* 23A8 */  0x88, 0xA6, 0xD6, 0x00, 0xC4, 0x34, 0x78, 0x00,  // .....4x.
                /* 23B0 */  0x62, 0x6A, 0x4C, 0x00, 0x31, 0x69, 0x20, 0x1A,  // bjL.1i .
                /* 23B8 */  0x38, 0x01, 0xA2, 0x89, 0x81, 0x68, 0x62, 0x15,  // 8....hb.
                /* 23C0 */  0x40, 0x2C, 0x3F, 0x88, 0x0E, 0x2D, 0xC4, 0x06,  // @,?..-..
                /* 23C8 */  0x10, 0x93, 0x03, 0xA2, 0x43, 0x04, 0xD1, 0x01,  // ....C...
                /* 23D0 */  0xC4, 0xC4, 0x81, 0xE8, 0x70, 0x41, 0x84, 0x00,  // ....pA..
                /* 23D8 */  0x31, 0xC5, 0x20, 0x1A, 0x18, 0x01, 0xA2, 0x42,  // 1. ....B
                /* 23E0 */  0x8C, 0x00, 0x31, 0x21, 0x4A, 0x80, 0x98, 0x2C,  // ..1!J..,
                /* 23E8 */  0x10, 0x01, 0x59, 0x9E, 0x14, 0x20, 0xA6, 0x15,  // ..Y.. ..
                /* 23F0 */  0x44, 0x03, 0x23, 0x40, 0x54, 0x82, 0x15, 0x20,  // D.#@T.. 
                /* 23F8 */  0x26, 0x41, 0x0B, 0x10, 0x13, 0x04, 0xA2, 0x43,  // &A.....C
                /* 2400 */  0x09, 0x11, 0x03, 0xC4, 0xD4, 0x81, 0x08, 0xC8,  // ........
                /* 2408 */  0xFF, 0x7F, 0x75, 0x66, 0x06, 0x40, 0x41, 0x04,  // ..uf.@A.
                /* 2410 */  0x64, 0xBD, 0x6E, 0x80, 0x98, 0x7A, 0x10, 0x0D,  // d.n..z..
                /* 2418 */  0x94, 0xC8, 0x01, 0x62, 0xDA, 0x40, 0x04, 0x64,  // ...b.@.d
                /* 2420 */  0x6D, 0x7A, 0x80, 0x98, 0x52, 0x10, 0x01, 0x39,  // mz..R..9
                /* 2428 */  0x39, 0x10, 0xD5, 0xE1, 0x07, 0x98, 0x1A, 0x02,  // 9.......
                /* 2430 */  0xA6, 0x20, 0x02, 0xB2, 0x42, 0x47, 0x40, 0x4C,  // . ..BG@L
                /* 2438 */  0x2E, 0x88, 0x0E, 0x2B, 0x44, 0x12, 0x10, 0xD3,  // ...+D...
                /* 2440 */  0x0E, 0xA2, 0x03, 0x09, 0xD1, 0x04, 0xC4, 0x32,  // .......2
                /* 2448 */  0x81, 0x08, 0x98, 0x78, 0x02, 0x62, 0x7A, 0x41,  // ...x.bzA
                /* 2450 */  0x04, 0x64, 0xCD, 0xA6, 0x80, 0x58, 0x00, 0x10,  // .d...X..
                /* 2458 */  0x1D, 0xAC, 0x88, 0x2A, 0x20, 0x96, 0x06, 0x44,  // ...* ..D
                /* 2460 */  0x40, 0xCE, 0x25, 0x0B, 0x88, 0xA5, 0x04, 0xD1,  // @.%.....
                /* 2468 */  0x41, 0x8F, 0xE8, 0x02, 0x62, 0xC1, 0x41, 0x34,  // A...b.A4
                /* 2470 */  0x30, 0xE2, 0x6B, 0x60, 0x54, 0xD8, 0x41, 0x81,  // 0.k`T.A.
                /* 2478 */  0x2A, 0x03, 0x62, 0xFA, 0x40, 0x04, 0xE4, 0xBC,  // *.b.@...
                /* 2480 */  0x40, 0x34, 0x3D, 0x10, 0xD5, 0x60, 0x6D, 0xF0,  // @4=..`m.
                /* 2488 */  0x14, 0x44, 0x83, 0x24, 0xDA, 0x06, 0x49, 0x41,  // .D.$..IA
                /* 2490 */  0x74, 0x80, 0x20, 0x40, 0x34, 0x35, 0x10, 0xCD,  // t. @45..
                /* 2498 */  0x2E, 0xEE, 0x60, 0x40, 0xCD, 0x01, 0xB1, 0x44,  // ..`@...D
                /* 24A0 */  0x20, 0x3A, 0x98, 0x10, 0x20, 0x2A, 0x53, 0x1D,  //  :.. *S.
                /* 24A8 */  0x10, 0xD3, 0x0C, 0xA2, 0x83, 0x16, 0x71, 0x37,  // ......q7
                /* 24B0 */  0x48, 0x0A, 0xA2, 0x03, 0x0B, 0xB1, 0x07, 0xC4,  // H.......
                /* 24B8 */  0x22, 0x81, 0xE8, 0xC0, 0x42, 0xF4, 0x0D, 0x9E,  // "...B...
                /* 24C0 */  0x82, 0x08, 0x98, 0x08, 0x04, 0xA6, 0x20, 0x3A,  // ...... :
                /* 24C8 */  0xFA, 0x12, 0x83, 0x87, 0x09, 0x0A, 0xA2, 0x83,  // ........
                /* 24D0 */  0x05, 0x01, 0xA2, 0xB1, 0x81, 0x68, 0x72, 0x87,  // .....hr.
                /* 24D8 */  0x40, 0x4C, 0x86, 0x44, 0x20, 0xA6, 0xC2, 0x22,  // @L.D .."
                /* 24E0 */  0x10, 0xD3, 0x04, 0xA2, 0x83, 0x0E, 0xF1, 0x78,  // .......x
                /* 24E8 */  0x90, 0xA0, 0x20, 0x02, 0xF2, 0xFF, 0x3F, 0x3F,  // .. ...??
                /* 24F0 */  0x10, 0x55, 0x23, 0x12, 0x88, 0x69, 0x52, 0x09,  // .U#..iR.
                /* 24F8 */  0xC4, 0x14, 0x82, 0x68, 0xE0, 0x04, 0x88, 0xA6,  // ...h....
                /* 2500 */  0x07, 0xA2, 0x2F, 0xE8, 0xC0, 0x14, 0x44, 0x83,  // ../...D.
                /* 2508 */  0x22, 0x3A, 0x07, 0x45, 0x41, 0x74, 0xD0, 0x25,  // ":.EAt.%
                /* 2510 */  0x42, 0x81, 0x98, 0x4E, 0x10, 0x0D, 0x98, 0x18,  // B..N....
                /* 2518 */  0x05, 0x62, 0xA2, 0x41, 0x74, 0x38, 0x22, 0x4E,  // .b.At8"N
                /* 2520 */  0x81, 0x58, 0x0C, 0x10, 0x1D, 0x5C, 0x88, 0x54,  // .X...\.T
                /* 2528 */  0x20, 0x26, 0x11, 0x44, 0x07, 0x0E, 0xA2, 0x15,  //  &.D....
                /* 2530 */  0x88, 0x49, 0x06, 0xD1, 0x61, 0x8F, 0x88, 0x05,  // .I..a...
                /* 2538 */  0x62, 0x09, 0x40, 0x04, 0xE4, 0x00, 0x66, 0x81,  // b.@...f.
                /* 2540 */  0x58, 0x1C, 0x10, 0x1D, 0x62, 0x89, 0x5B, 0x20,  // X...b.[ 
                /* 2548 */  0x16, 0x13, 0x44, 0x83, 0x26, 0x76, 0x07, 0x4D,  // ..D.&v.M
                /* 2550 */  0x41, 0x74, 0x10, 0x20, 0x7A, 0x0F, 0x02, 0x14,  // At. z...
                /* 2558 */  0x44, 0x07, 0x20, 0x22, 0x18, 0x88, 0xA5, 0x03,  // D. "....
                /* 2560 */  0xD1, 0xC1, 0x93, 0x18, 0x06, 0x62, 0x51, 0x41,  // .....bQA
                /* 2568 */  0x04, 0xE4, 0xA8, 0x8E, 0x0F, 0x10, 0x14, 0x44,  // .......D
                /* 2570 */  0x07, 0x54, 0x62, 0xF9, 0xA0, 0x40, 0x35, 0x0F,  // .Tb..@5.
                /* 2578 */  0x96, 0x8A, 0x1E, 0x2C, 0x05, 0xD1, 0x20, 0x88,  // ...,.. .
                /* 2580 */  0xEB, 0x23, 0x0A, 0x95, 0x0D, 0x42, 0x6D, 0x83,  // .#...Bm.
                /* 2588 */  0x30, 0xB9, 0xC2, 0x41, 0x58, 0x58, 0x10, 0x6E,  // 0..AXX.n
                /* 2590 */  0x7C, 0x00, 0xD4, 0x3A, 0x08, 0x8B, 0x02, 0xC2,  // |..:....
                /* 2598 */  0xB5, 0x83, 0xB0, 0x98, 0xE6, 0x07, 0x4C, 0xD5,  // ......L.
                /* 25A0 */  0x83, 0x50, 0xF7, 0x20, 0xEC, 0xFF, 0x0F         // .P. ...
            })
            Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event, xx=0x00-0xFF
            {
                If (Zero){}
                ElseIf (LEqual (Arg0, 0xE2))
                {
                    Return (EVT1) /* \GSA1.EVT1 */
                }

                Return (Zero)
            }

            Name (SAA0, Buffer (0x10)
            {
                /* 0000 */  0xF0, 0xFF, 0xFF, 0xFF, 0x02, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00   // ........
            })
            Name (CCAA, Zero)
            Name (CCAB, Zero)
            Name (CCAC, Zero)
            Name (ECD0, Zero)
            Name (ECD1, Zero)
            Name (ECD2, Zero)
            Method (WCAA, 1, NotSerialized)
            {
                If (LEqual (Arg0, Zero))
                {
                    If (LEqual (CCAA, Zero)){}
                }
                ElseIf (LNotEqual (CCAA, Zero)){}
                Store (Arg0, CCAA) /* \GSA1.CCAA */
            }

            Method (WED0, 1, NotSerialized)
            {
                If (LEqual (Arg0, Zero))
                {
                    If (LEqual (ECD0, Zero)){}
                }
                ElseIf (LNotEqual (ECD0, Zero)){}
                Store (Arg0, ECD0) /* \GSA1.ECD0 */
            }

            Method (WED1, 1, NotSerialized)
            {
                If (LEqual (Arg0, Zero))
                {
                    If (LEqual (ECD1, Zero)){}
                }
                ElseIf (LNotEqual (ECD1, Zero)){}
                Store (Arg0, ECD1) /* \GSA1.ECD1 */
            }

            Method (WED2, 1, NotSerialized)
            {
                If (LEqual (Arg0, Zero))
                {
                    If (LEqual (ECD2, Zero)){}
                }
                ElseIf (LNotEqual (ECD2, Zero)){}
                Store (Arg0, ECD2) /* \GSA1.ECD2 */
            }

            Method (GETA, 1, NotSerialized)
            {
                Return (SAA0) /* \GSA1.SAA0 */
            }

            Method (WQAA, 1, NotSerialized)
            {
                Return (GETA (Arg0))
            }

            Method (SETA, 2, NotSerialized)
            {
                Store (Arg1, SAA0) /* \GSA1.SAA0 */
                Return (SAA0) /* \GSA1.SAA0 */
            }

            Method (WSAA, 2, NotSerialized)
            {
                Return (SETA (Arg0, Arg1))
            }

            Method (WMBB, 3, Serialized)
            {
                If (Zero){}
                ElseIf (LEqual (Arg1, One))
                {
                    Return (GGG1 ())
                }
                ElseIf (LEqual (Arg1, 0x02))
                {
                    Return (GGG2 ())
                }
                ElseIf (LEqual (Arg1, 0x03))
                {
                    Return (GGG3 ())
                }
                ElseIf (LEqual (Arg1, 0x04))
                {
                    Return (GGG4 ())
                }
                ElseIf (LEqual (Arg1, 0x05))
                {
                    Return (GGG5 ())
                }
                ElseIf (LEqual (Arg1, 0x06))
                {
                    Return (GGG6 ())
                }
                ElseIf (LEqual (Arg1, 0x07))
                {
                    Return (GGG7 ())
                }
                ElseIf (LEqual (Arg1, 0x08))
                {
                    Return (GGG8 ())
                }
                ElseIf (LEqual (Arg1, 0x0A))
                {
                    Return (GGG9 (Arg2))
                }
                ElseIf (LEqual (Arg1, 0x0B))
                {
                    Return (GGGE ())
                }
                ElseIf (LEqual (Arg1, 0x0C))
                {
                    Return (GGGF (Arg2))
                }
                ElseIf (LEqual (Arg1, 0x0D))
                {
                    CreateWordField (Arg2, Zero, GGGI)
                    CreateWordField (Arg2, 0x02, GGGJ)
                    CreateWordField (Arg2, 0x04, GGGK)
                    GGGH (GGGI, GGGJ, GGGK)
                }
                ElseIf (LEqual (Arg1, 0x0E))
                {
                    \GSA1.MPTS (ToInteger (Arg2))
                }
                ElseIf (LEqual (Arg1, 0x0F))
                {
                    \GSA1.MWAK (ToInteger (Arg2))
                }
                ElseIf (LAnd (LGreaterEqual (Arg1, 0x64), LLessEqual (Arg1, 0x6C)))
                {
                    CreateByteField (Arg2, Zero, SMDP)
                    CreateByteField (Arg2, One, SMDK)
                    CreateByteField (Arg2, 0x02, SMDL)
                    CreateByteField (Arg2, 0x03, SMDM)
                    CreateWordField (Arg2, 0x04, SMDN)
                    CreateByteField (Arg2, 0x03, SMDO)
                    If (LEqual (Arg1, 0x64))
                    {
                        Store (SMBB (), Local0)
                        Return (Local0)
                    }
                    ElseIf (LEqual (Arg1, 0x65))
                    {
                        Store (SMM0 (SMDP, SMDK, SMDL), Local0)
                        Return (Local0)
                    }
                    ElseIf (LEqual (Arg1, 0x66))
                    {
                        Store (SMM1 (SMDP, SMDK), Local0)
                        Return (Local0)
                    }
                    ElseIf (LEqual (Arg1, 0x67))
                    {
                        Store (SMM2 (SMDP, SMDK, SMDL, SMDM), Local0)
                        Return (Local0)
                    }
                    ElseIf (LEqual (Arg1, 0x68))
                    {
                        Store (SMM3 (SMDP, SMDK, SMDL), Local0)
                        Return (Local0)
                    }
                    ElseIf (LEqual (Arg1, 0x69))
                    {
                        Store (SMM4 (SMDP, SMDK, SMDL, SMDN), Local0)
                        Return (Local0)
                    }
                    ElseIf (LEqual (Arg1, 0x6A))
                    {
                        Store (SMM5 (SMDP, SMDK, SMDL), Local0)
                        Return (Local0)
                    }
                    ElseIf (LEqual (Arg1, 0x6B))
                    {
                        Return (Local0)
                    }
                    ElseIf (LEqual (Arg1, 0x6C))
                    {
                        Store (SMM7 (SMDP, SMDK, SMDL), Local0)
                        Return (Local0)
                    }
                }
                ElseIf (LAnd (LGreaterEqual (Arg1, 0x6E), LLessEqual (Arg1, 0x75)))
                {
                    CreateWordField (Arg2, Zero, PID0)
                    CreateByteField (Arg2, 0x02, PID1)
                    CreateWordField (Arg2, 0x02, PID2)
                    CreateDWordField (Arg2, 0x02, PID3)
                    If (LEqual (Arg1, 0x6E))
                    {
                        Store (PIO6 (PID0, Zero), Local0)
                        Return (Local0)
                    }
                    ElseIf (LEqual (Arg1, 0x6F))
                    {
                        PIO7 (PID0, Zero, PID1)
                    }
                    ElseIf (LEqual (Arg1, 0x70))
                    {
                        Store (PIO6 (PID0, One), Local0)
                        Return (Local0)
                    }
                    ElseIf (LEqual (Arg1, 0x71))
                    {
                        PIO7 (PID0, One, PID2)
                    }
                    ElseIf (LEqual (Arg1, 0x72))
                    {
                        Store (PIO6 (PID0, 0x02), Local0)
                        Return (Local0)
                    }
                    ElseIf (LEqual (Arg1, 0x73))
                    {
                        PIO7 (PID0, 0x02, PID3)
                    }
                }
                ElseIf (LEqual (Arg1, 0x76)){}
                ElseIf (LEqual (Arg1, 0x77)){}
                ElseIf (LAnd (LGreaterEqual (Arg1, 0x78), LLessEqual (Arg1, 0x80)))
                {
                    CreateByteField (Arg2, Zero, PCE0)
                    CreateByteField (Arg2, One, PCE1)
                    CreateByteField (Arg2, 0x02, PCE2)
                    CreateWordField (Arg2, 0x04, PCE3)
                    CreateByteField (Arg2, 0x06, PCE6)
                    CreateWordField (Arg2, 0x06, PCE4)
                    CreateDWordField (Arg2, 0x06, PCE5)
                    If (LEqual (Arg1, 0x78))
                    {
                        Store (PCI4 (), Local0)
                        Return (Local0)
                    }
                    ElseIf (LEqual (Arg1, 0x79))
                    {
                        Return (PCI9 (PCE0, PCE1, PCE2, PCE3, Zero))
                    }
                    ElseIf (LEqual (Arg1, 0x7A))
                    {
                        PCIA (PCE0, PCE1, PCE2, PCE3, Zero, PCE6)
                    }
                    ElseIf (LEqual (Arg1, 0x7B))
                    {
                        Return (PCI9 (PCE0, PCE1, PCE2, PCE3, One))
                    }
                    ElseIf (LEqual (Arg1, 0x7C))
                    {
                        PCIA (PCE0, PCE1, PCE2, PCE3, One, PCE4)
                    }
                    ElseIf (LEqual (Arg1, 0x7D))
                    {
                        Return (PCI9 (PCE0, PCE1, PCE2, PCE3, 0x02))
                    }
                    ElseIf (LEqual (Arg1, 0x7E))
                    {
                        PCIA (PCE0, PCE1, PCE2, PCE3, 0x02, PCE5)
                    }

                    CreateByteField (Arg2, 0x06, PCE7)
                    CreateByteField (Arg2, 0x07, PCE8)
                    CreateDWordField (Arg2, 0x08, PCE9)
                    If (LEqual (Arg1, 0x7F))
                    {
                        Return (PCI5 (PCE0, PCE1, PCE2, PCE3, PCE7, PCE8))
                    }
                    ElseIf (LEqual (Arg1, 0x80))
                    {
                        PCI6 (PCE0, PCE1, PCE2, PCE3, PCE7, PCE8, PCE9)
                    }
                }
                ElseIf (LAnd (LGreaterEqual (Arg1, 0x82), LLessEqual (Arg1, 0x89)))
                {
                    CreateDWordField (Arg2, Zero, MED0)
                    CreateByteField (Arg2, 0x04, MED1)
                    CreateWordField (Arg2, 0x04, MED2)
                    CreateDWordField (Arg2, 0x04, MED3)
                    CreateByteField (Arg2, 0x04, MED4)
                    CreateByteField (Arg2, 0x05, MED5)
                    CreateDWordField (Arg2, 0x06, MED6)
                    If (LEqual (Arg1, 0x82))
                    {
                        Return (MEM4 (MED0, Zero))
                    }
                    ElseIf (LEqual (Arg1, 0x83))
                    {
                        MEM5 (MED0, Zero, MED1)
                    }
                    ElseIf (LEqual (Arg1, 0x84))
                    {
                        Return (MEM4 (MED0, One))
                    }
                    ElseIf (LEqual (Arg1, 0x85))
                    {
                        MEM5 (MED0, One, MED2)
                    }
                    ElseIf (LEqual (Arg1, 0x86))
                    {
                        Return (MEM4 (MED0, 0x02))
                    }
                    ElseIf (LEqual (Arg1, 0x87))
                    {
                        MEM5 (MED0, 0x02, MED3)
                    }
                    ElseIf (LEqual (Arg1, 0x88))
                    {
                        Return (MEM0 (MED0, MED4, MED5))
                    }
                    ElseIf (LEqual (Arg1, 0x89))
                    {
                        MEM1 (MED0, MED4, MED5, MED6)
                    }
                }
                ElseIf (LEqual (Arg1, 0xBE))
                {
                    EVT2 (Arg2)
                }
                ElseIf (LEqual (Arg1, 0x09))
                {
                    Return (EZW2) /* \GSA1.EZW2 */
                }
                ElseIf (LAnd (LGreaterEqual (Arg1, 0x0118), LLessEqual (Arg1, 0x0121)))
                {
                    CreateDWordField (Arg2, Zero, EZVD)
                    CreateDWordField (Arg2, 0x04, EZVE)
                    CreateWordField (Arg2, 0x04, EZVL)
                    If (LEqual (Arg1, 0x0118))
                    {
                        Return (EZV3 (EZVD))
                    }
                    ElseIf (LEqual (Arg1, 0x0119))
                    {
                        EZV4 (EZVD, EZVE)
                    }
                    ElseIf (LEqual (Arg1, 0x011A))
                    {
                        Return (EZV6 ())
                    }
                    ElseIf (LEqual (Arg1, 0x011B))
                    {
                        Return (EZVF (EZVD, EZVE))
                    }
                    ElseIf (LEqual (Arg1, 0x011C))
                    {
                        Return (EZVG (EZVD, EZVE))
                    }
                    ElseIf (LEqual (Arg1, 0x011D))
                    {
                        Return (EZV0 (EZVD))
                    }
                    ElseIf (LEqual (Arg1, 0x011E))
                    {
                        Return (EZVJ (EZVD, DerefOf (Index (Arg2, 0x04))))
                    }
                    ElseIf (LEqual (Arg1, 0x011F))
                    {
                        Name (B2F2, Buffer (0x3C){})
                        Store (EZVL, Local0)
                        Store (Zero, Local1)
                        While (LLess (Multiply (Local1, 0x02), Local0))
                        {
                            Store (DerefOf (Index (Arg2, Add (0x06, Multiply (Local1, 0x02)))), 
                                Index (B2F2, Local1))
                            Increment (Local1)
                        }

                        Store (ToString (B2F2, Local1), Local3)
                        Return (EZVK (EZVD, Local3))
                    }
                    ElseIf (LEqual (Arg1, 0x0120))
                    {
                        Return (EZVH (EZVD))
                    }
                    ElseIf (LEqual (Arg1, 0x0121))
                    {
                        Name (B1F1, Buffer (0x3C){})
                        Store (EZVL, Local0)
                        Store (Zero, Local1)
                        While (LLess (Multiply (Local1, 0x02), Local0))
                        {
                            Store (DerefOf (Index (Arg2, Add (0x06, Multiply (Local1, 0x02)))), 
                                Index (B1F1, Local1))
                            Increment (Local1)
                        }

                        Store (ToString (B1F1, Local1), Local3)
                        EZVI (EZVD, Local3)
                    }
                }
                ElseIf (LEqual (Arg1, 0x0122))
                {
                    Return (ZRC9 ())
                }
                ElseIf (LEqual (Arg1, 0x0123))
                {
                    Return (ZRCY (DerefOf (Index (Arg2, Zero))))
                }
                ElseIf (LEqual (Arg1, 0x0124))
                {
                    ZRCZ (DerefOf (Index (Arg2, Zero)), DerefOf (Index (Arg2, One)))
                }
                ElseIf (LEqual (Arg1, 0x0125))
                {
                    Return (ZRCD (DerefOf (Index (Arg2, Zero))))
                }
                ElseIf (LEqual (Arg1, 0x0126))
                {
                    ZRCE (DerefOf (Index (Arg2, Zero)))
                }
                ElseIf (LEqual (Arg1, 0x0127))
                {
                    Return (ZRCW (DerefOf (Index (Arg2, Zero))))
                }
                ElseIf (LEqual (Arg1, 0x0128))
                {
                    ZRCX (DerefOf (Index (Arg2, Zero)), DerefOf (Index (Arg2, One)))
                }
                ElseIf (LEqual (Arg1, 0x0129))
                {
                    Return (ZRCA (DerefOf (Index (Arg2, Zero))))
                }
                ElseIf (LEqual (Arg1, 0x012A))
                {
                    ZRC7 (DerefOf (Index (Arg2, Zero)), DerefOf (Index (Arg2, One)), DerefOf (
                        Index (Arg2, 0x02)))
                    Return (ToHexString (ZRCL, Local1))
                }
                ElseIf (LEqual (Arg1, 0x012B))
                {
                    ZRCM (DerefOf (Index (Arg2, Zero)), DerefOf (Index (Arg2, One)))
                }
                ElseIf (LEqual (Arg1, 0x012C))
                {
                    Return (DIMC ())
                }
                ElseIf (LEqual (Arg1, 0x0130))
                {
                    Return (DIMD (DerefOf (Index (Arg2, Zero))))
                }
                ElseIf (LEqual (Arg1, 0x0136))
                {
                    Return (DIM1 (DerefOf (Index (Arg2, Zero))))
                }
            }

            Method (WMBC, 3, NotSerialized)
            {
            }
        }
    }

    Scope (\_SB)
    {
    }

    Scope (\)
    {
    }
}

