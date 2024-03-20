.class public final synthetic Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget v1, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    sget-object v2, Lcom/android/systemui/monet/dynamiccolor/TonePolarity;->DARKER:Lcom/android/systemui/monet/dynamiccolor/TonePolarity;

    .line 5
    sget-object v3, Lcom/android/systemui/monet/dynamiccolor/TonePolarity;->LIGHTER:Lcom/android/systemui/monet/dynamiccolor/TonePolarity;

    .line 7
    sget-object v4, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 9
    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    .line 11
    const/4 v9, 0x1

    .line 13
    const/4 v10, 0x0

    .line 14
    const-wide v11, 0x4056800000000000L    # 90.0

    .line 15
    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    .line 20
    const-wide/high16 v5, 0x4012000000000000L    # 4.5

    .line 22
    packed-switch v1, :pswitch_data_0

    .line 24
    goto/16 :goto_c

    .line 27
    :pswitch_0
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 29
    move-object/from16 v1, p1

    .line 31
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 38
    move-result-object v0

    .line 41
    return-object v0

    .line 42
    :pswitch_1
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 43
    move-object/from16 v1, p1

    .line 45
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 47
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->secondaryContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 49
    move-result-object v0

    .line 52
    return-object v0

    .line 53
    :pswitch_2
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 54
    move-object/from16 v1, p1

    .line 56
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->isFidelity(Lcom/android/systemui/monet/scheme/DynamicScheme;)Z

    .line 63
    move-result v2

    .line 66
    if-nez v2, :cond_1

    .line 67
    iget-boolean v0, v1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 69
    if-eqz v0, :cond_0

    .line 71
    goto :goto_0

    .line 73
    :cond_0
    move-wide v11, v13

    .line 74
    :goto_0
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 75
    move-result-object v0

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->secondaryContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 80
    move-result-object v0

    .line 83
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->tone:Ljava/util/function/Function;

    .line 84
    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    move-result-object v0

    .line 89
    check-cast v0, Ljava/lang/Double;

    .line 90
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 92
    move-result-wide v0

    .line 95
    invoke-static {v0, v1, v5, v6}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->contrastingTone(DD)D

    .line 96
    move-result-wide v0

    .line 99
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 100
    move-result-object v0

    .line 103
    :goto_1
    return-object v0

    .line 104
    :pswitch_3
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 105
    move-object/from16 v1, p1

    .line 107
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 109
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->secondary()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 111
    move-result-object v0

    .line 114
    return-object v0

    .line 115
    :pswitch_4
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 116
    move-object/from16 v1, p1

    .line 118
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 125
    move-result-object v0

    .line 128
    return-object v0

    .line 129
    :pswitch_5
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 130
    move-object/from16 v1, p1

    .line 132
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 139
    move-result-object v0

    .line 142
    return-object v0

    .line 143
    :pswitch_6
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 144
    move-object/from16 v1, p1

    .line 146
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 153
    move-result-object v0

    .line 156
    return-object v0

    .line 157
    :pswitch_7
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 158
    move-object/from16 v1, p1

    .line 160
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 162
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->primary()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 164
    move-result-object v0

    .line 167
    return-object v0

    .line 168
    :pswitch_8
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 169
    move-object/from16 v1, p1

    .line 171
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 173
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 178
    move-result-object v0

    .line 181
    return-object v0

    .line 182
    :pswitch_9
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 183
    move-object/from16 v1, p1

    .line 185
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 187
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 192
    move-result-object v0

    .line 195
    return-object v0

    .line 196
    :pswitch_a
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 197
    move-object/from16 v1, p1

    .line 199
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 201
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->tertiaryContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 203
    move-result-object v0

    .line 206
    return-object v0

    .line 207
    :pswitch_b
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 208
    move-object/from16 v1, p1

    .line 210
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 212
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    iget-object v2, v1, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 217
    if-ne v2, v4, :cond_2

    .line 219
    goto :goto_2

    .line 221
    :cond_2
    move v9, v10

    .line 222
    :goto_2
    iget-boolean v2, v1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 223
    if-eqz v9, :cond_4

    .line 225
    if-eqz v2, :cond_3

    .line 227
    const-wide/16 v5, 0x0

    .line 229
    goto :goto_3

    .line 231
    :cond_3
    move-wide v5, v7

    .line 232
    :goto_3
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 233
    move-result-object v0

    .line 236
    goto :goto_5

    .line 237
    :cond_4
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->isFidelity(Lcom/android/systemui/monet/scheme/DynamicScheme;)Z

    .line 238
    move-result v3

    .line 241
    if-nez v3, :cond_6

    .line 242
    if-eqz v2, :cond_5

    .line 244
    goto :goto_4

    .line 246
    :cond_5
    move-wide v11, v13

    .line 247
    :goto_4
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 248
    move-result-object v0

    .line 251
    goto :goto_5

    .line 252
    :cond_6
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->tertiaryContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 253
    move-result-object v0

    .line 256
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->tone:Ljava/util/function/Function;

    .line 257
    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    move-result-object v0

    .line 262
    check-cast v0, Ljava/lang/Double;

    .line 263
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 265
    move-result-wide v0

    .line 268
    invoke-static {v0, v1, v5, v6}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->contrastingTone(DD)D

    .line 269
    move-result-wide v0

    .line 272
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 273
    move-result-object v0

    .line 276
    :goto_5
    return-object v0

    .line 277
    :pswitch_c
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 278
    move-object/from16 v1, p1

    .line 280
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 282
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->tertiaryFixedDim()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 284
    move-result-object v0

    .line 287
    return-object v0

    .line 288
    :pswitch_d
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 289
    move-object/from16 v1, p1

    .line 291
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 293
    new-instance v4, Lcom/android/systemui/monet/dynamiccolor/ToneDeltaConstraint;

    .line 295
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->tertiaryContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 297
    move-result-object v0

    .line 300
    iget-boolean v1, v1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 301
    if-eqz v1, :cond_7

    .line 303
    goto :goto_6

    .line 305
    :cond_7
    move-object v2, v3

    .line 306
    :goto_6
    invoke-direct {v4, v0, v2}, Lcom/android/systemui/monet/dynamiccolor/ToneDeltaConstraint;-><init>(Lcom/android/systemui/monet/dynamiccolor/DynamicColor;Lcom/android/systemui/monet/dynamiccolor/TonePolarity;)V

    .line 307
    return-object v4

    .line 310
    :pswitch_e
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 311
    move-object/from16 v1, p1

    .line 313
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 315
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 320
    move-result-object v0

    .line 323
    return-object v0

    .line 324
    :pswitch_f
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 325
    move-object/from16 v1, p1

    .line 327
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 329
    new-instance v4, Lcom/android/systemui/monet/dynamiccolor/ToneDeltaConstraint;

    .line 331
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->errorContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 333
    move-result-object v0

    .line 336
    iget-boolean v1, v1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 337
    if-eqz v1, :cond_8

    .line 339
    goto :goto_7

    .line 341
    :cond_8
    move-object v2, v3

    .line 342
    :goto_7
    invoke-direct {v4, v0, v2}, Lcom/android/systemui/monet/dynamiccolor/ToneDeltaConstraint;-><init>(Lcom/android/systemui/monet/dynamiccolor/DynamicColor;Lcom/android/systemui/monet/dynamiccolor/TonePolarity;)V

    .line 343
    return-object v4

    .line 346
    :pswitch_10
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 347
    move-object/from16 v1, p1

    .line 349
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 351
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 356
    move-result-object v0

    .line 359
    return-object v0

    .line 360
    :pswitch_11
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 361
    move-object/from16 v1, p1

    .line 363
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 365
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 370
    move-result-object v0

    .line 373
    return-object v0

    .line 374
    :pswitch_12
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 375
    move-object/from16 v1, p1

    .line 377
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 379
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->error()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 381
    move-result-object v0

    .line 384
    return-object v0

    .line 385
    :pswitch_13
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 386
    move-object/from16 v1, p1

    .line 388
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 390
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->secondaryFixedDim()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 392
    move-result-object v0

    .line 395
    return-object v0

    .line 396
    :pswitch_14
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 397
    move-object/from16 v1, p1

    .line 399
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 401
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->secondaryFixedDim()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 403
    move-result-object v0

    .line 406
    return-object v0

    .line 407
    :pswitch_15
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 408
    move-object/from16 v1, p1

    .line 410
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 412
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 417
    move-result-object v0

    .line 420
    return-object v0

    .line 421
    :pswitch_16
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 422
    move-object/from16 v1, p1

    .line 424
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 426
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->tertiary()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 428
    move-result-object v0

    .line 431
    return-object v0

    .line 432
    :pswitch_17
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 433
    move-object/from16 v1, p1

    .line 435
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 437
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 439
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 442
    invoke-direct {v0, v10}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(I)V

    .line 444
    new-instance v1, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 447
    invoke-direct {v1, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(I)V

    .line 449
    const/4 v2, 0x0

    .line 452
    invoke-static {v0, v1, v2, v2}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 453
    move-result-object v0

    .line 456
    return-object v0

    .line 457
    :pswitch_18
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 458
    move-object/from16 v1, p1

    .line 460
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 462
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 464
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 467
    move-result-object v0

    .line 470
    return-object v0

    .line 471
    :pswitch_19
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 472
    move-object/from16 v1, p1

    .line 474
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 476
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->primaryContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 478
    move-result-object v0

    .line 481
    return-object v0

    .line 482
    :pswitch_1a
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 483
    move-object/from16 v1, p1

    .line 485
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 487
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->isFidelity(Lcom/android/systemui/monet/scheme/DynamicScheme;)Z

    .line 492
    move-result v2

    .line 495
    if-eqz v2, :cond_9

    .line 496
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->primaryContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 498
    move-result-object v0

    .line 501
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->tone:Ljava/util/function/Function;

    .line 502
    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    move-result-object v0

    .line 507
    check-cast v0, Ljava/lang/Double;

    .line 508
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 510
    move-result-wide v0

    .line 513
    invoke-static {v0, v1, v5, v6}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->contrastingTone(DD)D

    .line 514
    move-result-wide v0

    .line 517
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 518
    move-result-object v0

    .line 521
    goto :goto_b

    .line 522
    :cond_9
    iget-object v0, v1, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 523
    if-ne v0, v4, :cond_a

    .line 525
    goto :goto_8

    .line 527
    :cond_a
    move v9, v10

    .line 528
    :goto_8
    iget-boolean v0, v1, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 529
    if-eqz v9, :cond_c

    .line 531
    if-eqz v0, :cond_b

    .line 533
    const-wide/16 v5, 0x0

    .line 535
    goto :goto_9

    .line 537
    :cond_b
    move-wide v5, v7

    .line 538
    :goto_9
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 539
    move-result-object v0

    .line 542
    goto :goto_b

    .line 543
    :cond_c
    if-eqz v0, :cond_d

    .line 544
    goto :goto_a

    .line 546
    :cond_d
    move-wide v11, v13

    .line 547
    :goto_a
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 548
    move-result-object v0

    .line 551
    :goto_b
    return-object v0

    .line 552
    :pswitch_1b
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 553
    move-object/from16 v1, p1

    .line 555
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 557
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->primaryFixedDim()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 559
    move-result-object v0

    .line 562
    return-object v0

    .line 563
    :pswitch_1c
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 564
    move-object/from16 v1, p1

    .line 566
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 568
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 570
    invoke-static {v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->highestSurface(Lcom/android/systemui/monet/scheme/DynamicScheme;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 573
    move-result-object v0

    .line 576
    return-object v0

    .line 577
    :goto_c
    iget-object v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 578
    move-object/from16 v1, p1

    .line 580
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 582
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->tertiaryFixedDim()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 584
    move-result-object v0

    .line 587
    return-object v0

    .line 588
    nop

    .line 589
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 590
.end method
