// class version 49.0 (49)
// access flags 0x21
public class soot/asm/backend/targets/AnnotatedParameter {

  // compiled from: AnnotatedParameter.java

  // access flags 0x1
  public <init>()V
    ALOAD 0
    INVOKESPECIAL java/lang/Object.<init> ()V
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public doSth(Ljava/lang/String;)V
    @Lsoot/asm/backend/targets/MyTestAnnotation;(iVal=1, fVal=1.0F, lVal=1L, dVal=1.0D, zVal=true, bVal=(byte)1, sVal=(short)1, strVal="1", rVal=soot.asm.backend.targets.AnnotatedClass.class, iAVal={1, 2, 3, 4}, sAVal={"A", "B", "C"}) // parameter 0
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0
}
