.class public final Lcom/android/systemui/log/LogMessageImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/log/LogMessage;


# static fields
.field public static final Factory:Lcom/android/systemui/log/LogMessageImpl$Factory;


# instance fields
.field private bool1:Z

.field private bool2:Z

.field private bool3:Z

.field private bool4:Z

.field private double1:D

.field private exception:Ljava/lang/Throwable;

.field private int1:I

.field private int2:I

.field private level:Lcom/android/systemui/log/LogLevel;

.field private long1:J

.field private long2:J

.field private messagePrinter:Lkotlin/jvm/functions/Function1;

.field private str1:Ljava/lang/String;

.field private str2:Ljava/lang/String;

.field private str3:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/log/LogMessageImpl$Factory;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/log/LogMessageImpl$Factory;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/log/LogMessageImpl;->Factory:Lcom/android/systemui/log/LogMessageImpl$Factory;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Lcom/android/systemui/log/LogLevel;Ljava/lang/String;JLkotlin/jvm/functions/Function1;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJDZZZZ)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    move-object v1, p1

    .line 6
    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->level:Lcom/android/systemui/log/LogLevel;

    .line 7
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->tag:Ljava/lang/String;

    .line 10
    move-wide v1, p3

    .line 12
    iput-wide v1, v0, Lcom/android/systemui/log/LogMessageImpl;->timestamp:J

    .line 13
    move-object v1, p5

    .line 15
    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->messagePrinter:Lkotlin/jvm/functions/Function1;

    .line 16
    move-object v1, p6

    .line 18
    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->exception:Ljava/lang/Throwable;

    .line 19
    move-object v1, p7

    .line 21
    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    .line 22
    move-object v1, p8

    .line 24
    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    .line 25
    move-object v1, p9

    .line 27
    iput-object v1, v0, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    .line 28
    move v1, p10

    .line 30
    iput v1, v0, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    .line 31
    move v1, p11

    .line 33
    iput v1, v0, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    .line 34
    move-wide v1, p12

    .line 36
    iput-wide v1, v0, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    .line 37
    move-wide/from16 v1, p14

    .line 39
    iput-wide v1, v0, Lcom/android/systemui/log/LogMessageImpl;->long2:J

    .line 41
    move-wide/from16 v1, p16

    .line 43
    iput-wide v1, v0, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    .line 45
    move/from16 v1, p18

    .line 47
    iput-boolean v1, v0, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    .line 49
    move/from16 v1, p19

    .line 51
    iput-boolean v1, v0, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    .line 53
    move/from16 v1, p20

    .line 55
    iput-boolean v1, v0, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    .line 57
    move/from16 v1, p21

    .line 59
    iput-boolean v1, v0, Lcom/android/systemui/log/LogMessageImpl;->bool4:Z

    .line 61
    return-void
    .line 63
.end method

.method public static synthetic copy$default(Lcom/android/systemui/log/LogMessageImpl;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;JLkotlin/jvm/functions/Function1;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJDZZZZILjava/lang/Object;)Lcom/android/systemui/log/LogMessageImpl;
    .locals 18

    .line 1
    move/from16 v0, p22

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getLevel()Lcom/android/systemui/log/LogLevel;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getTag()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getTimestamp()J

    move-result-wide v3

    goto :goto_2

    :cond_2
    move-wide/from16 v3, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getMessagePrinter()Lkotlin/jvm/functions/Function1;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object/from16 v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getException()Ljava/lang/Throwable;

    move-result-object v6

    goto :goto_4

    :cond_4
    move-object/from16 v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr1()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr2()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr3()Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    :cond_7
    move-object/from16 v9, p9

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getInt1()I

    move-result v10

    goto :goto_8

    :cond_8
    move/from16 v10, p10

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getInt2()I

    move-result v11

    goto :goto_9

    :cond_9
    move/from16 v11, p11

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getLong1()J

    move-result-wide v12

    goto :goto_a

    :cond_a
    move-wide/from16 v12, p12

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getLong2()J

    move-result-wide v14

    goto :goto_b

    :cond_b
    move-wide/from16 v14, p14

    :goto_b
    move-wide/from16 p14, v14

    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getDouble1()D

    move-result-wide v14

    goto :goto_c

    :cond_c
    move-wide/from16 v14, p16

    :goto_c
    move-wide/from16 p16, v14

    and-int/lit16 v14, v0, 0x2000

    if-eqz v14, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool1()Z

    move-result v14

    goto :goto_d

    :cond_d
    move/from16 v14, p18

    :goto_d
    and-int/lit16 v15, v0, 0x4000

    if-eqz v15, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool2()Z

    move-result v15

    goto :goto_e

    :cond_e
    move/from16 v15, p19

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool3()Z

    move-result v16

    goto :goto_f

    :cond_f
    move/from16 v16, p20

    :goto_f
    const/high16 v17, 0x10000

    and-int v0, v0, v17

    if-eqz v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool4()Z

    move-result v0

    goto :goto_10

    :cond_10
    move/from16 v0, p21

    :goto_10
    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-wide/from16 p3, v3

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move/from16 p10, v10

    move/from16 p11, v11

    move-wide/from16 p12, v12

    move/from16 p18, v14

    move/from16 p19, v15

    move/from16 p20, v16

    move/from16 p21, v0

    invoke-virtual/range {p0 .. p21}, Lcom/android/systemui/log/LogMessageImpl;->copy(Lcom/android/systemui/log/LogLevel;Ljava/lang/String;JLkotlin/jvm/functions/Function1;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJDZZZZ)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic reset$default(Lcom/android/systemui/log/LogMessageImpl;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;JLkotlin/jvm/functions/Function1;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p7, p7, 0x10

    .line 2
    if-eqz p7, :cond_0

    .line 4
    const/4 p6, 0x0

    .line 6
    :cond_0
    move-object v6, p6

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-wide v3, p3

    .line 11
    move-object v5, p5

    .line 12
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/log/LogMessageImpl;->reset(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;JLkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    .line 13
    return-void
    .line 16
.end method


# virtual methods
.method public final component1()Lcom/android/systemui/log/LogLevel;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getLevel()Lcom/android/systemui/log/LogLevel;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final component10()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getInt2()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final component11()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getLong1()J

    .line 2
    move-result-wide v0

    .line 5
    return-wide v0
    .line 6
.end method

.method public final component12()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getLong2()J

    .line 2
    move-result-wide v0

    .line 5
    return-wide v0
    .line 6
.end method

.method public final component13()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getDouble1()D

    .line 2
    move-result-wide v0

    .line 5
    return-wide v0
    .line 6
.end method

.method public final component14()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool1()Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final component15()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool2()Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final component16()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool3()Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final component17()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool4()Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getTag()Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final component3()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getTimestamp()J

    .line 2
    move-result-wide v0

    .line 5
    return-wide v0
    .line 6
.end method

.method public final component4()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getMessagePrinter()Lkotlin/jvm/functions/Function1;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final component5()Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getException()Ljava/lang/Throwable;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr1()Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr2()Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr3()Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final component9()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getInt1()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final copy(Lcom/android/systemui/log/LogLevel;Ljava/lang/String;JLkotlin/jvm/functions/Function1;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJDZZZZ)Lcom/android/systemui/log/LogMessageImpl;
    .locals 23

    .line 1
    move-object/from16 v1, p1

    .line 2
    move-object/from16 v2, p2

    .line 4
    move-wide/from16 v3, p3

    .line 6
    move-object/from16 v5, p5

    .line 8
    move-object/from16 v6, p6

    .line 10
    move-object/from16 v7, p7

    .line 12
    move-object/from16 v8, p8

    .line 14
    move-object/from16 v9, p9

    .line 16
    move/from16 v10, p10

    .line 18
    move/from16 v11, p11

    .line 20
    move-wide/from16 v12, p12

    .line 22
    move-wide/from16 v14, p14

    .line 24
    move-wide/from16 v16, p16

    .line 26
    move/from16 v18, p18

    .line 28
    move/from16 v19, p19

    .line 30
    move/from16 v20, p20

    .line 32
    move/from16 v21, p21

    .line 34
    new-instance v22, Lcom/android/systemui/log/LogMessageImpl;

    .line 36
    move-object/from16 v0, v22

    .line 38
    invoke-direct/range {v0 .. v21}, Lcom/android/systemui/log/LogMessageImpl;-><init>(Lcom/android/systemui/log/LogLevel;Ljava/lang/String;JLkotlin/jvm/functions/Function1;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJDZZZZ)V

    .line 40
    return-object v22
    .line 43
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/log/LogMessageImpl;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/log/LogMessageImpl;

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getLevel()Lcom/android/systemui/log/LogLevel;

    .line 14
    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getLevel()Lcom/android/systemui/log/LogLevel;

    .line 18
    move-result-object v3

    .line 21
    if-eq v1, v3, :cond_2

    .line 22
    return v2

    .line 24
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getTag()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 28
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getTag()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 32
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    move-result v1

    .line 36
    if-nez v1, :cond_3

    .line 37
    return v2

    .line 39
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getTimestamp()J

    .line 40
    move-result-wide v3

    .line 43
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getTimestamp()J

    .line 44
    move-result-wide v5

    .line 47
    cmp-long v1, v3, v5

    .line 48
    if-eqz v1, :cond_4

    .line 50
    return v2

    .line 52
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getMessagePrinter()Lkotlin/jvm/functions/Function1;

    .line 53
    move-result-object v1

    .line 56
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getMessagePrinter()Lkotlin/jvm/functions/Function1;

    .line 57
    move-result-object v3

    .line 60
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    move-result v1

    .line 64
    if-nez v1, :cond_5

    .line 65
    return v2

    .line 67
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getException()Ljava/lang/Throwable;

    .line 68
    move-result-object v1

    .line 71
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getException()Ljava/lang/Throwable;

    .line 72
    move-result-object v3

    .line 75
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    move-result v1

    .line 79
    if-nez v1, :cond_6

    .line 80
    return v2

    .line 82
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr1()Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 86
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getStr1()Ljava/lang/String;

    .line 87
    move-result-object v3

    .line 90
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    move-result v1

    .line 94
    if-nez v1, :cond_7

    .line 95
    return v2

    .line 97
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr2()Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 101
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getStr2()Ljava/lang/String;

    .line 102
    move-result-object v3

    .line 105
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    move-result v1

    .line 109
    if-nez v1, :cond_8

    .line 110
    return v2

    .line 112
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr3()Ljava/lang/String;

    .line 113
    move-result-object v1

    .line 116
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getStr3()Ljava/lang/String;

    .line 117
    move-result-object v3

    .line 120
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    move-result v1

    .line 124
    if-nez v1, :cond_9

    .line 125
    return v2

    .line 127
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getInt1()I

    .line 128
    move-result v1

    .line 131
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getInt1()I

    .line 132
    move-result v3

    .line 135
    if-eq v1, v3, :cond_a

    .line 136
    return v2

    .line 138
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getInt2()I

    .line 139
    move-result v1

    .line 142
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getInt2()I

    .line 143
    move-result v3

    .line 146
    if-eq v1, v3, :cond_b

    .line 147
    return v2

    .line 149
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getLong1()J

    .line 150
    move-result-wide v3

    .line 153
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getLong1()J

    .line 154
    move-result-wide v5

    .line 157
    cmp-long v1, v3, v5

    .line 158
    if-eqz v1, :cond_c

    .line 160
    return v2

    .line 162
    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getLong2()J

    .line 163
    move-result-wide v3

    .line 166
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getLong2()J

    .line 167
    move-result-wide v5

    .line 170
    cmp-long v1, v3, v5

    .line 171
    if-eqz v1, :cond_d

    .line 173
    return v2

    .line 175
    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getDouble1()D

    .line 176
    move-result-wide v3

    .line 179
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getDouble1()D

    .line 180
    move-result-wide v5

    .line 183
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    .line 184
    move-result v1

    .line 187
    if-eqz v1, :cond_e

    .line 188
    return v2

    .line 190
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool1()Z

    .line 191
    move-result v1

    .line 194
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getBool1()Z

    .line 195
    move-result v3

    .line 198
    if-eq v1, v3, :cond_f

    .line 199
    return v2

    .line 201
    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool2()Z

    .line 202
    move-result v1

    .line 205
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getBool2()Z

    .line 206
    move-result v3

    .line 209
    if-eq v1, v3, :cond_10

    .line 210
    return v2

    .line 212
    :cond_10
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool3()Z

    .line 213
    move-result v1

    .line 216
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getBool3()Z

    .line 217
    move-result v3

    .line 220
    if-eq v1, v3, :cond_11

    .line 221
    return v2

    .line 223
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool4()Z

    .line 224
    move-result p0

    .line 227
    invoke-virtual {p1}, Lcom/android/systemui/log/LogMessageImpl;->getBool4()Z

    .line 228
    move-result p1

    .line 231
    if-eq p0, p1, :cond_12

    .line 232
    return v2

    .line 234
    :cond_12
    return v0
    .line 235
.end method

.method public getBool1()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    .line 2
    return p0
    .line 4
.end method

.method public getBool2()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    .line 2
    return p0
    .line 4
.end method

.method public getBool3()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    .line 2
    return p0
    .line 4
.end method

.method public getBool4()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/log/LogMessageImpl;->bool4:Z

    .line 2
    return p0
    .line 4
.end method

.method public getDouble1()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    .line 2
    return-wide v0
    .line 4
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->exception:Ljava/lang/Throwable;

    .line 2
    return-object p0
    .line 4
.end method

.method public getInt1()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    .line 2
    return p0
    .line 4
.end method

.method public getInt2()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    .line 2
    return p0
    .line 4
.end method

.method public getLevel()Lcom/android/systemui/log/LogLevel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->level:Lcom/android/systemui/log/LogLevel;

    .line 2
    return-object p0
    .line 4
.end method

.method public getLong1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public getLong2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/systemui/log/LogMessageImpl;->long2:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public getMessagePrinter()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->messagePrinter:Lkotlin/jvm/functions/Function1;

    .line 2
    return-object p0
    .line 4
.end method

.method public getStr1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getStr2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getStr3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/log/LogMessageImpl;->tag:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/systemui/log/LogMessageImpl;->timestamp:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getLevel()Lcom/android/systemui/log/LogLevel;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    .line 6
    move-result v0

    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getTag()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 16
    move-result v1

    .line 19
    add-int/2addr v1, v0

    .line 20
    mul-int/lit8 v1, v1, 0x1f

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getTimestamp()J

    .line 23
    move-result-wide v2

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 27
    move-result v0

    .line 30
    add-int/2addr v0, v1

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getMessagePrinter()Lkotlin/jvm/functions/Function1;

    .line 34
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 38
    move-result v1

    .line 41
    add-int/2addr v1, v0

    .line 42
    mul-int/lit8 v1, v1, 0x1f

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getException()Ljava/lang/Throwable;

    .line 45
    move-result-object v0

    .line 48
    const/4 v2, 0x0

    .line 49
    if-nez v0, :cond_0

    .line 50
    move v0, v2

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getException()Ljava/lang/Throwable;

    .line 54
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Throwable;->hashCode()I

    .line 58
    move-result v0

    .line 61
    :goto_0
    add-int/2addr v1, v0

    .line 62
    mul-int/lit8 v1, v1, 0x1f

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr1()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 68
    if-nez v0, :cond_1

    .line 69
    move v0, v2

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr1()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 77
    move-result v0

    .line 80
    :goto_1
    add-int/2addr v1, v0

    .line 81
    mul-int/lit8 v1, v1, 0x1f

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr2()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 87
    if-nez v0, :cond_2

    .line 88
    move v0, v2

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr2()Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 96
    move-result v0

    .line 99
    :goto_2
    add-int/2addr v1, v0

    .line 100
    mul-int/lit8 v1, v1, 0x1f

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr3()Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 106
    if-nez v0, :cond_3

    .line 107
    goto :goto_3

    .line 109
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr3()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 114
    move-result v2

    .line 117
    :goto_3
    add-int/2addr v1, v2

    .line 118
    mul-int/lit8 v1, v1, 0x1f

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getInt1()I

    .line 121
    move-result v0

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 125
    move-result v0

    .line 128
    add-int/2addr v0, v1

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getInt2()I

    .line 132
    move-result v1

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 136
    move-result v1

    .line 139
    add-int/2addr v1, v0

    .line 140
    mul-int/lit8 v1, v1, 0x1f

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getLong1()J

    .line 143
    move-result-wide v2

    .line 146
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 147
    move-result v0

    .line 150
    add-int/2addr v0, v1

    .line 151
    mul-int/lit8 v0, v0, 0x1f

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getLong2()J

    .line 154
    move-result-wide v1

    .line 157
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 158
    move-result v1

    .line 161
    add-int/2addr v1, v0

    .line 162
    mul-int/lit8 v1, v1, 0x1f

    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getDouble1()D

    .line 165
    move-result-wide v2

    .line 168
    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    .line 169
    move-result v0

    .line 172
    add-int/2addr v0, v1

    .line 173
    mul-int/lit8 v0, v0, 0x1f

    .line 174
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool1()Z

    .line 176
    move-result v1

    .line 179
    const/4 v2, 0x1

    .line 180
    if-eqz v1, :cond_4

    .line 181
    move v1, v2

    .line 183
    :cond_4
    add-int/2addr v0, v1

    .line 184
    mul-int/lit8 v0, v0, 0x1f

    .line 185
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool2()Z

    .line 187
    move-result v1

    .line 190
    if-eqz v1, :cond_5

    .line 191
    move v1, v2

    .line 193
    :cond_5
    add-int/2addr v0, v1

    .line 194
    mul-int/lit8 v0, v0, 0x1f

    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool3()Z

    .line 197
    move-result v1

    .line 200
    if-eqz v1, :cond_6

    .line 201
    move v1, v2

    .line 203
    :cond_6
    add-int/2addr v0, v1

    .line 204
    mul-int/lit8 v0, v0, 0x1f

    .line 205
    invoke-virtual {p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool4()Z

    .line 207
    move-result p0

    .line 210
    if-eqz p0, :cond_7

    .line 211
    goto :goto_4

    .line 213
    :cond_7
    move v2, p0

    .line 214
    :goto_4
    add-int/2addr v0, v2

    .line 215
    return v0
    .line 216
.end method

.method public final reset(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;JLkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/systemui/log/LogMessageImpl;->setLevel(Lcom/android/systemui/log/LogLevel;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogMessageImpl;->setTag(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/log/LogMessageImpl;->setTimestamp(J)V

    .line 8
    invoke-virtual {p0, p5}, Lcom/android/systemui/log/LogMessageImpl;->setMessagePrinter(Lkotlin/jvm/functions/Function1;)V

    .line 11
    invoke-virtual {p0, p6}, Lcom/android/systemui/log/LogMessageImpl;->setException(Ljava/lang/Throwable;)V

    .line 14
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogMessageImpl;->setStr1(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogMessageImpl;->setStr2(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogMessageImpl;->setStr3(Ljava/lang/String;)V

    .line 24
    const/4 p1, 0x0

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogMessageImpl;->setInt1(I)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogMessageImpl;->setInt2(I)V

    .line 31
    const-wide/16 p2, 0x0

    .line 34
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/log/LogMessageImpl;->setLong1(J)V

    .line 36
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/log/LogMessageImpl;->setLong2(J)V

    .line 39
    const-wide/16 p2, 0x0

    .line 42
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/log/LogMessageImpl;->setDouble1(D)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogMessageImpl;->setBool1(Z)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogMessageImpl;->setBool2(Z)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogMessageImpl;->setBool3(Z)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogMessageImpl;->setBool4(Z)V

    .line 56
    return-void
    .line 59
.end method

.method public setBool1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    .line 2
    return-void
    .line 4
.end method

.method public setBool2(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    .line 2
    return-void
    .line 4
.end method

.method public setBool3(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    .line 2
    return-void
    .line 4
.end method

.method public setBool4(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/log/LogMessageImpl;->bool4:Z

    .line 2
    return-void
    .line 4
.end method

.method public setDouble1(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    .line 2
    return-void
    .line 4
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->exception:Ljava/lang/Throwable;

    .line 2
    return-void
    .line 4
.end method

.method public setInt1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    .line 2
    return-void
    .line 4
.end method

.method public setInt2(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    .line 2
    return-void
    .line 4
.end method

.method public setLevel(Lcom/android/systemui/log/LogLevel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->level:Lcom/android/systemui/log/LogLevel;

    .line 2
    return-void
    .line 4
.end method

.method public setLong1(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    .line 2
    return-void
    .line 4
.end method

.method public setLong2(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/systemui/log/LogMessageImpl;->long2:J

    .line 2
    return-void
    .line 4
.end method

.method public setMessagePrinter(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->messagePrinter:Lkotlin/jvm/functions/Function1;

    .line 2
    return-void
    .line 4
.end method

.method public setStr1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public setStr2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public setStr3(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->tag:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/systemui/log/LogMessageImpl;->timestamp:J

    .line 2
    return-void
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 23

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getLevel()Lcom/android/systemui/log/LogLevel;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getTag()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getTimestamp()J

    .line 10
    move-result-wide v2

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getMessagePrinter()Lkotlin/jvm/functions/Function1;

    .line 14
    move-result-object v4

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getException()Ljava/lang/Throwable;

    .line 18
    move-result-object v5

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr1()Ljava/lang/String;

    .line 22
    move-result-object v6

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr2()Ljava/lang/String;

    .line 26
    move-result-object v7

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getStr3()Ljava/lang/String;

    .line 30
    move-result-object v8

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getInt1()I

    .line 34
    move-result v9

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getInt2()I

    .line 38
    move-result v10

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getLong1()J

    .line 42
    move-result-wide v11

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getLong2()J

    .line 46
    move-result-wide v13

    .line 49
    move-wide v15, v13

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getDouble1()D

    .line 51
    move-result-wide v13

    .line 54
    move-wide/from16 v17, v15

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool1()Z

    .line 57
    move-result v15

    .line 60
    move/from16 v16, v15

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool2()Z

    .line 63
    move-result v15

    .line 66
    move/from16 v19, v15

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool3()Z

    .line 69
    move-result v15

    .line 72
    move/from16 v20, v15

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/log/LogMessageImpl;->getBool4()Z

    .line 75
    move-result v15

    .line 78
    move/from16 p0, v15

    .line 79
    new-instance v15, Ljava/lang/StringBuilder;

    .line 81
    move-wide/from16 v21, v13

    .line 83
    const-string v13, "LogMessageImpl(level="

    .line 85
    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    const-string v0, ", tag="

    .line 93
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v0, ", timestamp="

    .line 101
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    const-string v0, ", messagePrinter="

    .line 109
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    const-string v0, ", exception="

    .line 117
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    const-string v0, ", str1="

    .line 125
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v0, ", str2="

    .line 133
    const-string v1, ", str3="

    .line 135
    invoke-static {v15, v0, v7, v1, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v0, ", int1="

    .line 140
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    const-string v0, ", int2="

    .line 148
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    const-string v0, ", long1="

    .line 156
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    const-string v0, ", long2="

    .line 164
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    move-wide/from16 v0, v17

    .line 169
    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 171
    const-string v0, ", double1="

    .line 174
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    move-wide/from16 v0, v21

    .line 179
    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 181
    const-string v0, ", bool1="

    .line 184
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v0, ", bool2="

    .line 189
    const-string v1, ", bool3="

    .line 191
    move/from16 v2, v16

    .line 193
    move/from16 v3, v19

    .line 195
    invoke-static {v15, v2, v0, v3, v1}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 197
    move/from16 v0, v20

    .line 200
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 202
    const-string v0, ", bool4="

    .line 205
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    move/from16 v0, p0

    .line 210
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 212
    const-string v0, ")"

    .line 215
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object v0

    .line 223
    return-object v0
    .line 224
.end method
