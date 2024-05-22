.class public final Lcom/miui/systemui/events/FloatRetractEvent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "float_retract"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->NEWNOTIF:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final dataVersion:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "notification_data_version"
    .end annotation
.end field

.field private final isToast:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "is_toast"
    .end annotation
.end field

.field private final pkg:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "send_pkg"
    .end annotation
.end field

.field private final pushId:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "push_id"
    .end annotation
.end field

.field private final status:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "screen_orientation"
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

.field private final textId:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "text_id"
    .end annotation
.end field

.field private final tip:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "tip"
    .end annotation
.end field

.field private final tsId:J
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "ts_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/systemui/events/FloatRetractEvent;->pkg:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/miui/systemui/events/FloatRetractEvent;->targetPkg:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/miui/systemui/events/FloatRetractEvent;->style:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/miui/systemui/events/FloatRetractEvent;->status:Ljava/lang/String;

    .line 11
    iput-wide p5, p0, Lcom/miui/systemui/events/FloatRetractEvent;->tsId:J

    .line 13
    iput-object p7, p0, Lcom/miui/systemui/events/FloatRetractEvent;->textId:Ljava/lang/String;

    .line 15
    iput-object p8, p0, Lcom/miui/systemui/events/FloatRetractEvent;->pushId:Ljava/lang/String;

    .line 17
    iput-object p9, p0, Lcom/miui/systemui/events/FloatRetractEvent;->isToast:Ljava/lang/String;

    .line 19
    iput-object p10, p0, Lcom/miui/systemui/events/FloatRetractEvent;->tip:Ljava/lang/String;

    .line 21
    iput p11, p0, Lcom/miui/systemui/events/FloatRetractEvent;->dataVersion:I

    .line 23
    return-void
    .line 25
.end method

.method public static synthetic copy$default(Lcom/miui/systemui/events/FloatRetractEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/miui/systemui/events/FloatRetractEvent;
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
    iget-object v2, v0, Lcom/miui/systemui/events/FloatRetractEvent;->pkg:Ljava/lang/String;

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
    iget-object v3, v0, Lcom/miui/systemui/events/FloatRetractEvent;->targetPkg:Ljava/lang/String;

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
    iget-object v4, v0, Lcom/miui/systemui/events/FloatRetractEvent;->style:Ljava/lang/String;

    .line 25
    goto :goto_2

    .line 27
    :cond_2
    move-object v4, p3

    .line 28
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 29
    if-eqz v5, :cond_3

    .line 31
    iget-object v5, v0, Lcom/miui/systemui/events/FloatRetractEvent;->status:Ljava/lang/String;

    .line 33
    goto :goto_3

    .line 35
    :cond_3
    move-object/from16 v5, p4

    .line 36
    :goto_3
    and-int/lit8 v6, v1, 0x10

    .line 38
    if-eqz v6, :cond_4

    .line 40
    iget-wide v6, v0, Lcom/miui/systemui/events/FloatRetractEvent;->tsId:J

    .line 42
    goto :goto_4

    .line 44
    :cond_4
    move-wide/from16 v6, p5

    .line 45
    :goto_4
    and-int/lit8 v8, v1, 0x20

    .line 47
    if-eqz v8, :cond_5

    .line 49
    iget-object v8, v0, Lcom/miui/systemui/events/FloatRetractEvent;->textId:Ljava/lang/String;

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
    iget-object v9, v0, Lcom/miui/systemui/events/FloatRetractEvent;->pushId:Ljava/lang/String;

    .line 60
    goto :goto_6

    .line 62
    :cond_6
    move-object/from16 v9, p8

    .line 63
    :goto_6
    and-int/lit16 v10, v1, 0x80

    .line 65
    if-eqz v10, :cond_7

    .line 67
    iget-object v10, v0, Lcom/miui/systemui/events/FloatRetractEvent;->isToast:Ljava/lang/String;

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
    iget-object v11, v0, Lcom/miui/systemui/events/FloatRetractEvent;->tip:Ljava/lang/String;

    .line 78
    goto :goto_8

    .line 80
    :cond_8
    move-object/from16 v11, p10

    .line 81
    :goto_8
    and-int/lit16 v1, v1, 0x200

    .line 83
    if-eqz v1, :cond_9

    .line 85
    iget v1, v0, Lcom/miui/systemui/events/FloatRetractEvent;->dataVersion:I

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
    move-object p3, v4

    .line 94
    move-object/from16 p4, v5

    .line 95
    move-wide/from16 p5, v6

    .line 97
    move-object/from16 p7, v8

    .line 99
    move-object/from16 p8, v9

    .line 101
    move-object/from16 p9, v10

    .line 103
    move-object/from16 p10, v11

    .line 105
    move/from16 p11, v1

    .line 107
    invoke-virtual/range {p0 .. p11}, Lcom/miui/systemui/events/FloatRetractEvent;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/systemui/events/FloatRetractEvent;

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
    iget-object p0, p0, Lcom/miui/systemui/events/FloatRetractEvent;->pkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component10()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/FloatRetractEvent;->dataVersion:I

    .line 2
    return p0
    .line 4
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/FloatRetractEvent;->targetPkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/FloatRetractEvent;->style:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/FloatRetractEvent;->status:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component5()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/systemui/events/FloatRetractEvent;->tsId:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/FloatRetractEvent;->textId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/FloatRetractEvent;->pushId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/FloatRetractEvent;->isToast:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/FloatRetractEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/systemui/events/FloatRetractEvent;
    .locals 13

    .line 1
    new-instance v12, Lcom/miui/systemui/events/FloatRetractEvent;

    .line 2
    move-object v0, v12

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object/from16 v3, p3

    .line 7
    move-object/from16 v4, p4

    .line 9
    move-wide/from16 v5, p5

    .line 11
    move-object/from16 v7, p7

    .line 13
    move-object/from16 v8, p8

    .line 15
    move-object/from16 v9, p9

    .line 17
    move-object/from16 v10, p10

    .line 19
    move/from16 v11, p11

    .line 21
    invoke-direct/range {v0 .. v11}, Lcom/miui/systemui/events/FloatRetractEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

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
    instance-of v1, p1, Lcom/miui/systemui/events/FloatRetractEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/miui/systemui/events/FloatRetractEvent;

    .line 12
    iget-object v1, p0, Lcom/miui/systemui/events/FloatRetractEvent;->pkg:Ljava/lang/String;

    .line 14
    iget-object v3, p1, Lcom/miui/systemui/events/FloatRetractEvent;->pkg:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/FloatRetractEvent;->targetPkg:Ljava/lang/String;

    .line 25
    iget-object v3, p1, Lcom/miui/systemui/events/FloatRetractEvent;->targetPkg:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/FloatRetractEvent;->style:Ljava/lang/String;

    .line 36
    iget-object v3, p1, Lcom/miui/systemui/events/FloatRetractEvent;->style:Ljava/lang/String;

    .line 38
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/miui/systemui/events/FloatRetractEvent;->status:Ljava/lang/String;

    .line 47
    iget-object v3, p1, Lcom/miui/systemui/events/FloatRetractEvent;->status:Ljava/lang/String;

    .line 49
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    return v2

    .line 57
    :cond_5
    iget-wide v3, p0, Lcom/miui/systemui/events/FloatRetractEvent;->tsId:J

    .line 58
    iget-wide v5, p1, Lcom/miui/systemui/events/FloatRetractEvent;->tsId:J

    .line 60
    cmp-long v1, v3, v5

    .line 62
    if-eqz v1, :cond_6

    .line 64
    return v2

    .line 66
    :cond_6
    iget-object v1, p0, Lcom/miui/systemui/events/FloatRetractEvent;->textId:Ljava/lang/String;

    .line 67
    iget-object v3, p1, Lcom/miui/systemui/events/FloatRetractEvent;->textId:Ljava/lang/String;

    .line 69
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    move-result v1

    .line 74
    if-nez v1, :cond_7

    .line 75
    return v2

    .line 77
    :cond_7
    iget-object v1, p0, Lcom/miui/systemui/events/FloatRetractEvent;->pushId:Ljava/lang/String;

    .line 78
    iget-object v3, p1, Lcom/miui/systemui/events/FloatRetractEvent;->pushId:Ljava/lang/String;

    .line 80
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    move-result v1

    .line 85
    if-nez v1, :cond_8

    .line 86
    return v2

    .line 88
    :cond_8
    iget-object v1, p0, Lcom/miui/systemui/events/FloatRetractEvent;->isToast:Ljava/lang/String;

    .line 89
    iget-object v3, p1, Lcom/miui/systemui/events/FloatRetractEvent;->isToast:Ljava/lang/String;

    .line 91
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    move-result v1

    .line 96
    if-nez v1, :cond_9

    .line 97
    return v2

    .line 99
    :cond_9
    iget-object v1, p0, Lcom/miui/systemui/events/FloatRetractEvent;->tip:Ljava/lang/String;

    .line 100
    iget-object v3, p1, Lcom/miui/systemui/events/FloatRetractEvent;->tip:Ljava/lang/String;

    .line 102
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    move-result v1

    .line 107
    if-nez v1, :cond_a

    .line 108
    return v2

    .line 110
    :cond_a
    iget p0, p0, Lcom/miui/systemui/events/FloatRetractEvent;->dataVersion:I

    .line 111
    iget p1, p1, Lcom/miui/systemui/events/FloatRetractEvent;->dataVersion:I

    .line 113
    if-eq p0, p1, :cond_b

    .line 115
    return v2

    .line 117
    :cond_b
    return v0
    .line 118
.end method

.method public final getDataVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/FloatRetractEvent;->dataVersion:I

    .line 2
    return p0
    .line 4
.end method

.method public final getPkg()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/FloatRetractEvent;->pkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getPushId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/FloatRetractEvent;->pushId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/FloatRetractEvent;->status:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getStyle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/FloatRetractEvent;->style:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTargetPkg()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/FloatRetractEvent;->targetPkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTextId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/FloatRetractEvent;->textId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTip()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/FloatRetractEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTsId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/systemui/events/FloatRetractEvent;->tsId:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/events/FloatRetractEvent;->pkg:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/miui/systemui/events/FloatRetractEvent;->targetPkg:Ljava/lang/String;

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/miui/systemui/events/FloatRetractEvent;->style:Ljava/lang/String;

    .line 18
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 20
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/miui/systemui/events/FloatRetractEvent;->status:Ljava/lang/String;

    .line 24
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 26
    move-result v0

    .line 29
    iget-wide v1, p0, Lcom/miui/systemui/events/FloatRetractEvent;->tsId:J

    .line 30
    const/16 v3, 0x1f

    .line 32
    invoke-static {v1, v2, v0, v3}, Lcom/android/app/motiontool/TraceMetadata$$ExternalSyntheticOutline0;->m(JII)I

    .line 34
    move-result v0

    .line 37
    iget-object v1, p0, Lcom/miui/systemui/events/FloatRetractEvent;->textId:Ljava/lang/String;

    .line 38
    const/16 v2, 0x1f

    .line 40
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 42
    move-result v0

    .line 45
    iget-object v1, p0, Lcom/miui/systemui/events/FloatRetractEvent;->pushId:Ljava/lang/String;

    .line 46
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 48
    move-result v0

    .line 51
    iget-object v1, p0, Lcom/miui/systemui/events/FloatRetractEvent;->isToast:Ljava/lang/String;

    .line 52
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 54
    move-result v0

    .line 57
    iget-object v1, p0, Lcom/miui/systemui/events/FloatRetractEvent;->tip:Ljava/lang/String;

    .line 58
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 60
    move-result v0

    .line 63
    iget p0, p0, Lcom/miui/systemui/events/FloatRetractEvent;->dataVersion:I

    .line 64
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 66
    move-result p0

    .line 69
    add-int/2addr p0, v0

    .line 70
    return p0
    .line 71
.end method

.method public final isToast()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/FloatRetractEvent;->isToast:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/events/FloatRetractEvent;->pkg:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/miui/systemui/events/FloatRetractEvent;->targetPkg:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/miui/systemui/events/FloatRetractEvent;->style:Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcom/miui/systemui/events/FloatRetractEvent;->status:Ljava/lang/String;

    .line 8
    iget-wide v4, p0, Lcom/miui/systemui/events/FloatRetractEvent;->tsId:J

    .line 10
    iget-object v6, p0, Lcom/miui/systemui/events/FloatRetractEvent;->textId:Ljava/lang/String;

    .line 12
    iget-object v7, p0, Lcom/miui/systemui/events/FloatRetractEvent;->pushId:Ljava/lang/String;

    .line 14
    iget-object v8, p0, Lcom/miui/systemui/events/FloatRetractEvent;->isToast:Ljava/lang/String;

    .line 16
    iget-object v9, p0, Lcom/miui/systemui/events/FloatRetractEvent;->tip:Ljava/lang/String;

    .line 18
    iget p0, p0, Lcom/miui/systemui/events/FloatRetractEvent;->dataVersion:I

    .line 20
    const-string v10, "FloatRetractEvent(pkg="

    .line 22
    const-string v11, ", targetPkg="

    .line 24
    const-string v12, ", style="

    .line 26
    invoke-static {v10, v0, v11, v1, v12}, Lcom/android/keyguard/event/FodQuickOpenActionEvent$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    move-result-object v0

    .line 31
    const-string v1, ", status="

    .line 32
    const-string v10, ", tsId="

    .line 34
    invoke-static {v0, v2, v1, v3, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    const-string v1, ", textId="

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, ", pushId="

    .line 50
    const-string v2, ", isToast="

    .line 52
    invoke-static {v0, v1, v7, v2, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, ", tip="

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", dataVersion="

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    const-string p0, ")"

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 81
    return-object p0
    .line 82
.end method
