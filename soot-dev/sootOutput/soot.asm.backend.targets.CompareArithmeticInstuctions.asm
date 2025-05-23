// class version 45.3 (196653)
// access flags 0x21
public class soot/asm/backend/targets/CompareArithmeticInstuctions {

  // compiled from: CompareArithmeticInstuctions.java

  // access flags 0x0
  I i

  // access flags 0x0
  F f

  // access flags 0x0
  D d

  // access flags 0x0
  J l

  // access flags 0x0
  B b

  // access flags 0x0
  C c

  // access flags 0x0
  S s

  // access flags 0x1
  public <init>()V
    ALOAD 0
    INVOKESPECIAL java/lang/Object.<init> ()V
    ALOAD 0
    ICONST_2
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.i : I
    ALOAD 0
    LDC 221349.02
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.f : F
    ALOAD 0
    LDC 2123996.1231231233
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.d : D
    ALOAD 0
    LDC 2
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.l : J
    ALOAD 0
    ICONST_2
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.b : B
    ALOAD 0
    ICONST_4
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.c : C
    ALOAD 0
    ICONST_3
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.s : S
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  compareb(B)V
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.b : B
    ILOAD 1
    IF_ICMPGT L0
    ALOAD 0
    ICONST_2
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.b : B
   L0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.b : B
    ILOAD 1
    IF_ICMPLE L1
    ALOAD 0
    ICONST_1
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.b : B
   L1
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  comparec(C)V
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.c : C
    ILOAD 1
    IF_ICMPGT L0
    ALOAD 0
    ICONST_2
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.c : C
   L0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.c : C
    ILOAD 1
    IF_ICMPLE L1
    ALOAD 0
    ICONST_3
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.c : C
   L1
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  compared(D)V
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.d : D
    DLOAD 1
    DCMPG
    IFGT L0
    ALOAD 0
    LDC 2.0
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.d : D
   L0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.d : D
    DLOAD 1
    DCMPL
    IFLE L1
    ALOAD 0
    DCONST_1
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.d : D
   L1
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  comparef(F)V
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.f : F
    FLOAD 1
    FCMPG
    IFGT L0
    ALOAD 0
    FCONST_2
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.f : F
   L0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.f : F
    FLOAD 1
    FCMPL
    IFLE L1
    ALOAD 0
    FCONST_1
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.f : F
   L1
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  comparei(I)V
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.i : I
    ILOAD 1
    IF_ICMPGT L0
    ALOAD 0
    ICONST_2
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.i : I
   L0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.i : I
    ILOAD 1
    IF_ICMPLE L1
    ALOAD 0
    ICONST_1
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.i : I
   L1
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  comparel(J)V
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.l : J
    LLOAD 1
    LCMP
    IFGT L0
    ALOAD 0
    LDC 2
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.l : J
   L0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.l : J
    LLOAD 1
    LCMP
    IFLE L1
    ALOAD 0
    LCONST_1
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.l : J
   L1
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  compares(S)V
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.s : S
    ILOAD 1
    IF_ICMPGT L0
    ALOAD 0
    ICONST_1
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.s : S
   L0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.s : S
    ILOAD 1
    IF_ICMPLE L1
    ALOAD 0
    ICONST_3
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstuctions.s : S
   L1
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0
}
