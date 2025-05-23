// class version 45.3 (196653)
// access flags 0x21
public class soot/asm/backend/targets/Monitor {

  // compiled from: Monitor.java

  // access flags 0x0
  Ljava/lang/Object; o

  // access flags 0x1
  public <init>()V
    ALOAD 0
    INVOKESPECIAL java/lang/Object.<init> ()V
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0

  // access flags 0x1
  public doSth()V
    TRYCATCHBLOCK L0 L1 L2 java/lang/Throwable
    TRYCATCHBLOCK L2 L3 L2 java/lang/Throwable
    ALOAD 0
    GETFIELD soot/asm/backend/targets/Monitor.o : Ljava/lang/Object;
    ASTORE 0
    ALOAD 0
    MONITORENTER
   L0
    ALOAD 0
    MONITOREXIT
   L1
    GOTO L4
   L2
    ASTORE 1
    ALOAD 0
    MONITOREXIT
   L3
    ALOAD 1
    ATHROW
   L4
    GETSTATIC java/lang/System.out : Ljava/io/PrintStream;
    INVOKEVIRTUAL java/io/PrintStream.println ()V
    RETURN
    MAXSTACK = 0
    MAXLOCALS = 0
}
