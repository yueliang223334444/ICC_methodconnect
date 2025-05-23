// class version 45.3 (196653)
// access flags 0x21
public class soot/asm/backend/targets/InstanceOfCasts {

  // compiled from: InstanceOfCasts.java

  // access flags 0x1
  public <init>()V
    ALOAD 0
    INVOKESPECIAL java/lang/Object.<init> ()V
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public convertMeasurableArray([Ljava/lang/Object;)[Lsoot/asm/backend/targets/Measurable;
    ALOAD 1
    INSTANCEOF [Lsoot/asm/backend/targets/Measurable;
    IFEQ L0
    ALOAD 1
    CHECKCAST [Lsoot/asm/backend/targets/Measurable;
    ARETURN
   L0
    ACONST_NULL
    ARETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public isMeasurable(Ljava/lang/Object;)Z
    ALOAD 1
    INSTANCEOF soot/asm/backend/targets/Measurable
    IRETURN
    MAXSTACK = 0
    MAXLOCALS = 0
}
