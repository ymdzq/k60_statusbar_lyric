.class public final Landroidx/core/content/res/ViewingConditions;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DEFAULT:Landroidx/core/content/res/ViewingConditions;


# instance fields
.field public final mAw:F

.field public final mC:F

.field public final mFl:F

.field public final mFlRoot:F

.field public final mN:F

.field public final mNbb:F

.field public final mNc:F

.field public final mNcb:F

.field public final mRgbD:[F

.field public final mZ:F


# direct methods
.method public static constructor <clinit>()V
    .locals 24

    .line 1
    sget-object v0, Landroidx/core/content/res/CamUtils;->WHITE_POINT_D65:[F

    .line 2
    invoke-static {}, Landroidx/core/content/res/CamUtils;->yFromLStar()F

    .line 4
    move-result v1

    .line 7
    float-to-double v1, v1

    .line 8
    const-wide v3, 0x404fd4bbab8b494cL    # 63.66197723675813

    .line 9
    mul-double/2addr v1, v3

    .line 14
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 15
    div-double/2addr v1, v3

    .line 17
    double-to-float v1, v1

    .line 18
    sget-object v2, Landroidx/core/content/res/CamUtils;->XYZ_TO_CAM16RGB:[[F

    .line 19
    const/4 v5, 0x0

    .line 21
    aget v6, v0, v5

    .line 22
    aget-object v7, v2, v5

    .line 24
    aget v8, v7, v5

    .line 26
    mul-float/2addr v8, v6

    .line 28
    const/4 v9, 0x1

    .line 29
    aget v10, v0, v9

    .line 30
    aget v11, v7, v9

    .line 32
    mul-float/2addr v11, v10

    .line 34
    add-float/2addr v11, v8

    .line 35
    const/4 v8, 0x2

    .line 36
    aget v12, v0, v8

    .line 37
    aget v7, v7, v8

    .line 39
    mul-float/2addr v7, v12

    .line 41
    add-float/2addr v7, v11

    .line 42
    aget-object v11, v2, v9

    .line 43
    aget v13, v11, v5

    .line 45
    mul-float/2addr v13, v6

    .line 47
    aget v14, v11, v9

    .line 48
    mul-float/2addr v14, v10

    .line 50
    add-float/2addr v14, v13

    .line 51
    aget v11, v11, v8

    .line 52
    mul-float/2addr v11, v12

    .line 54
    add-float/2addr v11, v14

    .line 55
    aget-object v2, v2, v8

    .line 56
    aget v13, v2, v5

    .line 58
    mul-float/2addr v6, v13

    .line 60
    aget v13, v2, v9

    .line 61
    mul-float/2addr v10, v13

    .line 63
    add-float/2addr v10, v6

    .line 64
    aget v2, v2, v8

    .line 65
    mul-float/2addr v12, v2

    .line 67
    add-float/2addr v12, v10

    .line 68
    const/high16 v2, 0x3f800000    # 1.0f

    .line 69
    float-to-double v13, v2

    .line 71
    const-wide v15, 0x3feccccccccccccdL    # 0.9

    .line 72
    cmpl-double v6, v13, v15

    .line 77
    if-ltz v6, :cond_0

    .line 79
    const v6, 0x3dccccd3    # 0.100000046f

    .line 81
    const v10, 0x3f170a3d    # 0.59f

    .line 84
    goto :goto_0

    .line 87
    :cond_0
    const v6, 0x3e051eb7    # 0.12999998f

    .line 88
    const v10, 0x3f066666    # 0.525f

    .line 91
    :goto_0
    add-float v18, v6, v10

    .line 94
    neg-float v6, v1

    .line 96
    const/high16 v10, 0x42280000    # 42.0f

    .line 97
    sub-float/2addr v6, v10

    .line 99
    const/high16 v10, 0x42b80000    # 92.0f

    .line 100
    div-float/2addr v6, v10

    .line 102
    float-to-double v13, v6

    .line 103
    invoke-static {v13, v14}, Ljava/lang/Math;->exp(D)D

    .line 104
    move-result-wide v13

    .line 107
    double-to-float v6, v13

    .line 108
    const v10, 0x3e8e38e4

    .line 109
    mul-float/2addr v6, v10

    .line 112
    sub-float v6, v2, v6

    .line 113
    mul-float/2addr v6, v2

    .line 115
    float-to-double v13, v6

    .line 116
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    .line 117
    cmpl-double v10, v13, v15

    .line 119
    if-lez v10, :cond_1

    .line 121
    move v6, v2

    .line 123
    goto :goto_1

    .line 124
    :cond_1
    const-wide/16 v15, 0x0

    .line 125
    cmpg-double v10, v13, v15

    .line 127
    if-gez v10, :cond_2

    .line 129
    const/4 v6, 0x0

    .line 131
    :cond_2
    :goto_1
    const/4 v10, 0x3

    .line 132
    new-array v15, v10, [F

    .line 133
    const/high16 v13, 0x42c80000    # 100.0f

    .line 135
    div-float v14, v13, v7

    .line 137
    mul-float/2addr v14, v6

    .line 139
    add-float/2addr v14, v2

    .line 140
    sub-float/2addr v14, v6

    .line 141
    aput v14, v15, v5

    .line 142
    div-float v14, v13, v11

    .line 144
    mul-float/2addr v14, v6

    .line 146
    add-float/2addr v14, v2

    .line 147
    sub-float/2addr v14, v6

    .line 148
    aput v14, v15, v9

    .line 149
    div-float/2addr v13, v12

    .line 151
    mul-float/2addr v13, v6

    .line 152
    add-float/2addr v13, v2

    .line 153
    sub-float/2addr v13, v6

    .line 154
    aput v13, v15, v8

    .line 155
    const/high16 v6, 0x40a00000    # 5.0f

    .line 157
    mul-float/2addr v6, v1

    .line 159
    add-float/2addr v6, v2

    .line 160
    div-float v6, v2, v6

    .line 161
    mul-float v13, v6, v6

    .line 163
    mul-float/2addr v13, v6

    .line 165
    mul-float/2addr v13, v6

    .line 166
    sub-float/2addr v2, v13

    .line 167
    mul-float/2addr v13, v1

    .line 168
    const v6, 0x3dcccccd    # 0.1f

    .line 169
    mul-float/2addr v6, v2

    .line 172
    mul-float/2addr v6, v2

    .line 173
    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    .line 174
    float-to-double v1, v1

    .line 176
    mul-double v1, v1, v16

    .line 177
    invoke-static {v1, v2}, Ljava/lang/Math;->cbrt(D)D

    .line 179
    move-result-wide v1

    .line 182
    double-to-float v1, v1

    .line 183
    mul-float/2addr v6, v1

    .line 184
    add-float v1, v6, v13

    .line 185
    invoke-static {}, Landroidx/core/content/res/CamUtils;->yFromLStar()F

    .line 187
    move-result v2

    .line 190
    aget v0, v0, v9

    .line 191
    div-float v14, v2, v0

    .line 193
    float-to-double v8, v14

    .line 195
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    .line 196
    move-result-wide v2

    .line 199
    double-to-float v2, v2

    .line 200
    const v3, 0x3fbd70a4    # 1.48f

    .line 201
    add-float v23, v2, v3

    .line 204
    const-wide v2, 0x3fc999999999999aL    # 0.2

    .line 206
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 211
    move-result-wide v2

    .line 214
    double-to-float v2, v2

    .line 215
    const v3, 0x3f39999a    # 0.725f

    .line 216
    div-float v2, v3, v2

    .line 219
    new-array v3, v10, [F

    .line 221
    aget v6, v15, v5

    .line 223
    mul-float/2addr v6, v1

    .line 225
    mul-float/2addr v6, v7

    .line 226
    float-to-double v6, v6

    .line 227
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    .line 228
    div-double/2addr v6, v8

    .line 230
    const-wide v8, 0x3fdae147ae147ae1L    # 0.42

    .line 231
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 236
    move-result-wide v6

    .line 239
    double-to-float v6, v6

    .line 240
    aput v6, v3, v5

    .line 241
    const/4 v0, 0x1

    .line 243
    aget v6, v15, v0

    .line 244
    mul-float/2addr v6, v1

    .line 246
    mul-float/2addr v6, v11

    .line 247
    float-to-double v6, v6

    .line 248
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    .line 249
    div-double/2addr v6, v10

    .line 251
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 252
    move-result-wide v6

    .line 255
    double-to-float v6, v6

    .line 256
    aput v6, v3, v0

    .line 257
    const/4 v4, 0x2

    .line 259
    aget v6, v15, v4

    .line 260
    mul-float/2addr v6, v1

    .line 262
    mul-float/2addr v6, v12

    .line 263
    float-to-double v6, v6

    .line 264
    div-double/2addr v6, v10

    .line 265
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 266
    move-result-wide v6

    .line 269
    double-to-float v6, v6

    .line 270
    aput v6, v3, v4

    .line 271
    aget v4, v3, v5

    .line 273
    const/high16 v5, 0x43c80000    # 400.0f

    .line 275
    mul-float v7, v4, v5

    .line 277
    const v8, 0x41d90a3d    # 27.13f

    .line 279
    add-float/2addr v4, v8

    .line 282
    div-float/2addr v7, v4

    .line 283
    const/4 v0, 0x1

    .line 284
    aget v0, v3, v0

    .line 285
    mul-float v3, v0, v5

    .line 287
    add-float/2addr v0, v8

    .line 289
    div-float/2addr v3, v0

    .line 290
    mul-float/2addr v5, v6

    .line 291
    add-float/2addr v6, v8

    .line 292
    div-float/2addr v5, v6

    .line 293
    const/high16 v0, 0x40000000    # 2.0f

    .line 294
    mul-float/2addr v7, v0

    .line 296
    add-float/2addr v7, v3

    .line 297
    const v0, 0x3d4ccccd    # 0.05f

    .line 298
    mul-float/2addr v5, v0

    .line 301
    add-float/2addr v5, v7

    .line 302
    mul-float v0, v5, v2

    .line 303
    new-instance v3, Landroidx/core/content/res/ViewingConditions;

    .line 305
    float-to-double v4, v1

    .line 307
    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    .line 308
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 310
    move-result-wide v4

    .line 313
    double-to-float v4, v4

    .line 314
    const/high16 v19, 0x3f800000    # 1.0f

    .line 315
    move-object v13, v3

    .line 317
    move-object v5, v15

    .line 318
    move v15, v0

    .line 319
    move/from16 v16, v2

    .line 320
    move/from16 v17, v2

    .line 322
    move-object/from16 v20, v5

    .line 324
    move/from16 v21, v1

    .line 326
    move/from16 v22, v4

    .line 328
    invoke-direct/range {v13 .. v23}, Landroidx/core/content/res/ViewingConditions;-><init>(FFFFFF[FFFF)V

    .line 330
    sput-object v3, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    .line 333
    return-void
    .line 335
.end method

.method public constructor <init>(FFFFFF[FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/core/content/res/ViewingConditions;->mN:F

    .line 5
    iput p2, p0, Landroidx/core/content/res/ViewingConditions;->mAw:F

    .line 7
    iput p3, p0, Landroidx/core/content/res/ViewingConditions;->mNbb:F

    .line 9
    iput p4, p0, Landroidx/core/content/res/ViewingConditions;->mNcb:F

    .line 11
    iput p5, p0, Landroidx/core/content/res/ViewingConditions;->mC:F

    .line 13
    iput p6, p0, Landroidx/core/content/res/ViewingConditions;->mNc:F

    .line 15
    iput-object p7, p0, Landroidx/core/content/res/ViewingConditions;->mRgbD:[F

    .line 17
    iput p8, p0, Landroidx/core/content/res/ViewingConditions;->mFl:F

    .line 19
    iput p9, p0, Landroidx/core/content/res/ViewingConditions;->mFlRoot:F

    .line 21
    iput p10, p0, Landroidx/core/content/res/ViewingConditions;->mZ:F

    .line 23
    return-void
    .line 25
.end method
