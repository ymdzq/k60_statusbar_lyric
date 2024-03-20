.class public final Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# annotations
.annotation runtime Lcom/miui/systemui/events/EventID;
    id = "keyguard_template_status"
.end annotation

.annotation runtime Lcom/miui/systemui/events/EventModule;
    value = .enum Lcom/miui/systemui/events/EventModuleTarget;->SYSTEMUI:Lcom/miui/systemui/events/EventModuleTarget;
.end annotation


# instance fields
.field private final contentAreaFirstLine:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "used_template_content_area_first_line"
    .end annotation
.end field

.field private final contentAreaSecondLine:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "used_template_content_area_second_line"
    .end annotation
.end field

.field private final dataVersion:Ljava/lang/Number;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "keyguard_data_version"
    .end annotation
.end field

.field private final digitalColorDifferent:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "used_template_digital_color_different"
    .end annotation
.end field

.field private final favoriteTemplatesContent:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "favorite_templates_content"
    .end annotation
.end field

.field private final favoriteTemplatesCount:Ljava/lang/Number;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "favorite_templates_count"
    .end annotation
.end field

.field private final finePrintContent:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "used_template_fine_print_content"
    .end annotation
.end field

.field private final frameStyle:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "used_template_frame_style"
    .end annotation
.end field

.field private final globalFont:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "used_template_global_font"
    .end annotation
.end field

.field private final hasSignature:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "used_template_has_signature"
    .end annotation
.end field

.field private final ifDof:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "used_template_if_dof"
    .end annotation
.end field

.field private final ifOnlyTimeEffective:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "used_template_if_only_time_effective"
    .end annotation
.end field

.field private final textureEffect:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "used_template_texture_effect"
    .end annotation
.end field

.field private final timeStyle:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "used_template_time_style"
    .end annotation
.end field

.field private final tip:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "tip"
    .end annotation
.end field

.field private final usedTemplateStyle:Ljava/lang/String;
    .annotation runtime Lcom/miui/systemui/events/EventKey;
        key = "used_template_style"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->usedTemplateStyle:Ljava/lang/String;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->textureEffect:Ljava/lang/String;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->ifOnlyTimeEffective:Ljava/lang/String;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->ifDof:Ljava/lang/String;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->finePrintContent:Ljava/lang/String;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->timeStyle:Ljava/lang/String;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->contentAreaFirstLine:Ljava/lang/String;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->contentAreaSecondLine:Ljava/lang/String;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->hasSignature:Ljava/lang/String;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->globalFont:Ljava/lang/String;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->digitalColorDifferent:Ljava/lang/String;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->frameStyle:Ljava/lang/String;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->favoriteTemplatesCount:Ljava/lang/Number;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->favoriteTemplatesContent:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->tip:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->dataVersion:Ljava/lang/Number;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object/from16 v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object/from16 v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object/from16 v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_5

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_6

    move-object v8, v2

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_7

    move-object v9, v2

    goto :goto_7

    :cond_7
    move-object/from16 v9, p9

    :goto_7
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_8

    move-object v10, v2

    goto :goto_8

    :cond_8
    move-object/from16 v10, p10

    :goto_8
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_9

    move-object v11, v2

    goto :goto_9

    :cond_9
    move-object/from16 v11, p11

    :goto_9
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_a

    move-object v12, v2

    goto :goto_a

    :cond_a
    move-object/from16 v12, p12

    :goto_a
    and-int/lit16 v13, v0, 0x1000

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    .line 18
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_b

    :cond_b
    move-object/from16 v13, p13

    :goto_b
    and-int/lit16 v14, v0, 0x2000

    if-eqz v14, :cond_c

    goto :goto_c

    :cond_c
    move-object/from16 v2, p14

    :goto_c
    and-int/lit16 v14, v0, 0x4000

    if-eqz v14, :cond_d

    const-string v14, "178.3.0.1.28856"

    goto :goto_d

    :cond_d
    move-object/from16 v14, p15

    :goto_d
    const v15, 0x8000

    and-int/2addr v0, v15

    if-eqz v0, :cond_e

    const v0, 0x15f97d0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_e

    :cond_e
    move-object/from16 v0, p16

    :goto_e
    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v1

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move-object/from16 p10, v8

    move-object/from16 p11, v9

    move-object/from16 p12, v10

    move-object/from16 p13, v11

    move-object/from16 p14, v12

    move-object/from16 p15, v13

    move-object/from16 p16, v2

    move-object/from16 p17, v14

    move-object/from16 p18, v0

    .line 20
    invoke-direct/range {p2 .. p18}, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;ILjava/lang/Object;)Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p17

    .line 4
    and-int/lit8 v2, v1, 0x1

    .line 6
    if-eqz v2, :cond_0

    .line 8
    iget-object v2, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->usedTemplateStyle:Ljava/lang/String;

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    move-object/from16 v2, p1

    .line 13
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 15
    if-eqz v3, :cond_1

    .line 17
    iget-object v3, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->textureEffect:Ljava/lang/String;

    .line 19
    goto :goto_1

    .line 21
    :cond_1
    move-object/from16 v3, p2

    .line 22
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 24
    if-eqz v4, :cond_2

    .line 26
    iget-object v4, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->ifOnlyTimeEffective:Ljava/lang/String;

    .line 28
    goto :goto_2

    .line 30
    :cond_2
    move-object/from16 v4, p3

    .line 31
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 33
    if-eqz v5, :cond_3

    .line 35
    iget-object v5, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->ifDof:Ljava/lang/String;

    .line 37
    goto :goto_3

    .line 39
    :cond_3
    move-object/from16 v5, p4

    .line 40
    :goto_3
    and-int/lit8 v6, v1, 0x10

    .line 42
    if-eqz v6, :cond_4

    .line 44
    iget-object v6, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->finePrintContent:Ljava/lang/String;

    .line 46
    goto :goto_4

    .line 48
    :cond_4
    move-object/from16 v6, p5

    .line 49
    :goto_4
    and-int/lit8 v7, v1, 0x20

    .line 51
    if-eqz v7, :cond_5

    .line 53
    iget-object v7, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->timeStyle:Ljava/lang/String;

    .line 55
    goto :goto_5

    .line 57
    :cond_5
    move-object/from16 v7, p6

    .line 58
    :goto_5
    and-int/lit8 v8, v1, 0x40

    .line 60
    if-eqz v8, :cond_6

    .line 62
    iget-object v8, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->contentAreaFirstLine:Ljava/lang/String;

    .line 64
    goto :goto_6

    .line 66
    :cond_6
    move-object/from16 v8, p7

    .line 67
    :goto_6
    and-int/lit16 v9, v1, 0x80

    .line 69
    if-eqz v9, :cond_7

    .line 71
    iget-object v9, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->contentAreaSecondLine:Ljava/lang/String;

    .line 73
    goto :goto_7

    .line 75
    :cond_7
    move-object/from16 v9, p8

    .line 76
    :goto_7
    and-int/lit16 v10, v1, 0x100

    .line 78
    if-eqz v10, :cond_8

    .line 80
    iget-object v10, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->hasSignature:Ljava/lang/String;

    .line 82
    goto :goto_8

    .line 84
    :cond_8
    move-object/from16 v10, p9

    .line 85
    :goto_8
    and-int/lit16 v11, v1, 0x200

    .line 87
    if-eqz v11, :cond_9

    .line 89
    iget-object v11, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->globalFont:Ljava/lang/String;

    .line 91
    goto :goto_9

    .line 93
    :cond_9
    move-object/from16 v11, p10

    .line 94
    :goto_9
    and-int/lit16 v12, v1, 0x400

    .line 96
    if-eqz v12, :cond_a

    .line 98
    iget-object v12, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->digitalColorDifferent:Ljava/lang/String;

    .line 100
    goto :goto_a

    .line 102
    :cond_a
    move-object/from16 v12, p11

    .line 103
    :goto_a
    and-int/lit16 v13, v1, 0x800

    .line 105
    if-eqz v13, :cond_b

    .line 107
    iget-object v13, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->frameStyle:Ljava/lang/String;

    .line 109
    goto :goto_b

    .line 111
    :cond_b
    move-object/from16 v13, p12

    .line 112
    :goto_b
    and-int/lit16 v14, v1, 0x1000

    .line 114
    if-eqz v14, :cond_c

    .line 116
    iget-object v14, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->favoriteTemplatesCount:Ljava/lang/Number;

    .line 118
    goto :goto_c

    .line 120
    :cond_c
    move-object/from16 v14, p13

    .line 121
    :goto_c
    and-int/lit16 v15, v1, 0x2000

    .line 123
    if-eqz v15, :cond_d

    .line 125
    iget-object v15, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->favoriteTemplatesContent:Ljava/lang/String;

    .line 127
    goto :goto_d

    .line 129
    :cond_d
    move-object/from16 v15, p14

    .line 130
    :goto_d
    move-object/from16 p14, v15

    .line 132
    and-int/lit16 v15, v1, 0x4000

    .line 134
    if-eqz v15, :cond_e

    .line 136
    iget-object v15, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->tip:Ljava/lang/String;

    .line 138
    goto :goto_e

    .line 140
    :cond_e
    move-object/from16 v15, p15

    .line 141
    :goto_e
    const v16, 0x8000

    .line 143
    and-int v1, v1, v16

    .line 146
    if-eqz v1, :cond_f

    .line 148
    iget-object v1, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->dataVersion:Ljava/lang/Number;

    .line 150
    goto :goto_f

    .line 152
    :cond_f
    move-object/from16 v1, p16

    .line 153
    :goto_f
    move-object/from16 p1, v2

    .line 155
    move-object/from16 p2, v3

    .line 157
    move-object/from16 p3, v4

    .line 159
    move-object/from16 p4, v5

    .line 161
    move-object/from16 p5, v6

    .line 163
    move-object/from16 p6, v7

    .line 165
    move-object/from16 p7, v8

    .line 167
    move-object/from16 p8, v9

    .line 169
    move-object/from16 p9, v10

    .line 171
    move-object/from16 p10, v11

    .line 173
    move-object/from16 p11, v12

    .line 175
    move-object/from16 p12, v13

    .line 177
    move-object/from16 p13, v14

    .line 179
    move-object/from16 p15, v15

    .line 181
    move-object/from16 p16, v1

    .line 183
    invoke-virtual/range {p0 .. p16}, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;

    .line 185
    move-result-object v0

    .line 188
    return-object v0
    .line 189
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->usedTemplateStyle:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->globalFont:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component11()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->digitalColorDifferent:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component12()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->frameStyle:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component13()Ljava/lang/Number;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->favoriteTemplatesCount:Ljava/lang/Number;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component14()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->favoriteTemplatesContent:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component15()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component16()Ljava/lang/Number;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->dataVersion:Ljava/lang/Number;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->textureEffect:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->ifOnlyTimeEffective:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->ifDof:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->finePrintContent:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->timeStyle:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->contentAreaFirstLine:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->contentAreaSecondLine:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->hasSignature:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;
    .locals 18

    .line 1
    move-object/from16 v1, p1

    .line 2
    move-object/from16 v2, p2

    .line 4
    move-object/from16 v3, p3

    .line 6
    move-object/from16 v4, p4

    .line 8
    move-object/from16 v5, p5

    .line 10
    move-object/from16 v6, p6

    .line 12
    move-object/from16 v7, p7

    .line 14
    move-object/from16 v8, p8

    .line 16
    move-object/from16 v9, p9

    .line 18
    move-object/from16 v10, p10

    .line 20
    move-object/from16 v11, p11

    .line 22
    move-object/from16 v12, p12

    .line 24
    move-object/from16 v13, p13

    .line 26
    move-object/from16 v14, p14

    .line 28
    move-object/from16 v15, p15

    .line 30
    move-object/from16 v16, p16

    .line 32
    new-instance v17, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;

    .line 34
    move-object/from16 v0, v17

    .line 36
    invoke-direct/range {v0 .. v16}, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 38
    return-object v17
    .line 41
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
    instance-of v1, p1, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;

    .line 12
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->usedTemplateStyle:Ljava/lang/String;

    .line 14
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->usedTemplateStyle:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->textureEffect:Ljava/lang/String;

    .line 25
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->textureEffect:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->ifOnlyTimeEffective:Ljava/lang/String;

    .line 36
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->ifOnlyTimeEffective:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->ifDof:Ljava/lang/String;

    .line 47
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->ifDof:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->finePrintContent:Ljava/lang/String;

    .line 58
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->finePrintContent:Ljava/lang/String;

    .line 60
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->timeStyle:Ljava/lang/String;

    .line 69
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->timeStyle:Ljava/lang/String;

    .line 71
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    return v2

    .line 79
    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->contentAreaFirstLine:Ljava/lang/String;

    .line 80
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->contentAreaFirstLine:Ljava/lang/String;

    .line 82
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    return v2

    .line 90
    :cond_8
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->contentAreaSecondLine:Ljava/lang/String;

    .line 91
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->contentAreaSecondLine:Ljava/lang/String;

    .line 93
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    return v2

    .line 101
    :cond_9
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->hasSignature:Ljava/lang/String;

    .line 102
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->hasSignature:Ljava/lang/String;

    .line 104
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    move-result v1

    .line 109
    if-nez v1, :cond_a

    .line 110
    return v2

    .line 112
    :cond_a
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->globalFont:Ljava/lang/String;

    .line 113
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->globalFont:Ljava/lang/String;

    .line 115
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    move-result v1

    .line 120
    if-nez v1, :cond_b

    .line 121
    return v2

    .line 123
    :cond_b
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->digitalColorDifferent:Ljava/lang/String;

    .line 124
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->digitalColorDifferent:Ljava/lang/String;

    .line 126
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    move-result v1

    .line 131
    if-nez v1, :cond_c

    .line 132
    return v2

    .line 134
    :cond_c
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->frameStyle:Ljava/lang/String;

    .line 135
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->frameStyle:Ljava/lang/String;

    .line 137
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    move-result v1

    .line 142
    if-nez v1, :cond_d

    .line 143
    return v2

    .line 145
    :cond_d
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->favoriteTemplatesCount:Ljava/lang/Number;

    .line 146
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->favoriteTemplatesCount:Ljava/lang/Number;

    .line 148
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    move-result v1

    .line 153
    if-nez v1, :cond_e

    .line 154
    return v2

    .line 156
    :cond_e
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->favoriteTemplatesContent:Ljava/lang/String;

    .line 157
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->favoriteTemplatesContent:Ljava/lang/String;

    .line 159
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    move-result v1

    .line 164
    if-nez v1, :cond_f

    .line 165
    return v2

    .line 167
    :cond_f
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->tip:Ljava/lang/String;

    .line 168
    iget-object v3, p1, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->tip:Ljava/lang/String;

    .line 170
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    move-result v1

    .line 175
    if-nez v1, :cond_10

    .line 176
    return v2

    .line 178
    :cond_10
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->dataVersion:Ljava/lang/Number;

    .line 179
    iget-object p1, p1, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->dataVersion:Ljava/lang/Number;

    .line 181
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    move-result p0

    .line 186
    if-nez p0, :cond_11

    .line 187
    return v2

    .line 189
    :cond_11
    return v0
    .line 190
.end method

.method public final getContentAreaFirstLine()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->contentAreaFirstLine:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getContentAreaSecondLine()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->contentAreaSecondLine:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getDataVersion()Ljava/lang/Number;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->dataVersion:Ljava/lang/Number;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getDigitalColorDifferent()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->digitalColorDifferent:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getFavoriteTemplatesContent()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->favoriteTemplatesContent:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getFavoriteTemplatesCount()Ljava/lang/Number;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->favoriteTemplatesCount:Ljava/lang/Number;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getFinePrintContent()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->finePrintContent:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getFrameStyle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->frameStyle:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getGlobalFont()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->globalFont:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getHasSignature()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->hasSignature:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIfDof()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->ifDof:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIfOnlyTimeEffective()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->ifOnlyTimeEffective:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTextureEffect()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->textureEffect:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTimeStyle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->timeStyle:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTip()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->tip:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getUsedTemplateStyle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->usedTemplateStyle:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->usedTemplateStyle:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->textureEffect:Ljava/lang/String;

    .line 10
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    move v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 17
    move-result v1

    .line 20
    :goto_0
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->ifOnlyTimeEffective:Ljava/lang/String;

    .line 24
    if-nez v1, :cond_1

    .line 26
    move v1, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 30
    move-result v1

    .line 33
    :goto_1
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->ifDof:Ljava/lang/String;

    .line 37
    if-nez v1, :cond_2

    .line 39
    move v1, v2

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 43
    move-result v1

    .line 46
    :goto_2
    add-int/2addr v0, v1

    .line 47
    mul-int/lit8 v0, v0, 0x1f

    .line 48
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->finePrintContent:Ljava/lang/String;

    .line 50
    if-nez v1, :cond_3

    .line 52
    move v1, v2

    .line 54
    goto :goto_3

    .line 55
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 56
    move-result v1

    .line 59
    :goto_3
    add-int/2addr v0, v1

    .line 60
    mul-int/lit8 v0, v0, 0x1f

    .line 61
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->timeStyle:Ljava/lang/String;

    .line 63
    if-nez v1, :cond_4

    .line 65
    move v1, v2

    .line 67
    goto :goto_4

    .line 68
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 69
    move-result v1

    .line 72
    :goto_4
    add-int/2addr v0, v1

    .line 73
    mul-int/lit8 v0, v0, 0x1f

    .line 74
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->contentAreaFirstLine:Ljava/lang/String;

    .line 76
    if-nez v1, :cond_5

    .line 78
    move v1, v2

    .line 80
    goto :goto_5

    .line 81
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 82
    move-result v1

    .line 85
    :goto_5
    add-int/2addr v0, v1

    .line 86
    mul-int/lit8 v0, v0, 0x1f

    .line 87
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->contentAreaSecondLine:Ljava/lang/String;

    .line 89
    if-nez v1, :cond_6

    .line 91
    move v1, v2

    .line 93
    goto :goto_6

    .line 94
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 95
    move-result v1

    .line 98
    :goto_6
    add-int/2addr v0, v1

    .line 99
    mul-int/lit8 v0, v0, 0x1f

    .line 100
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->hasSignature:Ljava/lang/String;

    .line 102
    if-nez v1, :cond_7

    .line 104
    move v1, v2

    .line 106
    goto :goto_7

    .line 107
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 108
    move-result v1

    .line 111
    :goto_7
    add-int/2addr v0, v1

    .line 112
    mul-int/lit8 v0, v0, 0x1f

    .line 113
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->globalFont:Ljava/lang/String;

    .line 115
    if-nez v1, :cond_8

    .line 117
    move v1, v2

    .line 119
    goto :goto_8

    .line 120
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 121
    move-result v1

    .line 124
    :goto_8
    add-int/2addr v0, v1

    .line 125
    mul-int/lit8 v0, v0, 0x1f

    .line 126
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->digitalColorDifferent:Ljava/lang/String;

    .line 128
    if-nez v1, :cond_9

    .line 130
    move v1, v2

    .line 132
    goto :goto_9

    .line 133
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 134
    move-result v1

    .line 137
    :goto_9
    add-int/2addr v0, v1

    .line 138
    mul-int/lit8 v0, v0, 0x1f

    .line 139
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->frameStyle:Ljava/lang/String;

    .line 141
    if-nez v1, :cond_a

    .line 143
    move v1, v2

    .line 145
    goto :goto_a

    .line 146
    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 147
    move-result v1

    .line 150
    :goto_a
    add-int/2addr v0, v1

    .line 151
    mul-int/lit8 v0, v0, 0x1f

    .line 152
    iget-object v1, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->favoriteTemplatesCount:Ljava/lang/Number;

    .line 154
    invoke-virtual {v1}, Ljava/lang/Number;->hashCode()I

    .line 156
    move-result v1

    .line 159
    add-int/2addr v1, v0

    .line 160
    mul-int/lit8 v1, v1, 0x1f

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->favoriteTemplatesContent:Ljava/lang/String;

    .line 163
    if-nez v0, :cond_b

    .line 165
    goto :goto_b

    .line 167
    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 168
    move-result v2

    .line 171
    :goto_b
    add-int/2addr v1, v2

    .line 172
    mul-int/lit8 v1, v1, 0x1f

    .line 173
    iget-object v0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->tip:Ljava/lang/String;

    .line 175
    const/16 v2, 0x1f

    .line 177
    invoke-static {v0, v1, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 179
    move-result v0

    .line 182
    iget-object p0, p0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->dataVersion:Ljava/lang/Number;

    .line 183
    invoke-virtual {p0}, Ljava/lang/Number;->hashCode()I

    .line 185
    move-result p0

    .line 188
    add-int/2addr p0, v0

    .line 189
    return p0
    .line 190
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->usedTemplateStyle:Ljava/lang/String;

    .line 4
    iget-object v2, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->textureEffect:Ljava/lang/String;

    .line 6
    iget-object v3, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->ifOnlyTimeEffective:Ljava/lang/String;

    .line 8
    iget-object v4, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->ifDof:Ljava/lang/String;

    .line 10
    iget-object v5, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->finePrintContent:Ljava/lang/String;

    .line 12
    iget-object v6, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->timeStyle:Ljava/lang/String;

    .line 14
    iget-object v7, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->contentAreaFirstLine:Ljava/lang/String;

    .line 16
    iget-object v8, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->contentAreaSecondLine:Ljava/lang/String;

    .line 18
    iget-object v9, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->hasSignature:Ljava/lang/String;

    .line 20
    iget-object v10, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->globalFont:Ljava/lang/String;

    .line 22
    iget-object v11, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->digitalColorDifferent:Ljava/lang/String;

    .line 24
    iget-object v12, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->frameStyle:Ljava/lang/String;

    .line 26
    iget-object v13, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->favoriteTemplatesCount:Ljava/lang/Number;

    .line 28
    iget-object v14, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->favoriteTemplatesContent:Ljava/lang/String;

    .line 30
    iget-object v15, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->tip:Ljava/lang/String;

    .line 32
    iget-object v0, v0, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;->dataVersion:Ljava/lang/Number;

    .line 34
    move-object/from16 p0, v0

    .line 36
    const-string v0, "KeyguardTemplateStatusEvent(usedTemplateStyle="

    .line 38
    move-object/from16 v16, v15

    .line 40
    const-string v15, ", textureEffect="

    .line 42
    move-object/from16 v17, v14

    .line 44
    const-string v14, ", ifOnlyTimeEffective="

    .line 46
    invoke-static {v0, v1, v15, v2, v14}, Lcom/android/keyguard/event/FodQuickOpenActionEvent$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    move-result-object v0

    .line 51
    const-string v1, ", ifDof="

    .line 52
    const-string v2, ", finePrintContent="

    .line 54
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, ", timeStyle="

    .line 59
    const-string v2, ", contentAreaFirstLine="

    .line 61
    invoke-static {v0, v5, v1, v6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, ", contentAreaSecondLine="

    .line 66
    const-string v2, ", hasSignature="

    .line 68
    invoke-static {v0, v7, v1, v8, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, ", globalFont="

    .line 73
    const-string v2, ", digitalColorDifferent="

    .line 75
    invoke-static {v0, v9, v1, v10, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, ", frameStyle="

    .line 80
    const-string v2, ", favoriteTemplatesCount="

    .line 82
    invoke-static {v0, v11, v1, v12, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, ", favoriteTemplatesContent="

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    move-object/from16 v1, v17

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, ", tip="

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    move-object/from16 v1, v16

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, ", dataVersion="

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    move-object/from16 v1, p0

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, ")"

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v0

    .line 128
    return-object v0
    .line 129
.end method
