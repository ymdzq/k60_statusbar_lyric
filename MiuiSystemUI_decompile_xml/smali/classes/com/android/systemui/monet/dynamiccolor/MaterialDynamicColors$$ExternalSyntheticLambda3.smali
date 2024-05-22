.class public final synthetic Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;
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
    iput p1, p0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v0, v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    sget-object v1, Lcom/android/systemui/monet/scheme/Variant;->MONOCHROME:Lcom/android/systemui/monet/scheme/Variant;

    .line 6
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 8
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 10
    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    .line 12
    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    .line 14
    const-wide/high16 v10, 0x4054000000000000L    # 80.0

    .line 16
    const/4 v12, 0x1

    .line 18
    const/4 v13, 0x0

    .line 19
    const-wide v14, 0x4056800000000000L    # 90.0

    .line 20
    packed-switch v0, :pswitch_data_0

    .line 25
    goto/16 :goto_10

    .line 28
    :pswitch_0
    move-object/from16 v0, p1

    .line 30
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 32
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 34
    return-object v0

    .line 36
    :pswitch_1
    move-object/from16 v0, p1

    .line 37
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 39
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 41
    if-ne v0, v1, :cond_0

    .line 43
    goto :goto_0

    .line 45
    :cond_0
    move v12, v13

    .line 46
    :goto_0
    if-eqz v12, :cond_1

    .line 47
    goto :goto_1

    .line 49
    :cond_1
    move-wide v6, v14

    .line 50
    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 51
    move-result-object v0

    .line 54
    return-object v0

    .line 55
    :pswitch_2
    move-object/from16 v0, p1

    .line 56
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 58
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->tertiaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 60
    return-object v0

    .line 62
    :pswitch_3
    move-object/from16 v0, p1

    .line 63
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 65
    iget-object v6, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 67
    if-ne v6, v1, :cond_2

    .line 69
    goto :goto_2

    .line 71
    :cond_2
    move v12, v13

    .line 72
    :goto_2
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 73
    if-eqz v12, :cond_4

    .line 75
    if-eqz v0, :cond_3

    .line 77
    goto :goto_3

    .line 79
    :cond_3
    move-wide v4, v14

    .line 80
    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 81
    move-result-object v0

    .line 84
    goto :goto_4

    .line 85
    :cond_4
    if-eqz v0, :cond_5

    .line 86
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    .line 88
    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 90
    move-result-object v0

    .line 93
    :goto_4
    return-object v0

    .line 94
    :pswitch_4
    move-object/from16 v0, p1

    .line 95
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 97
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->primaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 99
    return-object v0

    .line 101
    :pswitch_5
    move-object/from16 v0, p1

    .line 102
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 104
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 106
    if-eqz v0, :cond_6

    .line 108
    goto :goto_5

    .line 110
    :cond_6
    move-wide v8, v14

    .line 111
    :goto_5
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 112
    move-result-object v0

    .line 115
    return-object v0

    .line 116
    :pswitch_6
    move-object/from16 v0, p1

    .line 117
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 119
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->primaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 121
    return-object v0

    .line 123
    :pswitch_7
    move-object/from16 v0, p1

    .line 124
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 126
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 128
    if-ne v0, v1, :cond_7

    .line 130
    goto :goto_6

    .line 132
    :cond_7
    move v12, v13

    .line 133
    :goto_6
    if-eqz v12, :cond_8

    .line 134
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 136
    move-result-object v0

    .line 139
    goto :goto_7

    .line 140
    :cond_8
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 141
    move-result-object v0

    .line 144
    :goto_7
    return-object v0

    .line 145
    :pswitch_8
    move-object/from16 v0, p1

    .line 146
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 148
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->primaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 150
    return-object v0

    .line 152
    :pswitch_9
    move-object/from16 v0, p1

    .line 153
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 155
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 157
    if-eqz v0, :cond_9

    .line 159
    move-wide v4, v14

    .line 161
    :cond_9
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 162
    move-result-object v0

    .line 165
    return-object v0

    .line 166
    :pswitch_a
    move-object/from16 v0, p1

    .line 167
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 169
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 171
    return-object v0

    .line 173
    :pswitch_b
    move-object/from16 v0, p1

    .line 174
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 176
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 178
    if-eqz v0, :cond_a

    .line 180
    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    .line 182
    goto :goto_8

    .line 184
    :cond_a
    const-wide v0, 0x4058800000000000L    # 98.0

    .line 185
    :goto_8
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 190
    move-result-object v0

    .line 193
    return-object v0

    .line 194
    :pswitch_c
    move-object/from16 v0, p1

    .line 195
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 197
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 199
    return-object v0

    .line 201
    :pswitch_d
    move-object/from16 v0, p1

    .line 202
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 204
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 206
    iget-object v0, v0, Lcom/android/systemui/monet/palettes/TonalPalette;->keyColor:Lcom/android/systemui/monet/hct/Hct;

    .line 208
    iget-wide v0, v0, Lcom/android/systemui/monet/hct/Hct;->tone:D

    .line 210
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 212
    move-result-object v0

    .line 215
    return-object v0

    .line 216
    :pswitch_e
    move-object/from16 v0, p1

    .line 217
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 219
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 221
    return-object v0

    .line 223
    :pswitch_f
    move-object/from16 v0, p1

    .line 224
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 226
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 228
    if-eqz v0, :cond_b

    .line 230
    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    .line 232
    goto :goto_9

    .line 234
    :cond_b
    const-wide v0, 0x4057800000000000L    # 94.0

    .line 235
    :goto_9
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 240
    move-result-object v0

    .line 243
    return-object v0

    .line 244
    :pswitch_10
    move-object/from16 v0, p1

    .line 245
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 247
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 249
    return-object v0

    .line 251
    :pswitch_11
    move-object/from16 v0, p1

    .line 252
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 254
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->tertiaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 256
    return-object v0

    .line 258
    :pswitch_12
    move-object/from16 v0, p1

    .line 259
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 261
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 263
    if-ne v0, v1, :cond_c

    .line 265
    goto :goto_a

    .line 267
    :cond_c
    move v12, v13

    .line 268
    :goto_a
    if-eqz v12, :cond_d

    .line 269
    move-wide v8, v14

    .line 271
    :cond_d
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 272
    move-result-object v0

    .line 275
    return-object v0

    .line 276
    :pswitch_13
    move-object/from16 v0, p1

    .line 277
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 279
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->tertiaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 281
    return-object v0

    .line 283
    :pswitch_14
    move-object/from16 v0, p1

    .line 284
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 286
    iget-object v2, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 288
    if-ne v2, v1, :cond_e

    .line 290
    goto :goto_b

    .line 292
    :cond_e
    move v12, v13

    .line 293
    :goto_b
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 294
    if-eqz v12, :cond_10

    .line 296
    if-eqz v0, :cond_f

    .line 298
    goto :goto_c

    .line 300
    :cond_f
    const-wide/high16 v14, 0x4039000000000000L    # 25.0

    .line 301
    :goto_c
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 303
    move-result-object v0

    .line 306
    goto :goto_d

    .line 307
    :cond_10
    if-eqz v0, :cond_11

    .line 308
    move-wide v6, v10

    .line 310
    :cond_11
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 311
    move-result-object v0

    .line 314
    :goto_d
    return-object v0

    .line 315
    :pswitch_15
    move-object/from16 v0, p1

    .line 316
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 318
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->tertiaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 320
    return-object v0

    .line 322
    :pswitch_16
    move-object/from16 v0, p1

    .line 323
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 325
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 327
    if-eqz v0, :cond_12

    .line 329
    move-wide v6, v10

    .line 331
    :cond_12
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 332
    move-result-object v0

    .line 335
    return-object v0

    .line 336
    :pswitch_17
    move-object/from16 v0, p1

    .line 337
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 339
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->errorPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 341
    return-object v0

    .line 343
    :pswitch_18
    move-object/from16 v0, p1

    .line 344
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 346
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->variant:Lcom/android/systemui/monet/scheme/Variant;

    .line 348
    if-ne v0, v1, :cond_13

    .line 350
    goto :goto_e

    .line 352
    :cond_13
    move v12, v13

    .line 353
    :goto_e
    if-eqz v12, :cond_14

    .line 354
    goto :goto_f

    .line 356
    :cond_14
    move-wide v10, v14

    .line 357
    :goto_f
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 358
    move-result-object v0

    .line 361
    return-object v0

    .line 362
    :pswitch_19
    move-object/from16 v0, p1

    .line 363
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 365
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->secondaryPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 367
    return-object v0

    .line 369
    :pswitch_1a
    move-object/from16 v0, p1

    .line 370
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 372
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 374
    if-eqz v0, :cond_15

    .line 376
    move-wide v8, v10

    .line 378
    :cond_15
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 379
    move-result-object v0

    .line 382
    return-object v0

    .line 383
    :pswitch_1b
    move-object/from16 v0, p1

    .line 384
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 386
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralVariantPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 388
    return-object v0

    .line 390
    :pswitch_1c
    move-object/from16 v0, p1

    .line 391
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 393
    iget-object v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->neutralVariantPalette:Lcom/android/systemui/monet/palettes/TonalPalette;

    .line 395
    iget-object v0, v0, Lcom/android/systemui/monet/palettes/TonalPalette;->keyColor:Lcom/android/systemui/monet/hct/Hct;

    .line 397
    iget-wide v0, v0, Lcom/android/systemui/monet/hct/Hct;->tone:D

    .line 399
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 401
    move-result-object v0

    .line 404
    return-object v0

    .line 405
    :goto_10
    move-object/from16 v0, p1

    .line 406
    check-cast v0, Lcom/android/systemui/monet/scheme/DynamicScheme;

    .line 408
    iget-boolean v0, v0, Lcom/android/systemui/monet/scheme/DynamicScheme;->isDark:Z

    .line 410
    if-eqz v0, :cond_16

    .line 412
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    .line 414
    :cond_16
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 416
    move-result-object v0

    .line 419
    return-object v0

    .line 420
    nop

    .line 421
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
    .line 422
.end method
