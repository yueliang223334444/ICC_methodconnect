// class version 45.3 (196653)
// access flags 0x21
public class soot/asm/backend/targets/Returns {

  // compiled from: Returns.java

  // access flags 0x1
  public <init>()V
    ALOAD 0
    INVOKESPECIAL java/lang/Object.<init> ()V
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public getIntArray()[I
    ICONST_4
    NEWARRAY T_INT
    ARETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public getNull()Ljava/lang/Object;
    ACONST_NULL
    ARETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public getObjectArray()[Ljava/lang/Object;
    ICONST_4
    ANEWARRAY java/lang/Object
    ARETURN
    MAXSTACK = 0
    MAXLOCALS = 0
}
