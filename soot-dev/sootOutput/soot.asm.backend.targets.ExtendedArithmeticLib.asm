// class version 45.3 (196653)
// access flags 0x21
public class soot/asm/backend/targets/ExtendedArithmeticLib {

  // compiled from: ExtendedArithmeticLib.java

  // access flags 0x2
  private I i1

  // access flags 0x2
  private F f1

  // access flags 0x2
  private J l1

  // access flags 0x2
  private D d1

  // access flags 0x2
  private S s1

  // access flags 0x2
  private B b1

  // access flags 0x2
  private I i2

  // access flags 0x2
  private F f2

  // access flags 0x2
  private J l2

  // access flags 0x2
  private D d2

  // access flags 0x2
  private I i3

  // access flags 0x2
  private F f3

  // access flags 0x2
  private J l3

  // access flags 0x2
  private D d3

  // access flags 0x1
  public <init>()V
    ALOAD 0
    INVOKESPECIAL java/lang/Object.<init> ()V
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public doBNeg(B)I
    ILOAD 1
    INEG
    IRETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public doCNeg(C)I
    ILOAD 1
    INEG
    IRETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public doDNeg(D)D
    DLOAD 1
    DNEG
    DRETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public doFNeg(F)F
    FLOAD 1
    FNEG
    FRETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public doINeg(I)I
    ILOAD 1
    INEG
    IRETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public doInc()I
    ICONST_0
    ISTORE 0
    ICONST_0
    ISTORE 1
   L0
    ILOAD 1
    BIPUSH 100
    IF_ICMPGE L1
    IINC 0 4
    IINC 1 1
    GOTO L0
   L1
    ILOAD 0
    IRETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public doLNeg(J)J
    LLOAD 1
    LRETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public doMod()V
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/ExtendedArithmeticLib.i2 : I
    ALOAD 0
    GETFIELD soot/asm/backend/targets/ExtendedArithmeticLib.i3 : I
    IREM
    PUTFIELD soot/asm/backend/targets/ExtendedArithmeticLib.i1 : I
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/ExtendedArithmeticLib.f2 : F
    ALOAD 0
    GETFIELD soot/asm/backend/targets/ExtendedArithmeticLib.f3 : F
    FREM
    PUTFIELD soot/asm/backend/targets/ExtendedArithmeticLib.f1 : F
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/ExtendedArithmeticLib.l2 : J
    ALOAD 0
    GETFIELD soot/asm/backend/targets/ExtendedArithmeticLib.l3 : J
    LREM
    PUTFIELD soot/asm/backend/targets/ExtendedArithmeticLib.l1 : J
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/ExtendedArithmeticLib.d2 : D
    ALOAD 0
    GETFIELD soot/asm/backend/targets/ExtendedArithmeticLib.d3 : D
    DREM
    PUTFIELD soot/asm/backend/targets/ExtendedArithmeticLib.d1 : D
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public doSNeg(S)I
    ILOAD 1
    INEG
    IRETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public doSub()V
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/ExtendedArithmeticLib.i2 : I
    ALOAD 0
    GETFIELD soot/asm/backend/targets/ExtendedArithmeticLib.i3 : I
    ISUB
    PUTFIELD soot/asm/backend/targets/ExtendedArithmeticLib.i1 : I
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/ExtendedArithmeticLib.f2 : F
    ALOAD 0
    GETFIELD soot/asm/backend/targets/ExtendedArithmeticLib.f3 : F
    FSUB
    PUTFIELD soot/asm/backend/targets/ExtendedArithmeticLib.f1 : F
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/ExtendedArithmeticLib.l2 : J
    ALOAD 0
    GETFIELD soot/asm/backend/targets/ExtendedArithmeticLib.l3 : J
    LSUB
    PUTFIELD soot/asm/backend/targets/ExtendedArithmeticLib.l1 : J
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/ExtendedArithmeticLib.d2 : D
    ALOAD 0
    GETFIELD soot/asm/backend/targets/ExtendedArithmeticLib.d3 : D
    DSUB
    PUTFIELD soot/asm/backend/targets/ExtendedArithmeticLib.d1 : D
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0
}
