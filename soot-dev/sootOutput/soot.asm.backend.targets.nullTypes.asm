// class version 45.3 (196653)
// access flags 0x21
public class soot/asm/backend/targets/nullTypes {

  // compiled from: nullTypes.java

  // access flags 0x1
  public <init>()V
    ALOAD 0
    INVOKESPECIAL java/lang/Object.<init> ()V
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  doStuff(Ljava/lang/Integer;)Ljava/lang/Integer;
    ALOAD 1
    IFNONNULL L0
    ACONST_NULL
    ARETURN
   L0
    ICONST_1
    INVOKESTATIC java/lang/Integer.valueOf (I)Ljava/lang/Integer;
    ARETURN
    MAXSTACK = 0
    MAXLOCALS = 0
}
