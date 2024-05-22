.class public final Lcom/miui/systemui/events/CancelEvent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "notification_delete"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->NEWNOTIF:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final channelId:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "channel_id"
    .end annotation
.end field

.field private final exposed:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_exposed"
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

.field private final ifGroup:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_group_notification"
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

.field private final mediaStyle:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "media_notification_style"
    .end annotation
.end field

.field private final orientation:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "screen_orientation"
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

.field private final reason:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "delete_reason"
    .end annotation
.end field

.field private final sessionId:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "panel_session_id"
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

.field private final value:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "analyze_value"
    .end annotation
.end field

.field private final version:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "notification_data_version"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    move-object v1, p1

    .line 6
    iput-object v1, v0, Lcom/miui/systemui/events/CancelEvent;->tag:Ljava/lang/String;

    .line 7
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lcom/miui/systemui/events/CancelEvent;->pkg:Ljava/lang/String;

    .line 10
    move-object v1, p3

    .line 12
    iput-object v1, v0, Lcom/miui/systemui/events/CancelEvent;->targetPkg:Ljava/lang/String;

    .line 13
    move-wide v1, p4

    .line 15
    iput-wide v1, v0, Lcom/miui/systemui/events/CancelEvent;->tsId:J

    .line 16
    move-object v1, p6

    .line 18
    iput-object v1, v0, Lcom/miui/systemui/events/CancelEvent;->style:Ljava/lang/String;

    .line 19
    move-object v1, p7

    .line 21
    iput-object v1, v0, Lcom/miui/systemui/events/CancelEvent;->isGroup:Ljava/lang/String;

    .line 22
    move-object v1, p8

    .line 24
    iput-object v1, v0, Lcom/miui/systemui/events/CancelEvent;->channelId:Ljava/lang/String;

    .line 25
    move-object v1, p9

    .line 27
    iput-object v1, v0, Lcom/miui/systemui/events/CancelEvent;->reason:Ljava/lang/String;

    .line 28
    move-object v1, p10

    .line 30
    iput-object v1, v0, Lcom/miui/systemui/events/CancelEvent;->orientation:Ljava/lang/String;

    .line 31
    move-object v1, p11

    .line 33
    iput-object v1, v0, Lcom/miui/systemui/events/CancelEvent;->textId:Ljava/lang/String;

    .line 34
    move v1, p12

    .line 36
    iput v1, v0, Lcom/miui/systemui/events/CancelEvent;->priority:I

    .line 37
    move/from16 v1, p13

    .line 39
    iput v1, v0, Lcom/miui/systemui/events/CancelEvent;->importance:I

    .line 41
    move/from16 v1, p14

    .line 43
    iput v1, v0, Lcom/miui/systemui/events/CancelEvent;->flags:I

    .line 45
    move/from16 v1, p15

    .line 47
    iput v1, v0, Lcom/miui/systemui/events/CancelEvent;->value:I

    .line 49
    move-object/from16 v1, p16

    .line 51
    iput-object v1, v0, Lcom/miui/systemui/events/CancelEvent;->pushId:Ljava/lang/String;

    .line 53
    move/from16 v1, p17

    .line 55
    iput v1, v0, Lcom/miui/systemui/events/CancelEvent;->id:I

    .line 57
    move-object/from16 v1, p18

    .line 59
    iput-object v1, v0, Lcom/miui/systemui/events/CancelEvent;->groupKey:Ljava/lang/String;

    .line 61
    move-object/from16 v1, p19

    .line 63
    iput-object v1, v0, Lcom/miui/systemui/events/CancelEvent;->exposed:Ljava/lang/String;

    .line 65
    move/from16 v1, p20

    .line 67
    iput v1, v0, Lcom/miui/systemui/events/CancelEvent;->position:I

    .line 69
    move-object/from16 v1, p21

    .line 71
    iput-object v1, v0, Lcom/miui/systemui/events/CancelEvent;->sessionId:Ljava/lang/String;

    .line 73
    move-object/from16 v1, p22

    .line 75
    iput-object v1, v0, Lcom/miui/systemui/events/CancelEvent;->ifGroup:Ljava/lang/String;

    .line 77
    move-object/from16 v1, p23

    .line 79
    iput-object v1, v0, Lcom/miui/systemui/events/CancelEvent;->tip:Ljava/lang/String;

    .line 81
    move-object/from16 v1, p24

    .line 83
    iput-object v1, v0, Lcom/miui/systemui/events/CancelEvent;->mediaStyle:Ljava/lang/String;

    .line 85
    move/from16 v1, p25

    .line 87
    iput v1, v0, Lcom/miui/systemui/events/CancelEvent;->version:I

    .line 89
    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/systemui/events/CancelEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/miui/systemui/events/CancelEvent;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p26

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/miui/systemui/events/CancelEvent;->tag:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/miui/systemui/events/CancelEvent;->pkg:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/miui/systemui/events/CancelEvent;->targetPkg:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-wide v5, v0, Lcom/miui/systemui/events/CancelEvent;->tsId:J

    goto :goto_3

    :cond_3
    move-wide/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/miui/systemui/events/CancelEvent;->style:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/miui/systemui/events/CancelEvent;->isGroup:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/miui/systemui/events/CancelEvent;->channelId:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/miui/systemui/events/CancelEvent;->reason:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/miui/systemui/events/CancelEvent;->orientation:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/miui/systemui/events/CancelEvent;->textId:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget v13, v0, Lcom/miui/systemui/events/CancelEvent;->priority:I

    goto :goto_a

    :cond_a
    move/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget v14, v0, Lcom/miui/systemui/events/CancelEvent;->importance:I

    goto :goto_b

    :cond_b
    move/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget v15, v0, Lcom/miui/systemui/events/CancelEvent;->flags:I

    goto :goto_c

    :cond_c
    move/from16 v15, p14

    :goto_c
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget v15, v0, Lcom/miui/systemui/events/CancelEvent;->value:I

    goto :goto_d

    :cond_d
    move/from16 v15, p15

    :goto_d
    move/from16 p15, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/miui/systemui/events/CancelEvent;->pushId:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_f

    iget v15, v0, Lcom/miui/systemui/events/CancelEvent;->id:I

    goto :goto_f

    :cond_f
    move/from16 v15, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p17, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/miui/systemui/events/CancelEvent;->groupKey:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p18

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/miui/systemui/events/CancelEvent;->exposed:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p19

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_12

    iget v15, v0, Lcom/miui/systemui/events/CancelEvent;->position:I

    goto :goto_12

    :cond_12
    move/from16 v15, p20

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move/from16 p20, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/miui/systemui/events/CancelEvent;->sessionId:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p21

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lcom/miui/systemui/events/CancelEvent;->ifGroup:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p22

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Lcom/miui/systemui/events/CancelEvent;->tip:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p23

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lcom/miui/systemui/events/CancelEvent;->mediaStyle:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p24

    :goto_16
    const/high16 v16, 0x800000

    and-int v1, v1, v16

    if-eqz v1, :cond_17

    iget v1, v0, Lcom/miui/systemui/events/CancelEvent;->version:I

    goto :goto_17

    :cond_17
    move/from16 v1, p25

    :goto_17
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-wide/from16 p4, v5

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move-object/from16 p24, v15

    move/from16 p25, v1

    invoke-virtual/range {p0 .. p25}, Lcom/miui/systemui/events/CancelEvent;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/systemui/events/CancelEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->tag:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->textId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component11()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/CancelEvent;->priority:I

    .line 2
    return p0
    .line 4
.end method

.method public final component12()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/CancelEvent;->importance:I

    .line 2
    return p0
    .line 4
.end method

.method public final component13()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/CancelEvent;->flags:I

    .line 2
    return p0
    .line 4
.end method

.method public final component14()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/CancelEvent;->value:I

    .line 2
    return p0
    .line 4
.end method

.method public final component15()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->pushId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component16()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/CancelEvent;->id:I

    .line 2
    return p0
    .line 4
.end method

.method public final component17()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->groupKey:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component18()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->exposed:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component19()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/CancelEvent;->position:I

    .line 2
    return p0
    .line 4
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->pkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component20()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->sessionId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component21()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->ifGroup:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component22()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component23()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->mediaStyle:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component24()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/CancelEvent;->version:I

    .line 2
    return p0
    .line 4
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->targetPkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component4()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/systemui/events/CancelEvent;->tsId:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->style:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->isGroup:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->channelId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->reason:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->orientation:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/systemui/events/CancelEvent;
    .locals 27

    .line 1
    move-object/from16 v1, p1

    .line 2
    move-object/from16 v2, p2

    .line 4
    move-object/from16 v3, p3

    .line 6
    move-wide/from16 v4, p4

    .line 8
    move-object/from16 v6, p6

    .line 10
    move-object/from16 v7, p7

    .line 12
    move-object/from16 v8, p8

    .line 14
    move-object/from16 v9, p9

    .line 16
    move-object/from16 v10, p10

    .line 18
    move-object/from16 v11, p11

    .line 20
    move/from16 v12, p12

    .line 22
    move/from16 v13, p13

    .line 24
    move/from16 v14, p14

    .line 26
    move/from16 v15, p15

    .line 28
    move-object/from16 v16, p16

    .line 30
    move/from16 v17, p17

    .line 32
    move-object/from16 v18, p18

    .line 34
    move-object/from16 v19, p19

    .line 36
    move/from16 v20, p20

    .line 38
    move-object/from16 v21, p21

    .line 40
    move-object/from16 v22, p22

    .line 42
    move-object/from16 v23, p23

    .line 44
    move-object/from16 v24, p24

    .line 46
    move/from16 v25, p25

    .line 48
    new-instance v26, Lcom/miui/systemui/events/CancelEvent;

    .line 50
    move-object/from16 v0, v26

    .line 52
    invoke-direct/range {v0 .. v25}, Lcom/miui/systemui/events/CancelEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    return-object v26
    .line 57
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
    instance-of v1, p1, Lcom/miui/systemui/events/CancelEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/miui/systemui/events/CancelEvent;

    .line 12
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->tag:Ljava/lang/String;

    .line 14
    iget-object v3, p1, Lcom/miui/systemui/events/CancelEvent;->tag:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->pkg:Ljava/lang/String;

    .line 25
    iget-object v3, p1, Lcom/miui/systemui/events/CancelEvent;->pkg:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->targetPkg:Ljava/lang/String;

    .line 36
    iget-object v3, p1, Lcom/miui/systemui/events/CancelEvent;->targetPkg:Ljava/lang/String;

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
    iget-wide v3, p0, Lcom/miui/systemui/events/CancelEvent;->tsId:J

    .line 47
    iget-wide v5, p1, Lcom/miui/systemui/events/CancelEvent;->tsId:J

    .line 49
    cmp-long v1, v3, v5

    .line 51
    if-eqz v1, :cond_5

    .line 53
    return v2

    .line 55
    :cond_5
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->style:Ljava/lang/String;

    .line 56
    iget-object v3, p1, Lcom/miui/systemui/events/CancelEvent;->style:Ljava/lang/String;

    .line 58
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    move-result v1

    .line 63
    if-nez v1, :cond_6

    .line 64
    return v2

    .line 66
    :cond_6
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->isGroup:Ljava/lang/String;

    .line 67
    iget-object v3, p1, Lcom/miui/systemui/events/CancelEvent;->isGroup:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->channelId:Ljava/lang/String;

    .line 78
    iget-object v3, p1, Lcom/miui/systemui/events/CancelEvent;->channelId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->reason:Ljava/lang/String;

    .line 89
    iget-object v3, p1, Lcom/miui/systemui/events/CancelEvent;->reason:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->orientation:Ljava/lang/String;

    .line 100
    iget-object v3, p1, Lcom/miui/systemui/events/CancelEvent;->orientation:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->textId:Ljava/lang/String;

    .line 111
    iget-object v3, p1, Lcom/miui/systemui/events/CancelEvent;->textId:Ljava/lang/String;

    .line 113
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    move-result v1

    .line 118
    if-nez v1, :cond_b

    .line 119
    return v2

    .line 121
    :cond_b
    iget v1, p0, Lcom/miui/systemui/events/CancelEvent;->priority:I

    .line 122
    iget v3, p1, Lcom/miui/systemui/events/CancelEvent;->priority:I

    .line 124
    if-eq v1, v3, :cond_c

    .line 126
    return v2

    .line 128
    :cond_c
    iget v1, p0, Lcom/miui/systemui/events/CancelEvent;->importance:I

    .line 129
    iget v3, p1, Lcom/miui/systemui/events/CancelEvent;->importance:I

    .line 131
    if-eq v1, v3, :cond_d

    .line 133
    return v2

    .line 135
    :cond_d
    iget v1, p0, Lcom/miui/systemui/events/CancelEvent;->flags:I

    .line 136
    iget v3, p1, Lcom/miui/systemui/events/CancelEvent;->flags:I

    .line 138
    if-eq v1, v3, :cond_e

    .line 140
    return v2

    .line 142
    :cond_e
    iget v1, p0, Lcom/miui/systemui/events/CancelEvent;->value:I

    .line 143
    iget v3, p1, Lcom/miui/systemui/events/CancelEvent;->value:I

    .line 145
    if-eq v1, v3, :cond_f

    .line 147
    return v2

    .line 149
    :cond_f
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->pushId:Ljava/lang/String;

    .line 150
    iget-object v3, p1, Lcom/miui/systemui/events/CancelEvent;->pushId:Ljava/lang/String;

    .line 152
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    move-result v1

    .line 157
    if-nez v1, :cond_10

    .line 158
    return v2

    .line 160
    :cond_10
    iget v1, p0, Lcom/miui/systemui/events/CancelEvent;->id:I

    .line 161
    iget v3, p1, Lcom/miui/systemui/events/CancelEvent;->id:I

    .line 163
    if-eq v1, v3, :cond_11

    .line 165
    return v2

    .line 167
    :cond_11
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->groupKey:Ljava/lang/String;

    .line 168
    iget-object v3, p1, Lcom/miui/systemui/events/CancelEvent;->groupKey:Ljava/lang/String;

    .line 170
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    move-result v1

    .line 175
    if-nez v1, :cond_12

    .line 176
    return v2

    .line 178
    :cond_12
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->exposed:Ljava/lang/String;

    .line 179
    iget-object v3, p1, Lcom/miui/systemui/events/CancelEvent;->exposed:Ljava/lang/String;

    .line 181
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    move-result v1

    .line 186
    if-nez v1, :cond_13

    .line 187
    return v2

    .line 189
    :cond_13
    iget v1, p0, Lcom/miui/systemui/events/CancelEvent;->position:I

    .line 190
    iget v3, p1, Lcom/miui/systemui/events/CancelEvent;->position:I

    .line 192
    if-eq v1, v3, :cond_14

    .line 194
    return v2

    .line 196
    :cond_14
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->sessionId:Ljava/lang/String;

    .line 197
    iget-object v3, p1, Lcom/miui/systemui/events/CancelEvent;->sessionId:Ljava/lang/String;

    .line 199
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 201
    move-result v1

    .line 204
    if-nez v1, :cond_15

    .line 205
    return v2

    .line 207
    :cond_15
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->ifGroup:Ljava/lang/String;

    .line 208
    iget-object v3, p1, Lcom/miui/systemui/events/CancelEvent;->ifGroup:Ljava/lang/String;

    .line 210
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    move-result v1

    .line 215
    if-nez v1, :cond_16

    .line 216
    return v2

    .line 218
    :cond_16
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->tip:Ljava/lang/String;

    .line 219
    iget-object v3, p1, Lcom/miui/systemui/events/CancelEvent;->tip:Ljava/lang/String;

    .line 221
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 223
    move-result v1

    .line 226
    if-nez v1, :cond_17

    .line 227
    return v2

    .line 229
    :cond_17
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->mediaStyle:Ljava/lang/String;

    .line 230
    iget-object v3, p1, Lcom/miui/systemui/events/CancelEvent;->mediaStyle:Ljava/lang/String;

    .line 232
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 234
    move-result v1

    .line 237
    if-nez v1, :cond_18

    .line 238
    return v2

    .line 240
    :cond_18
    iget p0, p0, Lcom/miui/systemui/events/CancelEvent;->version:I

    .line 241
    iget p1, p1, Lcom/miui/systemui/events/CancelEvent;->version:I

    .line 243
    if-eq p0, p1, :cond_19

    .line 245
    return v2

    .line 247
    :cond_19
    return v0
    .line 248
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->channelId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getExposed()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->exposed:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getFlags()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/CancelEvent;->flags:I

    .line 2
    return p0
    .line 4
.end method

.method public final getGroupKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->groupKey:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/CancelEvent;->id:I

    .line 2
    return p0
    .line 4
.end method

.method public final getIfGroup()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->ifGroup:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getImportance()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/CancelEvent;->importance:I

    .line 2
    return p0
    .line 4
.end method

.method public final getMediaStyle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->mediaStyle:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getOrientation()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->orientation:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getPkg()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->pkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getPosition()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/CancelEvent;->position:I

    .line 2
    return p0
    .line 4
.end method

.method public final getPriority()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/CancelEvent;->priority:I

    .line 2
    return p0
    .line 4
.end method

.method public final getPushId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->pushId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getReason()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->reason:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->sessionId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getStyle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->style:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->tag:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTargetPkg()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->targetPkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTextId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->textId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTip()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTsId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/systemui/events/CancelEvent;->tsId:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public final getValue()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/CancelEvent;->value:I

    .line 2
    return p0
    .line 4
.end method

.method public final getVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/CancelEvent;->version:I

    .line 2
    return p0
    .line 4
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/events/CancelEvent;->tag:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->pkg:Ljava/lang/String;

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->targetPkg:Ljava/lang/String;

    .line 18
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 20
    move-result v0

    .line 23
    iget-wide v1, p0, Lcom/miui/systemui/events/CancelEvent;->tsId:J

    .line 24
    const/16 v3, 0x1f

    .line 26
    invoke-static {v1, v2, v0, v3}, Lcom/android/app/motiontool/TraceMetadata$$ExternalSyntheticOutline0;->m(JII)I

    .line 28
    move-result v0

    .line 31
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->style:Ljava/lang/String;

    .line 32
    const/16 v2, 0x1f

    .line 34
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 36
    move-result v0

    .line 39
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->isGroup:Ljava/lang/String;

    .line 40
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 42
    move-result v0

    .line 45
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->channelId:Ljava/lang/String;

    .line 46
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 48
    move-result v0

    .line 51
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->reason:Ljava/lang/String;

    .line 52
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 54
    move-result v0

    .line 57
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->orientation:Ljava/lang/String;

    .line 58
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 60
    move-result v0

    .line 63
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->textId:Ljava/lang/String;

    .line 64
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 66
    move-result v0

    .line 69
    iget v1, p0, Lcom/miui/systemui/events/CancelEvent;->priority:I

    .line 70
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 72
    move-result v0

    .line 75
    iget v1, p0, Lcom/miui/systemui/events/CancelEvent;->importance:I

    .line 76
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 78
    move-result v0

    .line 81
    iget v1, p0, Lcom/miui/systemui/events/CancelEvent;->flags:I

    .line 82
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 84
    move-result v0

    .line 87
    iget v1, p0, Lcom/miui/systemui/events/CancelEvent;->value:I

    .line 88
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 90
    move-result v0

    .line 93
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->pushId:Ljava/lang/String;

    .line 94
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 96
    move-result v0

    .line 99
    iget v1, p0, Lcom/miui/systemui/events/CancelEvent;->id:I

    .line 100
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 102
    move-result v0

    .line 105
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->groupKey:Ljava/lang/String;

    .line 106
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 108
    move-result v0

    .line 111
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->exposed:Ljava/lang/String;

    .line 112
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 114
    move-result v0

    .line 117
    iget v1, p0, Lcom/miui/systemui/events/CancelEvent;->position:I

    .line 118
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 120
    move-result v0

    .line 123
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->sessionId:Ljava/lang/String;

    .line 124
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 126
    move-result v0

    .line 129
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->ifGroup:Ljava/lang/String;

    .line 130
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 132
    move-result v0

    .line 135
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->tip:Ljava/lang/String;

    .line 136
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 138
    move-result v0

    .line 141
    iget-object v1, p0, Lcom/miui/systemui/events/CancelEvent;->mediaStyle:Ljava/lang/String;

    .line 142
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 144
    move-result v0

    .line 147
    iget p0, p0, Lcom/miui/systemui/events/CancelEvent;->version:I

    .line 148
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 150
    move-result p0

    .line 153
    add-int/2addr p0, v0

    .line 154
    return p0
    .line 155
.end method

.method public final isGroup()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/CancelEvent;->isGroup:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/miui/systemui/events/CancelEvent;->tag:Ljava/lang/String;

    .line 4
    iget-object v2, v0, Lcom/miui/systemui/events/CancelEvent;->pkg:Ljava/lang/String;

    .line 6
    iget-object v3, v0, Lcom/miui/systemui/events/CancelEvent;->targetPkg:Ljava/lang/String;

    .line 8
    iget-wide v4, v0, Lcom/miui/systemui/events/CancelEvent;->tsId:J

    .line 10
    iget-object v6, v0, Lcom/miui/systemui/events/CancelEvent;->style:Ljava/lang/String;

    .line 12
    iget-object v7, v0, Lcom/miui/systemui/events/CancelEvent;->isGroup:Ljava/lang/String;

    .line 14
    iget-object v8, v0, Lcom/miui/systemui/events/CancelEvent;->channelId:Ljava/lang/String;

    .line 16
    iget-object v9, v0, Lcom/miui/systemui/events/CancelEvent;->reason:Ljava/lang/String;

    .line 18
    iget-object v10, v0, Lcom/miui/systemui/events/CancelEvent;->orientation:Ljava/lang/String;

    .line 20
    iget-object v11, v0, Lcom/miui/systemui/events/CancelEvent;->textId:Ljava/lang/String;

    .line 22
    iget v12, v0, Lcom/miui/systemui/events/CancelEvent;->priority:I

    .line 24
    iget v13, v0, Lcom/miui/systemui/events/CancelEvent;->importance:I

    .line 26
    iget v14, v0, Lcom/miui/systemui/events/CancelEvent;->flags:I

    .line 28
    iget v15, v0, Lcom/miui/systemui/events/CancelEvent;->value:I

    .line 30
    move/from16 v16, v15

    .line 32
    iget-object v15, v0, Lcom/miui/systemui/events/CancelEvent;->pushId:Ljava/lang/String;

    .line 34
    move-object/from16 v17, v15

    .line 36
    iget v15, v0, Lcom/miui/systemui/events/CancelEvent;->id:I

    .line 38
    move/from16 v18, v15

    .line 40
    iget-object v15, v0, Lcom/miui/systemui/events/CancelEvent;->groupKey:Ljava/lang/String;

    .line 42
    move-object/from16 v19, v15

    .line 44
    iget-object v15, v0, Lcom/miui/systemui/events/CancelEvent;->exposed:Ljava/lang/String;

    .line 46
    move-object/from16 v20, v15

    .line 48
    iget v15, v0, Lcom/miui/systemui/events/CancelEvent;->position:I

    .line 50
    move/from16 v21, v15

    .line 52
    iget-object v15, v0, Lcom/miui/systemui/events/CancelEvent;->sessionId:Ljava/lang/String;

    .line 54
    move-object/from16 v22, v15

    .line 56
    iget-object v15, v0, Lcom/miui/systemui/events/CancelEvent;->ifGroup:Ljava/lang/String;

    .line 58
    move-object/from16 v23, v15

    .line 60
    iget-object v15, v0, Lcom/miui/systemui/events/CancelEvent;->tip:Ljava/lang/String;

    .line 62
    move-object/from16 v24, v15

    .line 64
    iget-object v15, v0, Lcom/miui/systemui/events/CancelEvent;->mediaStyle:Ljava/lang/String;

    .line 66
    iget v0, v0, Lcom/miui/systemui/events/CancelEvent;->version:I

    .line 68
    move/from16 p0, v0

    .line 70
    const-string v0, "CancelEvent(tag="

    .line 72
    move-object/from16 v25, v15

    .line 74
    const-string v15, ", pkg="

    .line 76
    move/from16 v26, v14

    .line 78
    const-string v14, ", targetPkg="

    .line 80
    invoke-static {v0, v1, v15, v2, v14}, Lcom/android/keyguard/event/FodQuickOpenActionEvent$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    move-result-object v0

    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", tsId="

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, ", style="

    .line 97
    const-string v2, ", isGroup="

    .line 99
    invoke-static {v0, v1, v6, v2, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, ", channelId="

    .line 104
    const-string v2, ", reason="

    .line 106
    invoke-static {v0, v1, v8, v2, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, ", orientation="

    .line 111
    const-string v2, ", textId="

    .line 113
    invoke-static {v0, v1, v10, v2, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v1, ", priority="

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, ", importance="

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, ", flags="

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    move/from16 v1, v26

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, ", value="

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    move/from16 v1, v16

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, ", pushId="

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    move-object/from16 v1, v17

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, ", id="

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    move/from16 v1, v18

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, ", groupKey="

    .line 174
    const-string v2, ", exposed="

    .line 176
    move-object/from16 v3, v19

    .line 178
    move-object/from16 v4, v20

    .line 180
    invoke-static {v0, v1, v3, v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, ", position="

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    move/from16 v1, v21

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    const-string v1, ", sessionId="

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    move-object/from16 v1, v22

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, ", ifGroup="

    .line 205
    const-string v2, ", tip="

    .line 207
    move-object/from16 v3, v23

    .line 209
    move-object/from16 v4, v24

    .line 211
    invoke-static {v0, v1, v3, v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v1, ", mediaStyle="

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    move-object/from16 v1, v25

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v1, ", version="

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    move/from16 v1, p0

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    const-string v1, ")"

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    move-result-object v0

    .line 244
    return-object v0
    .line 245
.end method
