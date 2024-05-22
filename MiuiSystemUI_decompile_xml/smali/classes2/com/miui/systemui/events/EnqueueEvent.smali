.class public final Lcom/miui/systemui/events/EnqueueEvent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "notification_enqueue"
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

.field private final clearable:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_delete_notification"
    .end annotation
.end field

.field private final customAction:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_custom_action"
    .end annotation
.end field

.field private final customIcon:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_custom_icon"
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

.field private final isFold:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_unimportant_notification"
    .end annotation
.end field

.field private final isGroup:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_group_notification"
    .end annotation
.end field

.field private final isUpdate:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "is_update"
    .end annotation
.end field

.field private final largeIcon:Z
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_large_icon"
    .end annotation
.end field

.field private final ongoing:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_delete_retained_notification"
    .end annotation
.end field

.field private final pkg:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "send_pkg"
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

.field private final pushUid:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "push_uid"
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
.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    move v1, p1

    .line 6
    iput v1, v0, Lcom/miui/systemui/events/EnqueueEvent;->id:I

    .line 7
    move-wide v1, p2

    .line 9
    iput-wide v1, v0, Lcom/miui/systemui/events/EnqueueEvent;->tsId:J

    .line 10
    move-object v1, p4

    .line 12
    iput-object v1, v0, Lcom/miui/systemui/events/EnqueueEvent;->textId:Ljava/lang/String;

    .line 13
    move-object v1, p5

    .line 15
    iput-object v1, v0, Lcom/miui/systemui/events/EnqueueEvent;->pushId:Ljava/lang/String;

    .line 16
    move-object v1, p6

    .line 18
    iput-object v1, v0, Lcom/miui/systemui/events/EnqueueEvent;->pkg:Ljava/lang/String;

    .line 19
    move-object v1, p7

    .line 21
    iput-object v1, v0, Lcom/miui/systemui/events/EnqueueEvent;->targetPkg:Ljava/lang/String;

    .line 22
    move v1, p8

    .line 24
    iput-boolean v1, v0, Lcom/miui/systemui/events/EnqueueEvent;->largeIcon:Z

    .line 25
    move-object v1, p9

    .line 27
    iput-object v1, v0, Lcom/miui/systemui/events/EnqueueEvent;->customIcon:Ljava/lang/String;

    .line 28
    move-object v1, p10

    .line 30
    iput-object v1, v0, Lcom/miui/systemui/events/EnqueueEvent;->customAction:Ljava/lang/String;

    .line 31
    move v1, p11

    .line 33
    iput v1, v0, Lcom/miui/systemui/events/EnqueueEvent;->priority:I

    .line 34
    move-object v1, p12

    .line 36
    iput-object v1, v0, Lcom/miui/systemui/events/EnqueueEvent;->channelId:Ljava/lang/String;

    .line 37
    move/from16 v1, p13

    .line 39
    iput v1, v0, Lcom/miui/systemui/events/EnqueueEvent;->flags:I

    .line 41
    move-object/from16 v1, p14

    .line 43
    iput-object v1, v0, Lcom/miui/systemui/events/EnqueueEvent;->pushUid:Ljava/lang/String;

    .line 45
    move/from16 v1, p15

    .line 47
    iput v1, v0, Lcom/miui/systemui/events/EnqueueEvent;->analyzeValue:I

    .line 49
    move/from16 v1, p16

    .line 51
    iput v1, v0, Lcom/miui/systemui/events/EnqueueEvent;->importance:I

    .line 53
    move-object/from16 v1, p17

    .line 55
    iput-object v1, v0, Lcom/miui/systemui/events/EnqueueEvent;->groupKey:Ljava/lang/String;

    .line 57
    move-object/from16 v1, p18

    .line 59
    iput-object v1, v0, Lcom/miui/systemui/events/EnqueueEvent;->isUpdate:Ljava/lang/String;

    .line 61
    move-object/from16 v1, p19

    .line 63
    iput-object v1, v0, Lcom/miui/systemui/events/EnqueueEvent;->tag:Ljava/lang/String;

    .line 65
    move-object/from16 v1, p20

    .line 67
    iput-object v1, v0, Lcom/miui/systemui/events/EnqueueEvent;->ongoing:Ljava/lang/String;

    .line 69
    move-object/from16 v1, p21

    .line 71
    iput-object v1, v0, Lcom/miui/systemui/events/EnqueueEvent;->clearable:Ljava/lang/String;

    .line 73
    move-object/from16 v1, p22

    .line 75
    iput-object v1, v0, Lcom/miui/systemui/events/EnqueueEvent;->isGroup:Ljava/lang/String;

    .line 77
    move-object/from16 v1, p23

    .line 79
    iput-object v1, v0, Lcom/miui/systemui/events/EnqueueEvent;->isFold:Ljava/lang/String;

    .line 81
    move-object/from16 v1, p24

    .line 83
    iput-object v1, v0, Lcom/miui/systemui/events/EnqueueEvent;->tip:Ljava/lang/String;

    .line 85
    move/from16 v1, p25

    .line 87
    iput v1, v0, Lcom/miui/systemui/events/EnqueueEvent;->version:I

    .line 89
    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/systemui/events/EnqueueEvent;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/miui/systemui/events/EnqueueEvent;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p26

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/miui/systemui/events/EnqueueEvent;->id:I

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/miui/systemui/events/EnqueueEvent;->tsId:J

    goto :goto_1

    :cond_1
    move-wide/from16 v3, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/miui/systemui/events/EnqueueEvent;->textId:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/miui/systemui/events/EnqueueEvent;->pushId:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/miui/systemui/events/EnqueueEvent;->pkg:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/miui/systemui/events/EnqueueEvent;->targetPkg:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-boolean v9, v0, Lcom/miui/systemui/events/EnqueueEvent;->largeIcon:Z

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/miui/systemui/events/EnqueueEvent;->customIcon:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/miui/systemui/events/EnqueueEvent;->customAction:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget v12, v0, Lcom/miui/systemui/events/EnqueueEvent;->priority:I

    goto :goto_9

    :cond_9
    move/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/miui/systemui/events/EnqueueEvent;->channelId:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget v14, v0, Lcom/miui/systemui/events/EnqueueEvent;->flags:I

    goto :goto_b

    :cond_b
    move/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lcom/miui/systemui/events/EnqueueEvent;->pushUid:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget v15, v0, Lcom/miui/systemui/events/EnqueueEvent;->analyzeValue:I

    goto :goto_d

    :cond_d
    move/from16 v15, p15

    :goto_d
    move/from16 p15, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget v15, v0, Lcom/miui/systemui/events/EnqueueEvent;->importance:I

    goto :goto_e

    :cond_e
    move/from16 v15, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p16, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/miui/systemui/events/EnqueueEvent;->groupKey:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/miui/systemui/events/EnqueueEvent;->isUpdate:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p18

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/miui/systemui/events/EnqueueEvent;->tag:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p19

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/miui/systemui/events/EnqueueEvent;->ongoing:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p20

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/miui/systemui/events/EnqueueEvent;->clearable:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p21

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lcom/miui/systemui/events/EnqueueEvent;->isGroup:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p22

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Lcom/miui/systemui/events/EnqueueEvent;->isFold:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p23

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lcom/miui/systemui/events/EnqueueEvent;->tip:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p24

    :goto_16
    const/high16 v16, 0x800000

    and-int v1, v1, v16

    if-eqz v1, :cond_17

    iget v1, v0, Lcom/miui/systemui/events/EnqueueEvent;->version:I

    goto :goto_17

    :cond_17
    move/from16 v1, p25

    :goto_17
    move/from16 p1, v2

    move-wide/from16 p2, v3

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move/from16 p11, v12

    move-object/from16 p12, v13

    move/from16 p13, v14

    move-object/from16 p24, v15

    move/from16 p25, v1

    invoke-virtual/range {p0 .. p25}, Lcom/miui/systemui/events/EnqueueEvent;->copy(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/systemui/events/EnqueueEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->id:I

    .line 2
    return p0
    .line 4
.end method

.method public final component10()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->priority:I

    .line 2
    return p0
    .line 4
.end method

.method public final component11()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->channelId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component12()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->flags:I

    .line 2
    return p0
    .line 4
.end method

.method public final component13()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->pushUid:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component14()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->analyzeValue:I

    .line 2
    return p0
    .line 4
.end method

.method public final component15()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->importance:I

    .line 2
    return p0
    .line 4
.end method

.method public final component16()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->groupKey:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component17()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->isUpdate:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component18()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->tag:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component19()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->ongoing:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/systemui/events/EnqueueEvent;->tsId:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public final component20()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->clearable:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component21()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->isGroup:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component22()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->isFold:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component23()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component24()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->version:I

    .line 2
    return p0
    .line 4
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->textId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->pushId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->pkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->targetPkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component7()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->largeIcon:Z

    .line 2
    return p0
    .line 4
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->customIcon:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->customAction:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final copy(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/systemui/events/EnqueueEvent;
    .locals 27

    .line 1
    move/from16 v1, p1

    .line 2
    move-wide/from16 v2, p2

    .line 4
    move-object/from16 v4, p4

    .line 6
    move-object/from16 v5, p5

    .line 8
    move-object/from16 v6, p6

    .line 10
    move-object/from16 v7, p7

    .line 12
    move/from16 v8, p8

    .line 14
    move-object/from16 v9, p9

    .line 16
    move-object/from16 v10, p10

    .line 18
    move/from16 v11, p11

    .line 20
    move-object/from16 v12, p12

    .line 22
    move/from16 v13, p13

    .line 24
    move-object/from16 v14, p14

    .line 26
    move/from16 v15, p15

    .line 28
    move/from16 v16, p16

    .line 30
    move-object/from16 v17, p17

    .line 32
    move-object/from16 v18, p18

    .line 34
    move-object/from16 v19, p19

    .line 36
    move-object/from16 v20, p20

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
    new-instance v26, Lcom/miui/systemui/events/EnqueueEvent;

    .line 50
    move-object/from16 v0, v26

    .line 52
    invoke-direct/range {v0 .. v25}, Lcom/miui/systemui/events/EnqueueEvent;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

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
    instance-of v1, p1, Lcom/miui/systemui/events/EnqueueEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/miui/systemui/events/EnqueueEvent;

    .line 12
    iget v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->id:I

    .line 14
    iget v3, p1, Lcom/miui/systemui/events/EnqueueEvent;->id:I

    .line 16
    if-eq v1, v3, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    iget-wide v3, p0, Lcom/miui/systemui/events/EnqueueEvent;->tsId:J

    .line 21
    iget-wide v5, p1, Lcom/miui/systemui/events/EnqueueEvent;->tsId:J

    .line 23
    cmp-long v1, v3, v5

    .line 25
    if-eqz v1, :cond_3

    .line 27
    return v2

    .line 29
    :cond_3
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->textId:Ljava/lang/String;

    .line 30
    iget-object v3, p1, Lcom/miui/systemui/events/EnqueueEvent;->textId:Ljava/lang/String;

    .line 32
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v1

    .line 37
    if-nez v1, :cond_4

    .line 38
    return v2

    .line 40
    :cond_4
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->pushId:Ljava/lang/String;

    .line 41
    iget-object v3, p1, Lcom/miui/systemui/events/EnqueueEvent;->pushId:Ljava/lang/String;

    .line 43
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    move-result v1

    .line 48
    if-nez v1, :cond_5

    .line 49
    return v2

    .line 51
    :cond_5
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->pkg:Ljava/lang/String;

    .line 52
    iget-object v3, p1, Lcom/miui/systemui/events/EnqueueEvent;->pkg:Ljava/lang/String;

    .line 54
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result v1

    .line 59
    if-nez v1, :cond_6

    .line 60
    return v2

    .line 62
    :cond_6
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->targetPkg:Ljava/lang/String;

    .line 63
    iget-object v3, p1, Lcom/miui/systemui/events/EnqueueEvent;->targetPkg:Ljava/lang/String;

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
    iget-boolean v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->largeIcon:Z

    .line 74
    iget-boolean v3, p1, Lcom/miui/systemui/events/EnqueueEvent;->largeIcon:Z

    .line 76
    if-eq v1, v3, :cond_8

    .line 78
    return v2

    .line 80
    :cond_8
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->customIcon:Ljava/lang/String;

    .line 81
    iget-object v3, p1, Lcom/miui/systemui/events/EnqueueEvent;->customIcon:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->customAction:Ljava/lang/String;

    .line 92
    iget-object v3, p1, Lcom/miui/systemui/events/EnqueueEvent;->customAction:Ljava/lang/String;

    .line 94
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    move-result v1

    .line 99
    if-nez v1, :cond_a

    .line 100
    return v2

    .line 102
    :cond_a
    iget v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->priority:I

    .line 103
    iget v3, p1, Lcom/miui/systemui/events/EnqueueEvent;->priority:I

    .line 105
    if-eq v1, v3, :cond_b

    .line 107
    return v2

    .line 109
    :cond_b
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->channelId:Ljava/lang/String;

    .line 110
    iget-object v3, p1, Lcom/miui/systemui/events/EnqueueEvent;->channelId:Ljava/lang/String;

    .line 112
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    move-result v1

    .line 117
    if-nez v1, :cond_c

    .line 118
    return v2

    .line 120
    :cond_c
    iget v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->flags:I

    .line 121
    iget v3, p1, Lcom/miui/systemui/events/EnqueueEvent;->flags:I

    .line 123
    if-eq v1, v3, :cond_d

    .line 125
    return v2

    .line 127
    :cond_d
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->pushUid:Ljava/lang/String;

    .line 128
    iget-object v3, p1, Lcom/miui/systemui/events/EnqueueEvent;->pushUid:Ljava/lang/String;

    .line 130
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    move-result v1

    .line 135
    if-nez v1, :cond_e

    .line 136
    return v2

    .line 138
    :cond_e
    iget v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->analyzeValue:I

    .line 139
    iget v3, p1, Lcom/miui/systemui/events/EnqueueEvent;->analyzeValue:I

    .line 141
    if-eq v1, v3, :cond_f

    .line 143
    return v2

    .line 145
    :cond_f
    iget v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->importance:I

    .line 146
    iget v3, p1, Lcom/miui/systemui/events/EnqueueEvent;->importance:I

    .line 148
    if-eq v1, v3, :cond_10

    .line 150
    return v2

    .line 152
    :cond_10
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->groupKey:Ljava/lang/String;

    .line 153
    iget-object v3, p1, Lcom/miui/systemui/events/EnqueueEvent;->groupKey:Ljava/lang/String;

    .line 155
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    move-result v1

    .line 160
    if-nez v1, :cond_11

    .line 161
    return v2

    .line 163
    :cond_11
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->isUpdate:Ljava/lang/String;

    .line 164
    iget-object v3, p1, Lcom/miui/systemui/events/EnqueueEvent;->isUpdate:Ljava/lang/String;

    .line 166
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    move-result v1

    .line 171
    if-nez v1, :cond_12

    .line 172
    return v2

    .line 174
    :cond_12
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->tag:Ljava/lang/String;

    .line 175
    iget-object v3, p1, Lcom/miui/systemui/events/EnqueueEvent;->tag:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->ongoing:Ljava/lang/String;

    .line 186
    iget-object v3, p1, Lcom/miui/systemui/events/EnqueueEvent;->ongoing:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->clearable:Ljava/lang/String;

    .line 197
    iget-object v3, p1, Lcom/miui/systemui/events/EnqueueEvent;->clearable:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->isGroup:Ljava/lang/String;

    .line 208
    iget-object v3, p1, Lcom/miui/systemui/events/EnqueueEvent;->isGroup:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->isFold:Ljava/lang/String;

    .line 219
    iget-object v3, p1, Lcom/miui/systemui/events/EnqueueEvent;->isFold:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->tip:Ljava/lang/String;

    .line 230
    iget-object v3, p1, Lcom/miui/systemui/events/EnqueueEvent;->tip:Ljava/lang/String;

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
    iget p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->version:I

    .line 241
    iget p1, p1, Lcom/miui/systemui/events/EnqueueEvent;->version:I

    .line 243
    if-eq p0, p1, :cond_19

    .line 245
    return v2

    .line 247
    :cond_19
    return v0
    .line 248
.end method

.method public final getAnalyzeValue()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->analyzeValue:I

    .line 2
    return p0
    .line 4
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->channelId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getClearable()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->clearable:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getCustomAction()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->customAction:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getCustomIcon()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->customIcon:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getFlags()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->flags:I

    .line 2
    return p0
    .line 4
.end method

.method public final getGroupKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->groupKey:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->id:I

    .line 2
    return p0
    .line 4
.end method

.method public final getImportance()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->importance:I

    .line 2
    return p0
    .line 4
.end method

.method public final getLargeIcon()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->largeIcon:Z

    .line 2
    return p0
    .line 4
.end method

.method public final getOngoing()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->ongoing:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getPkg()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->pkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getPriority()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->priority:I

    .line 2
    return p0
    .line 4
.end method

.method public final getPushId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->pushId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getPushUid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->pushUid:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->tag:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTargetPkg()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->targetPkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTextId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->textId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTip()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTsId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/systemui/events/EnqueueEvent;->tsId:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public final getVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->version:I

    .line 2
    return p0
    .line 4
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/miui/systemui/events/EnqueueEvent;->id:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-wide v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->tsId:J

    .line 10
    const/16 v3, 0x1f

    .line 12
    invoke-static {v1, v2, v0, v3}, Lcom/android/app/motiontool/TraceMetadata$$ExternalSyntheticOutline0;->m(JII)I

    .line 14
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->textId:Ljava/lang/String;

    .line 18
    const/16 v2, 0x1f

    .line 20
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 22
    move-result v0

    .line 25
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->pushId:Ljava/lang/String;

    .line 26
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 28
    move-result v0

    .line 31
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->pkg:Ljava/lang/String;

    .line 32
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 34
    move-result v0

    .line 37
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->targetPkg:Ljava/lang/String;

    .line 38
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 40
    move-result v0

    .line 43
    iget-boolean v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->largeIcon:Z

    .line 44
    if-eqz v1, :cond_0

    .line 46
    const/4 v1, 0x1

    .line 48
    :cond_0
    add-int/2addr v0, v1

    .line 49
    mul-int/lit8 v0, v0, 0x1f

    .line 50
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->customIcon:Ljava/lang/String;

    .line 52
    const/16 v2, 0x1f

    .line 54
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 56
    move-result v0

    .line 59
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->customAction:Ljava/lang/String;

    .line 60
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 62
    move-result v0

    .line 65
    iget v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->priority:I

    .line 66
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 68
    move-result v0

    .line 71
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->channelId:Ljava/lang/String;

    .line 72
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 74
    move-result v0

    .line 77
    iget v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->flags:I

    .line 78
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 80
    move-result v0

    .line 83
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->pushUid:Ljava/lang/String;

    .line 84
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 86
    move-result v0

    .line 89
    iget v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->analyzeValue:I

    .line 90
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 92
    move-result v0

    .line 95
    iget v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->importance:I

    .line 96
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 98
    move-result v0

    .line 101
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->groupKey:Ljava/lang/String;

    .line 102
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 104
    move-result v0

    .line 107
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->isUpdate:Ljava/lang/String;

    .line 108
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 110
    move-result v0

    .line 113
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->tag:Ljava/lang/String;

    .line 114
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 116
    move-result v0

    .line 119
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->ongoing:Ljava/lang/String;

    .line 120
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 122
    move-result v0

    .line 125
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->clearable:Ljava/lang/String;

    .line 126
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 128
    move-result v0

    .line 131
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->isGroup:Ljava/lang/String;

    .line 132
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 134
    move-result v0

    .line 137
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->isFold:Ljava/lang/String;

    .line 138
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 140
    move-result v0

    .line 143
    iget-object v1, p0, Lcom/miui/systemui/events/EnqueueEvent;->tip:Ljava/lang/String;

    .line 144
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 146
    move-result v0

    .line 149
    iget p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->version:I

    .line 150
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 152
    move-result p0

    .line 155
    add-int/2addr p0, v0

    .line 156
    return p0
    .line 157
.end method

.method public final isFold()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->isFold:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final isGroup()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->isGroup:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final isUpdate()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/EnqueueEvent;->isUpdate:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/miui/systemui/events/EnqueueEvent;->id:I

    .line 4
    iget-wide v2, v0, Lcom/miui/systemui/events/EnqueueEvent;->tsId:J

    .line 6
    iget-object v4, v0, Lcom/miui/systemui/events/EnqueueEvent;->textId:Ljava/lang/String;

    .line 8
    iget-object v5, v0, Lcom/miui/systemui/events/EnqueueEvent;->pushId:Ljava/lang/String;

    .line 10
    iget-object v6, v0, Lcom/miui/systemui/events/EnqueueEvent;->pkg:Ljava/lang/String;

    .line 12
    iget-object v7, v0, Lcom/miui/systemui/events/EnqueueEvent;->targetPkg:Ljava/lang/String;

    .line 14
    iget-boolean v8, v0, Lcom/miui/systemui/events/EnqueueEvent;->largeIcon:Z

    .line 16
    iget-object v9, v0, Lcom/miui/systemui/events/EnqueueEvent;->customIcon:Ljava/lang/String;

    .line 18
    iget-object v10, v0, Lcom/miui/systemui/events/EnqueueEvent;->customAction:Ljava/lang/String;

    .line 20
    iget v11, v0, Lcom/miui/systemui/events/EnqueueEvent;->priority:I

    .line 22
    iget-object v12, v0, Lcom/miui/systemui/events/EnqueueEvent;->channelId:Ljava/lang/String;

    .line 24
    iget v13, v0, Lcom/miui/systemui/events/EnqueueEvent;->flags:I

    .line 26
    iget-object v14, v0, Lcom/miui/systemui/events/EnqueueEvent;->pushUid:Ljava/lang/String;

    .line 28
    iget v15, v0, Lcom/miui/systemui/events/EnqueueEvent;->analyzeValue:I

    .line 30
    move/from16 v16, v15

    .line 32
    iget v15, v0, Lcom/miui/systemui/events/EnqueueEvent;->importance:I

    .line 34
    move/from16 v17, v15

    .line 36
    iget-object v15, v0, Lcom/miui/systemui/events/EnqueueEvent;->groupKey:Ljava/lang/String;

    .line 38
    move-object/from16 v18, v15

    .line 40
    iget-object v15, v0, Lcom/miui/systemui/events/EnqueueEvent;->isUpdate:Ljava/lang/String;

    .line 42
    move-object/from16 v19, v15

    .line 44
    iget-object v15, v0, Lcom/miui/systemui/events/EnqueueEvent;->tag:Ljava/lang/String;

    .line 46
    move-object/from16 v20, v15

    .line 48
    iget-object v15, v0, Lcom/miui/systemui/events/EnqueueEvent;->ongoing:Ljava/lang/String;

    .line 50
    move-object/from16 v21, v15

    .line 52
    iget-object v15, v0, Lcom/miui/systemui/events/EnqueueEvent;->clearable:Ljava/lang/String;

    .line 54
    move-object/from16 v22, v15

    .line 56
    iget-object v15, v0, Lcom/miui/systemui/events/EnqueueEvent;->isGroup:Ljava/lang/String;

    .line 58
    move-object/from16 v23, v15

    .line 60
    iget-object v15, v0, Lcom/miui/systemui/events/EnqueueEvent;->isFold:Ljava/lang/String;

    .line 62
    move-object/from16 v24, v15

    .line 64
    iget-object v15, v0, Lcom/miui/systemui/events/EnqueueEvent;->tip:Ljava/lang/String;

    .line 66
    iget v0, v0, Lcom/miui/systemui/events/EnqueueEvent;->version:I

    .line 68
    move/from16 p0, v0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    move-object/from16 v25, v15

    .line 74
    const-string v15, "EnqueueEvent(id="

    .line 76
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", tsId="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, ", textId="

    .line 92
    const-string v2, ", pushId="

    .line 94
    invoke-static {v0, v1, v4, v2, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, ", pkg="

    .line 99
    const-string v2, ", targetPkg="

    .line 101
    invoke-static {v0, v1, v6, v2, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, ", largeIcon="

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, ", customIcon="

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, ", customAction="

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, ", priority="

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, ", channelId="

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, ", flags="

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, ", pushUid="

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, ", analyzeValue="

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    move/from16 v1, v16

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, ", importance="

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    move/from16 v1, v17

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, ", groupKey="

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    move-object/from16 v1, v18

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, ", isUpdate="

    .line 192
    const-string v2, ", tag="

    .line 194
    move-object/from16 v3, v19

    .line 196
    move-object/from16 v4, v20

    .line 198
    invoke-static {v0, v1, v3, v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v1, ", ongoing="

    .line 203
    const-string v2, ", clearable="

    .line 205
    move-object/from16 v3, v21

    .line 207
    move-object/from16 v4, v22

    .line 209
    invoke-static {v0, v1, v3, v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v1, ", isGroup="

    .line 214
    const-string v2, ", isFold="

    .line 216
    move-object/from16 v3, v23

    .line 218
    move-object/from16 v4, v24

    .line 220
    invoke-static {v0, v1, v3, v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v1, ", tip="

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    move-object/from16 v1, v25

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v1, ", version="

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    move/from16 v1, p0

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    const-string v1, ")"

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    move-result-object v0

    .line 253
    return-object v0
    .line 254
.end method
