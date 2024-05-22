.class public final Landroidx/core/graphics/PathParser$PathDataNode;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mParams:[F

.field public mType:C


# direct methods
.method public constructor <init>(C[F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-char p1, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 3
    iput-object p2, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    return-void
.end method

.method public constructor <init>(Landroidx/core/graphics/PathParser$PathDataNode;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-char v0, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    iput-char v0, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 6
    iget-object p1, p1, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v0, p1

    invoke-static {p1, v0}, Landroidx/core/graphics/PathParser;->copyOfRange([FI)[F

    move-result-object p1

    iput-object p1, p0, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    return-void
.end method

.method public static drawArc(Landroid/graphics/Path;FFFFFFFZZ)V
    .locals 51

    .line 1
    move/from16 v1, p1

    .line 2
    move/from16 v3, p3

    .line 4
    move/from16 v0, p5

    .line 6
    move/from16 v2, p6

    .line 8
    move/from16 v7, p7

    .line 10
    move/from16 v9, p9

    .line 12
    float-to-double v4, v7

    .line 14
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 15
    move-result-wide v4

    .line 18
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 19
    move-result-wide v10

    .line 22
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 23
    move-result-wide v12

    .line 26
    float-to-double v14, v1

    .line 27
    mul-double v16, v14, v10

    .line 28
    move/from16 v6, p2

    .line 30
    float-to-double v7, v6

    .line 32
    mul-double v18, v7, v12

    .line 33
    add-double v18, v18, v16

    .line 35
    move-wide/from16 v16, v14

    .line 37
    float-to-double v14, v0

    .line 39
    div-double v18, v18, v14

    .line 40
    neg-float v6, v1

    .line 42
    move-wide/from16 v20, v4

    .line 43
    float-to-double v4, v6

    .line 45
    mul-double/2addr v4, v12

    .line 46
    mul-double v22, v7, v10

    .line 47
    add-double v22, v22, v4

    .line 49
    float-to-double v4, v2

    .line 51
    div-double v22, v22, v4

    .line 52
    move-wide/from16 v24, v7

    .line 54
    float-to-double v6, v3

    .line 56
    mul-double/2addr v6, v10

    .line 57
    move/from16 v8, p4

    .line 58
    float-to-double v1, v8

    .line 60
    mul-double v26, v1, v12

    .line 61
    add-double v26, v26, v6

    .line 63
    div-double v26, v26, v14

    .line 65
    neg-float v6, v3

    .line 67
    float-to-double v6, v6

    .line 68
    mul-double/2addr v6, v12

    .line 69
    mul-double/2addr v1, v10

    .line 70
    add-double/2addr v1, v6

    .line 71
    div-double/2addr v1, v4

    .line 72
    sub-double v6, v18, v26

    .line 73
    sub-double v28, v22, v1

    .line 75
    add-double v30, v18, v26

    .line 77
    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    .line 79
    div-double v30, v30, v32

    .line 81
    add-double v34, v22, v1

    .line 83
    div-double v34, v34, v32

    .line 85
    mul-double v36, v6, v6

    .line 87
    mul-double v38, v28, v28

    .line 89
    move-wide/from16 v40, v12

    .line 91
    add-double v12, v38, v36

    .line 93
    const-wide/16 v36, 0x0

    .line 95
    cmpl-double v38, v12, v36

    .line 97
    const-string v3, "PathParser"

    .line 99
    if-nez v38, :cond_0

    .line 101
    const-string v0, " Points are coincident"

    .line 103
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void

    .line 108
    :cond_0
    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    .line 109
    div-double v42, v38, v12

    .line 111
    const-wide/high16 v44, 0x3fd0000000000000L    # 0.25

    .line 113
    sub-double v42, v42, v44

    .line 115
    cmpg-double v44, v42, v36

    .line 117
    if-gez v44, :cond_1

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    const-string v2, "Points are too far apart "

    .line 123
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object v1

    .line 134
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    .line 138
    move-result-wide v1

    .line 141
    const-wide v3, 0x3ffffff583a53b8eL    # 1.99999

    .line 142
    div-double/2addr v1, v3

    .line 147
    double-to-float v1, v1

    .line 148
    mul-float v5, v0, v1

    .line 149
    mul-float v6, p6, v1

    .line 151
    move-object/from16 v0, p0

    .line 153
    move/from16 v1, p1

    .line 155
    move/from16 v2, p2

    .line 157
    move/from16 v3, p3

    .line 159
    move/from16 v4, p4

    .line 161
    move/from16 v7, p7

    .line 163
    move/from16 v8, p8

    .line 165
    move/from16 v9, p9

    .line 167
    invoke-static/range {v0 .. v9}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 169
    return-void

    .line 172
    :cond_1
    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->sqrt(D)D

    .line 173
    move-result-wide v12

    .line 176
    mul-double/2addr v6, v12

    .line 177
    mul-double v12, v12, v28

    .line 178
    move/from16 v0, p8

    .line 180
    if-ne v0, v9, :cond_2

    .line 182
    sub-double v30, v30, v12

    .line 184
    add-double v34, v34, v6

    .line 186
    goto :goto_0

    .line 188
    :cond_2
    add-double v30, v30, v12

    .line 189
    sub-double v34, v34, v6

    .line 191
    :goto_0
    sub-double v6, v22, v34

    .line 193
    sub-double v12, v18, v30

    .line 195
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    .line 197
    move-result-wide v6

    .line 200
    sub-double v1, v1, v34

    .line 201
    sub-double v12, v26, v30

    .line 203
    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    .line 205
    move-result-wide v0

    .line 208
    sub-double/2addr v0, v6

    .line 209
    cmpl-double v2, v0, v36

    .line 210
    if-ltz v2, :cond_3

    .line 212
    const/4 v8, 0x1

    .line 214
    goto :goto_1

    .line 215
    :cond_3
    const/4 v8, 0x0

    .line 216
    :goto_1
    if-eq v9, v8, :cond_5

    .line 217
    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    .line 219
    if-lez v2, :cond_4

    .line 224
    sub-double/2addr v0, v8

    .line 226
    goto :goto_2

    .line 227
    :cond_4
    add-double/2addr v0, v8

    .line 228
    :cond_5
    :goto_2
    mul-double v30, v30, v14

    .line 229
    mul-double v34, v34, v4

    .line 231
    mul-double v8, v30, v10

    .line 233
    mul-double v12, v34, v40

    .line 235
    sub-double/2addr v8, v12

    .line 237
    mul-double v30, v30, v40

    .line 238
    mul-double v34, v34, v10

    .line 240
    add-double v34, v34, v30

    .line 242
    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    .line 244
    mul-double v12, v0, v10

    .line 246
    const-wide v18, 0x400921fb54442d18L    # Math.PI

    .line 248
    div-double v12, v12, v18

    .line 253
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    .line 255
    move-result-wide v12

    .line 258
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    .line 259
    move-result-wide v12

    .line 262
    double-to-int v2, v12

    .line 263
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    .line 264
    move-result-wide v12

    .line 267
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    .line 268
    move-result-wide v18

    .line 271
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    .line 272
    move-result-wide v20

    .line 275
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 276
    move-result-wide v22

    .line 279
    neg-double v10, v14

    .line 280
    mul-double v26, v10, v12

    .line 281
    mul-double v28, v26, v22

    .line 283
    mul-double v30, v4, v18

    .line 285
    mul-double v36, v30, v20

    .line 287
    sub-double v28, v28, v36

    .line 289
    mul-double v10, v10, v18

    .line 291
    mul-double v22, v22, v10

    .line 293
    mul-double/2addr v4, v12

    .line 295
    mul-double v20, v20, v4

    .line 296
    add-double v20, v20, v22

    .line 298
    move-wide/from16 p4, v4

    .line 300
    int-to-double v3, v2

    .line 302
    div-double/2addr v0, v3

    .line 303
    const/4 v3, 0x0

    .line 304
    :goto_3
    if-ge v3, v2, :cond_6

    .line 305
    add-double v4, v6, v0

    .line 307
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 309
    move-result-wide v22

    .line 312
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 313
    move-result-wide v36

    .line 316
    mul-double v40, v14, v12

    .line 317
    mul-double v40, v40, v36

    .line 319
    add-double v40, v40, v8

    .line 321
    mul-double v42, v30, v22

    .line 323
    move-wide/from16 p6, v0

    .line 325
    sub-double v0, v40, v42

    .line 327
    mul-double v40, v14, v18

    .line 329
    mul-double v40, v40, v36

    .line 331
    add-double v40, v40, v34

    .line 333
    move-wide/from16 v42, p4

    .line 335
    mul-double v44, v42, v22

    .line 337
    move-wide/from16 p3, v8

    .line 339
    add-double v8, v44, v40

    .line 341
    mul-double v40, v26, v22

    .line 343
    mul-double v44, v30, v36

    .line 345
    sub-double v40, v40, v44

    .line 347
    mul-double v22, v22, v10

    .line 349
    mul-double v36, v36, v42

    .line 351
    add-double v22, v36, v22

    .line 353
    sub-double v6, v4, v6

    .line 355
    div-double v36, v6, v32

    .line 357
    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->tan(D)D

    .line 359
    move-result-wide v36

    .line 362
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 363
    move-result-wide v6

    .line 366
    const-wide/high16 v44, 0x4008000000000000L    # 3.0

    .line 367
    mul-double v46, v36, v44

    .line 369
    mul-double v46, v46, v36

    .line 371
    const-wide/high16 v36, 0x4010000000000000L    # 4.0

    .line 373
    add-double v46, v46, v36

    .line 375
    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sqrt(D)D

    .line 377
    move-result-wide v46

    .line 380
    sub-double v46, v46, v38

    .line 381
    mul-double v46, v46, v6

    .line 383
    div-double v46, v46, v44

    .line 385
    mul-double v28, v28, v46

    .line 387
    add-double v6, v28, v16

    .line 389
    mul-double v20, v20, v46

    .line 391
    move-wide/from16 p1, v4

    .line 393
    add-double v4, v20, v24

    .line 395
    mul-double v16, v46, v40

    .line 397
    move-wide/from16 p8, v10

    .line 399
    sub-double v10, v0, v16

    .line 401
    mul-double v46, v46, v22

    .line 403
    move-wide/from16 v16, v12

    .line 405
    sub-double v12, v8, v46

    .line 407
    move/from16 v20, v2

    .line 409
    const/4 v2, 0x0

    .line 411
    move-wide/from16 v24, v14

    .line 412
    move-object/from16 v14, p0

    .line 414
    invoke-virtual {v14, v2, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 416
    double-to-float v2, v6

    .line 419
    double-to-float v4, v4

    .line 420
    double-to-float v5, v10

    .line 421
    double-to-float v6, v12

    .line 422
    double-to-float v7, v0

    .line 423
    double-to-float v10, v8

    .line 424
    move-object/from16 v44, p0

    .line 425
    move/from16 v45, v2

    .line 427
    move/from16 v46, v4

    .line 429
    move/from16 v47, v5

    .line 431
    move/from16 v48, v6

    .line 433
    move/from16 v49, v7

    .line 435
    move/from16 v50, v10

    .line 437
    invoke-virtual/range {v44 .. v50}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 439
    add-int/lit8 v3, v3, 0x1

    .line 442
    move-wide/from16 v6, p1

    .line 444
    move-wide/from16 v10, p8

    .line 446
    move-wide/from16 v12, v16

    .line 448
    move/from16 v2, v20

    .line 450
    move-wide/from16 v20, v22

    .line 452
    move-wide/from16 v14, v24

    .line 454
    move-wide/from16 v28, v40

    .line 456
    move-wide/from16 v16, v0

    .line 458
    move-wide/from16 v24, v8

    .line 460
    move-wide/from16 v8, p3

    .line 462
    move-wide/from16 v0, p6

    .line 464
    move-wide/from16 p4, v42

    .line 466
    goto/16 :goto_3

    .line 468
    :cond_6
    return-void
    .line 470
.end method

.method public static nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v11, p1

    .line 4
    const/4 v12, 0x6

    .line 6
    new-array v13, v12, [F

    .line 7
    const/16 v14, 0x6d

    .line 9
    const/4 v15, 0x0

    .line 11
    move v1, v14

    .line 12
    move v10, v15

    .line 13
    :goto_0
    array-length v2, v0

    .line 14
    if-ge v10, v2, :cond_21

    .line 15
    aget-object v9, v0, v10

    .line 17
    iget-char v8, v9, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 19
    aget v2, v13, v15

    .line 21
    const/16 v16, 0x1

    .line 23
    aget v3, v13, v16

    .line 25
    const/16 v17, 0x2

    .line 27
    aget v4, v13, v17

    .line 29
    const/16 v18, 0x3

    .line 31
    aget v5, v13, v18

    .line 33
    const/16 v19, 0x4

    .line 35
    aget v6, v13, v19

    .line 37
    const/16 v20, 0x5

    .line 39
    aget v7, v13, v20

    .line 41
    sparse-switch v8, :sswitch_data_0

    .line 43
    goto :goto_1

    .line 46
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    .line 47
    invoke-virtual {v11, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 50
    move v2, v6

    .line 53
    move v4, v2

    .line 54
    move v3, v7

    .line 55
    move v5, v3

    .line 56
    goto :goto_1

    .line 57
    :sswitch_1
    move/from16 v21, v19

    .line 58
    goto :goto_2

    .line 60
    :sswitch_2
    move/from16 v21, v16

    .line 61
    goto :goto_2

    .line 63
    :sswitch_3
    move/from16 v21, v12

    .line 64
    goto :goto_2

    .line 66
    :sswitch_4
    const/16 v21, 0x7

    .line 67
    goto :goto_2

    .line 69
    :goto_1
    move/from16 v21, v17

    .line 70
    :goto_2
    move/from16 v22, v6

    .line 72
    move/from16 v23, v7

    .line 74
    move v7, v2

    .line 76
    move v6, v3

    .line 77
    move v3, v15

    .line 78
    :goto_3
    iget-object v2, v9, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    .line 79
    array-length v12, v2

    .line 81
    if-ge v3, v12, :cond_20

    .line 82
    const/16 v12, 0x41

    .line 84
    if-eq v8, v12, :cond_1d

    .line 86
    const/16 v12, 0x43

    .line 88
    if-eq v8, v12, :cond_1c

    .line 90
    const/16 v15, 0x48

    .line 92
    if-eq v8, v15, :cond_1b

    .line 94
    const/16 v15, 0x51

    .line 96
    if-eq v8, v15, :cond_1a

    .line 98
    const/16 v12, 0x56

    .line 100
    if-eq v8, v12, :cond_19

    .line 102
    const/16 v12, 0x61

    .line 104
    if-eq v8, v12, :cond_16

    .line 106
    const/16 v12, 0x63

    .line 108
    if-eq v8, v12, :cond_15

    .line 110
    const/16 v12, 0x68

    .line 112
    if-eq v8, v12, :cond_14

    .line 114
    const/16 v12, 0x71

    .line 116
    if-eq v8, v12, :cond_13

    .line 118
    const/16 v15, 0x76

    .line 120
    if-eq v8, v15, :cond_12

    .line 122
    const/16 v15, 0x4c

    .line 124
    if-eq v8, v15, :cond_11

    .line 126
    const/16 v15, 0x4d

    .line 128
    if-eq v8, v15, :cond_f

    .line 130
    const/16 v15, 0x53

    .line 132
    const/high16 v28, 0x40000000    # 2.0f

    .line 134
    if-eq v8, v15, :cond_c

    .line 136
    const/16 v15, 0x54

    .line 138
    const/16 v12, 0x74

    .line 140
    if-eq v8, v15, :cond_9

    .line 142
    const/16 v15, 0x6c

    .line 144
    if-eq v8, v15, :cond_8

    .line 146
    if-eq v8, v14, :cond_6

    .line 148
    const/16 v15, 0x73

    .line 150
    if-eq v8, v15, :cond_3

    .line 152
    if-eq v8, v12, :cond_0

    .line 154
    goto :goto_6

    .line 156
    :cond_0
    const/16 v15, 0x71

    .line 157
    if-eq v1, v15, :cond_2

    .line 159
    if-eq v1, v12, :cond_2

    .line 161
    const/16 v12, 0x51

    .line 163
    if-eq v1, v12, :cond_2

    .line 165
    const/16 v12, 0x54

    .line 167
    if-ne v1, v12, :cond_1

    .line 169
    goto :goto_4

    .line 171
    :cond_1
    const/4 v1, 0x0

    .line 172
    const/4 v15, 0x0

    .line 173
    goto :goto_5

    .line 174
    :cond_2
    :goto_4
    sub-float v15, v7, v4

    .line 175
    sub-float v1, v6, v5

    .line 177
    :goto_5
    add-int/lit8 v4, v3, 0x0

    .line 179
    aget v5, v2, v4

    .line 181
    add-int/lit8 v12, v3, 0x1

    .line 183
    aget v14, v2, v12

    .line 185
    invoke-virtual {v11, v15, v1, v5, v14}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 187
    add-float/2addr v15, v7

    .line 190
    add-float/2addr v1, v6

    .line 191
    aget v4, v2, v4

    .line 192
    add-float/2addr v7, v4

    .line 194
    aget v2, v2, v12

    .line 195
    add-float/2addr v6, v2

    .line 197
    move v5, v1

    .line 198
    move v4, v15

    .line 199
    :goto_6
    move/from16 v30, v3

    .line 200
    goto/16 :goto_12

    .line 202
    :cond_3
    const/16 v12, 0x63

    .line 204
    if-eq v1, v12, :cond_5

    .line 206
    const/16 v12, 0x73

    .line 208
    if-eq v1, v12, :cond_5

    .line 210
    const/16 v12, 0x43

    .line 212
    if-eq v1, v12, :cond_5

    .line 214
    const/16 v12, 0x53

    .line 216
    if-ne v1, v12, :cond_4

    .line 218
    goto :goto_7

    .line 220
    :cond_4
    const/4 v4, 0x0

    .line 221
    const/16 v24, 0x0

    .line 222
    goto :goto_8

    .line 224
    :cond_5
    :goto_7
    sub-float v1, v7, v4

    .line 225
    sub-float v4, v6, v5

    .line 227
    move/from16 v24, v1

    .line 229
    :goto_8
    add-int/lit8 v12, v3, 0x0

    .line 231
    aget v5, v2, v12

    .line 233
    add-int/lit8 v14, v3, 0x1

    .line 235
    aget v15, v2, v14

    .line 237
    add-int/lit8 v25, v3, 0x2

    .line 239
    aget v26, v2, v25

    .line 241
    add-int/lit8 v27, v3, 0x3

    .line 243
    aget v28, v2, v27

    .line 245
    move-object/from16 v1, p1

    .line 247
    move-object/from16 v29, v2

    .line 249
    move/from16 v2, v24

    .line 251
    move/from16 v30, v3

    .line 253
    move v3, v4

    .line 255
    move v4, v5

    .line 256
    move v5, v15

    .line 257
    move v15, v6

    .line 258
    move/from16 v6, v26

    .line 259
    move v0, v7

    .line 261
    move/from16 v7, v28

    .line 262
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 264
    aget v1, v29, v12

    .line 267
    add-float/2addr v1, v0

    .line 269
    aget v2, v29, v14

    .line 270
    add-float/2addr v2, v15

    .line 272
    aget v3, v29, v25

    .line 273
    add-float v7, v0, v3

    .line 275
    aget v0, v29, v27

    .line 277
    goto/16 :goto_10

    .line 279
    :cond_6
    move-object/from16 v29, v2

    .line 281
    move/from16 v30, v3

    .line 283
    move v15, v6

    .line 285
    move v0, v7

    .line 286
    add-int/lit8 v3, v30, 0x0

    .line 287
    aget v1, v29, v3

    .line 289
    add-float v7, v0, v1

    .line 291
    add-int/lit8 v3, v30, 0x1

    .line 293
    aget v0, v29, v3

    .line 295
    add-float v6, v15, v0

    .line 297
    if-lez v30, :cond_7

    .line 299
    invoke-virtual {v11, v1, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 301
    goto/16 :goto_12

    .line 304
    :cond_7
    invoke-virtual {v11, v1, v0}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 306
    move/from16 v23, v6

    .line 309
    move/from16 v22, v7

    .line 311
    goto/16 :goto_d

    .line 313
    :cond_8
    move-object/from16 v29, v2

    .line 315
    move/from16 v30, v3

    .line 317
    move v15, v6

    .line 319
    move v0, v7

    .line 320
    add-int/lit8 v3, v30, 0x0

    .line 321
    aget v1, v29, v3

    .line 323
    add-int/lit8 v2, v30, 0x1

    .line 325
    aget v6, v29, v2

    .line 327
    invoke-virtual {v11, v1, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 329
    aget v1, v29, v3

    .line 332
    add-float v7, v0, v1

    .line 334
    aget v0, v29, v2

    .line 336
    goto/16 :goto_f

    .line 338
    :cond_9
    move-object/from16 v29, v2

    .line 340
    move/from16 v30, v3

    .line 342
    move v15, v6

    .line 344
    move v0, v7

    .line 345
    const/16 v2, 0x71

    .line 346
    if-eq v1, v2, :cond_b

    .line 348
    if-eq v1, v12, :cond_b

    .line 350
    const/16 v2, 0x51

    .line 352
    if-eq v1, v2, :cond_b

    .line 354
    const/16 v2, 0x54

    .line 356
    if-ne v1, v2, :cond_a

    .line 358
    goto :goto_9

    .line 360
    :cond_a
    move v7, v0

    .line 361
    move v6, v15

    .line 362
    goto :goto_a

    .line 363
    :cond_b
    :goto_9
    mul-float v7, v0, v28

    .line 364
    sub-float/2addr v7, v4

    .line 366
    mul-float v6, v15, v28

    .line 367
    sub-float/2addr v6, v5

    .line 369
    :goto_a
    add-int/lit8 v3, v30, 0x0

    .line 370
    aget v0, v29, v3

    .line 372
    add-int/lit8 v1, v30, 0x1

    .line 374
    aget v2, v29, v1

    .line 376
    invoke-virtual {v11, v7, v6, v0, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 378
    aget v0, v29, v3

    .line 381
    aget v1, v29, v1

    .line 383
    move v5, v6

    .line 385
    move v4, v7

    .line 386
    move/from16 v27, v8

    .line 387
    move-object/from16 v25, v9

    .line 389
    move/from16 v28, v10

    .line 391
    move v7, v0

    .line 393
    move v6, v1

    .line 394
    goto/16 :goto_19

    .line 395
    :cond_c
    move-object/from16 v29, v2

    .line 397
    move/from16 v30, v3

    .line 399
    move v15, v6

    .line 401
    move v0, v7

    .line 402
    const/16 v2, 0x63

    .line 403
    if-eq v1, v2, :cond_e

    .line 405
    const/16 v2, 0x73

    .line 407
    if-eq v1, v2, :cond_e

    .line 409
    const/16 v2, 0x43

    .line 411
    if-eq v1, v2, :cond_e

    .line 413
    const/16 v2, 0x53

    .line 415
    if-ne v1, v2, :cond_d

    .line 417
    goto :goto_b

    .line 419
    :cond_d
    move v2, v0

    .line 420
    move v3, v15

    .line 421
    goto :goto_c

    .line 422
    :cond_e
    :goto_b
    mul-float v7, v0, v28

    .line 423
    sub-float/2addr v7, v4

    .line 425
    mul-float v6, v15, v28

    .line 426
    sub-float/2addr v6, v5

    .line 428
    move v3, v6

    .line 429
    move v2, v7

    .line 430
    :goto_c
    add-int/lit8 v0, v30, 0x0

    .line 431
    aget v4, v29, v0

    .line 433
    add-int/lit8 v12, v30, 0x1

    .line 435
    aget v5, v29, v12

    .line 437
    add-int/lit8 v14, v30, 0x2

    .line 439
    aget v6, v29, v14

    .line 441
    add-int/lit8 v15, v30, 0x3

    .line 443
    aget v7, v29, v15

    .line 445
    move-object/from16 v1, p1

    .line 447
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 449
    aget v0, v29, v0

    .line 452
    aget v1, v29, v12

    .line 454
    aget v2, v29, v14

    .line 456
    aget v3, v29, v15

    .line 458
    move v4, v0

    .line 460
    move v5, v1

    .line 461
    goto/16 :goto_11

    .line 462
    :cond_f
    move-object/from16 v29, v2

    .line 464
    move/from16 v30, v3

    .line 466
    add-int/lit8 v3, v30, 0x0

    .line 468
    aget v0, v29, v3

    .line 470
    add-int/lit8 v3, v30, 0x1

    .line 472
    aget v1, v29, v3

    .line 474
    if-lez v30, :cond_10

    .line 476
    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 478
    goto :goto_e

    .line 481
    :cond_10
    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 482
    move/from16 v22, v0

    .line 485
    move/from16 v23, v1

    .line 487
    :goto_d
    move/from16 v7, v22

    .line 489
    move/from16 v6, v23

    .line 491
    goto/16 :goto_12

    .line 493
    :cond_11
    move-object/from16 v29, v2

    .line 495
    move/from16 v30, v3

    .line 497
    add-int/lit8 v3, v30, 0x0

    .line 499
    aget v0, v29, v3

    .line 501
    add-int/lit8 v1, v30, 0x1

    .line 503
    aget v2, v29, v1

    .line 505
    invoke-virtual {v11, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 507
    aget v0, v29, v3

    .line 510
    aget v1, v29, v1

    .line 512
    :goto_e
    move v7, v0

    .line 514
    move v6, v1

    .line 515
    goto/16 :goto_12

    .line 516
    :cond_12
    move-object/from16 v29, v2

    .line 518
    move/from16 v30, v3

    .line 520
    move v15, v6

    .line 522
    move v0, v7

    .line 523
    add-int/lit8 v3, v30, 0x0

    .line 524
    aget v1, v29, v3

    .line 526
    const/4 v2, 0x0

    .line 528
    invoke-virtual {v11, v2, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 529
    aget v1, v29, v3

    .line 532
    move v0, v1

    .line 534
    :goto_f
    add-float v6, v15, v0

    .line 535
    goto/16 :goto_12

    .line 537
    :cond_13
    move-object/from16 v29, v2

    .line 539
    move/from16 v30, v3

    .line 541
    move v15, v6

    .line 543
    move v0, v7

    .line 544
    add-int/lit8 v3, v30, 0x0

    .line 545
    aget v1, v29, v3

    .line 547
    add-int/lit8 v2, v30, 0x1

    .line 549
    aget v4, v29, v2

    .line 551
    add-int/lit8 v5, v30, 0x2

    .line 553
    aget v6, v29, v5

    .line 555
    add-int/lit8 v7, v30, 0x3

    .line 557
    aget v12, v29, v7

    .line 559
    invoke-virtual {v11, v1, v4, v6, v12}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 561
    aget v1, v29, v3

    .line 564
    add-float/2addr v1, v0

    .line 566
    aget v2, v29, v2

    .line 567
    add-float/2addr v2, v15

    .line 569
    aget v3, v29, v5

    .line 570
    add-float/2addr v0, v3

    .line 572
    aget v3, v29, v7

    .line 573
    move v7, v0

    .line 575
    move v0, v3

    .line 576
    goto :goto_10

    .line 577
    :cond_14
    move-object/from16 v29, v2

    .line 578
    move/from16 v30, v3

    .line 580
    move v15, v6

    .line 582
    move v0, v7

    .line 583
    add-int/lit8 v3, v30, 0x0

    .line 584
    aget v1, v29, v3

    .line 586
    const/4 v2, 0x0

    .line 588
    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 589
    aget v1, v29, v3

    .line 592
    add-float v7, v0, v1

    .line 594
    goto :goto_12

    .line 596
    :cond_15
    move-object/from16 v29, v2

    .line 597
    move/from16 v30, v3

    .line 599
    move v15, v6

    .line 601
    move v0, v7

    .line 602
    add-int/lit8 v3, v30, 0x0

    .line 603
    aget v2, v29, v3

    .line 605
    add-int/lit8 v3, v30, 0x1

    .line 607
    aget v3, v29, v3

    .line 609
    add-int/lit8 v12, v30, 0x2

    .line 611
    aget v4, v29, v12

    .line 613
    add-int/lit8 v14, v30, 0x3

    .line 615
    aget v5, v29, v14

    .line 617
    add-int/lit8 v24, v30, 0x4

    .line 619
    aget v6, v29, v24

    .line 621
    add-int/lit8 v25, v30, 0x5

    .line 623
    aget v7, v29, v25

    .line 625
    move-object/from16 v1, p1

    .line 627
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 629
    aget v1, v29, v12

    .line 632
    add-float/2addr v1, v0

    .line 634
    aget v2, v29, v14

    .line 635
    add-float/2addr v2, v15

    .line 637
    aget v3, v29, v24

    .line 638
    add-float v7, v0, v3

    .line 640
    aget v0, v29, v25

    .line 642
    :goto_10
    add-float v3, v15, v0

    .line 644
    move v4, v1

    .line 646
    move v5, v2

    .line 647
    move v2, v7

    .line 648
    :goto_11
    move v7, v2

    .line 649
    move v6, v3

    .line 650
    :goto_12
    move/from16 v27, v8

    .line 651
    move-object/from16 v25, v9

    .line 653
    move/from16 v28, v10

    .line 655
    goto/16 :goto_19

    .line 657
    :cond_16
    move-object/from16 v29, v2

    .line 659
    move/from16 v30, v3

    .line 661
    move v15, v6

    .line 663
    move v0, v7

    .line 664
    add-int/lit8 v12, v30, 0x5

    .line 665
    aget v1, v29, v12

    .line 667
    add-float v4, v1, v0

    .line 669
    add-int/lit8 v14, v30, 0x6

    .line 671
    aget v1, v29, v14

    .line 673
    add-float v5, v1, v15

    .line 675
    add-int/lit8 v3, v30, 0x0

    .line 677
    aget v6, v29, v3

    .line 679
    add-int/lit8 v3, v30, 0x1

    .line 681
    aget v7, v29, v3

    .line 683
    add-int/lit8 v3, v30, 0x2

    .line 685
    aget v25, v29, v3

    .line 687
    add-int/lit8 v3, v30, 0x3

    .line 689
    aget v1, v29, v3

    .line 691
    const/4 v2, 0x0

    .line 693
    cmpl-float v1, v1, v2

    .line 694
    if-eqz v1, :cond_17

    .line 696
    move/from16 v24, v16

    .line 698
    goto :goto_13

    .line 700
    :cond_17
    const/16 v24, 0x0

    .line 701
    :goto_13
    add-int/lit8 v3, v30, 0x4

    .line 703
    aget v1, v29, v3

    .line 705
    cmpl-float v1, v1, v2

    .line 707
    if-eqz v1, :cond_18

    .line 709
    move/from16 v26, v16

    .line 711
    goto :goto_14

    .line 713
    :cond_18
    const/16 v26, 0x0

    .line 714
    :goto_14
    move-object/from16 v1, p1

    .line 716
    move v2, v0

    .line 718
    move v3, v15

    .line 719
    move/from16 v27, v8

    .line 720
    move/from16 v8, v25

    .line 722
    move-object/from16 v25, v9

    .line 724
    move/from16 v9, v24

    .line 726
    move/from16 v28, v10

    .line 728
    move/from16 v10, v26

    .line 730
    invoke-static/range {v1 .. v10}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 732
    aget v1, v29, v12

    .line 735
    add-float v7, v0, v1

    .line 737
    aget v0, v29, v14

    .line 739
    add-float v6, v15, v0

    .line 741
    goto/16 :goto_18

    .line 743
    :cond_19
    move-object/from16 v29, v2

    .line 745
    move/from16 v30, v3

    .line 747
    move v0, v7

    .line 749
    move/from16 v27, v8

    .line 750
    move-object/from16 v25, v9

    .line 752
    move/from16 v28, v10

    .line 754
    add-int/lit8 v3, v30, 0x0

    .line 756
    aget v1, v29, v3

    .line 758
    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 760
    aget v6, v29, v3

    .line 763
    goto/16 :goto_19

    .line 765
    :cond_1a
    move-object/from16 v29, v2

    .line 767
    move/from16 v30, v3

    .line 769
    move/from16 v27, v8

    .line 771
    move-object/from16 v25, v9

    .line 773
    move/from16 v28, v10

    .line 775
    add-int/lit8 v3, v30, 0x0

    .line 777
    aget v0, v29, v3

    .line 779
    add-int/lit8 v1, v30, 0x1

    .line 781
    aget v2, v29, v1

    .line 783
    add-int/lit8 v4, v30, 0x2

    .line 785
    aget v5, v29, v4

    .line 787
    add-int/lit8 v6, v30, 0x3

    .line 789
    aget v7, v29, v6

    .line 791
    invoke-virtual {v11, v0, v2, v5, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 793
    aget v0, v29, v3

    .line 796
    aget v1, v29, v1

    .line 798
    aget v2, v29, v4

    .line 800
    aget v3, v29, v6

    .line 802
    move v7, v2

    .line 804
    move v6, v3

    .line 805
    goto :goto_15

    .line 806
    :cond_1b
    move-object/from16 v29, v2

    .line 807
    move/from16 v30, v3

    .line 809
    move v15, v6

    .line 811
    move/from16 v27, v8

    .line 812
    move-object/from16 v25, v9

    .line 814
    move/from16 v28, v10

    .line 816
    add-int/lit8 v3, v30, 0x0

    .line 818
    aget v0, v29, v3

    .line 820
    invoke-virtual {v11, v0, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 822
    aget v7, v29, v3

    .line 825
    goto/16 :goto_19

    .line 827
    :cond_1c
    move-object/from16 v29, v2

    .line 829
    move/from16 v30, v3

    .line 831
    move/from16 v27, v8

    .line 833
    move-object/from16 v25, v9

    .line 835
    move/from16 v28, v10

    .line 837
    add-int/lit8 v3, v30, 0x0

    .line 839
    aget v2, v29, v3

    .line 841
    add-int/lit8 v3, v30, 0x1

    .line 843
    aget v3, v29, v3

    .line 845
    add-int/lit8 v0, v30, 0x2

    .line 847
    aget v4, v29, v0

    .line 849
    add-int/lit8 v8, v30, 0x3

    .line 851
    aget v5, v29, v8

    .line 853
    add-int/lit8 v9, v30, 0x4

    .line 855
    aget v6, v29, v9

    .line 857
    add-int/lit8 v10, v30, 0x5

    .line 859
    aget v7, v29, v10

    .line 861
    move-object/from16 v1, p1

    .line 863
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 865
    aget v1, v29, v9

    .line 868
    aget v2, v29, v10

    .line 870
    aget v0, v29, v0

    .line 872
    aget v3, v29, v8

    .line 874
    move v7, v1

    .line 876
    move v6, v2

    .line 877
    move v1, v3

    .line 878
    :goto_15
    move v4, v0

    .line 879
    move v5, v1

    .line 880
    goto :goto_19

    .line 881
    :cond_1d
    move-object/from16 v29, v2

    .line 882
    move/from16 v30, v3

    .line 884
    move v15, v6

    .line 886
    move v0, v7

    .line 887
    move/from16 v27, v8

    .line 888
    move-object/from16 v25, v9

    .line 890
    move/from16 v28, v10

    .line 892
    add-int/lit8 v12, v30, 0x5

    .line 894
    aget v4, v29, v12

    .line 896
    add-int/lit8 v14, v30, 0x6

    .line 898
    aget v5, v29, v14

    .line 900
    add-int/lit8 v3, v30, 0x0

    .line 902
    aget v6, v29, v3

    .line 904
    add-int/lit8 v3, v30, 0x1

    .line 906
    aget v7, v29, v3

    .line 908
    add-int/lit8 v3, v30, 0x2

    .line 910
    aget v8, v29, v3

    .line 912
    add-int/lit8 v3, v30, 0x3

    .line 914
    aget v1, v29, v3

    .line 916
    const/4 v2, 0x0

    .line 918
    cmpl-float v1, v1, v2

    .line 919
    if-eqz v1, :cond_1e

    .line 921
    move/from16 v9, v16

    .line 923
    goto :goto_16

    .line 925
    :cond_1e
    const/4 v9, 0x0

    .line 926
    :goto_16
    add-int/lit8 v3, v30, 0x4

    .line 927
    aget v1, v29, v3

    .line 929
    cmpl-float v1, v1, v2

    .line 931
    if-eqz v1, :cond_1f

    .line 933
    move/from16 v10, v16

    .line 935
    goto :goto_17

    .line 937
    :cond_1f
    const/4 v10, 0x0

    .line 938
    :goto_17
    move-object/from16 v1, p1

    .line 939
    move v2, v0

    .line 941
    move v3, v15

    .line 942
    invoke-static/range {v1 .. v10}, Landroidx/core/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 943
    aget v0, v29, v12

    .line 946
    aget v1, v29, v14

    .line 948
    move v7, v0

    .line 950
    move v6, v1

    .line 951
    :goto_18
    move v5, v6

    .line 952
    move v4, v7

    .line 953
    :goto_19
    add-int v3, v30, v21

    .line 954
    move-object/from16 v9, v25

    .line 956
    move/from16 v1, v27

    .line 958
    move v8, v1

    .line 960
    move/from16 v10, v28

    .line 961
    const/4 v12, 0x6

    .line 963
    const/16 v14, 0x6d

    .line 964
    const/4 v15, 0x0

    .line 966
    move-object/from16 v0, p0

    .line 967
    goto/16 :goto_3

    .line 969
    :cond_20
    move v0, v7

    .line 971
    move/from16 v28, v10

    .line 972
    move v1, v15

    .line 974
    move v15, v6

    .line 975
    aput v0, v13, v1

    .line 976
    aput v15, v13, v16

    .line 978
    aput v4, v13, v17

    .line 980
    aput v5, v13, v18

    .line 982
    aput v22, v13, v19

    .line 984
    aput v23, v13, v20

    .line 986
    aget-object v0, p0, v28

    .line 988
    iget-char v0, v0, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    .line 990
    add-int/lit8 v10, v28, 0x1

    .line 992
    const/4 v12, 0x6

    .line 994
    const/16 v14, 0x6d

    .line 995
    move v15, v1

    .line 997
    move v1, v0

    .line 998
    move-object/from16 v0, p0

    .line 999
    goto/16 :goto_0

    .line 1001
    :cond_21
    return-void

    .line 1003
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_4
        0x43 -> :sswitch_3
        0x48 -> :sswitch_2
        0x51 -> :sswitch_1
        0x53 -> :sswitch_1
        0x56 -> :sswitch_2
        0x5a -> :sswitch_0
        0x61 -> :sswitch_4
        0x63 -> :sswitch_3
        0x68 -> :sswitch_2
        0x71 -> :sswitch_1
        0x73 -> :sswitch_1
        0x76 -> :sswitch_2
        0x7a -> :sswitch_0
    .end sparse-switch
    .line 1004
.end method
