.class public final Lcom/miui/clock/hct/ViewingConditions;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DEFAULT:Lcom/miui/clock/hct/ViewingConditions;


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
    .locals 45

    .line 1
    sget-object v0, Lcom/miui/clock/hct/ColorUtils;->WHITE_POINT_D65:[D

    .line 2
    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    .line 4
    invoke-static {v1, v2}, Lcom/miui/clock/hct/ColorUtils;->yFromLstar(D)D

    .line 6
    move-result-wide v3

    .line 9
    const-wide v5, 0x404fd4bbab8b494cL    # 63.66197723675813

    .line 10
    mul-double/2addr v3, v5

    .line 15
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 16
    div-double/2addr v3, v5

    .line 18
    const-wide v7, 0x3fb999999999999aL    # 0.1

    .line 19
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(DD)D

    .line 24
    move-result-wide v1

    .line 27
    sget-object v9, Lcom/miui/clock/hct/Cam16;->XYZ_TO_CAM16RGB:[[D

    .line 28
    const/4 v10, 0x0

    .line 30
    aget-wide v11, v0, v10

    .line 31
    aget-object v13, v9, v10

    .line 33
    aget-wide v14, v13, v10

    .line 35
    mul-double/2addr v14, v11

    .line 37
    const/16 v16, 0x1

    .line 38
    aget-wide v17, v0, v16

    .line 40
    aget-wide v19, v13, v16

    .line 42
    mul-double v19, v19, v17

    .line 44
    add-double v19, v19, v14

    .line 46
    const/4 v14, 0x2

    .line 48
    aget-wide v21, v0, v14

    .line 49
    aget-wide v23, v13, v14

    .line 51
    mul-double v23, v23, v21

    .line 53
    add-double v23, v23, v19

    .line 55
    aget-object v13, v9, v16

    .line 57
    aget-wide v19, v13, v10

    .line 59
    mul-double v19, v19, v11

    .line 61
    aget-wide v25, v13, v16

    .line 63
    mul-double v25, v25, v17

    .line 65
    add-double v25, v25, v19

    .line 67
    aget-wide v19, v13, v14

    .line 69
    mul-double v19, v19, v21

    .line 71
    add-double v19, v19, v25

    .line 73
    aget-object v9, v9, v14

    .line 75
    aget-wide v25, v9, v10

    .line 77
    mul-double v11, v11, v25

    .line 79
    aget-wide v25, v9, v16

    .line 81
    mul-double v17, v17, v25

    .line 83
    add-double v17, v17, v11

    .line 85
    aget-wide v11, v9, v14

    .line 87
    mul-double v21, v21, v11

    .line 89
    add-double v21, v21, v17

    .line 91
    const-wide v34, 0x3fe6147ae147ae14L    # 0.69

    .line 93
    neg-double v11, v3

    .line 98
    const-wide/high16 v17, 0x4045000000000000L    # 42.0

    .line 99
    sub-double v11, v11, v17

    .line 101
    const-wide/high16 v17, 0x4057000000000000L    # 92.0

    .line 103
    div-double v11, v11, v17

    .line 105
    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    .line 107
    move-result-wide v11

    .line 110
    const-wide v17, 0x3fd1c71c71c71c72L    # 0.2777777777777778

    .line 111
    mul-double v11, v11, v17

    .line 116
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    .line 118
    sub-double v11, v17, v11

    .line 120
    mul-double v11, v11, v17

    .line 122
    const-wide/16 v25, 0x0

    .line 124
    cmpg-double v9, v11, v25

    .line 126
    if-gez v9, :cond_0

    .line 128
    move-wide/from16 v11, v25

    .line 130
    goto :goto_0

    .line 132
    :cond_0
    cmpl-double v9, v11, v17

    .line 133
    if-lez v9, :cond_1

    .line 135
    move-wide/from16 v11, v17

    .line 137
    :cond_1
    :goto_0
    const/4 v9, 0x3

    .line 139
    new-array v13, v9, [D

    .line 140
    move-object/from16 v38, v13

    .line 142
    div-double v25, v5, v23

    .line 144
    mul-double v25, v25, v11

    .line 146
    add-double v25, v25, v17

    .line 148
    sub-double v25, v25, v11

    .line 150
    aput-wide v25, v13, v10

    .line 152
    div-double v25, v5, v19

    .line 154
    mul-double v25, v25, v11

    .line 156
    add-double v25, v25, v17

    .line 158
    sub-double v25, v25, v11

    .line 160
    aput-wide v25, v13, v16

    .line 162
    div-double v25, v5, v21

    .line 164
    mul-double v25, v25, v11

    .line 166
    add-double v25, v25, v17

    .line 168
    sub-double v25, v25, v11

    .line 170
    aput-wide v25, v13, v14

    .line 172
    const-wide/high16 v11, 0x4014000000000000L    # 5.0

    .line 174
    mul-double/2addr v11, v3

    .line 176
    add-double v25, v11, v17

    .line 177
    div-double v25, v17, v25

    .line 179
    mul-double v27, v25, v25

    .line 181
    mul-double v27, v27, v25

    .line 183
    mul-double v27, v27, v25

    .line 185
    sub-double v17, v17, v27

    .line 187
    mul-double v27, v27, v3

    .line 189
    mul-double v7, v7, v17

    .line 191
    mul-double v7, v7, v17

    .line 193
    invoke-static {v11, v12}, Ljava/lang/Math;->cbrt(D)D

    .line 195
    move-result-wide v3

    .line 198
    mul-double/2addr v3, v7

    .line 199
    add-double v3, v3, v27

    .line 200
    move-wide/from16 v39, v3

    .line 202
    invoke-static {v1, v2}, Lcom/miui/clock/hct/ColorUtils;->yFromLstar(D)D

    .line 204
    move-result-wide v1

    .line 207
    aget-wide v7, v0, v16

    .line 208
    div-double/2addr v1, v7

    .line 210
    move-wide/from16 v26, v1

    .line 211
    const-wide v7, 0x3ff7ae147ae147aeL    # 1.48

    .line 213
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 218
    move-result-wide v11

    .line 221
    add-double v43, v11, v7

    .line 222
    const-wide v7, 0x3fc999999999999aL    # 0.2

    .line 224
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 229
    move-result-wide v0

    .line 232
    const-wide v7, 0x3fe7333333333333L    # 0.725

    .line 233
    div-double/2addr v7, v0

    .line 238
    move-wide/from16 v30, v7

    .line 239
    move-wide/from16 v32, v7

    .line 241
    new-array v0, v9, [D

    .line 243
    aget-wide v1, v13, v10

    .line 245
    mul-double/2addr v1, v3

    .line 247
    mul-double v1, v1, v23

    .line 248
    div-double/2addr v1, v5

    .line 250
    const-wide v11, 0x3fdae147ae147ae1L    # 0.42

    .line 251
    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 256
    move-result-wide v1

    .line 259
    aput-wide v1, v0, v10

    .line 260
    aget-wide v1, v13, v16

    .line 262
    mul-double/2addr v1, v3

    .line 264
    mul-double v1, v1, v19

    .line 265
    div-double/2addr v1, v5

    .line 267
    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 268
    move-result-wide v1

    .line 271
    aput-wide v1, v0, v16

    .line 272
    aget-wide v1, v13, v14

    .line 274
    mul-double/2addr v1, v3

    .line 276
    mul-double v1, v1, v21

    .line 277
    div-double/2addr v1, v5

    .line 279
    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 280
    move-result-wide v1

    .line 283
    aput-wide v1, v0, v14

    .line 284
    aget-wide v5, v0, v10

    .line 286
    const-wide/high16 v9, 0x4079000000000000L    # 400.0

    .line 288
    mul-double v11, v5, v9

    .line 290
    const-wide v13, 0x403b2147ae147ae1L    # 27.13

    .line 292
    add-double/2addr v5, v13

    .line 297
    div-double/2addr v11, v5

    .line 298
    aget-wide v5, v0, v16

    .line 299
    mul-double v15, v5, v9

    .line 301
    add-double/2addr v5, v13

    .line 303
    div-double/2addr v15, v5

    .line 304
    mul-double/2addr v9, v1

    .line 305
    add-double/2addr v1, v13

    .line 306
    div-double/2addr v9, v1

    .line 307
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 308
    mul-double/2addr v11, v0

    .line 310
    add-double/2addr v11, v15

    .line 311
    const-wide v0, 0x3fa999999999999aL    # 0.05

    .line 312
    mul-double/2addr v9, v0

    .line 317
    add-double/2addr v9, v11

    .line 318
    mul-double v28, v9, v7

    .line 319
    new-instance v0, Lcom/miui/clock/hct/ViewingConditions;

    .line 321
    move-object/from16 v25, v0

    .line 323
    const-wide/high16 v1, 0x3fd0000000000000L    # 0.25

    .line 325
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    .line 327
    move-result-wide v41

    .line 330
    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    .line 331
    invoke-direct/range {v25 .. v44}, Lcom/miui/clock/hct/ViewingConditions;-><init>(DDDDDD[DDDD)V

    .line 333
    sput-object v0, Lcom/miui/clock/hct/ViewingConditions;->DEFAULT:Lcom/miui/clock/hct/ViewingConditions;

    .line 336
    return-void
    .line 338
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
    iput-wide v1, v0, Lcom/miui/clock/hct/ViewingConditions;->n:D

    .line 7
    move-wide v1, p3

    .line 9
    iput-wide v1, v0, Lcom/miui/clock/hct/ViewingConditions;->aw:D

    .line 10
    move-wide v1, p5

    .line 12
    iput-wide v1, v0, Lcom/miui/clock/hct/ViewingConditions;->nbb:D

    .line 13
    move-wide v1, p7

    .line 15
    iput-wide v1, v0, Lcom/miui/clock/hct/ViewingConditions;->ncb:D

    .line 16
    move-wide v1, p9

    .line 18
    iput-wide v1, v0, Lcom/miui/clock/hct/ViewingConditions;->c:D

    .line 19
    move-wide v1, p11

    .line 21
    iput-wide v1, v0, Lcom/miui/clock/hct/ViewingConditions;->nc:D

    .line 22
    move-object/from16 v1, p13

    .line 24
    iput-object v1, v0, Lcom/miui/clock/hct/ViewingConditions;->rgbD:[D

    .line 26
    move-wide/from16 v1, p14

    .line 28
    iput-wide v1, v0, Lcom/miui/clock/hct/ViewingConditions;->fl:D

    .line 30
    move-wide/from16 v1, p16

    .line 32
    iput-wide v1, v0, Lcom/miui/clock/hct/ViewingConditions;->flRoot:D

    .line 34
    move-wide/from16 v1, p18

    .line 36
    iput-wide v1, v0, Lcom/miui/clock/hct/ViewingConditions;->z:D

    .line 38
    return-void
    .line 40
.end method
