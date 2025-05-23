// class version 49.0 (49)
// access flags 0x4031
// signature Ljava/lang/Enum<Lsoot/asm/backend/targets/MyEnum;>;
// declaration: soot/asm/backend/targets/MyEnum extends java.lang.Enum<soot.asm.backend.targets.MyEnum>
public final enum soot/asm/backend/targets/MyEnum extends java/lang/Enum {

  // compiled from: MyEnum.java

  // access flags 0x4019
  public final static enum Lsoot/asm/backend/targets/MyEnum; JA

  // access flags 0x4019
  public final static enum Lsoot/asm/backend/targets/MyEnum; NEIN

  // access flags 0x101A
  private final static synthetic [Lsoot/asm/backend/targets/MyEnum; $VALUES

  // access flags 0x8
  static <clinit>()V
    NEW soot/asm/backend/targets/MyEnum
    DUP
    LDC "JA"
    ICONST_0
    INVOKESPECIAL soot/asm/backend/targets/MyEnum.<init> (Ljava/lang/String;I)V
    PUTSTATIC soot/asm/backend/targets/MyEnum.JA : Lsoot/asm/backend/targets/MyEnum;
    NEW soot/asm/backend/targets/MyEnum
    DUP
    LDC "NEIN"
    ICONST_1
    INVOKESPECIAL soot/asm/backend/targets/MyEnum.<init> (Ljava/lang/String;I)V
    PUTSTATIC soot/asm/backend/targets/MyEnum.NEIN : Lsoot/asm/backend/targets/MyEnum;
    ICONST_2
    ANEWARRAY soot/asm/backend/targets/MyEnum
    ASTORE 0
    ALOAD 0
    ICONST_0
    GETSTATIC soot/asm/backend/targets/MyEnum.JA : Lsoot/asm/backend/targets/MyEnum;
    AASTORE
    ALOAD 0
    ICONST_1
    GETSTATIC soot/asm/backend/targets/MyEnum.NEIN : Lsoot/asm/backend/targets/MyEnum;
    AASTORE
    ALOAD 0
    PUTSTATIC soot/asm/backend/targets/MyEnum.$VALUES : [Lsoot/asm/backend/targets/MyEnum;
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x2
  // signature ()V
  // declaration: void <init>()
  private <init>(Ljava/lang/String;I)V
    ALOAD 0
    ALOAD 1
    ILOAD 2
    INVOKESPECIAL java/lang/Enum.<init> (Ljava/lang/String;I)V
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x9
  public static valueOf(Ljava/lang/String;)Lsoot/asm/backend/targets/MyEnum;
    LDC Lsoot/asm/backend/targets/MyEnum;.class
    ALOAD 0
    INVOKESTATIC java/lang/Enum.valueOf (Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    CHECKCAST soot/asm/backend/targets/MyEnum
    ARETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x9
  public static values()[Lsoot/asm/backend/targets/MyEnum;
    GETSTATIC soot/asm/backend/targets/MyEnum.$VALUES : [Lsoot/asm/backend/targets/MyEnum;
    INVOKEVIRTUAL java/lang/Object.clone ()Ljava/lang/Object;
    CHECKCAST [Lsoot/asm/backend/targets/MyEnum;
    ARETURN
    MAXSTACK = 0
    MAXLOCALS = 0
}
