// class version 46.0 (46)
// access flags 0x21
public class soot/asm/backend/targets/ArithmeticLib {

  // compiled from: ArithmeticLib.java

  // access flags 0x2
  private I rInt

  // access flags 0x2
  private F rFloat

  // access flags 0x2
  private J rLong

  // access flags 0x2
  private D rDouble

  // access flags 0x2
  private S rShort

  // access flags 0x2
  private C rChar

  // access flags 0x2
  private B rByte

  // access flags 0x10
  final I cInt = 1

  // access flags 0x10
  final F cFloat = 1.0

  // access flags 0x10
  final J cLong = 1

  // access flags 0x10
  final D cDouble = 1.0

  // access flags 0x1
  public <init>()V
    ALOAD 0
    INVOKESPECIAL java/lang/Object.<init> ()V
    ALOAD 0
    ICONST_1
    PUTFIELD soot/asm/backend/targets/ArithmeticLib.cInt : I
    ALOAD 0
    FCONST_1
    PUTFIELD soot/asm/backend/targets/ArithmeticLib.cFloat : F
    ALOAD 0
    LCONST_1
    PUTFIELD soot/asm/backend/targets/ArithmeticLib.cLong : J
    ALOAD 0
    DCONST_1
    PUTFIELD soot/asm/backend/targets/ArithmeticLib.cDouble : D
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public castInt2Byte()B
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/ArithmeticLib.rInt : I
    I2B
    PUTFIELD soot/asm/backend/targets/ArithmeticLib.rByte : B
    ALOAD 0
    GETFIELD soot/asm/backend/targets/ArithmeticLib.rByte : B
    IRETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public castInt2Char()C
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/ArithmeticLib.rInt : I
    I2C
    PUTFIELD soot/asm/backend/targets/ArithmeticLib.rChar : C
    ALOAD 0
    GETFIELD soot/asm/backend/targets/ArithmeticLib.rChar : C
    IRETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public castInt2Short()S
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/ArithmeticLib.rInt : I
    I2S
    PUTFIELD soot/asm/backend/targets/ArithmeticLib.rShort : S
    ALOAD 0
    GETFIELD soot/asm/backend/targets/ArithmeticLib.rShort : S
    IRETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public doCompDouble(D)D
    ALOAD 0
    DLOAD 1
    DCONST_1
    DDIV
    D2I
    PUTFIELD soot/asm/backend/targets/ArithmeticLib.rInt : I
    ALOAD 0
    DLOAD 1
    LDC 6.0
    DMUL
    D2L
    PUTFIELD soot/asm/backend/targets/ArithmeticLib.rLong : J
    ALOAD 0
    DLOAD 1
    DCONST_0
    DADD
    D2F
    PUTFIELD soot/asm/backend/targets/ArithmeticLib.rFloat : F
    ALOAD 0
    DLOAD 1
    LDC 4.0
    DSUB
    PUTFIELD soot/asm/backend/targets/ArithmeticLib.rDouble : D
    ALOAD 0
    GETFIELD soot/asm/backend/targets/ArithmeticLib.rDouble : D
    DRETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public doCompFloat(F)F
    ALOAD 0
    FLOAD 1
    LDC 13.0
    FDIV
    F2I
    PUTFIELD soot/asm/backend/targets/ArithmeticLib.rInt : I
    ALOAD 0
    FLOAD 1
    LDC 3.0
    FMUL
    PUTFIELD soot/asm/backend/targets/ArithmeticLib.rFloat : F
    ALOAD 0
    FLOAD 1
    FCONST_2
    FSUB
    F2L
    PUTFIELD soot/asm/backend/targets/ArithmeticLib.rLong : J
    ALOAD 0
    FLOAD 1
    FCONST_1
    FADD
    F2D
    PUTFIELD soot/asm/backend/targets/ArithmeticLib.rDouble : D
    ALOAD 0
    GETFIELD soot/asm/backend/targets/ArithmeticLib.rFloat : F
    FRETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public doCompInt(I)I
    ALOAD 0
    ILOAD 1
    ICONST_M1
    IDIV
    PUTFIELD soot/asm/backend/targets/ArithmeticLib.rInt : I
    ALOAD 0
    ILOAD 1
    BIPUSH 17
    IMUL
    I2F
    PUTFIELD soot/asm/backend/targets/ArithmeticLib.rFloat : F
    ALOAD 0
    ILOAD 1
    ICONST_5
    IADD
    I2L
    PUTFIELD soot/asm/backend/targets/ArithmeticLib.rLong : J
    ALOAD 0
    ILOAD 1
    ICONST_2
    ISUB
    I2D
    PUTFIELD soot/asm/backend/targets/ArithmeticLib.rDouble : D
    ALOAD 0
    GETFIELD soot/asm/backend/targets/ArithmeticLib.rInt : I
    IRETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public doCompLong(J)J
    ALOAD 0
    LLOAD 1
    LDC 5
    LMUL
    L2I
    PUTFIELD soot/asm/backend/targets/ArithmeticLib.rInt : I
    ALOAD 0
    LLOAD 1
    LDC 2
    LADD
    L2F
    PUTFIELD soot/asm/backend/targets/ArithmeticLib.rFloat : F
    ALOAD 0
    LLOAD 1
    LDC 6
    LMUL
    PUTFIELD soot/asm/backend/targets/ArithmeticLib.rLong : J
    ALOAD 0
    LLOAD 1
    LDC 6
    LDIV
    L2D
    PUTFIELD soot/asm/backend/targets/ArithmeticLib.rDouble : D
    ALOAD 0
    GETFIELD soot/asm/backend/targets/ArithmeticLib.rLong : J
    LRETURN
    MAXSTACK = 0
    MAXLOCALS = 0
}
