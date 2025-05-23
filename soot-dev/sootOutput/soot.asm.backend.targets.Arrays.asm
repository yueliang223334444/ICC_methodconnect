// class version 45.3 (196653)
// access flags 0x21
public class soot/asm/backend/targets/Arrays {

  // compiled from: Arrays.java

  // access flags 0x1
  public <init>()V
    ALOAD 0
    INVOKESPECIAL java/lang/Object.<init> ()V
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  doBool()V
    ICONST_3
    NEWARRAY T_BOOLEAN
    DUP
    ICONST_1
    BALOAD
    ISTORE 0
    ICONST_0
    ILOAD 0
    BASTORE
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  doByte()V
    ICONST_4
    NEWARRAY T_BYTE
    DUP
    ICONST_1
    BALOAD
    ISTORE 0
    ICONST_0
    ILOAD 0
    BASTORE
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  doChar()V
    ICONST_5
    NEWARRAY T_CHAR
    DUP
    ICONST_1
    CALOAD
    ISTORE 0
    ICONST_0
    ILOAD 0
    CASTORE
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  doDouble()V
    BIPUSH 6
    NEWARRAY T_DOUBLE
    DUP
    ICONST_1
    DALOAD
    DSTORE 1
    ICONST_0
    DLOAD 1
    DASTORE
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  doFloat()V
    BIPUSH 7
    NEWARRAY T_FLOAT
    DUP
    ICONST_1
    FALOAD
    FSTORE 0
    ICONST_0
    FLOAD 0
    FASTORE
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  doInt()V
    BIPUSH 8
    NEWARRAY T_INT
    DUP
    ICONST_1
    IALOAD
    ISTORE 0
    ICONST_0
    ILOAD 0
    IASTORE
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  doIntInt()V
    ICONST_3
    ICONST_3
    MULTIANEWARRAY [[I 2
    ASTORE 0
    ALOAD 0
    ICONST_0
    ALOAD 0
    ICONST_1
    AALOAD
    AASTORE
    ALOAD 0
    ICONST_1
    AALOAD
    ICONST_2
    ALOAD 0
    ICONST_2
    AALOAD
    ICONST_1
    IALOAD
    IASTORE
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  doLong()V
    BIPUSH 9
    NEWARRAY T_LONG
    DUP
    ICONST_1
    LALOAD
    LSTORE 1
    ICONST_0
    LLOAD 1
    LASTORE
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  doObject()V
    BIPUSH 11
    ANEWARRAY java/lang/Object
    ASTORE 0
    ALOAD 0
    ICONST_0
    ALOAD 0
    ICONST_1
    AALOAD
    AASTORE
    ALOAD 0
    ICONST_3
    ACONST_NULL
    AASTORE
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  doObjectObject()V
    ICONST_4
    ICONST_4
    MULTIANEWARRAY [[Ljava/lang/Object; 2
    ASTORE 0
    ALOAD 0
    ICONST_0
    ALOAD 0
    ICONST_1
    AALOAD
    AASTORE
    ALOAD 0
    ICONST_1
    AALOAD
    ICONST_2
    ALOAD 0
    ICONST_2
    AALOAD
    ICONST_1
    AALOAD
    AASTORE
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  doShort()V
    BIPUSH 10
    NEWARRAY T_SHORT
    DUP
    ICONST_1
    SALOAD
    ISTORE 0
    ICONST_0
    ILOAD 0
    SASTORE
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x0
  doString()V
    BIPUSH 12
    ANEWARRAY java/lang/String
    DUP
    ICONST_1
    AALOAD
    ASTORE 0
    ICONST_0
    ALOAD 0
    AASTORE
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0
}
