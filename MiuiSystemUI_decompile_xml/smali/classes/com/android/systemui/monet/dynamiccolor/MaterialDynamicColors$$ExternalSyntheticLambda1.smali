.class public final synthetic Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    sget-object v1, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 6
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    .line 8
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 10
    const-wide/high16 v6, 0x4054000000000000L    # 80.0

    .line 12
    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    .line 14
    const/4 v10, 0x1

    .line 16
    const/4 v11, 0x0

    .line 17
    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    .line 18
    const-wide v14, 0x4056800000000000L    # 90.0

    .line 20
    packed-switch v0, :pswitch_data_0

    .line 25
    goto/16 :goto_13

    .line 28
    :pswitch_0
    move-object/from16 v0, p1

    .line 30
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 32
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 34
    if-eqz v0, :cond_0

    .line 36
    goto :goto_0

    .line 38
    :cond_0
    move-wide v12, v14

    .line 39
    :goto_0
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 40
    move-result-object v0

    .line 43
    return-object v0

    .line 44
    :pswitch_1
    move-object/from16 v0, p1

    .line 45
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 47
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 49
    return-object v0

    .line 51
    :pswitch_2
    move-object/from16 v0, p1

    .line 52
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 54
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 56
    if-eqz v0, :cond_1

    .line 58
    goto :goto_1

    .line 60
    :cond_1
    move-wide v2, v4

    .line 61
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 62
    move-result-object v0

    .line 65
    return-object v0

    .line 66
    :pswitch_3
    move-object/from16 v0, p1

    .line 67
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 69
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->errorPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 71
    return-object v0

    .line 73
    :pswitch_4
    move-object/from16 v0, p1

    .line 74
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 76
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 78
    if-ne v0, v1, :cond_2

    .line 80
    goto :goto_2

    .line 82
    :cond_2
    move v10, v11

    .line 83
    :goto_2
    if-eqz v10, :cond_3

    .line 84
    const-wide/high16 v8, 0x4039000000000000L    # 25.0

    .line 86
    :cond_3
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 88
    move-result-object v0

    .line 91
    return-object v0

    .line 92
    :pswitch_5
    move-object/from16 v0, p1

    .line 93
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 95
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->secondaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 97
    return-object v0

    .line 99
    :pswitch_6
    move-object/from16 v0, p1

    .line 100
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 102
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 104
    move-result-object v0

    .line 107
    return-object v0

    .line 108
    :pswitch_7
    move-object/from16 v0, p1

    .line 109
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 111
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->secondaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 113
    return-object v0

    .line 115
    :pswitch_8
    move-object/from16 v0, p1

    .line 116
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 118
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 120
    if-eqz v0, :cond_4

    .line 122
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    .line 124
    goto :goto_3

    .line 126
    :cond_4
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    .line 127
    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 129
    move-result-object v0

    .line 132
    return-object v0

    .line 133
    :pswitch_9
    move-object/from16 v0, p1

    .line 134
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 136
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralVariantPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 138
    return-object v0

    .line 140
    :pswitch_a
    move-object/from16 v0, p1

    .line 141
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 143
    iget-object v6, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 145
    if-ne v6, v1, :cond_5

    .line 147
    goto :goto_4

    .line 149
    :cond_5
    move v10, v11

    .line 150
    :goto_4
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 151
    if-eqz v10, :cond_7

    .line 153
    if-eqz v0, :cond_6

    .line 155
    goto :goto_5

    .line 157
    :cond_6
    move-wide v12, v14

    .line 158
    :goto_5
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 159
    move-result-object v0

    .line 162
    goto :goto_7

    .line 163
    :cond_7
    if-eqz v0, :cond_8

    .line 164
    goto :goto_6

    .line 166
    :cond_8
    move-wide v2, v4

    .line 167
    :goto_6
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 168
    move-result-object v0

    .line 171
    :goto_7
    return-object v0

    .line 172
    :pswitch_b
    move-object/from16 v0, p1

    .line 173
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 175
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->tertiaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 177
    return-object v0

    .line 179
    :pswitch_c
    move-object/from16 v0, p1

    .line 180
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 182
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 184
    if-eqz v0, :cond_9

    .line 186
    move-wide v12, v14

    .line 188
    :cond_9
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 189
    move-result-object v0

    .line 192
    return-object v0

    .line 193
    :pswitch_d
    move-object/from16 v0, p1

    .line 194
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 196
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 198
    return-object v0

    .line 200
    :pswitch_e
    move-object/from16 v0, p1

    .line 201
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 203
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->tertiaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 205
    iget-object v0, v0, Lcom/android/systemui/monet/palettes/TonalPalette;->keyColor:Lcom/android/systemui/monet/hct/Hct;

    .line 207
    iget-wide v0, v0, Lcom/android/systemui/monet/hct/Hct;->tone:D

    .line 209
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 211
    move-result-object v0

    .line 214
    return-object v0

    .line 215
    :pswitch_f
    move-object/from16 v0, p1

    .line 216
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 218
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->tertiaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 220
    return-object v0

    .line 222
    :pswitch_10
    move-object/from16 v0, p1

    .line 223
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 225
    iget-object v2, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 227
    if-ne v2, v1, :cond_a

    .line 229
    move v11, v10

    .line 231
    :cond_a
    iget-boolean v1, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 232
    if-eqz v11, :cond_c

    .line 234
    if-eqz v1, :cond_b

    .line 236
    goto :goto_8

    .line 238
    :cond_b
    const-wide v8, 0x4055400000000000L    # 85.0

    .line 239
    :goto_8
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 244
    move-result-object v0

    .line 247
    goto/16 :goto_e

    .line 248
    :cond_c
    if-eqz v1, :cond_d

    .line 250
    goto :goto_9

    .line 252
    :cond_d
    move-wide v8, v14

    .line 253
    :goto_9
    invoke-static {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->isFidelity(Lcom/android/systemui/monet/scheme/DynamicScheme;)Z

    .line 254
    move-result v2

    .line 257
    if-nez v2, :cond_e

    .line 258
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 260
    move-result-object v0

    .line 263
    goto/16 :goto_e

    .line 264
    :cond_e
    iget-object v7, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->secondaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 266
    iget-wide v13, v7, Lcom/android/systemui/monet/palettes/TonalPalette;->hue:D

    .line 268
    iget-wide v11, v7, Lcom/android/systemui/monet/palettes/TonalPalette;->chroma:D

    .line 270
    xor-int/2addr v10, v1

    .line 272
    move-wide v1, v13

    .line 273
    move-wide v3, v11

    .line 274
    move-wide v5, v8

    .line 275
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/monet/hct/Hct;->from(DDD)Lcom/android/systemui/monet/hct/Hct;

    .line 276
    move-result-object v1

    .line 279
    iget-wide v2, v1, Lcom/android/systemui/monet/hct/Hct;->chroma:D

    .line 280
    cmpg-double v4, v2, v11

    .line 282
    if-gez v4, :cond_13

    .line 284
    :goto_a
    iget-wide v4, v1, Lcom/android/systemui/monet/hct/Hct;->chroma:D

    .line 286
    cmpg-double v4, v4, v11

    .line 288
    if-gez v4, :cond_13

    .line 290
    if-eqz v10, :cond_f

    .line 292
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 294
    goto :goto_b

    .line 296
    :cond_f
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 297
    :goto_b
    add-double/2addr v8, v4

    .line 299
    move-wide v4, v11

    .line 300
    move-wide v11, v13

    .line 301
    move-wide/from16 v17, v13

    .line 302
    move-wide v13, v4

    .line 304
    move-wide v15, v8

    .line 305
    invoke-static/range {v11 .. v16}, Lcom/android/systemui/monet/hct/Hct;->from(DDD)Lcom/android/systemui/monet/hct/Hct;

    .line 306
    move-result-object v6

    .line 309
    iget-wide v11, v6, Lcom/android/systemui/monet/hct/Hct;->chroma:D

    .line 310
    cmpl-double v13, v2, v11

    .line 312
    if-lez v13, :cond_10

    .line 314
    goto :goto_c

    .line 316
    :cond_10
    sub-double/2addr v11, v4

    .line 317
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    .line 318
    move-result-wide v11

    .line 321
    const-wide v13, 0x3fd999999999999aL    # 0.4

    .line 322
    cmpg-double v11, v11, v13

    .line 327
    if-gez v11, :cond_11

    .line 329
    :goto_c
    goto :goto_d

    .line 331
    :cond_11
    iget-wide v11, v6, Lcom/android/systemui/monet/hct/Hct;->chroma:D

    .line 332
    sub-double/2addr v11, v4

    .line 334
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    .line 335
    move-result-wide v11

    .line 338
    iget-wide v13, v1, Lcom/android/systemui/monet/hct/Hct;->chroma:D

    .line 339
    sub-double/2addr v13, v4

    .line 341
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    .line 342
    move-result-wide v13

    .line 345
    cmpg-double v11, v11, v13

    .line 346
    if-gez v11, :cond_12

    .line 348
    move-object v1, v6

    .line 350
    :cond_12
    iget-wide v11, v6, Lcom/android/systemui/monet/hct/Hct;->chroma:D

    .line 351
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(DD)D

    .line 353
    move-result-wide v2

    .line 356
    move-wide v11, v4

    .line 357
    move-wide/from16 v13, v17

    .line 358
    goto :goto_a

    .line 360
    :cond_13
    :goto_d
    move-wide v15, v8

    .line 361
    iget-wide v11, v7, Lcom/android/systemui/monet/palettes/TonalPalette;->hue:D

    .line 362
    iget-wide v13, v7, Lcom/android/systemui/monet/palettes/TonalPalette;->chroma:D

    .line 364
    invoke-static/range {v11 .. v16}, Lcom/android/systemui/monet/hct/Hct;->from(DDD)Lcom/android/systemui/monet/hct/Hct;

    .line 366
    move-result-object v1

    .line 369
    invoke-static {v1, v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->performAlbers(Lcom/android/systemui/monet/hct/Hct;Lcom/android/systemui/monet/scheme/DynamicScheme;)D

    .line 370
    move-result-wide v0

    .line 373
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 374
    move-result-object v0

    .line 377
    :goto_e
    return-object v0

    .line 378
    :pswitch_11
    move-object/from16 v0, p1

    .line 379
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 381
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->secondaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 383
    return-object v0

    .line 385
    :pswitch_12
    move-object/from16 v0, p1

    .line 386
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 388
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->primaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 390
    return-object v0

    .line 392
    :pswitch_13
    move-object/from16 v0, p1

    .line 393
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 395
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 397
    if-ne v0, v1, :cond_14

    .line 399
    goto :goto_f

    .line 401
    :cond_14
    move v10, v11

    .line 402
    :goto_f
    if-eqz v10, :cond_15

    .line 403
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 405
    move-result-object v0

    .line 408
    goto :goto_10

    .line 409
    :cond_15
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 410
    move-result-object v0

    .line 413
    :goto_10
    return-object v0

    .line 414
    :pswitch_14
    move-object/from16 v0, p1

    .line 415
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 417
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->primaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 419
    return-object v0

    .line 421
    :pswitch_15
    move-object/from16 v0, p1

    .line 422
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 424
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 426
    if-ne v0, v1, :cond_16

    .line 428
    goto :goto_11

    .line 430
    :cond_16
    move v10, v11

    .line 431
    :goto_11
    if-eqz v10, :cond_17

    .line 432
    const-wide v6, 0x4051800000000000L    # 70.0

    .line 434
    :cond_17
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 439
    move-result-object v0

    .line 442
    return-object v0

    .line 443
    :pswitch_16
    move-object/from16 v0, p1

    .line 444
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 446
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->secondaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 448
    return-object v0

    .line 450
    :pswitch_17
    move-object/from16 v0, p1

    .line 451
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 453
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->secondaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 455
    iget-object v0, v0, Lcom/android/systemui/monet/palettes/TonalPalette;->keyColor:Lcom/android/systemui/monet/hct/Hct;

    .line 457
    iget-wide v0, v0, Lcom/android/systemui/monet/hct/Hct;->tone:D

    .line 459
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 461
    move-result-object v0

    .line 464
    return-object v0

    .line 465
    :pswitch_18
    move-object/from16 v0, p1

    .line 466
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 468
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->secondaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 470
    return-object v0

    .line 472
    :pswitch_19
    move-object/from16 v0, p1

    .line 473
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 475
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 477
    if-eqz v0, :cond_18

    .line 479
    move-wide v6, v8

    .line 481
    :cond_18
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 482
    move-result-object v0

    .line 485
    return-object v0

    .line 486
    :pswitch_1a
    move-object/from16 v0, p1

    .line 487
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 489
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralVariantPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 491
    return-object v0

    .line 493
    :pswitch_1b
    move-object/from16 v0, p1

    .line 494
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 496
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 498
    if-eqz v0, :cond_19

    .line 500
    goto :goto_12

    .line 502
    :cond_19
    move-wide v12, v14

    .line 503
    :goto_12
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 504
    move-result-object v0

    .line 507
    return-object v0

    .line 508
    :pswitch_1c
    move-object/from16 v0, p1

    .line 509
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 511
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 513
    return-object v0

    .line 515
    :goto_13
    move-object/from16 v0, p1

    .line 516
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 518
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralVariantPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 520
    return-object v0

    .line 522
    nop

    .line 523
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
    .line 524
.end method
