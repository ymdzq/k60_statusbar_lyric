.class public final Landroidx/appcompat/app/TwilightCalculator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static sInstance:Landroidx/appcompat/app/TwilightCalculator;


# instance fields
.field public state:I

.field public sunrise:J

.field public sunset:J


# virtual methods
.method public final calculateTwilight(DDJ)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    const-wide v1, 0xdc6d62da00L

    .line 4
    sub-long v3, p5, v1

    .line 9
    long-to-float v3, v3

    .line 11
    const v4, 0x4ca4cb80    # 8.64E7f

    .line 12
    div-float/2addr v3, v4

    .line 15
    const v4, 0x3c8ceb25

    .line 16
    mul-float/2addr v4, v3

    .line 19
    const v5, 0x40c7ae92

    .line 20
    add-float/2addr v4, v5

    .line 23
    float-to-double v11, v4

    .line 24
    const-wide v7, 0x3fa11c5fc0000000L    # 0.03341960161924362

    .line 25
    move-wide v5, v11

    .line 30
    move-wide v9, v11

    .line 31
    invoke-static/range {v5 .. v10}, Landroidx/appcompat/app/TwilightCalculator$$ExternalSyntheticOutline0;->m(DDD)D

    .line 32
    move-result-wide v17

    .line 35
    const/high16 v5, 0x40000000    # 2.0f

    .line 36
    mul-float/2addr v5, v4

    .line 38
    float-to-double v13, v5

    .line 39
    const-wide v15, 0x3f36e05b00000000L    # 3.4906598739326E-4

    .line 40
    invoke-static/range {v13 .. v18}, Landroidx/appcompat/app/TwilightCalculator$$ExternalSyntheticOutline0;->m(DDD)D

    .line 45
    move-result-wide v5

    .line 48
    const/high16 v7, 0x40400000    # 3.0f

    .line 49
    mul-float/2addr v4, v7

    .line 51
    float-to-double v7, v4

    .line 52
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 53
    move-result-wide v7

    .line 56
    const-wide v9, 0x3ed5f61cc0000000L    # 5.236000106378924E-6

    .line 57
    mul-double/2addr v7, v9

    .line 62
    add-double/2addr v7, v5

    .line 63
    const-wide v4, 0x3ffcbed85e1ce332L    # 1.796593063

    .line 64
    add-double/2addr v7, v4

    .line 69
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 70
    add-double v13, v7, v4

    .line 75
    move-wide/from16 v4, p3

    .line 77
    neg-double v4, v4

    .line 79
    const-wide v6, 0x4076800000000000L    # 360.0

    .line 80
    div-double/2addr v4, v6

    .line 85
    const v6, 0x3a6bedfa    # 9.0E-4f

    .line 86
    sub-float/2addr v3, v6

    .line 89
    float-to-double v7, v3

    .line 90
    sub-double/2addr v7, v4

    .line 91
    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    .line 92
    move-result-wide v7

    .line 95
    long-to-float v3, v7

    .line 96
    add-float/2addr v3, v6

    .line 97
    float-to-double v6, v3

    .line 98
    add-double v9, v6, v4

    .line 99
    const-wide v7, 0x3f75b573eab367a1L    # 0.0053

    .line 101
    move-wide v5, v11

    .line 106
    invoke-static/range {v5 .. v10}, Landroidx/appcompat/app/TwilightCalculator$$ExternalSyntheticOutline0;->m(DDD)D

    .line 107
    move-result-wide v3

    .line 110
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 111
    mul-double/2addr v5, v13

    .line 113
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    .line 114
    move-result-wide v5

    .line 117
    const-wide v7, -0x4083bcd35a858794L    # -0.0069

    .line 118
    mul-double/2addr v5, v7

    .line 123
    add-double/2addr v5, v3

    .line 124
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    .line 125
    move-result-wide v3

    .line 128
    const-wide v7, 0x3fda31a380000000L    # 0.4092797040939331

    .line 129
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 134
    move-result-wide v7

    .line 137
    mul-double/2addr v7, v3

    .line 138
    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    .line 139
    move-result-wide v3

    .line 142
    const-wide v7, 0x3f91df46a0000000L    # 0.01745329238474369

    .line 143
    mul-double v7, v7, p1

    .line 148
    const-wide v9, -0x4045311600000000L    # -0.10471975803375244

    .line 150
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    .line 155
    move-result-wide v9

    .line 158
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 159
    move-result-wide v11

    .line 162
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 163
    move-result-wide v13

    .line 166
    mul-double/2addr v13, v11

    .line 167
    sub-double/2addr v9, v13

    .line 168
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 169
    move-result-wide v7

    .line 172
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    .line 173
    move-result-wide v3

    .line 176
    mul-double/2addr v3, v7

    .line 177
    div-double/2addr v9, v3

    .line 178
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 179
    cmpl-double v3, v9, v3

    .line 181
    const/4 v4, 0x1

    .line 183
    const-wide/16 v7, -0x1

    .line 184
    if-ltz v3, :cond_0

    .line 186
    iput v4, v0, Landroidx/appcompat/app/TwilightCalculator;->state:I

    .line 188
    iput-wide v7, v0, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    .line 190
    iput-wide v7, v0, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 192
    return-void

    .line 194
    :cond_0
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    .line 195
    cmpg-double v3, v9, v11

    .line 197
    const/4 v11, 0x0

    .line 199
    if-gtz v3, :cond_1

    .line 200
    iput v11, v0, Landroidx/appcompat/app/TwilightCalculator;->state:I

    .line 202
    iput-wide v7, v0, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    .line 204
    iput-wide v7, v0, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 206
    return-void

    .line 208
    :cond_1
    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    .line 209
    move-result-wide v7

    .line 212
    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    .line 213
    div-double/2addr v7, v9

    .line 218
    double-to-float v3, v7

    .line 219
    float-to-double v7, v3

    .line 220
    add-double v9, v5, v7

    .line 221
    const-wide v12, 0x4194997000000000L    # 8.64E7

    .line 223
    mul-double/2addr v9, v12

    .line 228
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    .line 229
    move-result-wide v9

    .line 232
    add-long/2addr v9, v1

    .line 233
    iput-wide v9, v0, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    .line 234
    sub-double/2addr v5, v7

    .line 236
    mul-double/2addr v5, v12

    .line 237
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    .line 238
    move-result-wide v5

    .line 241
    add-long/2addr v5, v1

    .line 242
    iput-wide v5, v0, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    .line 243
    cmp-long v1, v5, p5

    .line 245
    if-gez v1, :cond_2

    .line 247
    iget-wide v1, v0, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    .line 249
    cmp-long v1, v1, p5

    .line 251
    if-lez v1, :cond_2

    .line 253
    iput v11, v0, Landroidx/appcompat/app/TwilightCalculator;->state:I

    .line 255
    goto :goto_0

    .line 257
    :cond_2
    iput v4, v0, Landroidx/appcompat/app/TwilightCalculator;->state:I

    .line 258
    :goto_0
    return-void
    .line 260
.end method
