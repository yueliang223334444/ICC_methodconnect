// class version 45.3 (196653)
// access flags 0x21
public class soot/asm/backend/targets/Stores {

  // compiled from: Stores.java

  // access flags 0x1
  public <init>()V
    ALOAD 0
    INVOKESPECIAL java/lang/Object.<init> ()V
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public doSth()I
    INVOKESTATIC java/lang/System.currentTimeMillis ()J
    LCONST_0
    LCMP
    IFLE L0
    ICONST_1
    ISTORE 0
    GOTO L1
   L0
    ICONST_0
    ISTORE 0
   L1
    LDC 2343249
    I2B
    NEW java/lang/Object
    ASTORE 1
    ALOAD 1
    INVOKESPECIAL java/lang/Object.<init> ()V
    ICONST_3
    NEWARRAY T_INT
    ICONST_1
    LDC 24355764
    IASTORE
    ISTORE 2
    GETSTATIC java/lang/System.out : Ljava/io/PrintStream;
    NEW java/lang/StringBuilder
    DUP
    INVOKESPECIAL java/lang/StringBuilder.<init> ()V
    LDC 2343249
    I2D
    LDC 3.14324
    DADD
    LDC 3.143
    F2D
    DADD
    SIPUSH 4636
    I2D
    DADD
    INVOKEVIRTUAL java/lang/StringBuilder.append (D)Ljava/lang/StringBuilder;
    LDC ""
    INVOKEVIRTUAL java/lang/StringBuilder.append (Ljava/lang/String;)Ljava/lang/StringBuilder;
    ILOAD 0
    INVOKEVIRTUAL java/lang/StringBuilder.append (Z)Ljava/lang/StringBuilder;
    ILOAD 2
    INVOKEVIRTUAL java/lang/StringBuilder.append (I)Ljava/lang/StringBuilder;
    LDC 314435665
    INVOKEVIRTUAL java/lang/StringBuilder.append (J)Ljava/lang/StringBuilder;
    BIPUSH 123
    INVOKEVIRTUAL java/lang/StringBuilder.append (C)Ljava/lang/StringBuilder;
    LDC " "
    INVOKEVIRTUAL java/lang/StringBuilder.append (Ljava/lang/String;)Ljava/lang/StringBuilder;
    ALOAD 1
    INVOKEVIRTUAL java/lang/StringBuilder.append (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    INVOKEVIRTUAL java/lang/StringBuilder.toString ()Ljava/lang/String;
    INVOKEVIRTUAL java/io/PrintStream.println (Ljava/lang/String;)V
    LDC 2343249
    IRETURN
    MAXSTACK = 0
    MAXLOCALS = 0
}
