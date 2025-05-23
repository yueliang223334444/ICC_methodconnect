// class version 45.3 (196653)
// access flags 0x21
public class soot/asm/backend/targets/TryCatch {

  // compiled from: TryCatch.java

  // access flags 0x1
  public <init>()V
    ALOAD 0
    INVOKESPECIAL java/lang/Object.<init> ()V
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  doSth(Ljava/lang/Object;)I
    TRYCATCHBLOCK L0 L1 L2 java/lang/NullPointerException
    TRYCATCHBLOCK L0 L1 L3 java/lang/Throwable
    TRYCATCHBLOCK L2 L4 L3 java/lang/Throwable
    TRYCATCHBLOCK L3 L5 L3 java/lang/Throwable
   L0
    ALOAD 1
    INVOKEVIRTUAL java/lang/Object.notify ()V
   L1
    ICONST_1
    IRETURN
   L2
    ASTORE 0
   L4
    ICONST_M1
    IRETURN
   L3
    ASTORE 0
   L5
    ICONST_0
    IRETURN
    MAXSTACK = 0
    MAXLOCALS = 0
}
