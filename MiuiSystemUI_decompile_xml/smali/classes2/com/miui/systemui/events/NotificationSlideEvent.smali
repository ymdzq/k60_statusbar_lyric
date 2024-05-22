.class public final Lcom/miui/systemui/events/NotificationSlideEvent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "notification_slide"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->NOTIFICATION:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final center_Style:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "notification_center_style"
    .end annotation
.end field

.field private final channelId:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "channel_id"
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

.field private final groupExpansion:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "group_expansion"
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

.field private final largeIcon:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_large_icon"
    .end annotation
.end field

.field private final notifSlideDirec:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "sliding_direction"
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

.field private final sessionId:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "panel_session_id"
    .end annotation
.end field

.field private final source:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "source"
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
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 2
    iput-wide v1, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->tsId:J

    move-object v1, p3

    .line 3
    iput-object v1, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->targetPkg:Ljava/lang/String;

    move-object v1, p4

    .line 4
    iput-object v1, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->source:Ljava/lang/String;

    move v1, p5

    .line 5
    iput v1, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->index:I

    move-object v1, p6

    .line 6
    iput-object v1, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->pkg:Ljava/lang/String;

    move-object v1, p7

    .line 7
    iput-object v1, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->isGroup:Ljava/lang/String;

    move v1, p8

    .line 8
    iput v1, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->isPriority:I

    move-object v1, p9

    .line 9
    iput-object v1, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->sessionId:Ljava/lang/String;

    move-object v1, p10

    .line 10
    iput-object v1, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->textId:Ljava/lang/String;

    move-object v1, p11

    .line 11
    iput-object v1, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->style:Ljava/lang/String;

    move v1, p12

    .line 12
    iput v1, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->priority:I

    move-object/from16 v1, p13

    .line 13
    iput-object v1, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->pushId:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 14
    iput-object v1, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->center_Style:Ljava/lang/String;

    move/from16 v1, p15

    .line 15
    iput v1, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->flags:I

    move-object/from16 v1, p16

    .line 16
    iput-object v1, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->status:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 17
    iput-object v1, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->channelId:Ljava/lang/String;

    move/from16 v1, p18

    .line 18
    iput v1, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->id:I

    move-object/from16 v1, p19

    .line 19
    iput-object v1, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->groupExpansion:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 20
    iput-object v1, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->groupKey:Ljava/lang/String;

    move/from16 v1, p21

    .line 21
    iput v1, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->importance:I

    move-object/from16 v1, p22

    .line 22
    iput-object v1, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->largeIcon:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 23
    iput-object v1, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->customIcon:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 24
    iput-object v1, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->customAction:Ljava/lang/String;

    move-object/from16 v1, p25

    .line 25
    iput-object v1, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->notifSlideDirec:Ljava/lang/String;

    move-object/from16 v1, p26

    .line 26
    iput-object v1, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->tip:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/systemui/events/NotificationSlideEvent;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/miui/systemui/events/NotificationSlideEvent;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p27

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->tsId:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->targetPkg:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->source:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget v6, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->index:I

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->pkg:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->isGroup:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget v9, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->isPriority:I

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->sessionId:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->textId:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->style:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget v13, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->priority:I

    goto :goto_a

    :cond_a
    move/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->pushId:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->center_Style:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget v15, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->flags:I

    goto :goto_d

    :cond_d
    move/from16 v15, p15

    :goto_d
    move/from16 p15, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->status:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->channelId:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_10

    iget v15, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->id:I

    goto :goto_10

    :cond_10
    move/from16 v15, p18

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move/from16 p18, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->groupExpansion:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p19

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->groupKey:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p20

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_13

    iget v15, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->importance:I

    goto :goto_13

    :cond_13
    move/from16 v15, p21

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move/from16 p21, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->largeIcon:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p22

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->customIcon:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p23

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->customAction:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p24

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p24, v15

    if-eqz v16, :cond_17

    iget-object v15, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->notifSlideDirec:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p25

    :goto_17
    const/high16 v16, 0x1000000

    and-int v1, v1, v16

    if-eqz v1, :cond_18

    iget-object v1, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->tip:Ljava/lang/String;

    goto :goto_18

    :cond_18
    move-object/from16 v1, p26

    :goto_18
    move-wide/from16 p1, v2

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p25, v15

    move-object/from16 p26, v1

    invoke-virtual/range {p0 .. p26}, Lcom/miui/systemui/events/NotificationSlideEvent;->copy(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/systemui/events/NotificationSlideEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->tsId:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->style:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component11()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->priority:I

    .line 2
    return p0
    .line 4
.end method

.method public final component12()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->pushId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component13()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->center_Style:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component14()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->flags:I

    .line 2
    return p0
    .line 4
.end method

.method public final component15()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->status:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component16()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->channelId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component17()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->id:I

    .line 2
    return p0
    .line 4
.end method

.method public final component18()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->groupExpansion:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component19()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->groupKey:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->targetPkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component20()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->importance:I

    .line 2
    return p0
    .line 4
.end method

.method public final component21()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->largeIcon:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component22()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->customIcon:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component23()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->customAction:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component24()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->notifSlideDirec:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component25()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->source:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component4()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->index:I

    .line 2
    return p0
    .line 4
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->pkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->isGroup:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component7()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->isPriority:I

    .line 2
    return p0
    .line 4
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->sessionId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->textId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/systemui/events/NotificationSlideEvent;
    .locals 28

    .line 1
    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    new-instance v27, Lcom/miui/systemui/events/NotificationSlideEvent;

    move-object/from16 v0, v27

    invoke-direct/range {v0 .. v26}, Lcom/miui/systemui/events/NotificationSlideEvent;-><init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v27
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
    instance-of v1, p1, Lcom/miui/systemui/events/NotificationSlideEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/miui/systemui/events/NotificationSlideEvent;

    .line 12
    iget-wide v3, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->tsId:J

    .line 14
    iget-wide v5, p1, Lcom/miui/systemui/events/NotificationSlideEvent;->tsId:J

    .line 16
    cmp-long v1, v3, v5

    .line 18
    if-eqz v1, :cond_2

    .line 20
    return v2

    .line 22
    :cond_2
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->targetPkg:Ljava/lang/String;

    .line 23
    iget-object v3, p1, Lcom/miui/systemui/events/NotificationSlideEvent;->targetPkg:Ljava/lang/String;

    .line 25
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 30
    if-nez v1, :cond_3

    .line 31
    return v2

    .line 33
    :cond_3
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->source:Ljava/lang/String;

    .line 34
    iget-object v3, p1, Lcom/miui/systemui/events/NotificationSlideEvent;->source:Ljava/lang/String;

    .line 36
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 41
    if-nez v1, :cond_4

    .line 42
    return v2

    .line 44
    :cond_4
    iget v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->index:I

    .line 45
    iget v3, p1, Lcom/miui/systemui/events/NotificationSlideEvent;->index:I

    .line 47
    if-eq v1, v3, :cond_5

    .line 49
    return v2

    .line 51
    :cond_5
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->pkg:Ljava/lang/String;

    .line 52
    iget-object v3, p1, Lcom/miui/systemui/events/NotificationSlideEvent;->pkg:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->isGroup:Ljava/lang/String;

    .line 63
    iget-object v3, p1, Lcom/miui/systemui/events/NotificationSlideEvent;->isGroup:Ljava/lang/String;

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
    iget v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->isPriority:I

    .line 74
    iget v3, p1, Lcom/miui/systemui/events/NotificationSlideEvent;->isPriority:I

    .line 76
    if-eq v1, v3, :cond_8

    .line 78
    return v2

    .line 80
    :cond_8
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->sessionId:Ljava/lang/String;

    .line 81
    iget-object v3, p1, Lcom/miui/systemui/events/NotificationSlideEvent;->sessionId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->textId:Ljava/lang/String;

    .line 92
    iget-object v3, p1, Lcom/miui/systemui/events/NotificationSlideEvent;->textId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->style:Ljava/lang/String;

    .line 103
    iget-object v3, p1, Lcom/miui/systemui/events/NotificationSlideEvent;->style:Ljava/lang/String;

    .line 105
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    move-result v1

    .line 110
    if-nez v1, :cond_b

    .line 111
    return v2

    .line 113
    :cond_b
    iget v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->priority:I

    .line 114
    iget v3, p1, Lcom/miui/systemui/events/NotificationSlideEvent;->priority:I

    .line 116
    if-eq v1, v3, :cond_c

    .line 118
    return v2

    .line 120
    :cond_c
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->pushId:Ljava/lang/String;

    .line 121
    iget-object v3, p1, Lcom/miui/systemui/events/NotificationSlideEvent;->pushId:Ljava/lang/String;

    .line 123
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    move-result v1

    .line 128
    if-nez v1, :cond_d

    .line 129
    return v2

    .line 131
    :cond_d
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->center_Style:Ljava/lang/String;

    .line 132
    iget-object v3, p1, Lcom/miui/systemui/events/NotificationSlideEvent;->center_Style:Ljava/lang/String;

    .line 134
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    move-result v1

    .line 139
    if-nez v1, :cond_e

    .line 140
    return v2

    .line 142
    :cond_e
    iget v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->flags:I

    .line 143
    iget v3, p1, Lcom/miui/systemui/events/NotificationSlideEvent;->flags:I

    .line 145
    if-eq v1, v3, :cond_f

    .line 147
    return v2

    .line 149
    :cond_f
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->status:Ljava/lang/String;

    .line 150
    iget-object v3, p1, Lcom/miui/systemui/events/NotificationSlideEvent;->status:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->channelId:Ljava/lang/String;

    .line 161
    iget-object v3, p1, Lcom/miui/systemui/events/NotificationSlideEvent;->channelId:Ljava/lang/String;

    .line 163
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    move-result v1

    .line 168
    if-nez v1, :cond_11

    .line 169
    return v2

    .line 171
    :cond_11
    iget v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->id:I

    .line 172
    iget v3, p1, Lcom/miui/systemui/events/NotificationSlideEvent;->id:I

    .line 174
    if-eq v1, v3, :cond_12

    .line 176
    return v2

    .line 178
    :cond_12
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->groupExpansion:Ljava/lang/String;

    .line 179
    iget-object v3, p1, Lcom/miui/systemui/events/NotificationSlideEvent;->groupExpansion:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->groupKey:Ljava/lang/String;

    .line 190
    iget-object v3, p1, Lcom/miui/systemui/events/NotificationSlideEvent;->groupKey:Ljava/lang/String;

    .line 192
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    move-result v1

    .line 197
    if-nez v1, :cond_14

    .line 198
    return v2

    .line 200
    :cond_14
    iget v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->importance:I

    .line 201
    iget v3, p1, Lcom/miui/systemui/events/NotificationSlideEvent;->importance:I

    .line 203
    if-eq v1, v3, :cond_15

    .line 205
    return v2

    .line 207
    :cond_15
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->largeIcon:Ljava/lang/String;

    .line 208
    iget-object v3, p1, Lcom/miui/systemui/events/NotificationSlideEvent;->largeIcon:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->customIcon:Ljava/lang/String;

    .line 219
    iget-object v3, p1, Lcom/miui/systemui/events/NotificationSlideEvent;->customIcon:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->customAction:Ljava/lang/String;

    .line 230
    iget-object v3, p1, Lcom/miui/systemui/events/NotificationSlideEvent;->customAction:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->notifSlideDirec:Ljava/lang/String;

    .line 241
    iget-object v3, p1, Lcom/miui/systemui/events/NotificationSlideEvent;->notifSlideDirec:Ljava/lang/String;

    .line 243
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 245
    move-result v1

    .line 248
    if-nez v1, :cond_19

    .line 249
    return v2

    .line 251
    :cond_19
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->tip:Ljava/lang/String;

    .line 252
    iget-object p1, p1, Lcom/miui/systemui/events/NotificationSlideEvent;->tip:Ljava/lang/String;

    .line 254
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 256
    move-result p0

    .line 259
    if-nez p0, :cond_1a

    .line 260
    return v2

    .line 262
    :cond_1a
    return v0
    .line 263
.end method

.method public final getCenter_Style()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->center_Style:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->channelId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getCustomAction()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->customAction:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getCustomIcon()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->customIcon:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getFlags()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->flags:I

    .line 2
    return p0
    .line 4
.end method

.method public final getGroupExpansion()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->groupExpansion:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getGroupKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->groupKey:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->id:I

    .line 2
    return p0
    .line 4
.end method

.method public final getImportance()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->importance:I

    .line 2
    return p0
    .line 4
.end method

.method public final getIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->index:I

    .line 2
    return p0
    .line 4
.end method

.method public final getLargeIcon()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->largeIcon:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getNotifSlideDirec()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->notifSlideDirec:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getPkg()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->pkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getPriority()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->priority:I

    .line 2
    return p0
    .line 4
.end method

.method public final getPushId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->pushId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->sessionId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSource()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->source:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->status:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getStyle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->style:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTargetPkg()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->targetPkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTextId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->textId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTip()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTsId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->tsId:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->tsId:J

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->targetPkg:Ljava/lang/String;

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->source:Ljava/lang/String;

    .line 18
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 20
    move-result v0

    .line 23
    iget v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->index:I

    .line 24
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 26
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->pkg:Ljava/lang/String;

    .line 30
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 32
    move-result v0

    .line 35
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->isGroup:Ljava/lang/String;

    .line 36
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 38
    move-result v0

    .line 41
    iget v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->isPriority:I

    .line 42
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 44
    move-result v0

    .line 47
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->sessionId:Ljava/lang/String;

    .line 48
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 50
    move-result v0

    .line 53
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->textId:Ljava/lang/String;

    .line 54
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 56
    move-result v0

    .line 59
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->style:Ljava/lang/String;

    .line 60
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 62
    move-result v0

    .line 65
    iget v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->priority:I

    .line 66
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 68
    move-result v0

    .line 71
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->pushId:Ljava/lang/String;

    .line 72
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 74
    move-result v0

    .line 77
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->center_Style:Ljava/lang/String;

    .line 78
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 80
    move-result v0

    .line 83
    iget v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->flags:I

    .line 84
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 86
    move-result v0

    .line 89
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->status:Ljava/lang/String;

    .line 90
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 92
    move-result v0

    .line 95
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->channelId:Ljava/lang/String;

    .line 96
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 98
    move-result v0

    .line 101
    iget v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->id:I

    .line 102
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 104
    move-result v0

    .line 107
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->groupExpansion:Ljava/lang/String;

    .line 108
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 110
    move-result v0

    .line 113
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->groupKey:Ljava/lang/String;

    .line 114
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 116
    move-result v0

    .line 119
    iget v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->importance:I

    .line 120
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 122
    move-result v0

    .line 125
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->largeIcon:Ljava/lang/String;

    .line 126
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 128
    move-result v0

    .line 131
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->customIcon:Ljava/lang/String;

    .line 132
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 134
    move-result v0

    .line 137
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->customAction:Ljava/lang/String;

    .line 138
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 140
    move-result v0

    .line 143
    iget-object v1, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->notifSlideDirec:Ljava/lang/String;

    .line 144
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 146
    move-result v0

    .line 149
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->tip:Ljava/lang/String;

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 152
    move-result p0

    .line 155
    add-int/2addr p0, v0

    .line 156
    return p0
    .line 157
.end method

.method public final isGroup()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->isGroup:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final isPriority()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/NotificationSlideEvent;->isPriority:I

    .line 2
    return p0
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-wide v1, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->tsId:J

    .line 4
    iget-object v3, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->targetPkg:Ljava/lang/String;

    .line 6
    iget-object v4, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->source:Ljava/lang/String;

    .line 8
    iget v5, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->index:I

    .line 10
    iget-object v6, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->pkg:Ljava/lang/String;

    .line 12
    iget-object v7, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->isGroup:Ljava/lang/String;

    .line 14
    iget v8, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->isPriority:I

    .line 16
    iget-object v9, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->sessionId:Ljava/lang/String;

    .line 18
    iget-object v10, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->textId:Ljava/lang/String;

    .line 20
    iget-object v11, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->style:Ljava/lang/String;

    .line 22
    iget v12, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->priority:I

    .line 24
    iget-object v13, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->pushId:Ljava/lang/String;

    .line 26
    iget-object v14, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->center_Style:Ljava/lang/String;

    .line 28
    iget v15, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->flags:I

    .line 30
    move/from16 v16, v15

    .line 32
    iget-object v15, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->status:Ljava/lang/String;

    .line 34
    move-object/from16 v17, v15

    .line 36
    iget-object v15, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->channelId:Ljava/lang/String;

    .line 38
    move-object/from16 v18, v15

    .line 40
    iget v15, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->id:I

    .line 42
    move/from16 v19, v15

    .line 44
    iget-object v15, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->groupExpansion:Ljava/lang/String;

    .line 46
    move-object/from16 v20, v15

    .line 48
    iget-object v15, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->groupKey:Ljava/lang/String;

    .line 50
    move-object/from16 v21, v15

    .line 52
    iget v15, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->importance:I

    .line 54
    move/from16 v22, v15

    .line 56
    iget-object v15, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->largeIcon:Ljava/lang/String;

    .line 58
    move-object/from16 v23, v15

    .line 60
    iget-object v15, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->customIcon:Ljava/lang/String;

    .line 62
    move-object/from16 v24, v15

    .line 64
    iget-object v15, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->customAction:Ljava/lang/String;

    .line 66
    move-object/from16 v25, v15

    .line 68
    iget-object v15, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->notifSlideDirec:Ljava/lang/String;

    .line 70
    iget-object v0, v0, Lcom/miui/systemui/events/NotificationSlideEvent;->tip:Ljava/lang/String;

    .line 72
    move-object/from16 p0, v0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    move-object/from16 v26, v15

    .line 78
    const-string v15, "NotificationSlideEvent(tsId="

    .line 80
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, ", targetPkg="

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, ", source="

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, ", index="

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, ", pkg="

    .line 112
    const-string v2, ", isGroup="

    .line 114
    invoke-static {v0, v1, v6, v2, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, ", isPriority="

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, ", sessionId="

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, ", textId="

    .line 135
    const-string v2, ", style="

    .line 137
    invoke-static {v0, v1, v10, v2, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v1, ", priority="

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, ", pushId="

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, ", center_Style="

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, ", flags="

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    move/from16 v1, v16

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, ", status="

    .line 176
    const-string v2, ", channelId="

    .line 178
    move-object/from16 v3, v17

    .line 180
    move-object/from16 v4, v18

    .line 182
    invoke-static {v0, v1, v3, v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v1, ", id="

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    move/from16 v1, v19

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    const-string v1, ", groupExpansion="

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    move-object/from16 v1, v20

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v1, ", groupKey="

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    move-object/from16 v1, v21

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v1, ", importance="

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    move/from16 v1, v22

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    const-string v1, ", largeIcon="

    .line 227
    const-string v2, ", customIcon="

    .line 229
    move-object/from16 v3, v23

    .line 231
    move-object/from16 v4, v24

    .line 233
    invoke-static {v0, v1, v3, v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v1, ", customAction="

    .line 238
    const-string v2, ", notifSlideDirec="

    .line 240
    move-object/from16 v3, v25

    .line 242
    move-object/from16 v4, v26

    .line 244
    invoke-static {v0, v1, v3, v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v1, ", tip="

    .line 249
    const-string v2, ")"

    .line 251
    move-object/from16 v3, p0

    .line 253
    invoke-static {v0, v1, v3, v2}, Landroidx/fragment/app/BackStackRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    move-result-object v0

    .line 258
    return-object v0
    .line 259
.end method
