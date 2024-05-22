.class public final Lcom/miui/systemui/events/EnterSmallWindowEvent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "enter_small_window"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->NEWNOTIF:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final analyzeValue:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "analyze_value"
    .end annotation
.end field

.field private final channelId:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "channel_id"
    .end annotation
.end field

.field private final flags:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "flags"
    .end annotation
.end field

.field private final groupKey:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "group_key"
    .end annotation
.end field

.field private final id:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "sbn_id"
    .end annotation
.end field

.field private final importance:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "importance"
    .end annotation
.end field

.field private final isGroup:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_group"
    .end annotation
.end field

.field private final pkg:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "send_pkg"
    .end annotation
.end field

.field private final position:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "position"
    .end annotation
.end field

.field private final priority:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "priority"
    .end annotation
.end field

.field private final pushId:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "push_id"
    .end annotation
.end field

.field private final sessionId:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "panel_session_id"
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

.field private final tag:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "notification_tag"
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

.field private final version:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "notification_data_version"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->status:Ljava/lang/String;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->style:Ljava/lang/String;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->sessionId:Ljava/lang/String;

    move v1, p4

    .line 5
    iput v1, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->position:I

    move-wide v1, p5

    .line 6
    iput-wide v1, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->tsId:J

    move-object v1, p7

    .line 7
    iput-object v1, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->pkg:Ljava/lang/String;

    move-object v1, p8

    .line 8
    iput-object v1, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->targetPkg:Ljava/lang/String;

    move-object v1, p9

    .line 9
    iput-object v1, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->isGroup:Ljava/lang/String;

    move-object v1, p10

    .line 10
    iput-object v1, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->tag:Ljava/lang/String;

    move-object v1, p11

    .line 11
    iput-object v1, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->channelId:Ljava/lang/String;

    move-object v1, p12

    .line 12
    iput-object v1, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->textId:Ljava/lang/String;

    move/from16 v1, p13

    .line 13
    iput v1, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->priority:I

    move/from16 v1, p14

    .line 14
    iput v1, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->importance:I

    move/from16 v1, p15

    .line 15
    iput v1, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->flags:I

    move/from16 v1, p16

    .line 16
    iput v1, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->analyzeValue:I

    move-object/from16 v1, p17

    .line 17
    iput-object v1, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->pushId:Ljava/lang/String;

    move/from16 v1, p18

    .line 18
    iput v1, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->id:I

    move-object/from16 v1, p19

    .line 19
    iput-object v1, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->groupKey:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 20
    iput-object v1, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->tip:Ljava/lang/String;

    move/from16 v1, p21

    .line 21
    iput v1, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->version:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/systemui/events/EnterSmallWindowEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/miui/systemui/events/EnterSmallWindowEvent;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p22

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->status:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->style:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->sessionId:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->position:I

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-wide v6, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->tsId:J

    goto :goto_4

    :cond_4
    move-wide/from16 v6, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->pkg:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->targetPkg:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->isGroup:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->tag:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->channelId:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->textId:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget v14, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->priority:I

    goto :goto_b

    :cond_b
    move/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget v15, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->importance:I

    goto :goto_c

    :cond_c
    move/from16 v15, p14

    :goto_c
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget v15, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->flags:I

    goto :goto_d

    :cond_d
    move/from16 v15, p15

    :goto_d
    move/from16 p15, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget v15, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->analyzeValue:I

    goto :goto_e

    :cond_e
    move/from16 v15, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p16, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->pushId:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_10

    iget v15, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->id:I

    goto :goto_10

    :cond_10
    move/from16 v15, p18

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move/from16 p18, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->groupKey:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p19

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->tip:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p20

    :goto_12
    const/high16 v16, 0x80000

    and-int v1, v1, v16

    if-eqz v1, :cond_13

    iget v1, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->version:I

    goto :goto_13

    :cond_13
    move/from16 v1, p21

    :goto_13
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move/from16 p4, v5

    move-wide/from16 p5, v6

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move/from16 p13, v14

    move-object/from16 p20, v15

    move/from16 p21, v1

    invoke-virtual/range {p0 .. p21}, Lcom/miui/systemui/events/EnterSmallWindowEvent;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lcom/miui/systemui/events/EnterSmallWindowEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->status:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->channelId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component11()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->textId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component12()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->priority:I

    .line 2
    return p0
    .line 4
.end method

.method public final component13()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->importance:I

    .line 2
    return p0
    .line 4
.end method

.method public final component14()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->flags:I

    .line 2
    return p0
    .line 4
.end method

.method public final component15()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->analyzeValue:I

    .line 2
    return p0
    .line 4
.end method

.method public final component16()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->pushId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component17()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->id:I

    .line 2
    return p0
    .line 4
.end method

.method public final component18()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->groupKey:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component19()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->style:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component20()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->version:I

    .line 2
    return p0
    .line 4
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->sessionId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component4()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->position:I

    .line 2
    return p0
    .line 4
.end method

.method public final component5()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->tsId:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->pkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->targetPkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->isGroup:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->tag:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lcom/miui/systemui/events/EnterSmallWindowEvent;
    .locals 23

    .line 1
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move/from16 v21, p21

    new-instance v22, Lcom/miui/systemui/events/EnterSmallWindowEvent;

    move-object/from16 v0, v22

    invoke-direct/range {v0 .. v21}, Lcom/miui/systemui/events/EnterSmallWindowEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-object v22
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
    instance-of v1, p1, Lcom/miui/systemui/events/EnterSmallWindowEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/miui/systemui/events/EnterSmallWindowEvent;

    .line 12
    iget-object v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->status:Ljava/lang/String;

    .line 14
    iget-object v3, p1, Lcom/miui/systemui/events/EnterSmallWindowEvent;->status:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->style:Ljava/lang/String;

    .line 25
    iget-object v3, p1, Lcom/miui/systemui/events/EnterSmallWindowEvent;->style:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->sessionId:Ljava/lang/String;

    .line 36
    iget-object v3, p1, Lcom/miui/systemui/events/EnterSmallWindowEvent;->sessionId:Ljava/lang/String;

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
    iget v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->position:I

    .line 47
    iget v3, p1, Lcom/miui/systemui/events/EnterSmallWindowEvent;->position:I

    .line 49
    if-eq v1, v3, :cond_5

    .line 51
    return v2

    .line 53
    :cond_5
    iget-wide v3, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->tsId:J

    .line 54
    iget-wide v5, p1, Lcom/miui/systemui/events/EnterSmallWindowEvent;->tsId:J

    .line 56
    cmp-long v1, v3, v5

    .line 58
    if-eqz v1, :cond_6

    .line 60
    return v2

    .line 62
    :cond_6
    iget-object v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->pkg:Ljava/lang/String;

    .line 63
    iget-object v3, p1, Lcom/miui/systemui/events/EnterSmallWindowEvent;->pkg:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->targetPkg:Ljava/lang/String;

    .line 74
    iget-object v3, p1, Lcom/miui/systemui/events/EnterSmallWindowEvent;->targetPkg:Ljava/lang/String;

    .line 76
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    move-result v1

    .line 81
    if-nez v1, :cond_8

    .line 82
    return v2

    .line 84
    :cond_8
    iget-object v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->isGroup:Ljava/lang/String;

    .line 85
    iget-object v3, p1, Lcom/miui/systemui/events/EnterSmallWindowEvent;->isGroup:Ljava/lang/String;

    .line 87
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    move-result v1

    .line 92
    if-nez v1, :cond_9

    .line 93
    return v2

    .line 95
    :cond_9
    iget-object v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->tag:Ljava/lang/String;

    .line 96
    iget-object v3, p1, Lcom/miui/systemui/events/EnterSmallWindowEvent;->tag:Ljava/lang/String;

    .line 98
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    move-result v1

    .line 103
    if-nez v1, :cond_a

    .line 104
    return v2

    .line 106
    :cond_a
    iget-object v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->channelId:Ljava/lang/String;

    .line 107
    iget-object v3, p1, Lcom/miui/systemui/events/EnterSmallWindowEvent;->channelId:Ljava/lang/String;

    .line 109
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    move-result v1

    .line 114
    if-nez v1, :cond_b

    .line 115
    return v2

    .line 117
    :cond_b
    iget-object v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->textId:Ljava/lang/String;

    .line 118
    iget-object v3, p1, Lcom/miui/systemui/events/EnterSmallWindowEvent;->textId:Ljava/lang/String;

    .line 120
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    move-result v1

    .line 125
    if-nez v1, :cond_c

    .line 126
    return v2

    .line 128
    :cond_c
    iget v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->priority:I

    .line 129
    iget v3, p1, Lcom/miui/systemui/events/EnterSmallWindowEvent;->priority:I

    .line 131
    if-eq v1, v3, :cond_d

    .line 133
    return v2

    .line 135
    :cond_d
    iget v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->importance:I

    .line 136
    iget v3, p1, Lcom/miui/systemui/events/EnterSmallWindowEvent;->importance:I

    .line 138
    if-eq v1, v3, :cond_e

    .line 140
    return v2

    .line 142
    :cond_e
    iget v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->flags:I

    .line 143
    iget v3, p1, Lcom/miui/systemui/events/EnterSmallWindowEvent;->flags:I

    .line 145
    if-eq v1, v3, :cond_f

    .line 147
    return v2

    .line 149
    :cond_f
    iget v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->analyzeValue:I

    .line 150
    iget v3, p1, Lcom/miui/systemui/events/EnterSmallWindowEvent;->analyzeValue:I

    .line 152
    if-eq v1, v3, :cond_10

    .line 154
    return v2

    .line 156
    :cond_10
    iget-object v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->pushId:Ljava/lang/String;

    .line 157
    iget-object v3, p1, Lcom/miui/systemui/events/EnterSmallWindowEvent;->pushId:Ljava/lang/String;

    .line 159
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    move-result v1

    .line 164
    if-nez v1, :cond_11

    .line 165
    return v2

    .line 167
    :cond_11
    iget v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->id:I

    .line 168
    iget v3, p1, Lcom/miui/systemui/events/EnterSmallWindowEvent;->id:I

    .line 170
    if-eq v1, v3, :cond_12

    .line 172
    return v2

    .line 174
    :cond_12
    iget-object v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->groupKey:Ljava/lang/String;

    .line 175
    iget-object v3, p1, Lcom/miui/systemui/events/EnterSmallWindowEvent;->groupKey:Ljava/lang/String;

    .line 177
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    move-result v1

    .line 182
    if-nez v1, :cond_13

    .line 183
    return v2

    .line 185
    :cond_13
    iget-object v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->tip:Ljava/lang/String;

    .line 186
    iget-object v3, p1, Lcom/miui/systemui/events/EnterSmallWindowEvent;->tip:Ljava/lang/String;

    .line 188
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 190
    move-result v1

    .line 193
    if-nez v1, :cond_14

    .line 194
    return v2

    .line 196
    :cond_14
    iget p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->version:I

    .line 197
    iget p1, p1, Lcom/miui/systemui/events/EnterSmallWindowEvent;->version:I

    .line 199
    if-eq p0, p1, :cond_15

    .line 201
    return v2

    .line 203
    :cond_15
    return v0
    .line 204
.end method

.method public final getAnalyzeValue()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->analyzeValue:I

    .line 2
    return p0
    .line 4
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->channelId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getFlags()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->flags:I

    .line 2
    return p0
    .line 4
.end method

.method public final getGroupKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->groupKey:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->id:I

    .line 2
    return p0
    .line 4
.end method

.method public final getImportance()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->importance:I

    .line 2
    return p0
    .line 4
.end method

.method public final getPkg()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->pkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getPosition()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->position:I

    .line 2
    return p0
    .line 4
.end method

.method public final getPriority()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->priority:I

    .line 2
    return p0
    .line 4
.end method

.method public final getPushId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->pushId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->sessionId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->status:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getStyle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->style:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->tag:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTargetPkg()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->targetPkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTextId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->textId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTip()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTsId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->tsId:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public final getVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->version:I

    .line 2
    return p0
    .line 4
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->status:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->style:Ljava/lang/String;

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->sessionId:Ljava/lang/String;

    .line 18
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 20
    move-result v0

    .line 23
    iget v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->position:I

    .line 24
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 26
    move-result v0

    .line 29
    iget-wide v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->tsId:J

    .line 30
    const/16 v3, 0x1f

    .line 32
    invoke-static {v1, v2, v0, v3}, Lcom/android/app/motiontool/TraceMetadata$$ExternalSyntheticOutline0;->m(JII)I

    .line 34
    move-result v0

    .line 37
    iget-object v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->pkg:Ljava/lang/String;

    .line 38
    const/16 v2, 0x1f

    .line 40
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 42
    move-result v0

    .line 45
    iget-object v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->targetPkg:Ljava/lang/String;

    .line 46
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 48
    move-result v0

    .line 51
    iget-object v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->isGroup:Ljava/lang/String;

    .line 52
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 54
    move-result v0

    .line 57
    iget-object v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->tag:Ljava/lang/String;

    .line 58
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 60
    move-result v0

    .line 63
    iget-object v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->channelId:Ljava/lang/String;

    .line 64
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 66
    move-result v0

    .line 69
    iget-object v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->textId:Ljava/lang/String;

    .line 70
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 72
    move-result v0

    .line 75
    iget v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->priority:I

    .line 76
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 78
    move-result v0

    .line 81
    iget v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->importance:I

    .line 82
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 84
    move-result v0

    .line 87
    iget v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->flags:I

    .line 88
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 90
    move-result v0

    .line 93
    iget v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->analyzeValue:I

    .line 94
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 96
    move-result v0

    .line 99
    iget-object v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->pushId:Ljava/lang/String;

    .line 100
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 102
    move-result v0

    .line 105
    iget v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->id:I

    .line 106
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 108
    move-result v0

    .line 111
    iget-object v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->groupKey:Ljava/lang/String;

    .line 112
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 114
    move-result v0

    .line 117
    iget-object v1, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->tip:Ljava/lang/String;

    .line 118
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 120
    move-result v0

    .line 123
    iget p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->version:I

    .line 124
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 126
    move-result p0

    .line 129
    add-int/2addr p0, v0

    .line 130
    return p0
    .line 131
.end method

.method public final isGroup()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->isGroup:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->status:Ljava/lang/String;

    .line 4
    iget-object v2, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->style:Ljava/lang/String;

    .line 6
    iget-object v3, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->sessionId:Ljava/lang/String;

    .line 8
    iget v4, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->position:I

    .line 10
    iget-wide v5, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->tsId:J

    .line 12
    iget-object v7, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->pkg:Ljava/lang/String;

    .line 14
    iget-object v8, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->targetPkg:Ljava/lang/String;

    .line 16
    iget-object v9, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->isGroup:Ljava/lang/String;

    .line 18
    iget-object v10, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->tag:Ljava/lang/String;

    .line 20
    iget-object v11, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->channelId:Ljava/lang/String;

    .line 22
    iget-object v12, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->textId:Ljava/lang/String;

    .line 24
    iget v13, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->priority:I

    .line 26
    iget v14, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->importance:I

    .line 28
    iget v15, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->flags:I

    .line 30
    move/from16 v16, v15

    .line 32
    iget v15, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->analyzeValue:I

    .line 34
    move/from16 v17, v15

    .line 36
    iget-object v15, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->pushId:Ljava/lang/String;

    .line 38
    move-object/from16 v18, v15

    .line 40
    iget v15, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->id:I

    .line 42
    move/from16 v19, v15

    .line 44
    iget-object v15, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->groupKey:Ljava/lang/String;

    .line 46
    move-object/from16 v20, v15

    .line 48
    iget-object v15, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->tip:Ljava/lang/String;

    .line 50
    iget v0, v0, Lcom/miui/systemui/events/EnterSmallWindowEvent;->version:I

    .line 52
    move/from16 p0, v0

    .line 54
    const-string v0, "EnterSmallWindowEvent(status="

    .line 56
    move-object/from16 v21, v15

    .line 58
    const-string v15, ", style="

    .line 60
    move/from16 v22, v14

    .line 62
    const-string v14, ", sessionId="

    .line 64
    invoke-static {v0, v1, v15, v2, v14}, Lcom/android/keyguard/event/FodQuickOpenActionEvent$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    move-result-object v0

    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", position="

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, ", tsId="

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", pkg="

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, ", targetPkg="

    .line 97
    const-string v2, ", isGroup="

    .line 99
    invoke-static {v0, v1, v8, v2, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, ", tag="

    .line 104
    const-string v2, ", channelId="

    .line 106
    invoke-static {v0, v1, v10, v2, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, ", textId="

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, ", priority="

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, ", importance="

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    move/from16 v1, v22

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, ", flags="

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    move/from16 v1, v16

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, ", analyzeValue="

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    move/from16 v1, v17

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, ", pushId="

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    move-object/from16 v1, v18

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v1, ", id="

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    move/from16 v1, v19

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, ", groupKey="

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    move-object/from16 v1, v20

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, ", tip="

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    move-object/from16 v1, v21

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v1, ", version="

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    move/from16 v1, p0

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    const-string v1, ")"

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    move-result-object v0

    .line 215
    return-object v0
    .line 216
.end method
