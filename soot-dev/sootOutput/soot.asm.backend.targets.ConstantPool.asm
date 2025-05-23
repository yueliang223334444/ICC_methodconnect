// class version 45.3 (196653)
// access flags 0x21
public class soot/asm/backend/targets/ConstantPool {

  // compiled from: ConstantPool.java

  // access flags 0x19
  public final static Ljava/lang/String; s1 = "H:mm:ss.SSS"

  // access flags 0x19
  public final static Ljava/lang/String; s2

  // access flags 0x19
  public final static Ljava/lang/Object; o1

  // access flags 0x19
  public final static Ljava/lang/Object; o2

  // access flags 0x19
  public final static Ljava/lang/Object; o3

  // access flags 0x19
  public final static Ljava/lang/Object; o4

  // access flags 0x19
  public final static Ljava/lang/Object; o5

  // access flags 0x19
  public final static I i1 = 123

  // access flags 0x19
  public final static I i2

  // access flags 0x19
  public final static J l1 = 12233

  // access flags 0x19
  public final static J l2 = 123

  // access flags 0x19
  public final static J l3

  // access flags 0x19
  public final static D d1 = 123.142

  // access flags 0x19
  public final static D d2 = 1234.123046875

  // access flags 0x19
  public final static D d3

  // access flags 0x8
  static <clinit>()V
    ACONST_NULL
    PUTSTATIC soot/asm/backend/targets/ConstantPool.s2 : Ljava/lang/String;
    LDC "O"
    PUTSTATIC soot/asm/backend/targets/ConstantPool.o1 : Ljava/lang/Object;
    ACONST_NULL
    PUTSTATIC soot/asm/backend/targets/ConstantPool.o2 : Ljava/lang/Object;
    BIPUSH 123
    INVOKESTATIC java/lang/Integer.valueOf (I)Ljava/lang/Integer;
    PUTSTATIC soot/asm/backend/targets/ConstantPool.o3 : Ljava/lang/Object;
    LDC 1234
    INVOKESTATIC java/lang/Long.valueOf (J)Ljava/lang/Long;
    PUTSTATIC soot/asm/backend/targets/ConstantPool.o4 : Ljava/lang/Object;
    LDC 123.3
    INVOKESTATIC java/lang/Double.valueOf (D)Ljava/lang/Double;
    PUTSTATIC soot/asm/backend/targets/ConstantPool.o5 : Ljava/lang/Object;
    NEW java/lang/Integer
    DUP
    BIPUSH 123
    INVOKESPECIAL java/lang/Integer.<init> (I)V
    INVOKEVIRTUAL java/lang/Integer.intValue ()I
    PUTSTATIC soot/asm/backend/targets/ConstantPool.i2 : I
    NEW java/lang/Long
    DUP
    LDC 12341
    INVOKESPECIAL java/lang/Long.<init> (J)V
    INVOKEVIRTUAL java/lang/Long.longValue ()J
    PUTSTATIC soot/asm/backend/targets/ConstantPool.l3 : J
    NEW java/lang/Double
    DUP
    LDC 1234.123
    INVOKESPECIAL java/lang/Double.<init> (D)V
    INVOKEVIRTUAL java/lang/Double.doubleValue ()D
    PUTSTATIC soot/asm/backend/targets/ConstantPool.d3 : D
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public <init>()V
    ALOAD 0
    INVOKESPECIAL java/lang/Object.<init> ()V
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0
}
