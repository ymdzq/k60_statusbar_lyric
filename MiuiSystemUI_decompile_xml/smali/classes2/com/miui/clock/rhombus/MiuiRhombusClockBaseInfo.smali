.class public abstract Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;
.super Lcom/miui/clock/module/ClockStyleInfo;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public displayType:I

.field public enableDiffusion:Z

.field public isDiffHourMinuteColor:Z

.field public mAodColonColor:I

.field public mAodHourColor:I

.field public mAodMinuteColor:I

.field public mClockStyle:I

.field public mDarkMinuteColor:I

.field public mLightMinuteColor:I

.field public final mList:Ljava/util/List;

.field public originInfoAreaColor:I


# direct methods
.method public constructor <init>(Lcom/miui/clock/module/ClockBean;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/miui/clock/module/ClockStyleInfo;-><init>()V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mClockStyle:I

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mList:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getPrimaryColor()I

    .line 20
    move-result v0

    .line 23
    invoke-virtual {p0, v0}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 24
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getSecondaryColor()I

    .line 27
    move-result v0

    .line 30
    invoke-virtual {p0, v0}, Lcom/miui/clock/module/ClockStyleInfo;->setSecondaryColor(I)V

    .line 31
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getInfoAreaColor()I

    .line 34
    move-result v0

    .line 37
    invoke-virtual {p0, v0}, Lcom/miui/clock/module/ClockStyleInfo;->setInfoAreaColor(I)V

    .line 38
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getStyle()I

    .line 41
    move-result v0

    .line 44
    iput v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mClockStyle:I

    .line 45
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->isDiffHourMinuteColor()Z

    .line 47
    move-result v0

    .line 50
    iput-boolean v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->isDiffHourMinuteColor:Z

    .line 51
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->isAutoSecondaryColor()Z

    .line 53
    move-result v0

    .line 56
    iput-boolean v0, p0, Lcom/miui/clock/module/ClockStyleInfo;->isAutoSecondaryColor:Z

    .line 57
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->isAutoPrimaryColor()Z

    .line 59
    move-result v0

    .line 62
    iput-boolean v0, p0, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor:Z

    .line 63
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->isEnableDiffusion()Z

    .line 65
    move-result v0

    .line 68
    iput-boolean v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->enableDiffusion:Z

    .line 69
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->isDisableContainerPassBlur()Z

    .line 71
    move-result p1

    .line 74
    iput-boolean p1, p0, Lcom/miui/clock/module/ClockStyleInfo;->disableContainerPassBlur:Z

    .line 75
    return-void
    .line 77
.end method

.method public static calculateMinuteColor(IZ)I
    .locals 11

    .line 1
    new-instance v0, Lcom/miui/clock/hct/Hct;

    .line 2
    invoke-direct {v0, p0}, Lcom/miui/clock/hct/Hct;-><init>(I)V

    .line 4
    iget-wide v1, v0, Lcom/miui/clock/hct/Hct;->tone:D

    .line 7
    iget-wide v3, v0, Lcom/miui/clock/hct/Hct;->hue:D

    .line 9
    iget-wide v5, v0, Lcom/miui/clock/hct/Hct;->chroma:D

    .line 11
    const-wide/high16 v7, 0x4020000000000000L    # 8.0

    .line 13
    sub-double v7, v1, v7

    .line 15
    const-wide/16 v9, 0x0

    .line 17
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(DD)D

    .line 19
    move-result-wide v7

    .line 22
    invoke-static/range {v3 .. v8}, Lcom/miui/clock/hct/HctSolver;->solveToInt(DDD)I

    .line 23
    move-result p0

    .line 26
    iget-wide v3, v0, Lcom/miui/clock/hct/Hct;->hue:D

    .line 27
    iget-wide v5, v0, Lcom/miui/clock/hct/Hct;->chroma:D

    .line 29
    const-wide v7, 0x3feb333340000000L    # 0.8500000238418579

    .line 31
    mul-double/2addr v7, v1

    .line 36
    const-wide/high16 v9, 0x402f000000000000L    # 15.5

    .line 37
    add-double/2addr v7, v9

    .line 39
    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    .line 40
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(DD)D

    .line 42
    move-result-wide v7

    .line 45
    invoke-static/range {v3 .. v8}, Lcom/miui/clock/hct/HctSolver;->solveToInt(DDD)I

    .line 46
    move-result v0

    .line 49
    const-wide/high16 v3, 0x4044000000000000L    # 40.0

    .line 50
    cmpg-double v1, v1, v3

    .line 52
    if-gez v1, :cond_1

    .line 54
    if-eqz p1, :cond_0

    .line 56
    goto :goto_0

    .line 58
    :cond_0
    move p0, v0

    .line 59
    :goto_0
    return p0

    .line 60
    :cond_1
    if-eqz p1, :cond_2

    .line 61
    move p0, v0

    .line 63
    :cond_2
    return p0
    .line 64
.end method


# virtual methods
.method public final calculateFinalAODColor(Landroid/content/Context;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->isDiffHourMinuteColor()Z

    .line 4
    move-result v1

    .line 7
    if-nez v1, :cond_4

    .line 8
    iget v1, v0, Lcom/miui/clock/module/ClockStyleInfo;->aodPrimaryColor:I

    .line 10
    iget v2, v0, Lcom/miui/clock/module/ClockStyleInfo;->aodSecondaryColor:I

    .line 12
    new-instance v3, Lcom/miui/clock/hct/Hct;

    .line 14
    invoke-direct {v3, v1}, Lcom/miui/clock/hct/Hct;-><init>(I)V

    .line 16
    new-instance v4, Lcom/miui/clock/hct/Hct;

    .line 19
    invoke-direct {v4, v2}, Lcom/miui/clock/hct/Hct;-><init>(I)V

    .line 21
    iget-wide v5, v3, Lcom/miui/clock/hct/Hct;->tone:D

    .line 24
    iget-wide v7, v4, Lcom/miui/clock/hct/Hct;->tone:D

    .line 26
    cmpg-double v5, v5, v7

    .line 28
    if-gez v5, :cond_0

    .line 30
    const-wide/high16 v10, 0x4049000000000000L    # 50.0

    .line 32
    iget-wide v6, v3, Lcom/miui/clock/hct/Hct;->hue:D

    .line 34
    iget-wide v8, v3, Lcom/miui/clock/hct/Hct;->chroma:D

    .line 36
    invoke-static/range {v6 .. v11}, Lcom/miui/clock/hct/HctSolver;->solveToInt(DDD)I

    .line 38
    move-result v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    .line 43
    iget-wide v2, v4, Lcom/miui/clock/hct/Hct;->hue:D

    .line 45
    iget-wide v5, v4, Lcom/miui/clock/hct/Hct;->chroma:D

    .line 47
    move-wide v3, v2

    .line 49
    invoke-static/range {v3 .. v8}, Lcom/miui/clock/hct/HctSolver;->solveToInt(DDD)I

    .line 50
    move-result v2

    .line 53
    :goto_0
    iget-object v3, v0, Lcom/miui/clock/module/ClockStyleInfo;->mPalette:Ljava/util/Map;

    .line 54
    invoke-static/range {p1 .. p1}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 56
    move-result v4

    .line 59
    if-eqz v4, :cond_3

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 62
    move-result v4

    .line 65
    if-eqz v4, :cond_3

    .line 66
    if-eqz v3, :cond_3

    .line 68
    iget-boolean v4, v0, Lcom/miui/clock/module/ClockStyleInfo;->mInfoTextDark:Z

    .line 70
    if-eqz v4, :cond_2

    .line 72
    const-string v4, "secondary70"

    .line 74
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    move-result-object v5

    .line 79
    if-eqz v5, :cond_1

    .line 80
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-result-object v1

    .line 85
    check-cast v1, Ljava/lang/Integer;

    .line 86
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 88
    move-result v1

    .line 91
    :cond_1
    iput v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodHourColor:I

    .line 92
    iput v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodMinuteColor:I

    .line 94
    goto :goto_1

    .line 96
    :cond_2
    const-string v1, "#BEBEBE"

    .line 97
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 99
    move-result v3

    .line 102
    iput v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodHourColor:I

    .line 103
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 105
    move-result v1

    .line 108
    iput v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodMinuteColor:I

    .line 109
    :goto_1
    iput v2, v0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodColonColor:I

    .line 111
    goto :goto_2

    .line 113
    :cond_3
    iput v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodHourColor:I

    .line 114
    iput v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodMinuteColor:I

    .line 116
    iput v2, v0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodColonColor:I

    .line 118
    :goto_2
    return-void

    .line 120
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 121
    move-result v1

    .line 124
    const/4 v2, -0x1

    .line 125
    const/4 v3, 0x0

    .line 126
    if-ne v1, v2, :cond_5

    .line 127
    iget v2, v0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mLightMinuteColor:I

    .line 129
    if-eqz v2, :cond_5

    .line 131
    goto :goto_3

    .line 133
    :cond_5
    const/high16 v2, -0x1000000

    .line 134
    if-ne v1, v2, :cond_6

    .line 136
    iget v2, v0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mDarkMinuteColor:I

    .line 138
    if-eqz v2, :cond_6

    .line 140
    goto :goto_3

    .line 142
    :cond_6
    invoke-static {v1, v3}, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->calculateMinuteColor(IZ)I

    .line 143
    move-result v2

    .line 146
    const/4 v4, 0x1

    .line 147
    invoke-static {v1, v4}, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->calculateMinuteColor(IZ)I

    .line 148
    move-result v1

    .line 151
    :goto_3
    invoke-static {v1}, Lcom/miui/clock/utils/GlobalColorUtils;->transformAodColor(I)I

    .line 152
    move-result v4

    .line 155
    invoke-static {v2}, Lcom/miui/clock/utils/GlobalColorUtils;->transformAodColor(I)I

    .line 156
    move-result v5

    .line 159
    iget v6, v0, Lcom/miui/clock/module/ClockStyleInfo;->aodSecondaryColor:I

    .line 160
    new-instance v7, Lcom/miui/clock/hct/Hct;

    .line 162
    invoke-direct {v7, v4}, Lcom/miui/clock/hct/Hct;-><init>(I)V

    .line 164
    new-instance v4, Lcom/miui/clock/hct/Hct;

    .line 167
    invoke-direct {v4, v5}, Lcom/miui/clock/hct/Hct;-><init>(I)V

    .line 169
    new-instance v5, Lcom/miui/clock/hct/Hct;

    .line 172
    invoke-direct {v5, v6}, Lcom/miui/clock/hct/Hct;-><init>(I)V

    .line 174
    iget-object v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mList:Ljava/util/List;

    .line 177
    move-object v9, v8

    .line 179
    check-cast v9, Ljava/util/ArrayList;

    .line 180
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 182
    new-instance v10, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo$HctWrapper;

    .line 185
    const-string v11, "hour"

    .line 187
    invoke-direct {v10, v11, v7}, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo$HctWrapper;-><init>(Ljava/lang/String;Lcom/miui/clock/hct/Hct;)V

    .line 189
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v7, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo$HctWrapper;

    .line 195
    const-string v10, "minute"

    .line 197
    invoke-direct {v7, v10, v4}, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo$HctWrapper;-><init>(Ljava/lang/String;Lcom/miui/clock/hct/Hct;)V

    .line 199
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v4, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo$HctWrapper;

    .line 205
    const-string v7, "colon"

    .line 207
    invoke-direct {v4, v7, v5}, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo$HctWrapper;-><init>(Ljava/lang/String;Lcom/miui/clock/hct/Hct;)V

    .line 209
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v4, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo$$ExternalSyntheticLambda0;

    .line 215
    invoke-direct {v4}, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo$$ExternalSyntheticLambda0;-><init>()V

    .line 217
    invoke-static {v4}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    .line 220
    move-result-object v4

    .line 223
    invoke-static {v8, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 224
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 227
    move-result-object v4

    .line 230
    check-cast v4, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo$HctWrapper;

    .line 231
    iget-object v4, v4, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo$HctWrapper;->hct:Lcom/miui/clock/hct/Hct;

    .line 233
    const-wide/high16 v16, 0x4049000000000000L    # 50.0

    .line 235
    iget-wide v12, v4, Lcom/miui/clock/hct/Hct;->hue:D

    .line 237
    iget-wide v14, v4, Lcom/miui/clock/hct/Hct;->chroma:D

    .line 239
    invoke-static/range {v12 .. v17}, Lcom/miui/clock/hct/HctSolver;->solveToInt(DDD)I

    .line 241
    move-result v5

    .line 244
    invoke-virtual {v4, v5}, Lcom/miui/clock/hct/Hct;->setInternalState(I)V

    .line 245
    iget-object v4, v0, Lcom/miui/clock/module/ClockStyleInfo;->mPalette:Ljava/util/Map;

    .line 248
    invoke-static/range {p1 .. p1}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 250
    move-result v5

    .line 253
    if-eqz v5, :cond_c

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 256
    move-result v5

    .line 259
    if-eqz v5, :cond_c

    .line 260
    if-eqz v4, :cond_c

    .line 262
    :goto_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 264
    move-result v5

    .line 267
    if-ge v3, v5, :cond_8

    .line 268
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 270
    move-result-object v5

    .line 273
    check-cast v5, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo$HctWrapper;

    .line 274
    iget-object v8, v5, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo$HctWrapper;->name:Ljava/lang/String;

    .line 276
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    move-result v8

    .line 281
    if-eqz v8, :cond_7

    .line 282
    iget-object v5, v5, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo$HctWrapper;->hct:Lcom/miui/clock/hct/Hct;

    .line 284
    iget v5, v5, Lcom/miui/clock/hct/Hct;->argb:I

    .line 286
    iput v5, v0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodColonColor:I

    .line 288
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 290
    goto :goto_4

    .line 292
    :cond_8
    iget-boolean v3, v0, Lcom/miui/clock/module/ClockStyleInfo;->mInfoTextDark:Z

    .line 293
    if-eqz v3, :cond_b

    .line 295
    const-string v3, "secondary80"

    .line 297
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    move-result-object v5

    .line 302
    if-eqz v5, :cond_9

    .line 303
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    move-result-object v1

    .line 308
    check-cast v1, Ljava/lang/Integer;

    .line 309
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 311
    move-result v1

    .line 314
    :cond_9
    iput v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodHourColor:I

    .line 315
    const-string v1, "secondary60"

    .line 317
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    move-result-object v3

    .line 322
    if-eqz v3, :cond_a

    .line 323
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    move-result-object v1

    .line 328
    check-cast v1, Ljava/lang/Integer;

    .line 329
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 331
    move-result v2

    .line 334
    :cond_a
    iput v2, v0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodMinuteColor:I

    .line 335
    goto :goto_5

    .line 337
    :cond_b
    const-string v1, "#D9D9D9"

    .line 338
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 340
    move-result v1

    .line 343
    iput v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodHourColor:I

    .line 344
    const-string v1, "#A6A6A6"

    .line 346
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 348
    move-result v1

    .line 351
    iput v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodMinuteColor:I

    .line 352
    :goto_5
    iput v6, v0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodColonColor:I

    .line 354
    goto :goto_8

    .line 356
    :cond_c
    :goto_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 357
    move-result v1

    .line 360
    if-ge v3, v1, :cond_10

    .line 361
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 363
    move-result-object v1

    .line 366
    check-cast v1, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo$HctWrapper;

    .line 367
    iget-object v2, v1, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo$HctWrapper;->name:Ljava/lang/String;

    .line 369
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 371
    move-result v2

    .line 374
    iget-object v4, v1, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo$HctWrapper;->hct:Lcom/miui/clock/hct/Hct;

    .line 375
    if-eqz v2, :cond_d

    .line 377
    iget v1, v4, Lcom/miui/clock/hct/Hct;->argb:I

    .line 379
    iput v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodHourColor:I

    .line 381
    goto :goto_7

    .line 383
    :cond_d
    iget-object v1, v1, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo$HctWrapper;->name:Ljava/lang/String;

    .line 384
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 386
    move-result v2

    .line 389
    if-eqz v2, :cond_e

    .line 390
    iget v1, v4, Lcom/miui/clock/hct/Hct;->argb:I

    .line 392
    iput v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodMinuteColor:I

    .line 394
    goto :goto_7

    .line 396
    :cond_e
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 397
    move-result v1

    .line 400
    if-eqz v1, :cond_f

    .line 401
    iget v1, v4, Lcom/miui/clock/hct/Hct;->argb:I

    .line 403
    iput v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodColonColor:I

    .line 405
    :cond_f
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 407
    goto :goto_6

    .line 409
    :cond_10
    :goto_8
    return-void
    .line 410
.end method

.method public final getHourAndMinuteColor(Landroid/content/Context;)[I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->isDiffHourMinuteColor()Z

    .line 6
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    filled-new-array {v0, v0}, [I

    .line 12
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 17
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 23
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    const p0, -0x666667

    .line 29
    filled-new-array {v0, p0}, [I

    .line 32
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_1
    const/4 p1, -0x1

    .line 37
    if-ne v0, p1, :cond_2

    .line 38
    iget p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mLightMinuteColor:I

    .line 40
    if-eqz p1, :cond_2

    .line 42
    goto :goto_0

    .line 44
    :cond_2
    const/high16 p1, -0x1000000

    .line 45
    if-ne v0, p1, :cond_3

    .line 47
    iget p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mDarkMinuteColor:I

    .line 49
    if-eqz p1, :cond_3

    .line 51
    goto :goto_0

    .line 53
    :cond_3
    const/4 p0, 0x0

    .line 54
    invoke-static {v0, p0}, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->calculateMinuteColor(IZ)I

    .line 55
    move-result p1

    .line 58
    const/4 p0, 0x1

    .line 59
    invoke-static {v0, p0}, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->calculateMinuteColor(IZ)I

    .line 60
    move-result v0

    .line 63
    :goto_0
    filled-new-array {v0, p1}, [I

    .line 64
    move-result-object p0

    .line 67
    return-object p0
    .line 68
.end method

.method public final getSecondaryColor()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/clock/module/ClockStyleInfo;->isSuperSaveOpen:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/high16 p0, -0x10000

    .line 6
    return p0

    .line 8
    :cond_0
    iget p0, p0, Lcom/miui/clock/module/ClockStyleInfo;->secondaryColor:I

    .line 9
    return p0
    .line 11
.end method

.method public final isDiffHourMinuteColor()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/clock/module/ClockStyleInfo;->isSuperSaveOpen:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-boolean p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->isDiffHourMinuteColor:Z

    .line 8
    return p0
    .line 10
.end method
