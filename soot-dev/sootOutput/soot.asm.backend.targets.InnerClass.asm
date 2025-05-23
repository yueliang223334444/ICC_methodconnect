// class version 45.3 (196653)
// access flags 0x21
public class soot/asm/backend/targets/InnerClass {

  // compiled from: InnerClass.java
  // access flags 0x0
  INNERCLASS soot/asm/backend/targets/InnerClass$1 null null
  // access flags 0x2
  private INNERCLASS soot/asm/backend/targets/InnerClass$Inner soot/asm/backend/targets/InnerClass Inner

  // access flags 0x1
  public <init>()V
    ALOAD 0
    INVOKESPECIAL java/lang/Object.<init> ()V
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public doInner()V
    NEW soot/asm/backend/targets/InnerClass$1
    ALOAD 0
    INVOKESPECIAL soot/asm/backend/targets/InnerClass$1.<init> (Lsoot/asm/backend/targets/InnerClass;)V
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public getA()I
    ICONST_3
    IRETURN
    MAXSTACK = 0
    MAXLOCALS = 0
}
