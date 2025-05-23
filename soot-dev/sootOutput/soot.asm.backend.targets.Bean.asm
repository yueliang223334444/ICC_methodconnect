// class version 45.3 (196653)
// access flags 0x21
public class soot/asm/backend/targets/Bean {

  // compiled from: Bean.java

  // access flags 0x2
  private I f

  // access flags 0x1
  public <init>()V
    ALOAD 0
    INVOKESPECIAL java/lang/Object.<init> ()V
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public checkAndSetF(I)V
    ILOAD 1
    IFLT L0
    ALOAD 0
    ILOAD 1
    PUTFIELD soot/asm/backend/targets/Bean.f : I
    GOTO L1
   L0
    NEW java/lang/IllegalArgumentException
    DUP
    INVOKESPECIAL java/lang/IllegalArgumentException.<init> ()V
    ATHROW
   L1
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public getF()I
    ALOAD 0
    GETFIELD soot/asm/backend/targets/Bean.f : I
    IRETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public setF(I)V
    ALOAD 0
    ILOAD 1
    PUTFIELD soot/asm/backend/targets/Bean.f : I
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0
}
