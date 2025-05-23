// class version 45.3 (196653)
// access flags 0x21
public class soot/asm/backend/targets/CompareArithmeticInstructions2 {

  // compiled from: CompareArithmeticInstructions2.java

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
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.i : I
    ALOAD 0
    LDC 221349.02
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.f : F
    ALOAD 0
    LDC 2123996.1231231233
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.d : D
    ALOAD 0
    LDC 2
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.l : J
    ALOAD 0
    ICONST_2
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.b : B
    ALOAD 0
    ICONST_4
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.c : C
    ALOAD 0
    ICONST_3
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.s : S
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  compareb(B)V
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.b : B
    ILOAD 1
    IF_ICMPLT L0
    ALOAD 0
    ICONST_2
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.b : B
   L0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.b : B
    ILOAD 1
    IF_ICMPGE L1
    ALOAD 0
    ICONST_1
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.b : B
   L1
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  comparec(C)V
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.c : C
    ILOAD 1
    IF_ICMPLT L0
    ALOAD 0
    ICONST_2
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.c : C
   L0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.c : C
    ILOAD 1
    IF_ICMPGE L1
    ALOAD 0
    ICONST_3
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.c : C
   L1
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  compared(D)V
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.d : D
    DLOAD 1
    DCMPL
    IFLT L0
    ALOAD 0
    LDC 2.0
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.d : D
   L0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.d : D
    DLOAD 1
    DCMPG
    IFGE L1
    ALOAD 0
    DCONST_1
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.d : D
   L1
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  comparef(F)V
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.f : F
    FLOAD 1
    FCMPL
    IFLT L0
    ALOAD 0
    FCONST_2
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.f : F
   L0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.f : F
    FLOAD 1
    FCMPG
    IFGE L1
    ALOAD 0
    FCONST_1
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.f : F
   L1
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  comparei(I)V
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.i : I
    ILOAD 1
    IF_ICMPLT L0
    ALOAD 0
    ICONST_2
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.i : I
   L0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.i : I
    ILOAD 1
    IF_ICMPGE L1
    ALOAD 0
    ICONST_1
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.i : I
   L1
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  comparel(J)V
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.l : J
    LLOAD 1
    LCMP
    IFLT L0
    ALOAD 0
    LDC 2
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.l : J
   L0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.l : J
    LLOAD 1
    LCMP
    IFGE L1
    ALOAD 0
    LCONST_1
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.l : J
   L1
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  compares(S)V
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.s : S
    ILOAD 1
    IF_ICMPLT L0
    ALOAD 0
    ICONST_1
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.s : S
   L0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.s : S
    ILOAD 1
    IF_ICMPGE L1
    ALOAD 0
    ICONST_3
    PUTFIELD soot/asm/backend/targets/CompareArithmeticInstructions2.s : S
   L1
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0
}
