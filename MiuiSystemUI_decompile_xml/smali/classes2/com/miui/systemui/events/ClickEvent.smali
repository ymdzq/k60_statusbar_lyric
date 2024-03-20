.class public final Lcom/miui/systemui/events/ClickEvent;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "notification_click"
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

.field private final clearable:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_delete_notification"
    .end annotation
.end field

.field private final clickElementName:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "click_element_name"
    .end annotation
.end field

.field private final expand:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "if_expanded"
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

.field private final sbnId:I
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "sbn_id"
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

.field private final type:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "click_element_type"
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/miui/systemui/events/ClickEvent;->pkg:Ljava/lang/String;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/miui/systemui/events/ClickEvent;->targetPkg:Ljava/lang/String;

    move-wide v1, p3

    .line 4
    iput-wide v1, v0, Lcom/miui/systemui/events/ClickEvent;->tsId:J

    move-object v1, p5

    .line 5
    iput-object v1, v0, Lcom/miui/systemui/events/ClickEvent;->style:Ljava/lang/String;

    move-object v1, p6

    .line 6
    iput-object v1, v0, Lcom/miui/systemui/events/ClickEvent;->clearable:Ljava/lang/String;

    move-object v1, p7

    .line 7
    iput-object v1, v0, Lcom/miui/systemui/events/ClickEvent;->isGroup:Ljava/lang/String;

    move-object v1, p8

    .line 8
    iput-object v1, v0, Lcom/miui/systemui/events/ClickEvent;->channelId:Ljava/lang/String;

    move-object v1, p9

    .line 9
    iput-object v1, v0, Lcom/miui/systemui/events/ClickEvent;->textId:Ljava/lang/String;

    move v1, p10

    .line 10
    iput v1, v0, Lcom/miui/systemui/events/ClickEvent;->priority:I

    move-object v1, p11

    .line 11
    iput-object v1, v0, Lcom/miui/systemui/events/ClickEvent;->expand:Ljava/lang/String;

    move v1, p12

    .line 12
    iput v1, v0, Lcom/miui/systemui/events/ClickEvent;->flags:I

    move-object/from16 v1, p13

    .line 13
    iput-object v1, v0, Lcom/miui/systemui/events/ClickEvent;->status:Ljava/lang/String;

    move/from16 v1, p14

    .line 14
    iput v1, v0, Lcom/miui/systemui/events/ClickEvent;->importance:I

    move/from16 v1, p15

    .line 15
    iput v1, v0, Lcom/miui/systemui/events/ClickEvent;->sbnId:I

    move-object/from16 v1, p16

    .line 16
    iput-object v1, v0, Lcom/miui/systemui/events/ClickEvent;->pushId:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 17
    iput-object v1, v0, Lcom/miui/systemui/events/ClickEvent;->sessionId:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 18
    iput-object v1, v0, Lcom/miui/systemui/events/ClickEvent;->groupExpansion:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 19
    iput-object v1, v0, Lcom/miui/systemui/events/ClickEvent;->groupKey:Ljava/lang/String;

    move/from16 v1, p20

    .line 20
    iput v1, v0, Lcom/miui/systemui/events/ClickEvent;->value:I

    move-object/from16 v1, p21

    .line 21
    iput-object v1, v0, Lcom/miui/systemui/events/ClickEvent;->ongoing:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 22
    iput-object v1, v0, Lcom/miui/systemui/events/ClickEvent;->type:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 23
    iput-object v1, v0, Lcom/miui/systemui/events/ClickEvent;->tag:Ljava/lang/String;

    move/from16 v1, p24

    .line 24
    iput v1, v0, Lcom/miui/systemui/events/ClickEvent;->position:I

    move-object/from16 v1, p25

    .line 25
    iput-object v1, v0, Lcom/miui/systemui/events/ClickEvent;->tip:Ljava/lang/String;

    move-object/from16 v1, p26

    .line 26
    iput-object v1, v0, Lcom/miui/systemui/events/ClickEvent;->mediaStyle:Ljava/lang/String;

    move-object/from16 v1, p27

    .line 27
    iput-object v1, v0, Lcom/miui/systemui/events/ClickEvent;->clickElementName:Ljava/lang/String;

    move/from16 v1, p28

    .line 28
    iput v1, v0, Lcom/miui/systemui/events/ClickEvent;->version:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/systemui/events/ClickEvent;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/miui/systemui/events/ClickEvent;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p29

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/miui/systemui/events/ClickEvent;->pkg:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/miui/systemui/events/ClickEvent;->targetPkg:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/miui/systemui/events/ClickEvent;->tsId:J

    goto :goto_2

    :cond_2
    move-wide/from16 v4, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/miui/systemui/events/ClickEvent;->style:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/miui/systemui/events/ClickEvent;->clearable:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/miui/systemui/events/ClickEvent;->isGroup:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/miui/systemui/events/ClickEvent;->channelId:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/miui/systemui/events/ClickEvent;->textId:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget v11, v0, Lcom/miui/systemui/events/ClickEvent;->priority:I

    goto :goto_8

    :cond_8
    move/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/miui/systemui/events/ClickEvent;->expand:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget v13, v0, Lcom/miui/systemui/events/ClickEvent;->flags:I

    goto :goto_a

    :cond_a
    move/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/miui/systemui/events/ClickEvent;->status:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget v15, v0, Lcom/miui/systemui/events/ClickEvent;->importance:I

    goto :goto_c

    :cond_c
    move/from16 v15, p14

    :goto_c
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget v15, v0, Lcom/miui/systemui/events/ClickEvent;->sbnId:I

    goto :goto_d

    :cond_d
    move/from16 v15, p15

    :goto_d
    move/from16 p15, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/miui/systemui/events/ClickEvent;->pushId:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/miui/systemui/events/ClickEvent;->sessionId:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/miui/systemui/events/ClickEvent;->groupExpansion:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p18

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/miui/systemui/events/ClickEvent;->groupKey:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p19

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_12

    iget v15, v0, Lcom/miui/systemui/events/ClickEvent;->value:I

    goto :goto_12

    :cond_12
    move/from16 v15, p20

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move/from16 p20, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/miui/systemui/events/ClickEvent;->ongoing:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p21

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lcom/miui/systemui/events/ClickEvent;->type:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p22

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Lcom/miui/systemui/events/ClickEvent;->tag:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p23

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_16

    iget v15, v0, Lcom/miui/systemui/events/ClickEvent;->position:I

    goto :goto_16

    :cond_16
    move/from16 v15, p24

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move/from16 p24, v15

    if-eqz v16, :cond_17

    iget-object v15, v0, Lcom/miui/systemui/events/ClickEvent;->tip:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p25

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_18

    iget-object v15, v0, Lcom/miui/systemui/events/ClickEvent;->mediaStyle:Ljava/lang/String;

    goto :goto_18

    :cond_18
    move-object/from16 v15, p26

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move-object/from16 p26, v15

    if-eqz v16, :cond_19

    iget-object v15, v0, Lcom/miui/systemui/events/ClickEvent;->clickElementName:Ljava/lang/String;

    goto :goto_19

    :cond_19
    move-object/from16 v15, p27

    :goto_19
    const/high16 v16, 0x4000000

    and-int v1, v1, v16

    if-eqz v1, :cond_1a

    iget v1, v0, Lcom/miui/systemui/events/ClickEvent;->version:I

    goto :goto_1a

    :cond_1a
    move/from16 v1, p28

    :goto_1a
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-wide/from16 p3, v4

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p27, v15

    move/from16 p28, v1

    invoke-virtual/range {p0 .. p28}, Lcom/miui/systemui/events/ClickEvent;->copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/systemui/events/ClickEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->pkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->expand:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component11()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/ClickEvent;->flags:I

    .line 2
    return p0
    .line 4
.end method

.method public final component12()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->status:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component13()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/ClickEvent;->importance:I

    .line 2
    return p0
    .line 4
.end method

.method public final component14()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/ClickEvent;->sbnId:I

    .line 2
    return p0
    .line 4
.end method

.method public final component15()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->pushId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component16()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->sessionId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component17()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->groupExpansion:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component18()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->groupKey:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component19()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/ClickEvent;->value:I

    .line 2
    return p0
    .line 4
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->targetPkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component20()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->ongoing:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component21()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->type:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component22()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->tag:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component23()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/ClickEvent;->position:I

    .line 2
    return p0
    .line 4
.end method

.method public final component24()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component25()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->mediaStyle:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component26()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->clickElementName:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component27()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/ClickEvent;->version:I

    .line 2
    return p0
    .line 4
.end method

.method public final component3()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/systemui/events/ClickEvent;->tsId:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->style:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->clearable:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->isGroup:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->channelId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->textId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component9()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/ClickEvent;->priority:I

    .line 2
    return p0
    .line 4
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/systemui/events/ClickEvent;
    .locals 30

    .line 1
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move/from16 v28, p28

    new-instance v29, Lcom/miui/systemui/events/ClickEvent;

    move-object/from16 v0, v29

    invoke-direct/range {v0 .. v28}, Lcom/miui/systemui/events/ClickEvent;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v29
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
    instance-of v1, p1, Lcom/miui/systemui/events/ClickEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/miui/systemui/events/ClickEvent;

    .line 12
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->pkg:Ljava/lang/String;

    .line 14
    iget-object v3, p1, Lcom/miui/systemui/events/ClickEvent;->pkg:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->targetPkg:Ljava/lang/String;

    .line 25
    iget-object v3, p1, Lcom/miui/systemui/events/ClickEvent;->targetPkg:Ljava/lang/String;

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
    iget-wide v3, p0, Lcom/miui/systemui/events/ClickEvent;->tsId:J

    .line 36
    iget-wide v5, p1, Lcom/miui/systemui/events/ClickEvent;->tsId:J

    .line 38
    cmp-long v1, v3, v5

    .line 40
    if-eqz v1, :cond_4

    .line 42
    return v2

    .line 44
    :cond_4
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->style:Ljava/lang/String;

    .line 45
    iget-object v3, p1, Lcom/miui/systemui/events/ClickEvent;->style:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->clearable:Ljava/lang/String;

    .line 56
    iget-object v3, p1, Lcom/miui/systemui/events/ClickEvent;->clearable:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->isGroup:Ljava/lang/String;

    .line 67
    iget-object v3, p1, Lcom/miui/systemui/events/ClickEvent;->isGroup:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->channelId:Ljava/lang/String;

    .line 78
    iget-object v3, p1, Lcom/miui/systemui/events/ClickEvent;->channelId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->textId:Ljava/lang/String;

    .line 89
    iget-object v3, p1, Lcom/miui/systemui/events/ClickEvent;->textId:Ljava/lang/String;

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
    iget v1, p0, Lcom/miui/systemui/events/ClickEvent;->priority:I

    .line 100
    iget v3, p1, Lcom/miui/systemui/events/ClickEvent;->priority:I

    .line 102
    if-eq v1, v3, :cond_a

    .line 104
    return v2

    .line 106
    :cond_a
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->expand:Ljava/lang/String;

    .line 107
    iget-object v3, p1, Lcom/miui/systemui/events/ClickEvent;->expand:Ljava/lang/String;

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
    iget v1, p0, Lcom/miui/systemui/events/ClickEvent;->flags:I

    .line 118
    iget v3, p1, Lcom/miui/systemui/events/ClickEvent;->flags:I

    .line 120
    if-eq v1, v3, :cond_c

    .line 122
    return v2

    .line 124
    :cond_c
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->status:Ljava/lang/String;

    .line 125
    iget-object v3, p1, Lcom/miui/systemui/events/ClickEvent;->status:Ljava/lang/String;

    .line 127
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    move-result v1

    .line 132
    if-nez v1, :cond_d

    .line 133
    return v2

    .line 135
    :cond_d
    iget v1, p0, Lcom/miui/systemui/events/ClickEvent;->importance:I

    .line 136
    iget v3, p1, Lcom/miui/systemui/events/ClickEvent;->importance:I

    .line 138
    if-eq v1, v3, :cond_e

    .line 140
    return v2

    .line 142
    :cond_e
    iget v1, p0, Lcom/miui/systemui/events/ClickEvent;->sbnId:I

    .line 143
    iget v3, p1, Lcom/miui/systemui/events/ClickEvent;->sbnId:I

    .line 145
    if-eq v1, v3, :cond_f

    .line 147
    return v2

    .line 149
    :cond_f
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->pushId:Ljava/lang/String;

    .line 150
    iget-object v3, p1, Lcom/miui/systemui/events/ClickEvent;->pushId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->sessionId:Ljava/lang/String;

    .line 161
    iget-object v3, p1, Lcom/miui/systemui/events/ClickEvent;->sessionId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->groupExpansion:Ljava/lang/String;

    .line 172
    iget-object v3, p1, Lcom/miui/systemui/events/ClickEvent;->groupExpansion:Ljava/lang/String;

    .line 174
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 176
    move-result v1

    .line 179
    if-nez v1, :cond_12

    .line 180
    return v2

    .line 182
    :cond_12
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->groupKey:Ljava/lang/String;

    .line 183
    iget-object v3, p1, Lcom/miui/systemui/events/ClickEvent;->groupKey:Ljava/lang/String;

    .line 185
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    move-result v1

    .line 190
    if-nez v1, :cond_13

    .line 191
    return v2

    .line 193
    :cond_13
    iget v1, p0, Lcom/miui/systemui/events/ClickEvent;->value:I

    .line 194
    iget v3, p1, Lcom/miui/systemui/events/ClickEvent;->value:I

    .line 196
    if-eq v1, v3, :cond_14

    .line 198
    return v2

    .line 200
    :cond_14
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->ongoing:Ljava/lang/String;

    .line 201
    iget-object v3, p1, Lcom/miui/systemui/events/ClickEvent;->ongoing:Ljava/lang/String;

    .line 203
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    move-result v1

    .line 208
    if-nez v1, :cond_15

    .line 209
    return v2

    .line 211
    :cond_15
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->type:Ljava/lang/String;

    .line 212
    iget-object v3, p1, Lcom/miui/systemui/events/ClickEvent;->type:Ljava/lang/String;

    .line 214
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 216
    move-result v1

    .line 219
    if-nez v1, :cond_16

    .line 220
    return v2

    .line 222
    :cond_16
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->tag:Ljava/lang/String;

    .line 223
    iget-object v3, p1, Lcom/miui/systemui/events/ClickEvent;->tag:Ljava/lang/String;

    .line 225
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    move-result v1

    .line 230
    if-nez v1, :cond_17

    .line 231
    return v2

    .line 233
    :cond_17
    iget v1, p0, Lcom/miui/systemui/events/ClickEvent;->position:I

    .line 234
    iget v3, p1, Lcom/miui/systemui/events/ClickEvent;->position:I

    .line 236
    if-eq v1, v3, :cond_18

    .line 238
    return v2

    .line 240
    :cond_18
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->tip:Ljava/lang/String;

    .line 241
    iget-object v3, p1, Lcom/miui/systemui/events/ClickEvent;->tip:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->mediaStyle:Ljava/lang/String;

    .line 252
    iget-object v3, p1, Lcom/miui/systemui/events/ClickEvent;->mediaStyle:Ljava/lang/String;

    .line 254
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 256
    move-result v1

    .line 259
    if-nez v1, :cond_1a

    .line 260
    return v2

    .line 262
    :cond_1a
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->clickElementName:Ljava/lang/String;

    .line 263
    iget-object v3, p1, Lcom/miui/systemui/events/ClickEvent;->clickElementName:Ljava/lang/String;

    .line 265
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 267
    move-result v1

    .line 270
    if-nez v1, :cond_1b

    .line 271
    return v2

    .line 273
    :cond_1b
    iget p0, p0, Lcom/miui/systemui/events/ClickEvent;->version:I

    .line 274
    iget p1, p1, Lcom/miui/systemui/events/ClickEvent;->version:I

    .line 276
    if-eq p0, p1, :cond_1c

    .line 278
    return v2

    .line 280
    :cond_1c
    return v0
    .line 281
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->channelId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getClearable()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->clearable:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getClickElementName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->clickElementName:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getExpand()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->expand:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getFlags()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/ClickEvent;->flags:I

    .line 2
    return p0
    .line 4
.end method

.method public final getGroupExpansion()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->groupExpansion:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getGroupKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->groupKey:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getImportance()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/ClickEvent;->importance:I

    .line 2
    return p0
    .line 4
.end method

.method public final getMediaStyle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->mediaStyle:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getOngoing()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->ongoing:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getPkg()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->pkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getPosition()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/ClickEvent;->position:I

    .line 2
    return p0
    .line 4
.end method

.method public final getPriority()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/ClickEvent;->priority:I

    .line 2
    return p0
    .line 4
.end method

.method public final getPushId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->pushId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSbnId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/ClickEvent;->sbnId:I

    .line 2
    return p0
    .line 4
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->sessionId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->status:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getStyle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->style:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->tag:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTargetPkg()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->targetPkg:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTextId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->textId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTip()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTsId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/systemui/events/ClickEvent;->tsId:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->type:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getValue()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/ClickEvent;->value:I

    .line 2
    return p0
    .line 4
.end method

.method public final getVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/ClickEvent;->version:I

    .line 2
    return p0
    .line 4
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/events/ClickEvent;->pkg:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->targetPkg:Ljava/lang/String;

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    iget-wide v1, p0, Lcom/miui/systemui/events/ClickEvent;->tsId:J

    .line 18
    const/16 v3, 0x1f

    .line 20
    invoke-static {v1, v2, v0, v3}, Lcom/android/app/motiontool/TraceMetadata$$ExternalSyntheticOutline0;->m(JII)I

    .line 22
    move-result v0

    .line 25
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->style:Ljava/lang/String;

    .line 26
    const/16 v2, 0x1f

    .line 28
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 30
    move-result v0

    .line 33
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->clearable:Ljava/lang/String;

    .line 34
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 36
    move-result v0

    .line 39
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->isGroup:Ljava/lang/String;

    .line 40
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 42
    move-result v0

    .line 45
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->channelId:Ljava/lang/String;

    .line 46
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 48
    move-result v0

    .line 51
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->textId:Ljava/lang/String;

    .line 52
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 54
    move-result v0

    .line 57
    iget v1, p0, Lcom/miui/systemui/events/ClickEvent;->priority:I

    .line 58
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 60
    move-result v0

    .line 63
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->expand:Ljava/lang/String;

    .line 64
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 66
    move-result v0

    .line 69
    iget v1, p0, Lcom/miui/systemui/events/ClickEvent;->flags:I

    .line 70
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 72
    move-result v0

    .line 75
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->status:Ljava/lang/String;

    .line 76
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 78
    move-result v0

    .line 81
    iget v1, p0, Lcom/miui/systemui/events/ClickEvent;->importance:I

    .line 82
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 84
    move-result v0

    .line 87
    iget v1, p0, Lcom/miui/systemui/events/ClickEvent;->sbnId:I

    .line 88
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 90
    move-result v0

    .line 93
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->pushId:Ljava/lang/String;

    .line 94
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 96
    move-result v0

    .line 99
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->sessionId:Ljava/lang/String;

    .line 100
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 102
    move-result v0

    .line 105
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->groupExpansion:Ljava/lang/String;

    .line 106
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 108
    move-result v0

    .line 111
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->groupKey:Ljava/lang/String;

    .line 112
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 114
    move-result v0

    .line 117
    iget v1, p0, Lcom/miui/systemui/events/ClickEvent;->value:I

    .line 118
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 120
    move-result v0

    .line 123
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->ongoing:Ljava/lang/String;

    .line 124
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 126
    move-result v0

    .line 129
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->type:Ljava/lang/String;

    .line 130
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 132
    move-result v0

    .line 135
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->tag:Ljava/lang/String;

    .line 136
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 138
    move-result v0

    .line 141
    iget v1, p0, Lcom/miui/systemui/events/ClickEvent;->position:I

    .line 142
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 144
    move-result v0

    .line 147
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->tip:Ljava/lang/String;

    .line 148
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 150
    move-result v0

    .line 153
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->mediaStyle:Ljava/lang/String;

    .line 154
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 156
    move-result v0

    .line 159
    iget-object v1, p0, Lcom/miui/systemui/events/ClickEvent;->clickElementName:Ljava/lang/String;

    .line 160
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 162
    move-result v0

    .line 165
    iget p0, p0, Lcom/miui/systemui/events/ClickEvent;->version:I

    .line 166
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 168
    move-result p0

    .line 171
    add-int/2addr p0, v0

    .line 172
    return p0
    .line 173
.end method

.method public final isGroup()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/events/ClickEvent;->isGroup:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/miui/systemui/events/ClickEvent;->pkg:Ljava/lang/String;

    .line 4
    iget-object v2, v0, Lcom/miui/systemui/events/ClickEvent;->targetPkg:Ljava/lang/String;

    .line 6
    iget-wide v3, v0, Lcom/miui/systemui/events/ClickEvent;->tsId:J

    .line 8
    iget-object v5, v0, Lcom/miui/systemui/events/ClickEvent;->style:Ljava/lang/String;

    .line 10
    iget-object v6, v0, Lcom/miui/systemui/events/ClickEvent;->clearable:Ljava/lang/String;

    .line 12
    iget-object v7, v0, Lcom/miui/systemui/events/ClickEvent;->isGroup:Ljava/lang/String;

    .line 14
    iget-object v8, v0, Lcom/miui/systemui/events/ClickEvent;->channelId:Ljava/lang/String;

    .line 16
    iget-object v9, v0, Lcom/miui/systemui/events/ClickEvent;->textId:Ljava/lang/String;

    .line 18
    iget v10, v0, Lcom/miui/systemui/events/ClickEvent;->priority:I

    .line 20
    iget-object v11, v0, Lcom/miui/systemui/events/ClickEvent;->expand:Ljava/lang/String;

    .line 22
    iget v12, v0, Lcom/miui/systemui/events/ClickEvent;->flags:I

    .line 24
    iget-object v13, v0, Lcom/miui/systemui/events/ClickEvent;->status:Ljava/lang/String;

    .line 26
    iget v14, v0, Lcom/miui/systemui/events/ClickEvent;->importance:I

    .line 28
    iget v15, v0, Lcom/miui/systemui/events/ClickEvent;->sbnId:I

    .line 30
    move/from16 v16, v15

    .line 32
    iget-object v15, v0, Lcom/miui/systemui/events/ClickEvent;->pushId:Ljava/lang/String;

    .line 34
    move-object/from16 v17, v15

    .line 36
    iget-object v15, v0, Lcom/miui/systemui/events/ClickEvent;->sessionId:Ljava/lang/String;

    .line 38
    move-object/from16 v18, v15

    .line 40
    iget-object v15, v0, Lcom/miui/systemui/events/ClickEvent;->groupExpansion:Ljava/lang/String;

    .line 42
    move-object/from16 v19, v15

    .line 44
    iget-object v15, v0, Lcom/miui/systemui/events/ClickEvent;->groupKey:Ljava/lang/String;

    .line 46
    move-object/from16 v20, v15

    .line 48
    iget v15, v0, Lcom/miui/systemui/events/ClickEvent;->value:I

    .line 50
    move/from16 v21, v15

    .line 52
    iget-object v15, v0, Lcom/miui/systemui/events/ClickEvent;->ongoing:Ljava/lang/String;

    .line 54
    move-object/from16 v22, v15

    .line 56
    iget-object v15, v0, Lcom/miui/systemui/events/ClickEvent;->type:Ljava/lang/String;

    .line 58
    move-object/from16 v23, v15

    .line 60
    iget-object v15, v0, Lcom/miui/systemui/events/ClickEvent;->tag:Ljava/lang/String;

    .line 62
    move-object/from16 v24, v15

    .line 64
    iget v15, v0, Lcom/miui/systemui/events/ClickEvent;->position:I

    .line 66
    move/from16 v25, v15

    .line 68
    iget-object v15, v0, Lcom/miui/systemui/events/ClickEvent;->tip:Ljava/lang/String;

    .line 70
    move-object/from16 v26, v15

    .line 72
    iget-object v15, v0, Lcom/miui/systemui/events/ClickEvent;->mediaStyle:Ljava/lang/String;

    .line 74
    move-object/from16 v27, v15

    .line 76
    iget-object v15, v0, Lcom/miui/systemui/events/ClickEvent;->clickElementName:Ljava/lang/String;

    .line 78
    iget v0, v0, Lcom/miui/systemui/events/ClickEvent;->version:I

    .line 80
    move/from16 p0, v0

    .line 82
    const-string v0, "ClickEvent(pkg="

    .line 84
    move-object/from16 v28, v15

    .line 86
    const-string v15, ", targetPkg="

    .line 88
    move/from16 v29, v14

    .line 90
    const-string v14, ", tsId="

    .line 92
    invoke-static {v0, v1, v15, v2, v14}, Lcom/android/keyguard/event/FodQuickOpenActionEvent$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    move-result-object v0

    .line 97
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, ", style="

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", clearable="

    .line 109
    const-string v2, ", isGroup="

    .line 111
    invoke-static {v0, v1, v6, v2, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, ", channelId="

    .line 116
    const-string v2, ", textId="

    .line 118
    invoke-static {v0, v1, v8, v2, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, ", priority="

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, ", expand="

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ", flags="

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, ", status="

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, ", importance="

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    move/from16 v1, v29

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, ", sbnId="

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    move/from16 v1, v16

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, ", pushId="

    .line 175
    const-string v2, ", sessionId="

    .line 177
    move-object/from16 v3, v17

    .line 179
    move-object/from16 v4, v18

    .line 181
    invoke-static {v0, v1, v3, v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v1, ", groupExpansion="

    .line 186
    const-string v2, ", groupKey="

    .line 188
    move-object/from16 v3, v19

    .line 190
    move-object/from16 v4, v20

    .line 192
    invoke-static {v0, v1, v3, v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, ", value="

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    move/from16 v1, v21

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    const-string v1, ", ongoing="

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    move-object/from16 v1, v22

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v1, ", type="

    .line 217
    const-string v2, ", tag="

    .line 219
    move-object/from16 v3, v23

    .line 221
    move-object/from16 v4, v24

    .line 223
    invoke-static {v0, v1, v3, v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v1, ", position="

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    move/from16 v1, v25

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    const-string v1, ", tip="

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    move-object/from16 v1, v26

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, ", mediaStyle="

    .line 248
    const-string v2, ", clickElementName="

    .line 250
    move-object/from16 v3, v27

    .line 252
    move-object/from16 v4, v28

    .line 254
    invoke-static {v0, v1, v3, v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v1, ", version="

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    move/from16 v1, p0

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, ")"

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    move-result-object v0

    .line 277
    return-object v0
    .line 278
.end method
