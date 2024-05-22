.class public final synthetic Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;->$r8$classId:I

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
    iget v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 4
    sget-object v1, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 6
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    .line 8
    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    .line 10
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    .line 12
    const/4 v8, 0x0

    .line 14
    const-wide/high16 v9, 0x4044000000000000L    # 40.0

    .line 15
    const/4 v11, 0x1

    .line 17
    const/4 v12, 0x0

    .line 18
    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    .line 19
    const-wide v15, 0x4056800000000000L    # 90.0

    .line 21
    const-wide/16 v17, 0x0

    .line 26
    packed-switch v0, :pswitch_data_0

    .line 28
    goto/16 :goto_16

    .line 31
    :pswitch_0
    move-object/from16 v0, p1

    .line 33
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 35
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 37
    if-eqz v0, :cond_0

    .line 39
    goto :goto_0

    .line 41
    :cond_0
    move-wide/from16 v13, v17

    .line 42
    :goto_0
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 44
    move-result-object v0

    .line 47
    return-object v0

    .line 48
    :pswitch_1
    move-object/from16 v0, p1

    .line 49
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 51
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 53
    if-eqz v0, :cond_1

    .line 55
    goto :goto_1

    .line 57
    :cond_1
    move-wide v2, v15

    .line 58
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 59
    move-result-object v0

    .line 62
    return-object v0

    .line 63
    :pswitch_2
    move-object/from16 v0, p1

    .line 64
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 66
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralVariantPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 68
    return-object v0

    .line 70
    :pswitch_3
    move-object/from16 v0, p1

    .line 71
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 73
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 75
    if-eqz v0, :cond_2

    .line 77
    move-wide v6, v15

    .line 79
    :cond_2
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 80
    move-result-object v0

    .line 83
    return-object v0

    .line 84
    :pswitch_4
    move-object/from16 v0, p1

    .line 85
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 87
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->errorPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 89
    return-object v0

    .line 91
    :pswitch_5
    move-object/from16 v0, p1

    .line 92
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 94
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 96
    if-eqz v0, :cond_3

    .line 98
    goto :goto_2

    .line 100
    :cond_3
    move-wide v4, v9

    .line 101
    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 102
    move-result-object v0

    .line 105
    return-object v0

    .line 106
    :pswitch_6
    move-object/from16 v0, p1

    .line 107
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 109
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->secondaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 111
    return-object v0

    .line 113
    :pswitch_7
    move-object/from16 v0, p1

    .line 114
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 116
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 118
    if-ne v0, v1, :cond_4

    .line 120
    goto :goto_3

    .line 122
    :cond_4
    move v11, v12

    .line 123
    :goto_3
    if-eqz v11, :cond_5

    .line 124
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 126
    move-result-object v0

    .line 129
    goto :goto_4

    .line 130
    :cond_5
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 131
    move-result-object v0

    .line 134
    :goto_4
    return-object v0

    .line 135
    :pswitch_8
    move-object/from16 v0, p1

    .line 136
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 138
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->primaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 140
    return-object v0

    .line 142
    :pswitch_9
    move-object/from16 v0, p1

    .line 143
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 145
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 147
    if-eqz v0, :cond_6

    .line 149
    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    .line 151
    goto :goto_5

    .line 153
    :cond_6
    const-wide v0, 0x4058800000000000L    # 98.0

    .line 154
    :goto_5
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 159
    move-result-object v0

    .line 162
    return-object v0

    .line 163
    :pswitch_a
    move-object/from16 v0, p1

    .line 164
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 166
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 168
    return-object v0

    .line 170
    :pswitch_b
    move-object/from16 v0, p1

    .line 171
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 173
    iget-object v4, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 175
    if-ne v4, v1, :cond_7

    .line 177
    move v1, v11

    .line 179
    goto :goto_6

    .line 180
    :cond_7
    move v1, v12

    .line 181
    :goto_6
    iget-boolean v4, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 182
    if-eqz v1, :cond_9

    .line 184
    if-eqz v4, :cond_8

    .line 186
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    .line 188
    goto :goto_7

    .line 190
    :cond_8
    const-wide v0, 0x4048800000000000L    # 49.0

    .line 191
    :goto_7
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 196
    move-result-object v0

    .line 199
    goto/16 :goto_d

    .line 200
    :cond_9
    invoke-static {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->isFidelity(Lcom/android/systemui/monet/scheme/DynamicScheme;)Z

    .line 202
    move-result v1

    .line 205
    if-nez v1, :cond_b

    .line 206
    if-eqz v4, :cond_a

    .line 208
    goto :goto_8

    .line 210
    :cond_a
    move-wide v2, v15

    .line 211
    :goto_8
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 212
    move-result-object v0

    .line 215
    goto/16 :goto_d

    .line 216
    :cond_b
    iget-object v1, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->sourceColorHct:Lcom/android/systemui/monet/hct/Hct;

    .line 218
    iget-wide v6, v1, Lcom/android/systemui/monet/hct/Hct;->tone:D

    .line 220
    iget-object v1, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->tertiaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 222
    iget-wide v2, v1, Lcom/android/systemui/monet/palettes/TonalPalette;->hue:D

    .line 224
    iget-wide v4, v1, Lcom/android/systemui/monet/palettes/TonalPalette;->chroma:D

    .line 226
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/monet/hct/Hct;->from(DDD)Lcom/android/systemui/monet/hct/Hct;

    .line 228
    move-result-object v2

    .line 231
    invoke-static {v2, v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->performAlbers(Lcom/android/systemui/monet/hct/Hct;Lcom/android/systemui/monet/scheme/DynamicScheme;)D

    .line 232
    move-result-wide v7

    .line 235
    iget-wide v3, v1, Lcom/android/systemui/monet/palettes/TonalPalette;->hue:D

    .line 236
    iget-wide v5, v1, Lcom/android/systemui/monet/palettes/TonalPalette;->chroma:D

    .line 238
    invoke-static/range {v3 .. v8}, Lcom/android/systemui/monet/hct/Hct;->from(DDD)Lcom/android/systemui/monet/hct/Hct;

    .line 240
    move-result-object v0

    .line 243
    iget-wide v1, v0, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 244
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    .line 246
    move-result-wide v1

    .line 249
    long-to-double v1, v1

    .line 250
    cmpl-double v1, v1, v15

    .line 251
    if-ltz v1, :cond_c

    .line 253
    iget-wide v1, v0, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 255
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    .line 257
    move-result-wide v1

    .line 260
    long-to-double v1, v1

    .line 261
    const-wide v3, 0x405bc00000000000L    # 111.0

    .line 262
    cmpg-double v1, v1, v3

    .line 267
    if-gtz v1, :cond_c

    .line 269
    move v1, v11

    .line 271
    goto :goto_9

    .line 272
    :cond_c
    move v1, v12

    .line 273
    :goto_9
    iget-wide v2, v0, Lcom/android/systemui/monet/hct/Hct;->chroma:D

    .line 274
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .line 276
    move-result-wide v2

    .line 279
    long-to-double v2, v2

    .line 280
    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    .line 281
    cmpl-double v2, v2, v4

    .line 283
    if-lez v2, :cond_d

    .line 285
    move v2, v11

    .line 287
    goto :goto_a

    .line 288
    :cond_d
    move v2, v12

    .line 289
    :goto_a
    iget-wide v3, v0, Lcom/android/systemui/monet/hct/Hct;->tone:D

    .line 290
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    .line 292
    move-result-wide v3

    .line 295
    long-to-double v3, v3

    .line 296
    const-wide v5, 0x4051800000000000L    # 70.0

    .line 297
    cmpg-double v3, v3, v5

    .line 302
    if-gez v3, :cond_e

    .line 304
    move v3, v11

    .line 306
    goto :goto_b

    .line 307
    :cond_e
    move v3, v12

    .line 308
    :goto_b
    if-eqz v1, :cond_f

    .line 309
    if-eqz v2, :cond_f

    .line 311
    if-eqz v3, :cond_f

    .line 313
    goto :goto_c

    .line 315
    :cond_f
    move v11, v12

    .line 316
    :goto_c
    if-eqz v11, :cond_10

    .line 317
    iget-wide v1, v0, Lcom/android/systemui/monet/hct/Hct;->hue:D

    .line 319
    iget-wide v3, v0, Lcom/android/systemui/monet/hct/Hct;->chroma:D

    .line 321
    const-wide v5, 0x4051800000000000L    # 70.0

    .line 323
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/monet/hct/Hct;->from(DDD)Lcom/android/systemui/monet/hct/Hct;

    .line 328
    move-result-object v0

    .line 331
    :cond_10
    iget-wide v0, v0, Lcom/android/systemui/monet/hct/Hct;->tone:D

    .line 332
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 334
    move-result-object v0

    .line 337
    :goto_d
    return-object v0

    .line 338
    :pswitch_c
    move-object/from16 v0, p1

    .line 339
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 341
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->tertiaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 343
    return-object v0

    .line 345
    :pswitch_d
    move-object/from16 v0, p1

    .line 346
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 348
    iget-object v2, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 350
    if-ne v2, v1, :cond_11

    .line 352
    goto :goto_e

    .line 354
    :cond_11
    move v11, v12

    .line 355
    :goto_e
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 356
    if-eqz v11, :cond_13

    .line 358
    if-eqz v0, :cond_12

    .line 360
    goto :goto_f

    .line 362
    :cond_12
    move-wide/from16 v13, v17

    .line 363
    :goto_f
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 365
    move-result-object v0

    .line 368
    goto :goto_11

    .line 369
    :cond_13
    if-eqz v0, :cond_14

    .line 370
    goto :goto_10

    .line 372
    :cond_14
    move-wide v4, v9

    .line 373
    :goto_10
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 374
    move-result-object v0

    .line 377
    :goto_11
    return-object v0

    .line 378
    :pswitch_e
    move-object/from16 v0, p1

    .line 379
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 381
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->primaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 383
    return-object v0

    .line 385
    :pswitch_f
    move-object/from16 v0, p1

    .line 386
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 388
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 390
    if-eqz v0, :cond_15

    .line 392
    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    .line 394
    goto :goto_12

    .line 396
    :cond_15
    const-wide v0, 0x4055c00000000000L    # 87.0

    .line 397
    :goto_12
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 402
    move-result-object v0

    .line 405
    return-object v0

    .line 406
    :pswitch_10
    move-object/from16 v0, p1

    .line 407
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 409
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 411
    return-object v0

    .line 413
    :pswitch_11
    move-object/from16 v0, p1

    .line 414
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 416
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 418
    if-eqz v0, :cond_16

    .line 420
    goto :goto_13

    .line 422
    :cond_16
    move-wide v6, v15

    .line 423
    :goto_13
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 424
    move-result-object v0

    .line 427
    return-object v0

    .line 428
    :pswitch_12
    move-object/from16 v0, p1

    .line 429
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 431
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 433
    return-object v0

    .line 435
    :pswitch_13
    move-object/from16 v1, p1

    .line 436
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 438
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;

    .line 440
    const/16 v0, 0x17

    .line 442
    invoke-direct {v2, v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;-><init>(I)V

    .line 444
    new-instance v3, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;

    .line 447
    const/4 v0, 0x2

    .line 449
    invoke-direct {v3, v1, v0}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/monet/scheme/DynamicScheme;I)V

    .line 450
    new-instance v4, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda7;

    .line 453
    invoke-direct {v4, v8, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda7;-><init>(Ljava/util/function/Function;Lcom/android/systemui/monet/scheme/DynamicScheme;)V

    .line 455
    const/4 v7, 0x0

    .line 458
    const/4 v8, 0x0

    .line 459
    const/4 v6, 0x0

    .line 460
    move-object v5, v6

    .line 461
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->calculateDynamicTone(Lcom/android/systemui/monet/scheme/DynamicScheme;Ljava/util/function/Function;Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;Ljava/util/function/BiFunction;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda2;Ljava/util/function/Function;)D

    .line 462
    move-result-wide v0

    .line 465
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 466
    move-result-object v0

    .line 469
    return-object v0

    .line 470
    :pswitch_14
    move-object/from16 v1, p1

    .line 471
    check-cast v1, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 473
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;

    .line 475
    const/16 v0, 0x18

    .line 477
    invoke-direct {v2, v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;-><init>(I)V

    .line 479
    new-instance v3, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;

    .line 482
    invoke-direct {v3, v1, v11}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/monet/scheme/DynamicScheme;I)V

    .line 484
    new-instance v4, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda5;

    .line 487
    invoke-direct {v4, v2, v1, v8}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Function;Lcom/android/systemui/monet/scheme/DynamicScheme;Ljava/util/function/Function;)V

    .line 489
    const/4 v7, 0x0

    .line 492
    new-instance v8, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda6;

    .line 493
    invoke-direct {v8}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda6;-><init>()V

    .line 495
    const/4 v6, 0x0

    .line 498
    move-object v5, v6

    .line 499
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->calculateDynamicTone(Lcom/android/systemui/monet/scheme/DynamicScheme;Ljava/util/function/Function;Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda0;Ljava/util/function/BiFunction;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/android/systemui/monet/dynamiccolor/DynamicColor$$ExternalSyntheticLambda2;Ljava/util/function/Function;)D

    .line 500
    move-result-wide v0

    .line 503
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 504
    move-result-object v0

    .line 507
    return-object v0

    .line 508
    :pswitch_15
    move-object/from16 v0, p1

    .line 509
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 511
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 513
    if-eqz v0, :cond_17

    .line 515
    const-wide v0, 0x3fc999999999999aL    # 0.2

    .line 517
    goto :goto_14

    .line 522
    :cond_17
    const-wide v0, 0x3fbeb851eb851eb8L    # 0.12

    .line 523
    :goto_14
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 528
    move-result-object v0

    .line 531
    return-object v0

    .line 532
    :pswitch_16
    move-object/from16 v0, p1

    .line 533
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 535
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 537
    if-eqz v0, :cond_18

    .line 539
    goto :goto_15

    .line 541
    :cond_18
    move-wide/from16 v13, v17

    .line 542
    :goto_15
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 544
    move-result-object v0

    .line 547
    return-object v0

    .line 548
    :pswitch_17
    move-object/from16 v0, p1

    .line 549
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 551
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 553
    move-result-object v0

    .line 556
    return-object v0

    .line 557
    :goto_16
    move-object/from16 v0, p1

    .line 558
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 560
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 562
    if-eqz v0, :cond_19

    .line 564
    goto :goto_17

    .line 566
    :cond_19
    move-wide/from16 v13, v17

    .line 567
    :goto_17
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 569
    move-result-object v0

    .line 572
    return-object v0

    .line 573
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 574
.end method
