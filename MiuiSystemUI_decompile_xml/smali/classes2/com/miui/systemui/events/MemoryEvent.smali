.class public final Lcom/miui/systemui/events/MemoryEvent;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "sysui_memory"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->SYSTEMUI:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final bitmaps:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "Bitmaps"
    .end annotation
.end field

.field private final code:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "Code"
    .end annotation
.end field

.field private final csbFragment:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "CollapsedStatusBarFragment"
    .end annotation
.end field

.field private final day:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "Day"
    .end annotation
.end field

.field private final defaultTheme:Z
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "DefaultTheme"
    .end annotation
.end field

.field private final folmeValueTargets:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "FolmeValueTargets"
    .end annotation
.end field

.field private final folmeViewTargets:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "FolmeViewTargets"
    .end annotation
.end field

.field private final initial:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "InitialPSS"
    .end annotation
.end field

.field private final javaHeap:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "JavaHeap"
    .end annotation
.end field

.field private final nativeHeap:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "NativeHeap"
    .end annotation
.end field

.field private final nbFragment:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "NavigationBarFragment"
    .end annotation
.end field

.field private final notifications:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "Notifications"
    .end annotation
.end field

.field private final privateOther:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "PrivateOther"
    .end annotation
.end field

.field private final qsFragment:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "QSFragment"
    .end annotation
.end field

.field private final stack:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "Stack"
    .end annotation
.end field

.field private final system:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "System"
    .end annotation
.end field

.field private final total:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "TotalPSS"
    .end annotation
.end field

.field private final type:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "Type"
    .end annotation
.end field

.field private final views:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "Views"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIIIIIIIIIIIIIIIIIZ)V
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    move v1, p1

    .line 6
    iput v1, v0, Lcom/miui/systemui/events/MemoryEvent;->day:I

    .line 7
    move v1, p2

    .line 9
    iput v1, v0, Lcom/miui/systemui/events/MemoryEvent;->type:I

    .line 10
    move v1, p3

    .line 12
    iput v1, v0, Lcom/miui/systemui/events/MemoryEvent;->initial:I

    .line 13
    move v1, p4

    .line 15
    iput v1, v0, Lcom/miui/systemui/events/MemoryEvent;->javaHeap:I

    .line 16
    move v1, p5

    .line 18
    iput v1, v0, Lcom/miui/systemui/events/MemoryEvent;->nativeHeap:I

    .line 19
    move v1, p6

    .line 21
    iput v1, v0, Lcom/miui/systemui/events/MemoryEvent;->code:I

    .line 22
    move v1, p7

    .line 24
    iput v1, v0, Lcom/miui/systemui/events/MemoryEvent;->stack:I

    .line 25
    move v1, p8

    .line 27
    iput v1, v0, Lcom/miui/systemui/events/MemoryEvent;->privateOther:I

    .line 28
    move v1, p9

    .line 30
    iput v1, v0, Lcom/miui/systemui/events/MemoryEvent;->system:I

    .line 31
    move v1, p10

    .line 33
    iput v1, v0, Lcom/miui/systemui/events/MemoryEvent;->total:I

    .line 34
    move v1, p11

    .line 36
    iput v1, v0, Lcom/miui/systemui/events/MemoryEvent;->views:I

    .line 37
    move v1, p12

    .line 39
    iput v1, v0, Lcom/miui/systemui/events/MemoryEvent;->bitmaps:I

    .line 40
    move v1, p13

    .line 42
    iput v1, v0, Lcom/miui/systemui/events/MemoryEvent;->qsFragment:I

    .line 43
    move/from16 v1, p14

    .line 45
    iput v1, v0, Lcom/miui/systemui/events/MemoryEvent;->nbFragment:I

    .line 47
    move/from16 v1, p15

    .line 49
    iput v1, v0, Lcom/miui/systemui/events/MemoryEvent;->csbFragment:I

    .line 51
    move/from16 v1, p16

    .line 53
    iput v1, v0, Lcom/miui/systemui/events/MemoryEvent;->folmeViewTargets:I

    .line 55
    move/from16 v1, p17

    .line 57
    iput v1, v0, Lcom/miui/systemui/events/MemoryEvent;->folmeValueTargets:I

    .line 59
    move/from16 v1, p18

    .line 61
    iput v1, v0, Lcom/miui/systemui/events/MemoryEvent;->notifications:I

    .line 63
    move/from16 v1, p19

    .line 65
    iput-boolean v1, v0, Lcom/miui/systemui/events/MemoryEvent;->defaultTheme:Z

    .line 67
    return-void
    .line 69
.end method

.method public static synthetic copy$default(Lcom/miui/systemui/events/MemoryEvent;IIIIIIIIIIIIIIIIIIZILjava/lang/Object;)Lcom/miui/systemui/events/MemoryEvent;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p20

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/miui/systemui/events/MemoryEvent;->day:I

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/miui/systemui/events/MemoryEvent;->type:I

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/miui/systemui/events/MemoryEvent;->initial:I

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/miui/systemui/events/MemoryEvent;->javaHeap:I

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/miui/systemui/events/MemoryEvent;->nativeHeap:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/miui/systemui/events/MemoryEvent;->code:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/miui/systemui/events/MemoryEvent;->stack:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/miui/systemui/events/MemoryEvent;->privateOther:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget v10, v0, Lcom/miui/systemui/events/MemoryEvent;->system:I

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget v11, v0, Lcom/miui/systemui/events/MemoryEvent;->total:I

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget v12, v0, Lcom/miui/systemui/events/MemoryEvent;->views:I

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget v13, v0, Lcom/miui/systemui/events/MemoryEvent;->bitmaps:I

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget v14, v0, Lcom/miui/systemui/events/MemoryEvent;->qsFragment:I

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget v15, v0, Lcom/miui/systemui/events/MemoryEvent;->nbFragment:I

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget v15, v0, Lcom/miui/systemui/events/MemoryEvent;->csbFragment:I

    goto :goto_e

    :cond_e
    move/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p15, v15

    if-eqz v16, :cond_f

    iget v15, v0, Lcom/miui/systemui/events/MemoryEvent;->folmeViewTargets:I

    goto :goto_f

    :cond_f
    move/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p16, v15

    if-eqz v16, :cond_10

    iget v15, v0, Lcom/miui/systemui/events/MemoryEvent;->folmeValueTargets:I

    goto :goto_10

    :cond_10
    move/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move/from16 p17, v15

    if-eqz v16, :cond_11

    iget v15, v0, Lcom/miui/systemui/events/MemoryEvent;->notifications:I

    goto :goto_11

    :cond_11
    move/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v1, v1, v16

    if-eqz v1, :cond_12

    iget-boolean v1, v0, Lcom/miui/systemui/events/MemoryEvent;->defaultTheme:Z

    goto :goto_12

    :cond_12
    move/from16 v1, p19

    :goto_12
    move/from16 p1, v2

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move/from16 p18, v15

    move/from16 p19, v1

    invoke-virtual/range {p0 .. p19}, Lcom/miui/systemui/events/MemoryEvent;->copy(IIIIIIIIIIIIIIIIIIZ)Lcom/miui/systemui/events/MemoryEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->day:I

    .line 2
    return p0
    .line 4
.end method

.method public final component10()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->total:I

    .line 2
    return p0
    .line 4
.end method

.method public final component11()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->views:I

    .line 2
    return p0
    .line 4
.end method

.method public final component12()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->bitmaps:I

    .line 2
    return p0
    .line 4
.end method

.method public final component13()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->qsFragment:I

    .line 2
    return p0
    .line 4
.end method

.method public final component14()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->nbFragment:I

    .line 2
    return p0
    .line 4
.end method

.method public final component15()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->csbFragment:I

    .line 2
    return p0
    .line 4
.end method

.method public final component16()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->folmeViewTargets:I

    .line 2
    return p0
    .line 4
.end method

.method public final component17()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->folmeValueTargets:I

    .line 2
    return p0
    .line 4
.end method

.method public final component18()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->notifications:I

    .line 2
    return p0
    .line 4
.end method

.method public final component19()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/systemui/events/MemoryEvent;->defaultTheme:Z

    .line 2
    return p0
    .line 4
.end method

.method public final component2()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->type:I

    .line 2
    return p0
    .line 4
.end method

.method public final component3()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->initial:I

    .line 2
    return p0
    .line 4
.end method

.method public final component4()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->javaHeap:I

    .line 2
    return p0
    .line 4
.end method

.method public final component5()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->nativeHeap:I

    .line 2
    return p0
    .line 4
.end method

.method public final component6()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->code:I

    .line 2
    return p0
    .line 4
.end method

.method public final component7()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->stack:I

    .line 2
    return p0
    .line 4
.end method

.method public final component8()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->privateOther:I

    .line 2
    return p0
    .line 4
.end method

.method public final component9()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->system:I

    .line 2
    return p0
    .line 4
.end method

.method public final copy(IIIIIIIIIIIIIIIIIIZ)Lcom/miui/systemui/events/MemoryEvent;
    .locals 21

    .line 1
    move/from16 v1, p1

    .line 2
    move/from16 v2, p2

    .line 4
    move/from16 v3, p3

    .line 6
    move/from16 v4, p4

    .line 8
    move/from16 v5, p5

    .line 10
    move/from16 v6, p6

    .line 12
    move/from16 v7, p7

    .line 14
    move/from16 v8, p8

    .line 16
    move/from16 v9, p9

    .line 18
    move/from16 v10, p10

    .line 20
    move/from16 v11, p11

    .line 22
    move/from16 v12, p12

    .line 24
    move/from16 v13, p13

    .line 26
    move/from16 v14, p14

    .line 28
    move/from16 v15, p15

    .line 30
    move/from16 v16, p16

    .line 32
    move/from16 v17, p17

    .line 34
    move/from16 v18, p18

    .line 36
    move/from16 v19, p19

    .line 38
    new-instance v20, Lcom/miui/systemui/events/MemoryEvent;

    .line 40
    move-object/from16 v0, v20

    .line 42
    invoke-direct/range {v0 .. v19}, Lcom/miui/systemui/events/MemoryEvent;-><init>(IIIIIIIIIIIIIIIIIIZ)V

    .line 44
    return-object v20
    .line 47
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/miui/systemui/events/MemoryEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/miui/systemui/events/MemoryEvent;

    .line 12
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->day:I

    .line 14
    iget v3, p1, Lcom/miui/systemui/events/MemoryEvent;->day:I

    .line 16
    if-eq v1, v3, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->type:I

    .line 21
    iget v3, p1, Lcom/miui/systemui/events/MemoryEvent;->type:I

    .line 23
    if-eq v1, v3, :cond_3

    .line 25
    return v2

    .line 27
    :cond_3
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->initial:I

    .line 28
    iget v3, p1, Lcom/miui/systemui/events/MemoryEvent;->initial:I

    .line 30
    if-eq v1, v3, :cond_4

    .line 32
    return v2

    .line 34
    :cond_4
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->javaHeap:I

    .line 35
    iget v3, p1, Lcom/miui/systemui/events/MemoryEvent;->javaHeap:I

    .line 37
    if-eq v1, v3, :cond_5

    .line 39
    return v2

    .line 41
    :cond_5
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->nativeHeap:I

    .line 42
    iget v3, p1, Lcom/miui/systemui/events/MemoryEvent;->nativeHeap:I

    .line 44
    if-eq v1, v3, :cond_6

    .line 46
    return v2

    .line 48
    :cond_6
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->code:I

    .line 49
    iget v3, p1, Lcom/miui/systemui/events/MemoryEvent;->code:I

    .line 51
    if-eq v1, v3, :cond_7

    .line 53
    return v2

    .line 55
    :cond_7
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->stack:I

    .line 56
    iget v3, p1, Lcom/miui/systemui/events/MemoryEvent;->stack:I

    .line 58
    if-eq v1, v3, :cond_8

    .line 60
    return v2

    .line 62
    :cond_8
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->privateOther:I

    .line 63
    iget v3, p1, Lcom/miui/systemui/events/MemoryEvent;->privateOther:I

    .line 65
    if-eq v1, v3, :cond_9

    .line 67
    return v2

    .line 69
    :cond_9
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->system:I

    .line 70
    iget v3, p1, Lcom/miui/systemui/events/MemoryEvent;->system:I

    .line 72
    if-eq v1, v3, :cond_a

    .line 74
    return v2

    .line 76
    :cond_a
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->total:I

    .line 77
    iget v3, p1, Lcom/miui/systemui/events/MemoryEvent;->total:I

    .line 79
    if-eq v1, v3, :cond_b

    .line 81
    return v2

    .line 83
    :cond_b
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->views:I

    .line 84
    iget v3, p1, Lcom/miui/systemui/events/MemoryEvent;->views:I

    .line 86
    if-eq v1, v3, :cond_c

    .line 88
    return v2

    .line 90
    :cond_c
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->bitmaps:I

    .line 91
    iget v3, p1, Lcom/miui/systemui/events/MemoryEvent;->bitmaps:I

    .line 93
    if-eq v1, v3, :cond_d

    .line 95
    return v2

    .line 97
    :cond_d
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->qsFragment:I

    .line 98
    iget v3, p1, Lcom/miui/systemui/events/MemoryEvent;->qsFragment:I

    .line 100
    if-eq v1, v3, :cond_e

    .line 102
    return v2

    .line 104
    :cond_e
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->nbFragment:I

    .line 105
    iget v3, p1, Lcom/miui/systemui/events/MemoryEvent;->nbFragment:I

    .line 107
    if-eq v1, v3, :cond_f

    .line 109
    return v2

    .line 111
    :cond_f
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->csbFragment:I

    .line 112
    iget v3, p1, Lcom/miui/systemui/events/MemoryEvent;->csbFragment:I

    .line 114
    if-eq v1, v3, :cond_10

    .line 116
    return v2

    .line 118
    :cond_10
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->folmeViewTargets:I

    .line 119
    iget v3, p1, Lcom/miui/systemui/events/MemoryEvent;->folmeViewTargets:I

    .line 121
    if-eq v1, v3, :cond_11

    .line 123
    return v2

    .line 125
    :cond_11
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->folmeValueTargets:I

    .line 126
    iget v3, p1, Lcom/miui/systemui/events/MemoryEvent;->folmeValueTargets:I

    .line 128
    if-eq v1, v3, :cond_12

    .line 130
    return v2

    .line 132
    :cond_12
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->notifications:I

    .line 133
    iget v3, p1, Lcom/miui/systemui/events/MemoryEvent;->notifications:I

    .line 135
    if-eq v1, v3, :cond_13

    .line 137
    return v2

    .line 139
    :cond_13
    iget-boolean p0, p0, Lcom/miui/systemui/events/MemoryEvent;->defaultTheme:Z

    .line 140
    iget-boolean p1, p1, Lcom/miui/systemui/events/MemoryEvent;->defaultTheme:Z

    .line 142
    if-eq p0, p1, :cond_14

    .line 144
    return v2

    .line 146
    :cond_14
    return v0
    .line 147
.end method

.method public final getBitmaps()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->bitmaps:I

    .line 2
    return p0
    .line 4
.end method

.method public final getCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->code:I

    .line 2
    return p0
    .line 4
.end method

.method public final getCsbFragment()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->csbFragment:I

    .line 2
    return p0
    .line 4
.end method

.method public final getDay()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->day:I

    .line 2
    return p0
    .line 4
.end method

.method public final getDefaultTheme()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/systemui/events/MemoryEvent;->defaultTheme:Z

    .line 2
    return p0
    .line 4
.end method

.method public final getFolmeValueTargets()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->folmeValueTargets:I

    .line 2
    return p0
    .line 4
.end method

.method public final getFolmeViewTargets()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->folmeViewTargets:I

    .line 2
    return p0
    .line 4
.end method

.method public final getInitial()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->initial:I

    .line 2
    return p0
    .line 4
.end method

.method public final getJavaHeap()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->javaHeap:I

    .line 2
    return p0
    .line 4
.end method

.method public final getNativeHeap()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->nativeHeap:I

    .line 2
    return p0
    .line 4
.end method

.method public final getNbFragment()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->nbFragment:I

    .line 2
    return p0
    .line 4
.end method

.method public final getNotifications()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->notifications:I

    .line 2
    return p0
    .line 4
.end method

.method public final getPrivateOther()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->privateOther:I

    .line 2
    return p0
    .line 4
.end method

.method public final getQsFragment()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->qsFragment:I

    .line 2
    return p0
    .line 4
.end method

.method public final getStack()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->stack:I

    .line 2
    return p0
    .line 4
.end method

.method public final getSystem()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->system:I

    .line 2
    return p0
    .line 4
.end method

.method public final getTotal()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->total:I

    .line 2
    return p0
    .line 4
.end method

.method public final getType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->type:I

    .line 2
    return p0
    .line 4
.end method

.method public final getViews()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MemoryEvent;->views:I

    .line 2
    return p0
    .line 4
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/miui/systemui/events/MemoryEvent;->day:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->type:I

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 14
    move-result v0

    .line 17
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->initial:I

    .line 18
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 20
    move-result v0

    .line 23
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->javaHeap:I

    .line 24
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 26
    move-result v0

    .line 29
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->nativeHeap:I

    .line 30
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 32
    move-result v0

    .line 35
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->code:I

    .line 36
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 38
    move-result v0

    .line 41
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->stack:I

    .line 42
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 44
    move-result v0

    .line 47
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->privateOther:I

    .line 48
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 50
    move-result v0

    .line 53
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->system:I

    .line 54
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 56
    move-result v0

    .line 59
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->total:I

    .line 60
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 62
    move-result v0

    .line 65
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->views:I

    .line 66
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 68
    move-result v0

    .line 71
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->bitmaps:I

    .line 72
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 74
    move-result v0

    .line 77
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->qsFragment:I

    .line 78
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 80
    move-result v0

    .line 83
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->nbFragment:I

    .line 84
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 86
    move-result v0

    .line 89
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->csbFragment:I

    .line 90
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 92
    move-result v0

    .line 95
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->folmeViewTargets:I

    .line 96
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 98
    move-result v0

    .line 101
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->folmeValueTargets:I

    .line 102
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 104
    move-result v0

    .line 107
    iget v1, p0, Lcom/miui/systemui/events/MemoryEvent;->notifications:I

    .line 108
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 110
    move-result v0

    .line 113
    iget-boolean p0, p0, Lcom/miui/systemui/events/MemoryEvent;->defaultTheme:Z

    .line 114
    if-eqz p0, :cond_0

    .line 116
    const/4 p0, 0x1

    .line 118
    :cond_0
    add-int/2addr v0, p0

    .line 119
    return v0
    .line 120
.end method

.method public toString()Ljava/lang/String;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/miui/systemui/events/MemoryEvent;->day:I

    .line 4
    iget v2, v0, Lcom/miui/systemui/events/MemoryEvent;->type:I

    .line 6
    iget v3, v0, Lcom/miui/systemui/events/MemoryEvent;->initial:I

    .line 8
    iget v4, v0, Lcom/miui/systemui/events/MemoryEvent;->javaHeap:I

    .line 10
    iget v5, v0, Lcom/miui/systemui/events/MemoryEvent;->nativeHeap:I

    .line 12
    iget v6, v0, Lcom/miui/systemui/events/MemoryEvent;->code:I

    .line 14
    iget v7, v0, Lcom/miui/systemui/events/MemoryEvent;->stack:I

    .line 16
    iget v8, v0, Lcom/miui/systemui/events/MemoryEvent;->privateOther:I

    .line 18
    iget v9, v0, Lcom/miui/systemui/events/MemoryEvent;->system:I

    .line 20
    iget v10, v0, Lcom/miui/systemui/events/MemoryEvent;->total:I

    .line 22
    iget v11, v0, Lcom/miui/systemui/events/MemoryEvent;->views:I

    .line 24
    iget v12, v0, Lcom/miui/systemui/events/MemoryEvent;->bitmaps:I

    .line 26
    iget v13, v0, Lcom/miui/systemui/events/MemoryEvent;->qsFragment:I

    .line 28
    iget v14, v0, Lcom/miui/systemui/events/MemoryEvent;->nbFragment:I

    .line 30
    iget v15, v0, Lcom/miui/systemui/events/MemoryEvent;->csbFragment:I

    .line 32
    move/from16 v16, v15

    .line 34
    iget v15, v0, Lcom/miui/systemui/events/MemoryEvent;->folmeViewTargets:I

    .line 36
    move/from16 v17, v15

    .line 38
    iget v15, v0, Lcom/miui/systemui/events/MemoryEvent;->folmeValueTargets:I

    .line 40
    move/from16 v18, v15

    .line 42
    iget v15, v0, Lcom/miui/systemui/events/MemoryEvent;->notifications:I

    .line 44
    iget-boolean v0, v0, Lcom/miui/systemui/events/MemoryEvent;->defaultTheme:Z

    .line 46
    move/from16 p0, v0

    .line 48
    const-string v0, "MemoryEvent(day="

    .line 50
    move/from16 v19, v15

    .line 52
    const-string v15, ", type="

    .line 54
    move/from16 v20, v13

    .line 56
    const-string v13, ", initial="

    .line 58
    invoke-static {v0, v1, v15, v2, v13}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    move-result-object v0

    .line 63
    const-string v1, ", javaHeap="

    .line 64
    const-string v2, ", nativeHeap="

    .line 66
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 68
    const-string v1, ", code="

    .line 71
    const-string v2, ", stack="

    .line 73
    invoke-static {v0, v5, v1, v6, v2}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 75
    const-string v1, ", privateOther="

    .line 78
    const-string v2, ", system="

    .line 80
    invoke-static {v0, v7, v1, v8, v2}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 82
    const-string v1, ", total="

    .line 85
    const-string v2, ", views="

    .line 87
    invoke-static {v0, v9, v1, v10, v2}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 89
    const-string v1, ", bitmaps="

    .line 92
    const-string v2, ", qsFragment="

    .line 94
    invoke-static {v0, v11, v1, v12, v2}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 96
    const-string v1, ", nbFragment="

    .line 99
    const-string v2, ", csbFragment="

    .line 101
    move/from16 v3, v20

    .line 103
    invoke-static {v0, v3, v1, v14, v2}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 105
    const-string v1, ", folmeViewTargets="

    .line 108
    const-string v2, ", folmeValueTargets="

    .line 110
    move/from16 v3, v16

    .line 112
    move/from16 v4, v17

    .line 114
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 116
    const-string v1, ", notifications="

    .line 119
    const-string v2, ", defaultTheme="

    .line 121
    move/from16 v3, v18

    .line 123
    move/from16 v4, v19

    .line 125
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 127
    const-string v1, ")"

    .line 130
    move/from16 v2, p0

    .line 132
    invoke-static {v0, v2, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 137
    return-object v0
    .line 138
.end method
