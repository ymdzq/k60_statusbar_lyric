.class public final Lcom/android/systemui/monet/hct/Cam16;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final CAM16RGB_TO_XYZ:[[D

.field public static final XYZ_TO_CAM16RGB:[[D


# instance fields
.field public final chroma:D

.field public final hue:D

.field public final j:D


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [D

    .line 3
    fill-array-data v1, :array_0

    .line 5
    new-array v2, v0, [D

    .line 8
    fill-array-data v2, :array_1

    .line 10
    new-array v3, v0, [D

    .line 13
    fill-array-data v3, :array_2

    .line 15
    filled-new-array {v1, v2, v3}, [[D

    .line 18
    move-result-object v1

    .line 21
    sput-object v1, Lcom/android/systemui/monet/hct/Cam16;->XYZ_TO_CAM16RGB:[[D

    .line 22
    new-array v1, v0, [D

    .line 24
    fill-array-data v1, :array_3

    .line 26
    new-array v2, v0, [D

    .line 29
    fill-array-data v2, :array_4

    .line 31
    new-array v0, v0, [D

    .line 34
    fill-array-data v0, :array_5

    .line 36
    filled-new-array {v1, v2, v0}, [[D

    .line 39
    move-result-object v0

    .line 42
    sput-object v0, Lcom/android/systemui/monet/hct/Cam16;->CAM16RGB_TO_XYZ:[[D

    .line 43
    return-void

    .line 45
    :array_0
    .array-data 8
        0x3fd9aeb3dd11be6eL    # 0.401288
        0x3fe4ce379b77c02bL    # 0.650173
        -0x4055a6e75ff609ddL    # -0.051461
    .end array-data

    .line 46
    :array_1
    .array-data 8
        -0x402ffb9bed30f063L    # -0.250268
        0x3ff345479d4d8341L    # 1.204414
        0x3fa77a2cecc814d7L    # 0.045854
    .end array-data

    .line 62
    :array_2
    .array-data 8
        -0x409ef8055fbb517aL    # -0.002079
        0x3fa9103c8e25c811L    # 0.048952
        0x3fee800431bde82dL    # 0.953127
    .end array-data

    :array_3
    .array-data 8
        0x3ffdcb079afef467L    # 1.8620678
        -0x400fd1e697792de9L    # -1.0112547
        0x3fc3188d6a8c3ae1L    # 0.14918678
    .end array-data

    :array_4
    .array-data 8
        0x3fd8cd3c1de87346L    # 0.38752654
        0x3fe3e2e5bddf7419L    # 0.62144744
        -0x407d9f0ccb1490dcL    # -0.00897398
    .end array-data

    :array_5
    .array-data 8
        -0x406fc73eee525892L    # -0.0158415
        -0x405e8770215031c7L    # -0.03412294
        0x3ff0cca7787f6d9eL    # 1.0499644
    .end array-data
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/android/systemui/monet/hct/Cam16;->hue:D

    .line 5
    iput-wide p3, p0, Lcom/android/systemui/monet/hct/Cam16;->chroma:D

    .line 7
    iput-wide p5, p0, Lcom/android/systemui/monet/hct/Cam16;->j:D

    .line 9
    return-void
    .line 11
.end method

.method public static fromInt(I)Lcom/android/systemui/monet/hct/Cam16;
    .locals 13

    .line 1
    sget-object v6, Lcom/android/systemui/monet/hct/ViewingConditions;->DEFAULT:Lcom/android/systemui/monet/hct/ViewingConditions;

    .line 2
    const/high16 v0, 0xff0000

    .line 4
    and-int/2addr v0, p0

    .line 6
    shr-int/lit8 v0, v0, 0x10

    .line 7
    const v1, 0xff00

    .line 9
    and-int/2addr v1, p0

    .line 12
    shr-int/lit8 v1, v1, 0x8

    .line 13
    and-int/lit16 p0, p0, 0xff

    .line 15
    invoke-static {v0}, Lcom/android/systemui/monet/utils/ColorUtils;->linearized(I)D

    .line 17
    move-result-wide v2

    .line 20
    invoke-static {v1}, Lcom/android/systemui/monet/utils/ColorUtils;->linearized(I)D

    .line 21
    move-result-wide v0

    .line 24
    invoke-static {p0}, Lcom/android/systemui/monet/utils/ColorUtils;->linearized(I)D

    .line 25
    move-result-wide v4

    .line 28
    const-wide v7, 0x3fda63c2e8477c96L    # 0.41233895

    .line 29
    mul-double/2addr v7, v2

    .line 34
    const-wide v9, 0x3fd6e341ae4b2c79L    # 0.35762064

    .line 35
    mul-double/2addr v9, v0

    .line 40
    add-double/2addr v9, v7

    .line 41
    const-wide v7, 0x3fc71af7273e5d5eL    # 0.18051042

    .line 42
    mul-double/2addr v7, v4

    .line 47
    add-double/2addr v7, v9

    .line 48
    const-wide v9, 0x3fcb367a0f9096bcL    # 0.2126

    .line 49
    mul-double/2addr v9, v2

    .line 54
    const-wide v11, 0x3fe6e2eb1c432ca5L    # 0.7152

    .line 55
    mul-double/2addr v11, v0

    .line 60
    add-double/2addr v11, v9

    .line 61
    const-wide v9, 0x3fb27bb2fec56d5dL    # 0.0722

    .line 62
    mul-double/2addr v9, v4

    .line 67
    add-double/2addr v9, v11

    .line 68
    const-wide v11, 0x3f93c8fde0401c25L    # 0.01932141

    .line 69
    mul-double/2addr v2, v11

    .line 74
    const-wide v11, 0x3fbe818525c434ceL    # 0.11916382

    .line 75
    mul-double/2addr v0, v11

    .line 80
    add-double/2addr v0, v2

    .line 81
    const-wide v2, 0x3fee693974c0c730L    # 0.95034478

    .line 82
    mul-double/2addr v4, v2

    .line 87
    add-double/2addr v4, v0

    .line 88
    move-wide v0, v7

    .line 89
    move-wide v2, v9

    .line 90
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/monet/hct/Cam16;->fromXyzInViewingConditions(DDDLcom/android/systemui/monet/hct/ViewingConditions;)Lcom/android/systemui/monet/hct/Cam16;

    .line 91
    move-result-object p0

    .line 94
    return-object p0
    .line 95
.end method

.method public static fromXyzInViewingConditions(DDDLcom/android/systemui/monet/hct/ViewingConditions;)Lcom/android/systemui/monet/hct/Cam16;
    .locals 21

    .line 1
    move-object/from16 v0, p6

    .line 2
    sget-object v1, Lcom/android/systemui/monet/hct/Cam16;->XYZ_TO_CAM16RGB:[[D

    .line 4
    const/4 v2, 0x0

    .line 6
    aget-object v3, v1, v2

    .line 7
    aget-wide v4, v3, v2

    .line 9
    mul-double v4, v4, p0

    .line 11
    const/4 v6, 0x1

    .line 13
    aget-wide v7, v3, v6

    .line 14
    mul-double v7, v7, p2

    .line 16
    add-double/2addr v7, v4

    .line 18
    const/4 v4, 0x2

    .line 19
    aget-wide v9, v3, v4

    .line 20
    mul-double v9, v9, p4

    .line 22
    add-double/2addr v9, v7

    .line 24
    aget-object v3, v1, v6

    .line 25
    aget-wide v7, v3, v2

    .line 27
    mul-double v7, v7, p0

    .line 29
    aget-wide v11, v3, v6

    .line 31
    mul-double v11, v11, p2

    .line 33
    add-double/2addr v11, v7

    .line 35
    aget-wide v7, v3, v4

    .line 36
    mul-double v7, v7, p4

    .line 38
    add-double/2addr v7, v11

    .line 40
    aget-object v1, v1, v4

    .line 41
    aget-wide v11, v1, v2

    .line 43
    mul-double v11, v11, p0

    .line 45
    aget-wide v13, v1, v6

    .line 47
    mul-double v13, v13, p2

    .line 49
    add-double/2addr v13, v11

    .line 51
    aget-wide v11, v1, v4

    .line 52
    mul-double v11, v11, p4

    .line 54
    add-double/2addr v11, v13

    .line 56
    iget-object v1, v0, Lcom/android/systemui/monet/hct/ViewingConditions;->rgbD:[D

    .line 57
    aget-wide v2, v1, v2

    .line 59
    mul-double/2addr v2, v9

    .line 61
    aget-wide v5, v1, v6

    .line 62
    mul-double/2addr v5, v7

    .line 64
    aget-wide v7, v1, v4

    .line 65
    mul-double/2addr v7, v11

    .line 67
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 68
    move-result-wide v9

    .line 71
    iget-wide v11, v0, Lcom/android/systemui/monet/hct/ViewingConditions;->fl:D

    .line 72
    mul-double/2addr v9, v11

    .line 74
    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    .line 75
    div-double/2addr v9, v13

    .line 77
    const-wide v13, 0x3fdae147ae147ae1L    # 0.42

    .line 78
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 83
    move-result-wide v9

    .line 86
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    .line 87
    move-result-wide v15

    .line 90
    mul-double/2addr v15, v11

    .line 91
    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    .line 92
    div-double v0, v15, v17

    .line 94
    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 96
    move-result-wide v0

    .line 99
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    .line 100
    move-result-wide v15

    .line 103
    mul-double/2addr v15, v11

    .line 104
    div-double v11, v15, v17

    .line 105
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 107
    move-result-wide v11

    .line 110
    invoke-static {v2, v3}, Ljava/lang/Math;->signum(D)D

    .line 111
    move-result-wide v2

    .line 114
    const-wide/high16 v13, 0x4079000000000000L    # 400.0

    .line 115
    mul-double/2addr v2, v13

    .line 117
    mul-double/2addr v2, v9

    .line 118
    const-wide v15, 0x403b2147ae147ae1L    # 27.13

    .line 119
    add-double/2addr v9, v15

    .line 124
    div-double/2addr v2, v9

    .line 125
    invoke-static {v5, v6}, Ljava/lang/Math;->signum(D)D

    .line 126
    move-result-wide v4

    .line 129
    mul-double/2addr v4, v13

    .line 130
    mul-double/2addr v4, v0

    .line 131
    add-double/2addr v0, v15

    .line 132
    div-double/2addr v4, v0

    .line 133
    invoke-static {v7, v8}, Ljava/lang/Math;->signum(D)D

    .line 134
    move-result-wide v0

    .line 137
    mul-double/2addr v0, v13

    .line 138
    mul-double/2addr v0, v11

    .line 139
    add-double/2addr v11, v15

    .line 140
    div-double/2addr v0, v11

    .line 141
    const-wide/high16 v6, 0x4026000000000000L    # 11.0

    .line 142
    mul-double v8, v2, v6

    .line 144
    const-wide/high16 v10, -0x3fd8000000000000L    # -12.0

    .line 146
    mul-double/2addr v10, v4

    .line 148
    add-double/2addr v10, v8

    .line 149
    add-double/2addr v10, v0

    .line 150
    div-double/2addr v10, v6

    .line 151
    add-double v17, v2, v4

    .line 152
    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    .line 154
    const-wide/high16 v19, 0x4022000000000000L    # 9.0

    .line 156
    move-wide v13, v0

    .line 158
    invoke-static/range {v13 .. v20}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticOutline0;->m(DDDD)D

    .line 159
    move-result-wide v6

    .line 162
    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    .line 163
    mul-double v12, v2, v8

    .line 165
    mul-double/2addr v4, v8

    .line 167
    add-double/2addr v12, v4

    .line 168
    const-wide/high16 v14, 0x4035000000000000L    # 21.0

    .line 169
    mul-double/2addr v14, v0

    .line 171
    add-double/2addr v14, v12

    .line 172
    div-double/2addr v14, v8

    .line 173
    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    .line 174
    mul-double/2addr v2, v12

    .line 176
    add-double/2addr v2, v4

    .line 177
    add-double/2addr v2, v0

    .line 178
    div-double/2addr v2, v8

    .line 179
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    .line 180
    move-result-wide v0

    .line 183
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    .line 184
    move-result-wide v0

    .line 187
    const-wide/16 v4, 0x0

    .line 188
    cmpg-double v4, v0, v4

    .line 190
    const-wide v8, 0x4076800000000000L    # 360.0

    .line 192
    if-gez v4, :cond_0

    .line 197
    add-double/2addr v0, v8

    .line 199
    goto :goto_0

    .line 200
    :cond_0
    cmpl-double v4, v0, v8

    .line 201
    if-ltz v4, :cond_1

    .line 203
    sub-double/2addr v0, v8

    .line 205
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 206
    move-result-wide v4

    .line 209
    move-object/from16 v8, p6

    .line 210
    iget-wide v12, v8, Lcom/android/systemui/monet/hct/ViewingConditions;->nbb:D

    .line 212
    mul-double/2addr v2, v12

    .line 214
    iget-wide v12, v8, Lcom/android/systemui/monet/hct/ViewingConditions;->aw:D

    .line 215
    div-double/2addr v2, v12

    .line 217
    move-wide/from16 p0, v4

    .line 218
    iget-wide v4, v8, Lcom/android/systemui/monet/hct/ViewingConditions;->z:D

    .line 220
    move-wide/from16 p2, v14

    .line 222
    iget-wide v14, v8, Lcom/android/systemui/monet/hct/ViewingConditions;->c:D

    .line 224
    mul-double/2addr v4, v14

    .line 226
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 227
    move-result-wide v2

    .line 230
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 231
    mul-double/2addr v2, v4

    .line 233
    div-double v4, v2, v4

    .line 234
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 236
    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    .line 239
    add-double v12, v12, v16

    .line 241
    const-wide v16, 0x403423d70a3d70a4L    # 20.14

    .line 243
    cmpg-double v9, v0, v16

    .line 248
    if-gez v9, :cond_2

    .line 250
    const-wide v16, 0x4076800000000000L    # 360.0

    .line 252
    add-double v16, v0, v16

    .line 257
    goto :goto_1

    .line 259
    :cond_2
    move-wide/from16 v16, v0

    .line 260
    :goto_1
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    .line 262
    move-result-wide v16

    .line 265
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    .line 266
    add-double v16, v16, v18

    .line 268
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    .line 270
    move-result-wide v16

    .line 273
    const-wide v18, 0x400e666666666666L    # 3.8

    .line 274
    add-double v16, v16, v18

    .line 279
    const-wide/high16 v18, 0x3fd0000000000000L    # 0.25

    .line 281
    mul-double v16, v16, v18

    .line 283
    const-wide v18, 0x40ae0c4ec4ec4ec5L    # 3846.153846153846

    .line 285
    mul-double v16, v16, v18

    .line 290
    move-wide/from16 v18, v2

    .line 292
    iget-wide v2, v8, Lcom/android/systemui/monet/hct/ViewingConditions;->nc:D

    .line 294
    mul-double v16, v16, v2

    .line 296
    iget-wide v2, v8, Lcom/android/systemui/monet/hct/ViewingConditions;->ncb:D

    .line 298
    mul-double v16, v16, v2

    .line 300
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    .line 302
    move-result-wide v2

    .line 305
    mul-double v2, v2, v16

    .line 306
    const-wide v6, 0x3fd3851eb851eb85L    # 0.305

    .line 308
    move-wide/from16 v9, p2

    .line 313
    add-double/2addr v6, v9

    .line 315
    div-double/2addr v2, v6

    .line 316
    const-wide v6, 0x3fd28f5c28f5c28fL    # 0.29

    .line 317
    iget-wide v9, v8, Lcom/android/systemui/monet/hct/ViewingConditions;->n:D

    .line 322
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 324
    move-result-wide v6

    .line 327
    const-wide v9, 0x3ffa3d70a3d70a3dL    # 1.64

    .line 328
    sub-double/2addr v9, v6

    .line 333
    const-wide v6, 0x3fe75c28f5c28f5cL    # 0.73

    .line 334
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 339
    move-result-wide v6

    .line 342
    const-wide v9, 0x3feccccccccccccdL    # 0.9

    .line 343
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 348
    move-result-wide v2

    .line 351
    mul-double/2addr v2, v6

    .line 352
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 353
    move-result-wide v4

    .line 356
    mul-double/2addr v4, v2

    .line 357
    iget-wide v6, v8, Lcom/android/systemui/monet/hct/ViewingConditions;->flRoot:D

    .line 358
    mul-double/2addr v6, v4

    .line 360
    mul-double/2addr v2, v14

    .line 361
    div-double/2addr v2, v12

    .line 362
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 363
    const-wide v2, 0x3f9758e219652bd4L    # 0.0228

    .line 366
    mul-double/2addr v6, v2

    .line 371
    invoke-static {v6, v7}, Ljava/lang/Math;->log1p(D)D

    .line 372
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->cos(D)D

    .line 375
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->sin(D)D

    .line 378
    new-instance v2, Lcom/android/systemui/monet/hct/Cam16;

    .line 381
    move-object/from16 p0, v2

    .line 383
    move-wide/from16 p1, v0

    .line 385
    move-wide/from16 p3, v4

    .line 387
    move-wide/from16 p5, v18

    .line 389
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/monet/hct/Cam16;-><init>(DDD)V

    .line 391
    return-object v2
    .line 394
.end method
