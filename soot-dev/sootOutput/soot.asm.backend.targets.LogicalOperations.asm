// class version 45.3 (196653)
// access flags 0x21
public class soot/asm/backend/targets/LogicalOperations {

  // compiled from: LogicalOperations.java

  // access flags 0x2
  private I i1

  // access flags 0x2
  private Z b1

  // access flags 0x2
  private J l1

  // access flags 0x2
  private I i2

  // access flags 0x2
  private Z b2

  // access flags 0x2
  private J l2

  // access flags 0x1
  public <init>()V
    ALOAD 0
    INVOKESPECIAL java/lang/Object.<init> ()V
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public doAnd()V
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.i2 : I
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.i1 : I
    IAND
    PUTFIELD soot/asm/backend/targets/LogicalOperations.i1 : I
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.l2 : J
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.l1 : J
    LAND
    PUTFIELD soot/asm/backend/targets/LogicalOperations.l1 : J
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.b2 : Z
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.b1 : Z
    IAND
    PUTFIELD soot/asm/backend/targets/LogicalOperations.b1 : Z
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public doInv()V
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.i2 : I
    ICONST_M1
    IXOR
    PUTFIELD soot/asm/backend/targets/LogicalOperations.i1 : I
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.i2 : I
    ICONST_M1
    IXOR
    I2L
    PUTFIELD soot/asm/backend/targets/LogicalOperations.l1 : J
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public doOr()V
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.i2 : I
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.i1 : I
    IOR
    PUTFIELD soot/asm/backend/targets/LogicalOperations.i1 : I
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.l2 : J
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.l1 : J
    LOR
    PUTFIELD soot/asm/backend/targets/LogicalOperations.l1 : J
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.b2 : Z
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.b1 : Z
    IOR
    PUTFIELD soot/asm/backend/targets/LogicalOperations.b1 : Z
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public doShl()V
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.i1 : I
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.i2 : I
    ISHL
    PUTFIELD soot/asm/backend/targets/LogicalOperations.i1 : I
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.l1 : J
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.l2 : J
    L2I
    LSHL
    PUTFIELD soot/asm/backend/targets/LogicalOperations.l1 : J
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public doShr()V
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.i1 : I
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.i2 : I
    ISHR
    PUTFIELD soot/asm/backend/targets/LogicalOperations.i1 : I
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.l1 : J
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.l2 : J
    L2I
    LSHR
    PUTFIELD soot/asm/backend/targets/LogicalOperations.l1 : J
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public doUShr()V
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.i1 : I
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.i2 : I
    IUSHR
    PUTFIELD soot/asm/backend/targets/LogicalOperations.i1 : I
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.l1 : J
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.l2 : J
    L2I
    LUSHR
    PUTFIELD soot/asm/backend/targets/LogicalOperations.l1 : J
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public doXOr()V
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.i2 : I
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.i1 : I
    IXOR
    PUTFIELD soot/asm/backend/targets/LogicalOperations.i1 : I
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.l2 : J
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.l1 : J
    LXOR
    PUTFIELD soot/asm/backend/targets/LogicalOperations.l1 : J
    ALOAD 0
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.b2 : Z
    ALOAD 0
    GETFIELD soot/asm/backend/targets/LogicalOperations.b1 : Z
    IXOR
    PUTFIELD soot/asm/backend/targets/LogicalOperations.b1 : Z
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0
}
