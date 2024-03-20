.class public final Lcom/miui/systemui/events/MenuOpenEvent;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "notification_open_menu"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->NOTIFICATION:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final clearable:Z
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_delete_notification"
    .end annotation
.end field

.field private final index:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "index"
    .end annotation
.end field

.field private final isGroup:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_group"
    .end annotation
.end field

.field private final isPriority:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "is_priority"
    .end annotation
.end field

.field private final mipushClass:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "mipush_class"
    .end annotation
.end field

.field private final pkg:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "send_pkg"
    .end annotation
.end field

.field private final source:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "source"
    .end annotation
.end field

.field private final style:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "style"
    .end annotation
.end field

.field private final targetPkg:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "target_pkg"
    .end annotation
.end field

.field private final tsId:J
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "ts_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;ILjava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/systemui/events/MenuOpenEvent;->pkg:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/miui/systemui/events/MenuOpenEvent;->targetPkg:Ljava/lang/String;

    .line 7
    iput-wide p3, p0, Lcom/miui/systemui/events/MenuOpenEvent;->tsId:J

    .line 9
    iput-object p5, p0, Lcom/miui/systemui/events/MenuOpenEvent;->style:Ljava/lang/String;

    .line 11
    iput-boolean p6, p0, Lcom/miui/systemui/events/MenuOpenEvent;->clearable:Z

    .line 13
    iput-object p7, p0, Lcom/miui/systemui/events/MenuOpenEvent;->source:Ljava/lang/String;

    .line 15
    iput p8, p0, Lcom/miui/systemui/events/MenuOpenEvent;->index:I

    .line 17
    iput-object p9, p0, Lcom/miui/systemui/events/MenuOpenEvent;->isGroup:Ljava/lang/String;

    .line 19
    iput p10, p0, Lcom/miui/systemui/events/MenuOpenEvent;->isPriority:I

    .line 21
    iput p11, p0, Lcom/miui/systemui/events/MenuOpenEvent;->mipushClass:I

    .line 23
    return-void
    .line 25
.end method

.method public static synthetic copy$default(Lcom/miui/systemui/events/MenuOpenEvent;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;ILjava/lang/String;IIILjava/lang/Object;)Lcom/miui/systemui/events/MenuOpenEvent;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p12

    .line 3
    and-int/lit8 v2, v1, 0x1

    .line 5
    if-eqz v2, :cond_0

    .line 7
    iget-object v2, v0, Lcom/miui/systemui/events/MenuOpenEvent;->pkg:Ljava/lang/String;

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    move-object v2, p1

    .line 12
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 13
    if-eqz v3, :cond_1

    .line 15
    iget-object v3, v0, Lcom/miui/systemui/events/MenuOpenEvent;->targetPkg:Ljava/lang/String;

    .line 17
    goto :goto_1

    .line 19
    :cond_1
    move-object v3, p2

    .line 20
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 21
    if-eqz v4, :cond_2

    .line 23
    iget-wide v4, v0, Lcom/miui/systemui/events/MenuOpenEvent;->tsId:J

    .line 25
    goto :goto_2

    .line 27
    :cond_2
    move-wide v4, p3

    .line 28
    :goto_2
    and-int/lit8 v6, v1, 0x8

    .line 29
    if-eqz v6, :cond_3

    .line 31
    iget-object v6, v0, Lcom/miui/systemui/events/MenuOpenEvent;->style:Ljava/lang/String;

    .line 33
    goto :goto_3

    .line 35
    :cond_3
    move-object/from16 v6, p5

    .line 36
    :goto_3
    and-int/lit8 v7, v1, 0x10

    .line 38
    if-eqz v7, :cond_4

    .line 40
    iget-boolean v7, v0, Lcom/miui/systemui/events/MenuOpenEvent;->clearable:Z

    .line 42
    goto :goto_4

    .line 44
    :cond_4
    move/from16 v7, p6

    .line 45
    :goto_4
    and-int/lit8 v8, v1, 0x20

    .line 47
    if-eqz v8, :cond_5

    .line 49
    iget-object v8, v0, Lcom/miui/systemui/events/MenuOpenEvent;->source:Ljava/lang/String;

    .line 51
    goto :goto_5

    .line 53
    :cond_5
    move-object/from16 v8, p7

    .line 54
    :goto_5
    and-int/lit8 v9, v1, 0x40

    .line 56
    if-eqz v9, :cond_6

    .line 58
    iget v9, v0, Lcom/miui/systemui/events/MenuOpenEvent;->index:I

    .line 60
    goto :goto_6

    .line 62
    :cond_6
    move/from16 v9, p8

    .line 63
    :goto_6
    and-int/lit16 v10, v1, 0x80

    .line 65
    if-eqz v10, :cond_7

    .line 67
    iget-object v10, v0, Lcom/miui/systemui/events/MenuOpenEvent;->isGroup:Ljava/lang/String;

    .line 69
    goto :goto_7

    .line 71
    :cond_7
    move-object/from16 v10, p9

    .line 72
    :goto_7
    and-int/lit16 v11, v1, 0x100

    .line 74
    if-eqz v11, :cond_8

    .line 76
    iget v11, v0, Lcom/miui/systemui/events/MenuOpenEvent;->isPriority:I

    .line 78
    goto :goto_8

    .line 80
    :cond_8
    move/from16 v11, p10

    .line 81
    :goto_8
    and-int/lit16 v1, v1, 0x200

    .line 83
    if-eqz v1, :cond_9

    .line 85
    iget v1, v0, Lcom/miui/systemui/events/MenuOpenEvent;->mipushClass:I

    .line 87
    goto :goto_9

    .line 89
    :cond_9
    move/from16 v1, p11

    .line 90
    :goto_9
    move-object p1, v2

    .line 92
    move-object p2, v3

    .line 93
    move-wide p3, v4

    .line 94
    move-object/from16 p5, v6

    .line 95
    move/from16 p6, v7

    .line 97
    move-object/from16 p7, v8

    .line 99
    move/from16 p8, v9

    .line 101
    move-object/from16 p9, v10

    .line 103
    move/from16 p10, v11

    .line 105
    move/from16 p11, v1

    .line 107
    invoke-virtual/range {p0 .. p11}, Lcom/miui/systemui/events/MenuOpenEvent;->copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;ILjava/lang/String;II)Lcom/miui/systemui/events/MenuOpenEvent;

    .line 109
    move-result-object v0

    .line 112
    return-object v0
    .line 113
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/MenuOpenEvent;->pkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component10()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MenuOpenEvent;->mipushClass:I

    .line 2
    return p0
    .line 4
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/MenuOpenEvent;->targetPkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component3()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/systemui/events/MenuOpenEvent;->tsId:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/MenuOpenEvent;->style:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component5()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/systemui/events/MenuOpenEvent;->clearable:Z

    .line 2
    return p0
    .line 4
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/MenuOpenEvent;->source:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component7()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MenuOpenEvent;->index:I

    .line 2
    return p0
    .line 4
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/MenuOpenEvent;->isGroup:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component9()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MenuOpenEvent;->isPriority:I

    .line 2
    return p0
    .line 4
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;ILjava/lang/String;II)Lcom/miui/systemui/events/MenuOpenEvent;
    .locals 13

    .line 1
    new-instance v12, Lcom/miui/systemui/events/MenuOpenEvent;

    .line 2
    move-object v0, v12

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-wide/from16 v3, p3

    .line 7
    move-object/from16 v5, p5

    .line 9
    move/from16 v6, p6

    .line 11
    move-object/from16 v7, p7

    .line 13
    move/from16 v8, p8

    .line 15
    move-object/from16 v9, p9

    .line 17
    move/from16 v10, p10

    .line 19
    move/from16 v11, p11

    .line 21
    invoke-direct/range {v0 .. v11}, Lcom/miui/systemui/events/MenuOpenEvent;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;ILjava/lang/String;II)V

    .line 23
    return-object v12
    .line 26
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
    instance-of v1, p1, Lcom/miui/systemui/events/MenuOpenEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/miui/systemui/events/MenuOpenEvent;

    .line 12
    iget-object v1, p0, Lcom/miui/systemui/events/MenuOpenEvent;->pkg:Ljava/lang/String;

    .line 14
    iget-object v3, p1, Lcom/miui/systemui/events/MenuOpenEvent;->pkg:Ljava/lang/String;

    .line 16
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/miui/systemui/events/MenuOpenEvent;->targetPkg:Ljava/lang/String;

    .line 25
    iget-object v3, p1, Lcom/miui/systemui/events/MenuOpenEvent;->targetPkg:Ljava/lang/String;

    .line 27
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    return v2

    .line 35
    :cond_3
    iget-wide v3, p0, Lcom/miui/systemui/events/MenuOpenEvent;->tsId:J

    .line 36
    iget-wide v5, p1, Lcom/miui/systemui/events/MenuOpenEvent;->tsId:J

    .line 38
    cmp-long v1, v3, v5

    .line 40
    if-eqz v1, :cond_4

    .line 42
    return v2

    .line 44
    :cond_4
    iget-object v1, p0, Lcom/miui/systemui/events/MenuOpenEvent;->style:Ljava/lang/String;

    .line 45
    iget-object v3, p1, Lcom/miui/systemui/events/MenuOpenEvent;->style:Ljava/lang/String;

    .line 47
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    move-result v1

    .line 52
    if-nez v1, :cond_5

    .line 53
    return v2

    .line 55
    :cond_5
    iget-boolean v1, p0, Lcom/miui/systemui/events/MenuOpenEvent;->clearable:Z

    .line 56
    iget-boolean v3, p1, Lcom/miui/systemui/events/MenuOpenEvent;->clearable:Z

    .line 58
    if-eq v1, v3, :cond_6

    .line 60
    return v2

    .line 62
    :cond_6
    iget-object v1, p0, Lcom/miui/systemui/events/MenuOpenEvent;->source:Ljava/lang/String;

    .line 63
    iget-object v3, p1, Lcom/miui/systemui/events/MenuOpenEvent;->source:Ljava/lang/String;

    .line 65
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    move-result v1

    .line 70
    if-nez v1, :cond_7

    .line 71
    return v2

    .line 73
    :cond_7
    iget v1, p0, Lcom/miui/systemui/events/MenuOpenEvent;->index:I

    .line 74
    iget v3, p1, Lcom/miui/systemui/events/MenuOpenEvent;->index:I

    .line 76
    if-eq v1, v3, :cond_8

    .line 78
    return v2

    .line 80
    :cond_8
    iget-object v1, p0, Lcom/miui/systemui/events/MenuOpenEvent;->isGroup:Ljava/lang/String;

    .line 81
    iget-object v3, p1, Lcom/miui/systemui/events/MenuOpenEvent;->isGroup:Ljava/lang/String;

    .line 83
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    move-result v1

    .line 88
    if-nez v1, :cond_9

    .line 89
    return v2

    .line 91
    :cond_9
    iget v1, p0, Lcom/miui/systemui/events/MenuOpenEvent;->isPriority:I

    .line 92
    iget v3, p1, Lcom/miui/systemui/events/MenuOpenEvent;->isPriority:I

    .line 94
    if-eq v1, v3, :cond_a

    .line 96
    return v2

    .line 98
    :cond_a
    iget p0, p0, Lcom/miui/systemui/events/MenuOpenEvent;->mipushClass:I

    .line 99
    iget p1, p1, Lcom/miui/systemui/events/MenuOpenEvent;->mipushClass:I

    .line 101
    if-eq p0, p1, :cond_b

    .line 103
    return v2

    .line 105
    :cond_b
    return v0
    .line 106
.end method

.method public final getClearable()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/systemui/events/MenuOpenEvent;->clearable:Z

    .line 2
    return p0
    .line 4
.end method

.method public final getIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MenuOpenEvent;->index:I

    .line 2
    return p0
    .line 4
.end method

.method public final getMipushClass()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MenuOpenEvent;->mipushClass:I

    .line 2
    return p0
    .line 4
.end method

.method public final getPkg()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/MenuOpenEvent;->pkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSource()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/MenuOpenEvent;->source:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getStyle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/MenuOpenEvent;->style:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTargetPkg()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/MenuOpenEvent;->targetPkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTsId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/systemui/events/MenuOpenEvent;->tsId:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/events/MenuOpenEvent;->pkg:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/miui/systemui/events/MenuOpenEvent;->targetPkg:Ljava/lang/String;

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    iget-wide v1, p0, Lcom/miui/systemui/events/MenuOpenEvent;->tsId:J

    .line 18
    const/16 v3, 0x1f

    .line 20
    invoke-static {v1, v2, v0, v3}, Lcom/android/app/motiontool/TraceMetadata$$ExternalSyntheticOutline0;->m(JII)I

    .line 22
    move-result v0

    .line 25
    iget-object v1, p0, Lcom/miui/systemui/events/MenuOpenEvent;->style:Ljava/lang/String;

    .line 26
    const/16 v2, 0x1f

    .line 28
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 30
    move-result v0

    .line 33
    iget-boolean v1, p0, Lcom/miui/systemui/events/MenuOpenEvent;->clearable:Z

    .line 34
    if-eqz v1, :cond_0

    .line 36
    const/4 v1, 0x1

    .line 38
    :cond_0
    add-int/2addr v0, v1

    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    iget-object v1, p0, Lcom/miui/systemui/events/MenuOpenEvent;->source:Ljava/lang/String;

    .line 42
    const/16 v2, 0x1f

    .line 44
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 46
    move-result v0

    .line 49
    iget v1, p0, Lcom/miui/systemui/events/MenuOpenEvent;->index:I

    .line 50
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 52
    move-result v0

    .line 55
    iget-object v1, p0, Lcom/miui/systemui/events/MenuOpenEvent;->isGroup:Ljava/lang/String;

    .line 56
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 58
    move-result v0

    .line 61
    iget v1, p0, Lcom/miui/systemui/events/MenuOpenEvent;->isPriority:I

    .line 62
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 64
    move-result v0

    .line 67
    iget p0, p0, Lcom/miui/systemui/events/MenuOpenEvent;->mipushClass:I

    .line 68
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 70
    move-result p0

    .line 73
    add-int/2addr p0, v0

    .line 74
    return p0
    .line 75
.end method

.method public final isGroup()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/MenuOpenEvent;->isGroup:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final isPriority()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/MenuOpenEvent;->isPriority:I

    .line 2
    return p0
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/events/MenuOpenEvent;->pkg:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/miui/systemui/events/MenuOpenEvent;->targetPkg:Ljava/lang/String;

    .line 4
    iget-wide v2, p0, Lcom/miui/systemui/events/MenuOpenEvent;->tsId:J

    .line 6
    iget-object v4, p0, Lcom/miui/systemui/events/MenuOpenEvent;->style:Ljava/lang/String;

    .line 8
    iget-boolean v5, p0, Lcom/miui/systemui/events/MenuOpenEvent;->clearable:Z

    .line 10
    iget-object v6, p0, Lcom/miui/systemui/events/MenuOpenEvent;->source:Ljava/lang/String;

    .line 12
    iget v7, p0, Lcom/miui/systemui/events/MenuOpenEvent;->index:I

    .line 14
    iget-object v8, p0, Lcom/miui/systemui/events/MenuOpenEvent;->isGroup:Ljava/lang/String;

    .line 16
    iget v9, p0, Lcom/miui/systemui/events/MenuOpenEvent;->isPriority:I

    .line 18
    iget p0, p0, Lcom/miui/systemui/events/MenuOpenEvent;->mipushClass:I

    .line 20
    const-string v10, "MenuOpenEvent(pkg="

    .line 22
    const-string v11, ", targetPkg="

    .line 24
    const-string v12, ", tsId="

    .line 26
    invoke-static {v10, v0, v11, v1, v12}, Lcom/android/keyguard/event/FodQuickOpenActionEvent$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    move-result-object v0

    .line 31
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", style="

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, ", clearable="

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, ", source="

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", index="

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, ", isGroup="

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", isPriority="

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, ", mipushClass="

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    const-string p0, ")"

    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 99
    return-object p0
    .line 100
.end method
