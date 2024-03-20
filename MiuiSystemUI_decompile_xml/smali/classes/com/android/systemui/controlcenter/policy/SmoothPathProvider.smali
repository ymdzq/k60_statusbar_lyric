.class public final Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 6
    return-void
    .line 8
.end method

.method public static radToAngle(D)D
    .locals 2

    .line 1
    const-wide v0, 0x4066800000000000L    # 180.0

    .line 2
    mul-double/2addr p0, v0

    .line 7
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 8
    div-double/2addr p0, v0

    .line 13
    return-wide p0
    .line 14
.end method


# virtual methods
.method public final buildSmoothData(II[FD)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v8, p1

    .line 4
    move/from16 v9, p2

    .line 6
    move-object/from16 v1, p3

    .line 8
    new-instance v2, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 10
    move-wide/from16 v10, p4

    .line 12
    invoke-direct {v2, v8, v9, v10, v11}, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;-><init>(IID)V

    .line 14
    iput-object v2, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 17
    if-nez v1, :cond_0

    .line 19
    return-void

    .line 21
    :cond_0
    const/16 v2, 0x8

    .line 22
    new-array v3, v2, [F

    .line 24
    fill-array-data v3, :array_0

    .line 26
    const/4 v4, 0x0

    .line 29
    move v5, v4

    .line 30
    :goto_0
    array-length v6, v1

    .line 31
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    .line 32
    move-result v6

    .line 35
    if-ge v5, v6, :cond_1

    .line 36
    aget v6, v1, v5

    .line 38
    aput v6, v3, v5

    .line 40
    add-int/lit8 v5, v5, 0x1

    .line 42
    goto :goto_0

    .line 44
    :cond_1
    aget v1, v3, v4

    .line 45
    const/4 v2, 0x1

    .line 47
    aget v2, v3, v2

    .line 48
    const/4 v4, 0x2

    .line 50
    aget v4, v3, v4

    .line 51
    const/4 v5, 0x3

    .line 53
    aget v5, v3, v5

    .line 54
    const/4 v6, 0x4

    .line 56
    aget v6, v3, v6

    .line 57
    const/4 v7, 0x5

    .line 59
    aget v7, v3, v7

    .line 60
    const/4 v12, 0x6

    .line 62
    aget v12, v3, v12

    .line 63
    const/4 v13, 0x7

    .line 65
    aget v3, v3, v13

    .line 66
    add-float v13, v1, v4

    .line 68
    int-to-float v14, v8

    .line 70
    cmpl-float v13, v13, v14

    .line 71
    if-lez v13, :cond_2

    .line 73
    mul-float v13, v14, v1

    .line 75
    add-float v15, v1, v4

    .line 77
    div-float/2addr v13, v15

    .line 79
    mul-float v15, v14, v4

    .line 80
    add-float/2addr v1, v4

    .line 82
    div-float v4, v15, v1

    .line 83
    move v1, v13

    .line 85
    :cond_2
    move v13, v4

    .line 86
    add-float v4, v5, v7

    .line 87
    int-to-float v15, v9

    .line 89
    cmpl-float v4, v4, v15

    .line 90
    if-lez v4, :cond_3

    .line 92
    mul-float v4, v15, v5

    .line 94
    add-float v16, v5, v7

    .line 96
    div-float v4, v4, v16

    .line 98
    mul-float v16, v15, v7

    .line 100
    add-float/2addr v5, v7

    .line 102
    div-float v7, v16, v5

    .line 103
    move v5, v7

    .line 105
    move v7, v4

    .line 106
    goto :goto_1

    .line 107
    :cond_3
    move/from16 v17, v7

    .line 108
    move v7, v5

    .line 110
    move/from16 v5, v17

    .line 111
    :goto_1
    add-float v4, v6, v12

    .line 113
    cmpl-float v4, v4, v14

    .line 115
    if-lez v4, :cond_4

    .line 117
    mul-float v4, v14, v6

    .line 119
    add-float v16, v6, v12

    .line 121
    div-float v4, v4, v16

    .line 123
    mul-float/2addr v14, v12

    .line 125
    add-float/2addr v6, v12

    .line 126
    div-float v12, v14, v6

    .line 127
    move v14, v12

    .line 129
    move v12, v4

    .line 130
    goto :goto_2

    .line 131
    :cond_4
    move v14, v12

    .line 132
    move v12, v6

    .line 133
    :goto_2
    add-float v4, v3, v2

    .line 134
    cmpl-float v4, v4, v15

    .line 136
    if-lez v4, :cond_5

    .line 138
    mul-float v4, v15, v3

    .line 140
    add-float v6, v3, v2

    .line 142
    div-float/2addr v4, v6

    .line 144
    mul-float/2addr v15, v2

    .line 145
    add-float/2addr v3, v2

    .line 146
    div-float v2, v15, v3

    .line 147
    move v15, v4

    .line 149
    goto :goto_3

    .line 150
    :cond_5
    move v15, v3

    .line 151
    :goto_3
    iget-object v3, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 152
    iget-object v4, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->topLeft:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 154
    if-nez v4, :cond_6

    .line 156
    new-instance v4, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 158
    invoke-direct {v4}, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;-><init>()V

    .line 160
    iput-object v4, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->topLeft:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 163
    :cond_6
    iget-object v4, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->topRight:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 165
    if-nez v4, :cond_7

    .line 167
    new-instance v4, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 169
    invoke-direct {v4}, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;-><init>()V

    .line 171
    iput-object v4, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->topRight:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 174
    :cond_7
    iget-object v4, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->bottomRight:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 176
    if-nez v4, :cond_8

    .line 178
    new-instance v4, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 180
    invoke-direct {v4}, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;-><init>()V

    .line 182
    iput-object v4, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->bottomRight:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 185
    :cond_8
    iget-object v4, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 187
    if-nez v4, :cond_9

    .line 189
    new-instance v4, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 191
    invoke-direct {v4}, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;-><init>()V

    .line 193
    iput-object v4, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 196
    :cond_9
    iget-object v3, v3, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->topLeft:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 198
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 200
    move-result v2

    .line 203
    const/16 v16, 0x0

    .line 204
    move-object v1, v3

    .line 206
    move/from16 v3, p1

    .line 207
    move/from16 v4, p2

    .line 209
    move v8, v5

    .line 211
    move-wide/from16 v5, p4

    .line 212
    move v9, v7

    .line 214
    move/from16 v7, v16

    .line 215
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->build(FIIDI)V

    .line 217
    iget-object v1, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 220
    iget-object v1, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->topRight:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 222
    invoke-static {v13, v9}, Ljava/lang/Math;->min(FF)F

    .line 224
    move-result v2

    .line 227
    const/4 v7, 0x1

    .line 228
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->build(FIIDI)V

    .line 229
    iget-object v1, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 232
    iget-object v1, v1, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->bottomRight:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 234
    invoke-static {v12, v8}, Ljava/lang/Math;->min(FF)F

    .line 236
    move-result v2

    .line 239
    const/4 v7, 0x2

    .line 240
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->build(FIIDI)V

    .line 241
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider;->mAllData:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;

    .line 244
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$SmoothData;->bottomLeft:Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;

    .line 246
    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    .line 248
    move-result v1

    .line 251
    const/4 v6, 0x3

    .line 252
    move/from16 v2, p1

    .line 253
    move/from16 v3, p2

    .line 255
    move-wide/from16 v4, p4

    .line 257
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/controlcenter/policy/SmoothPathProvider$CornerData;->build(FIIDI)V

    .line 259
    return-void

    .line 262
    nop

    .line 263
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
    .line 264
.end method
