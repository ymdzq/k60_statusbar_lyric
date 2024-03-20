.class public final Lcom/miui/systemui/events/BlockEvent;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "notification_block"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->NOTIFICATION:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final channelId:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "channel_id"
    .end annotation
.end field

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

.field private final style:I
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/systemui/events/BlockEvent;->pkg:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/miui/systemui/events/BlockEvent;->targetPkg:Ljava/lang/String;

    .line 7
    iput-wide p3, p0, Lcom/miui/systemui/events/BlockEvent;->tsId:J

    .line 9
    iput p5, p0, Lcom/miui/systemui/events/BlockEvent;->style:I

    .line 11
    iput-boolean p6, p0, Lcom/miui/systemui/events/BlockEvent;->clearable:Z

    .line 13
    iput-object p7, p0, Lcom/miui/systemui/events/BlockEvent;->source:Ljava/lang/String;

    .line 15
    iput p8, p0, Lcom/miui/systemui/events/BlockEvent;->index:I

    .line 17
    iput-object p9, p0, Lcom/miui/systemui/events/BlockEvent;->channelId:Ljava/lang/String;

    .line 19
    return-void
    .line 21
.end method

.method public static synthetic copy$default(Lcom/miui/systemui/events/BlockEvent;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lcom/miui/systemui/events/BlockEvent;
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p10

    .line 3
    and-int/lit8 v2, v1, 0x1

    .line 5
    if-eqz v2, :cond_0

    .line 7
    iget-object v2, v0, Lcom/miui/systemui/events/BlockEvent;->pkg:Ljava/lang/String;

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
    iget-object v3, v0, Lcom/miui/systemui/events/BlockEvent;->targetPkg:Ljava/lang/String;

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
    iget-wide v4, v0, Lcom/miui/systemui/events/BlockEvent;->tsId:J

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
    iget v6, v0, Lcom/miui/systemui/events/BlockEvent;->style:I

    .line 33
    goto :goto_3

    .line 35
    :cond_3
    move v6, p5

    .line 36
    :goto_3
    and-int/lit8 v7, v1, 0x10

    .line 37
    if-eqz v7, :cond_4

    .line 39
    iget-boolean v7, v0, Lcom/miui/systemui/events/BlockEvent;->clearable:Z

    .line 41
    goto :goto_4

    .line 43
    :cond_4
    move/from16 v7, p6

    .line 44
    :goto_4
    and-int/lit8 v8, v1, 0x20

    .line 46
    if-eqz v8, :cond_5

    .line 48
    iget-object v8, v0, Lcom/miui/systemui/events/BlockEvent;->source:Ljava/lang/String;

    .line 50
    goto :goto_5

    .line 52
    :cond_5
    move-object/from16 v8, p7

    .line 53
    :goto_5
    and-int/lit8 v9, v1, 0x40

    .line 55
    if-eqz v9, :cond_6

    .line 57
    iget v9, v0, Lcom/miui/systemui/events/BlockEvent;->index:I

    .line 59
    goto :goto_6

    .line 61
    :cond_6
    move/from16 v9, p8

    .line 62
    :goto_6
    and-int/lit16 v1, v1, 0x80

    .line 64
    if-eqz v1, :cond_7

    .line 66
    iget-object v1, v0, Lcom/miui/systemui/events/BlockEvent;->channelId:Ljava/lang/String;

    .line 68
    goto :goto_7

    .line 70
    :cond_7
    move-object/from16 v1, p9

    .line 71
    :goto_7
    move-object p1, v2

    .line 73
    move-object p2, v3

    .line 74
    move-wide p3, v4

    .line 75
    move p5, v6

    .line 76
    move/from16 p6, v7

    .line 77
    move-object/from16 p7, v8

    .line 79
    move/from16 p8, v9

    .line 81
    move-object/from16 p9, v1

    .line 83
    invoke-virtual/range {p0 .. p9}, Lcom/miui/systemui/events/BlockEvent;->copy(Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;ILjava/lang/String;)Lcom/miui/systemui/events/BlockEvent;

    .line 85
    move-result-object v0

    .line 88
    return-object v0
    .line 89
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/BlockEvent;->pkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/BlockEvent;->targetPkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component3()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/systemui/events/BlockEvent;->tsId:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public final component4()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/BlockEvent;->style:I

    .line 2
    return p0
    .line 4
.end method

.method public final component5()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/systemui/events/BlockEvent;->clearable:Z

    .line 2
    return p0
    .line 4
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/BlockEvent;->source:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component7()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/BlockEvent;->index:I

    .line 2
    return p0
    .line 4
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/BlockEvent;->channelId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;ILjava/lang/String;)Lcom/miui/systemui/events/BlockEvent;
    .locals 11

    .line 1
    new-instance v10, Lcom/miui/systemui/events/BlockEvent;

    .line 2
    move-object v0, v10

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-wide v3, p3

    .line 7
    move/from16 v5, p5

    .line 8
    move/from16 v6, p6

    .line 10
    move-object/from16 v7, p7

    .line 12
    move/from16 v8, p8

    .line 14
    move-object/from16 v9, p9

    .line 16
    invoke-direct/range {v0 .. v9}, Lcom/miui/systemui/events/BlockEvent;-><init>(Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;ILjava/lang/String;)V

    .line 18
    return-object v10
    .line 21
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
    instance-of v1, p1, Lcom/miui/systemui/events/BlockEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/miui/systemui/events/BlockEvent;

    .line 12
    iget-object v1, p0, Lcom/miui/systemui/events/BlockEvent;->pkg:Ljava/lang/String;

    .line 14
    iget-object v3, p1, Lcom/miui/systemui/events/BlockEvent;->pkg:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/BlockEvent;->targetPkg:Ljava/lang/String;

    .line 25
    iget-object v3, p1, Lcom/miui/systemui/events/BlockEvent;->targetPkg:Ljava/lang/String;

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
    iget-wide v3, p0, Lcom/miui/systemui/events/BlockEvent;->tsId:J

    .line 36
    iget-wide v5, p1, Lcom/miui/systemui/events/BlockEvent;->tsId:J

    .line 38
    cmp-long v1, v3, v5

    .line 40
    if-eqz v1, :cond_4

    .line 42
    return v2

    .line 44
    :cond_4
    iget v1, p0, Lcom/miui/systemui/events/BlockEvent;->style:I

    .line 45
    iget v3, p1, Lcom/miui/systemui/events/BlockEvent;->style:I

    .line 47
    if-eq v1, v3, :cond_5

    .line 49
    return v2

    .line 51
    :cond_5
    iget-boolean v1, p0, Lcom/miui/systemui/events/BlockEvent;->clearable:Z

    .line 52
    iget-boolean v3, p1, Lcom/miui/systemui/events/BlockEvent;->clearable:Z

    .line 54
    if-eq v1, v3, :cond_6

    .line 56
    return v2

    .line 58
    :cond_6
    iget-object v1, p0, Lcom/miui/systemui/events/BlockEvent;->source:Ljava/lang/String;

    .line 59
    iget-object v3, p1, Lcom/miui/systemui/events/BlockEvent;->source:Ljava/lang/String;

    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    move-result v1

    .line 66
    if-nez v1, :cond_7

    .line 67
    return v2

    .line 69
    :cond_7
    iget v1, p0, Lcom/miui/systemui/events/BlockEvent;->index:I

    .line 70
    iget v3, p1, Lcom/miui/systemui/events/BlockEvent;->index:I

    .line 72
    if-eq v1, v3, :cond_8

    .line 74
    return v2

    .line 76
    :cond_8
    iget-object p0, p0, Lcom/miui/systemui/events/BlockEvent;->channelId:Ljava/lang/String;

    .line 77
    iget-object p1, p1, Lcom/miui/systemui/events/BlockEvent;->channelId:Ljava/lang/String;

    .line 79
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    move-result p0

    .line 84
    if-nez p0, :cond_9

    .line 85
    return v2

    .line 87
    :cond_9
    return v0
    .line 88
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/BlockEvent;->channelId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getClearable()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/systemui/events/BlockEvent;->clearable:Z

    .line 2
    return p0
    .line 4
.end method

.method public final getIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/BlockEvent;->index:I

    .line 2
    return p0
    .line 4
.end method

.method public final getPkg()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/BlockEvent;->pkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSource()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/BlockEvent;->source:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getStyle()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/BlockEvent;->style:I

    .line 2
    return p0
    .line 4
.end method

.method public final getTargetPkg()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/BlockEvent;->targetPkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTsId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/systemui/events/BlockEvent;->tsId:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/events/BlockEvent;->pkg:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/miui/systemui/events/BlockEvent;->targetPkg:Ljava/lang/String;

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    iget-wide v1, p0, Lcom/miui/systemui/events/BlockEvent;->tsId:J

    .line 18
    const/16 v3, 0x1f

    .line 20
    invoke-static {v1, v2, v0, v3}, Lcom/android/app/motiontool/TraceMetadata$$ExternalSyntheticOutline0;->m(JII)I

    .line 22
    move-result v0

    .line 25
    iget v1, p0, Lcom/miui/systemui/events/BlockEvent;->style:I

    .line 26
    const/16 v2, 0x1f

    .line 28
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 30
    move-result v0

    .line 33
    iget-boolean v1, p0, Lcom/miui/systemui/events/BlockEvent;->clearable:Z

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
    iget-object v1, p0, Lcom/miui/systemui/events/BlockEvent;->source:Ljava/lang/String;

    .line 42
    const/16 v2, 0x1f

    .line 44
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 46
    move-result v0

    .line 49
    iget v1, p0, Lcom/miui/systemui/events/BlockEvent;->index:I

    .line 50
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 52
    move-result v0

    .line 55
    iget-object p0, p0, Lcom/miui/systemui/events/BlockEvent;->channelId:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 58
    move-result p0

    .line 61
    add-int/2addr p0, v0

    .line 62
    return p0
    .line 63
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/events/BlockEvent;->pkg:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/miui/systemui/events/BlockEvent;->targetPkg:Ljava/lang/String;

    .line 4
    iget-wide v2, p0, Lcom/miui/systemui/events/BlockEvent;->tsId:J

    .line 6
    iget v4, p0, Lcom/miui/systemui/events/BlockEvent;->style:I

    .line 8
    iget-boolean v5, p0, Lcom/miui/systemui/events/BlockEvent;->clearable:Z

    .line 10
    iget-object v6, p0, Lcom/miui/systemui/events/BlockEvent;->source:Ljava/lang/String;

    .line 12
    iget v7, p0, Lcom/miui/systemui/events/BlockEvent;->index:I

    .line 14
    iget-object p0, p0, Lcom/miui/systemui/events/BlockEvent;->channelId:Ljava/lang/String;

    .line 16
    const-string v8, "BlockEvent(pkg="

    .line 18
    const-string v9, ", targetPkg="

    .line 20
    const-string v10, ", tsId="

    .line 22
    invoke-static {v8, v0, v9, v1, v10}, Lcom/android/keyguard/event/FodQuickOpenActionEvent$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object v0

    .line 27
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, ", style="

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", clearable="

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, ", source="

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", index="

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, ", channelId="

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string p0, ")"

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 79
    return-object p0
    .line 80
.end method
