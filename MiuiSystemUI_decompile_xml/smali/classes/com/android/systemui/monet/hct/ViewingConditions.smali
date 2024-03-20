.class public final Lcom/android/systemui/monet/hct/ViewingConditions;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DEFAULT:Lcom/android/systemui/monet/hct/ViewingConditions;


# instance fields
.field public final aw:D

.field public final c:D

.field public final fl:D

.field public final flRoot:D

.field public final n:D

.field public final nbb:D

.field public final nc:D

.field public final ncb:D

.field public final rgbD:[D

.field public final z:D


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    .line 2
    invoke-static {v0, v1}, Lcom/android/systemui/monet/hct/ViewingConditions;->defaultWithBackgroundLstar(D)Lcom/android/systemui/monet/hct/ViewingConditions;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/monet/hct/ViewingConditions;->DEFAULT:Lcom/android/systemui/monet/hct/ViewingConditions;

    .line 8
    return-void
    .line 10
.end method

.method public constructor <init>(DDDDDD[DDDD)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    move-wide v1, p1

    .line 6
    iput-wide v1, v0, Lcom/android/systemui/monet/hct/ViewingConditions;->n:D

    .line 7
    move-wide v1, p3

    .line 9
    iput-wide v1, v0, Lcom/android/systemui/monet/hct/ViewingConditions;->aw:D

    .line 10
    move-wide v1, p5

    .line 12
    iput-wide v1, v0, Lcom/android/systemui/monet/hct/ViewingConditions;->nbb:D

    .line 13
    move-wide v1, p7

    .line 15
    iput-wide v1, v0, Lcom/android/systemui/monet/hct/ViewingConditions;->ncb:D

    .line 16
    move-wide v1, p9

    .line 18
    iput-wide v1, v0, Lcom/android/systemui/monet/hct/ViewingConditions;->c:D

    .line 19
    move-wide v1, p11

    .line 21
    iput-wide v1, v0, Lcom/android/systemui/monet/hct/ViewingConditions;->nc:D

    .line 22
    move-object/from16 v1, p13

    .line 24
    iput-object v1, v0, Lcom/android/systemui/monet/hct/ViewingConditions;->rgbD:[D

    .line 26
    move-wide/from16 v1, p14

    .line 28
    iput-wide v1, v0, Lcom/android/systemui/monet/hct/ViewingConditions;->fl:D

    .line 30
    move-wide/from16 v1, p16

    .line 32
    iput-wide v1, v0, Lcom/android/systemui/monet/hct/ViewingConditions;->flRoot:D

    .line 34
    move-wide/from16 v1, p18

    .line 36
    iput-wide v1, v0, Lcom/android/systemui/monet/hct/ViewingConditions;->z:D

    .line 38
    return-void
    .line 40
.end method

.method public static defaultWithBackgroundLstar(D)Lcom/android/systemui/monet/hct/ViewingConditions;
    .locals 45

    .line 1
    sget-object v0, Lcom/android/systemui/monet/utils/ColorUtils;->WHITE_POINT_D65:[D

    .line 2
    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    .line 4
    invoke-static {v1, v2}, Lcom/android/systemui/monet/utils/ColorUtils;->yFromLstar(D)D

    .line 6
    move-result-wide v1

    .line 9
    const-wide v3, 0x404fd4bbab8b494cL    # 63.66197723675813

    .line 10
    mul-double/2addr v1, v3

    .line 15
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 16
    div-double/2addr v1, v3

    .line 18
    const-wide v5, 0x3fb999999999999aL    # 0.1

    .line 19
    move-wide/from16 v7, p0

    .line 24
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    .line 26
    move-result-wide v7

    .line 29
    sget-object v9, Lcom/android/systemui/monet/hct/Cam16;->XYZ_TO_CAM16RGB:[[D

    .line 30
    const/4 v10, 0x0

    .line 32
    aget-wide v11, v0, v10

    .line 33
    aget-object v13, v9, v10

    .line 35
    aget-wide v14, v13, v10

    .line 37
    mul-double/2addr v14, v11

    .line 39
    const/16 v16, 0x1

    .line 40
    aget-wide v17, v0, v16

    .line 42
    aget-wide v19, v13, v16

    .line 44
    mul-double v19, v19, v17

    .line 46
    add-double v19, v19, v14

    .line 48
    const/4 v14, 0x2

    .line 50
    aget-wide v21, v0, v14

    .line 51
    aget-wide v23, v13, v14

    .line 53
    mul-double v23, v23, v21

    .line 55
    add-double v23, v23, v19

    .line 57
    aget-object v13, v9, v16

    .line 59
    aget-wide v19, v13, v10

    .line 61
    mul-double v19, v19, v11

    .line 63
    aget-wide v25, v13, v16

    .line 65
    mul-double v25, v25, v17

    .line 67
    add-double v25, v25, v19

    .line 69
    aget-wide v19, v13, v14

    .line 71
    mul-double v19, v19, v21

    .line 73
    add-double v19, v19, v25

    .line 75
    aget-object v9, v9, v14

    .line 77
    aget-wide v25, v9, v10

    .line 79
    mul-double v11, v11, v25

    .line 81
    aget-wide v25, v9, v16

    .line 83
    mul-double v17, v17, v25

    .line 85
    add-double v17, v17, v11

    .line 87
    aget-wide v11, v9, v14

    .line 89
    mul-double v21, v21, v11

    .line 91
    add-double v21, v21, v17

    .line 93
    const-wide v34, 0x3fe6147ae147ae14L    # 0.69

    .line 95
    neg-double v11, v1

    .line 100
    const-wide/high16 v17, 0x4045000000000000L    # 42.0

    .line 101
    sub-double v11, v11, v17

    .line 103
    const-wide/high16 v17, 0x4057000000000000L    # 92.0

    .line 105
    div-double v11, v11, v17

    .line 107
    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    .line 109
    move-result-wide v11

    .line 112
    const-wide v17, 0x3fd1c71c71c71c72L    # 0.2777777777777778

    .line 113
    mul-double v11, v11, v17

    .line 118
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    .line 120
    sub-double v11, v17, v11

    .line 122
    mul-double v11, v11, v17

    .line 124
    const-wide/16 v25, 0x0

    .line 126
    cmpg-double v9, v11, v25

    .line 128
    if-gez v9, :cond_0

    .line 130
    move-wide/from16 v11, v25

    .line 132
    goto :goto_0

    .line 134
    :cond_0
    cmpl-double v9, v11, v17

    .line 135
    if-lez v9, :cond_1

    .line 137
    move-wide/from16 v11, v17

    .line 139
    :cond_1
    :goto_0
    const/4 v9, 0x3

    .line 141
    new-array v13, v9, [D

    .line 142
    move-object/from16 v38, v13

    .line 144
    div-double v25, v3, v23

    .line 146
    mul-double v25, v25, v11

    .line 148
    add-double v25, v25, v17

    .line 150
    sub-double v25, v25, v11

    .line 152
    aput-wide v25, v13, v10

    .line 154
    div-double v25, v3, v19

    .line 156
    mul-double v25, v25, v11

    .line 158
    add-double v25, v25, v17

    .line 160
    sub-double v25, v25, v11

    .line 162
    aput-wide v25, v13, v16

    .line 164
    div-double v25, v3, v21

    .line 166
    mul-double v25, v25, v11

    .line 168
    add-double v25, v25, v17

    .line 170
    sub-double v25, v25, v11

    .line 172
    aput-wide v25, v13, v14

    .line 174
    const-wide/high16 v11, 0x4014000000000000L    # 5.0

    .line 176
    mul-double/2addr v11, v1

    .line 178
    add-double v25, v11, v17

    .line 179
    div-double v25, v17, v25

    .line 181
    mul-double v27, v25, v25

    .line 183
    mul-double v27, v27, v25

    .line 185
    mul-double v27, v27, v25

    .line 187
    sub-double v17, v17, v27

    .line 189
    mul-double v27, v27, v1

    .line 191
    mul-double v5, v5, v17

    .line 193
    mul-double v5, v5, v17

    .line 195
    invoke-static {v11, v12}, Ljava/lang/Math;->cbrt(D)D

    .line 197
    move-result-wide v1

    .line 200
    mul-double/2addr v1, v5

    .line 201
    add-double v1, v1, v27

    .line 202
    move-wide/from16 v39, v1

    .line 204
    invoke-static {v7, v8}, Lcom/android/systemui/monet/utils/ColorUtils;->yFromLstar(D)D

    .line 206
    move-result-wide v5

    .line 209
    aget-wide v7, v0, v16

    .line 210
    div-double/2addr v5, v7

    .line 212
    move-wide/from16 v26, v5

    .line 213
    const-wide v7, 0x3ff7ae147ae147aeL    # 1.48

    .line 215
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 220
    move-result-wide v11

    .line 223
    add-double v43, v11, v7

    .line 224
    const-wide v7, 0x3fc999999999999aL    # 0.2

    .line 226
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 231
    move-result-wide v5

    .line 234
    const-wide v7, 0x3fe7333333333333L    # 0.725

    .line 235
    div-double/2addr v7, v5

    .line 240
    move-wide/from16 v30, v7

    .line 241
    move-wide/from16 v32, v7

    .line 243
    new-array v0, v9, [D

    .line 245
    aget-wide v5, v13, v10

    .line 247
    mul-double/2addr v5, v1

    .line 249
    mul-double v5, v5, v23

    .line 250
    div-double/2addr v5, v3

    .line 252
    const-wide v11, 0x3fdae147ae147ae1L    # 0.42

    .line 253
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 258
    move-result-wide v5

    .line 261
    aput-wide v5, v0, v10

    .line 262
    aget-wide v5, v13, v16

    .line 264
    mul-double/2addr v5, v1

    .line 266
    mul-double v5, v5, v19

    .line 267
    div-double/2addr v5, v3

    .line 269
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 270
    move-result-wide v5

    .line 273
    aput-wide v5, v0, v16

    .line 274
    aget-wide v5, v13, v14

    .line 276
    mul-double/2addr v5, v1

    .line 278
    mul-double v5, v5, v21

    .line 279
    div-double/2addr v5, v3

    .line 281
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 282
    move-result-wide v3

    .line 285
    aput-wide v3, v0, v14

    .line 286
    aget-wide v5, v0, v10

    .line 288
    const-wide/high16 v9, 0x4079000000000000L    # 400.0

    .line 290
    mul-double v11, v5, v9

    .line 292
    const-wide v13, 0x403b2147ae147ae1L    # 27.13

    .line 294
    add-double/2addr v5, v13

    .line 299
    div-double/2addr v11, v5

    .line 300
    aget-wide v5, v0, v16

    .line 301
    mul-double v15, v5, v9

    .line 303
    add-double/2addr v5, v13

    .line 305
    div-double/2addr v15, v5

    .line 306
    mul-double/2addr v9, v3

    .line 307
    add-double/2addr v3, v13

    .line 308
    div-double/2addr v9, v3

    .line 309
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 310
    mul-double/2addr v11, v3

    .line 312
    add-double/2addr v11, v15

    .line 313
    const-wide v3, 0x3fa999999999999aL    # 0.05

    .line 314
    mul-double/2addr v9, v3

    .line 319
    add-double/2addr v9, v11

    .line 320
    mul-double v28, v9, v7

    .line 321
    new-instance v0, Lcom/android/systemui/monet/hct/ViewingConditions;

    .line 323
    move-object/from16 v25, v0

    .line 325
    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    .line 327
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 329
    move-result-wide v41

    .line 332
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    .line 333
    invoke-direct/range {v25 .. v44}, Lcom/android/systemui/monet/hct/ViewingConditions;-><init>(DDDDDD[DDDD)V

    .line 335
    return-object v0
    .line 338
.end method
