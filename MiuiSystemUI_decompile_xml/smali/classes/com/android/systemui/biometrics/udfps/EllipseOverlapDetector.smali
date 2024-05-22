.class public final Lcom/android/systemui/biometrics/udfps/EllipseOverlapDetector;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/biometrics/udfps/OverlapDetector;


# instance fields
.field public final params:Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/udfps/EllipseOverlapDetector;->params:Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final isGoodOverlap(Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 22

    .line 1
    move-object/from16 v0, p1

    .line 2
    move-object/from16 v1, p2

    .line 4
    invoke-virtual/range {p1 .. p2}, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->isWithinBounds(Landroid/graphics/Rect;)Z

    .line 6
    move-result v2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_0

    .line 11
    return v3

    .line 13
    :cond_0
    move-object/from16 v2, p3

    .line 14
    invoke-virtual {v0, v2}, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->isWithinBounds(Landroid/graphics/Rect;)Z

    .line 16
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    if-nez v2, :cond_1

    .line 21
    return v3

    .line 23
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 24
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 26
    move-object/from16 v5, p0

    .line 28
    iget-object v5, v5, Lcom/android/systemui/biometrics/udfps/EllipseOverlapDetector;->params:Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;

    .line 30
    iget v6, v5, Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;->stepSize:I

    .line 32
    const-string v7, "."

    .line 34
    const-string v8, "Step must be positive, was: "

    .line 36
    if-lez v6, :cond_e

    .line 38
    invoke-static {v2, v4, v6}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    .line 40
    move-result v4

    .line 43
    if-gt v2, v4, :cond_b

    .line 44
    move v9, v3

    .line 46
    move v10, v9

    .line 47
    :goto_0
    iget v11, v1, Landroid/graphics/Rect;->left:I

    .line 48
    iget v12, v1, Landroid/graphics/Rect;->right:I

    .line 50
    iget v13, v5, Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;->stepSize:I

    .line 52
    if-lez v13, :cond_a

    .line 54
    invoke-static {v11, v12, v13}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    .line 56
    move-result v12

    .line 59
    if-gt v11, v12, :cond_9

    .line 60
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    .line 62
    move-result v14

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    .line 66
    move-result v15

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    .line 70
    move-result v16

    .line 73
    div-int/lit8 v1, v16, 0x2

    .line 74
    sub-int/2addr v14, v11

    .line 76
    sub-int/2addr v15, v2

    .line 77
    mul-int/2addr v14, v14

    .line 78
    mul-int/2addr v15, v15

    .line 79
    add-int/2addr v15, v14

    .line 80
    int-to-float v14, v15

    .line 81
    move-object/from16 p0, v7

    .line 82
    int-to-float v7, v1

    .line 84
    move-object/from16 p3, v8

    .line 85
    iget v8, v5, Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;->targetSize:F

    .line 87
    mul-float/2addr v7, v8

    .line 89
    mul-float/2addr v7, v7

    .line 90
    cmpg-float v7, v14, v7

    .line 91
    sget-object v8, Lcom/android/systemui/biometrics/udfps/SensorPixelPosition;->OUTSIDE:Lcom/android/systemui/biometrics/udfps/SensorPixelPosition;

    .line 93
    sget-object v14, Lcom/android/systemui/biometrics/udfps/SensorPixelPosition;->TARGET:Lcom/android/systemui/biometrics/udfps/SensorPixelPosition;

    .line 95
    if-gtz v7, :cond_2

    .line 97
    move-object v1, v14

    .line 99
    goto :goto_2

    .line 100
    :cond_2
    mul-int/2addr v1, v1

    .line 101
    if-gt v15, v1, :cond_3

    .line 102
    sget-object v1, Lcom/android/systemui/biometrics/udfps/SensorPixelPosition;->SENSOR:Lcom/android/systemui/biometrics/udfps/SensorPixelPosition;

    .line 104
    goto :goto_2

    .line 106
    :cond_3
    move-object v1, v8

    .line 107
    :goto_2
    if-eq v1, v8, :cond_7

    .line 108
    add-int/lit8 v9, v9, 0x1

    .line 110
    new-instance v7, Landroid/graphics/Point;

    .line 112
    invoke-direct {v7, v11, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 114
    iget v8, v0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->orientation:F

    .line 117
    move v15, v9

    .line 119
    float-to-double v8, v8

    .line 120
    move-object/from16 v16, v5

    .line 121
    move/from16 v17, v6

    .line 123
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    .line 125
    move-result-wide v5

    .line 128
    double-to-float v5, v5

    .line 129
    iget v6, v7, Landroid/graphics/Point;->x:I

    .line 130
    int-to-float v6, v6

    .line 132
    move/from16 v18, v15

    .line 133
    iget v15, v0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->x:F

    .line 135
    sub-float/2addr v6, v15

    .line 137
    mul-float/2addr v6, v5

    .line 138
    move/from16 v19, v4

    .line 139
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    .line 141
    move-result-wide v4

    .line 144
    double-to-float v4, v4

    .line 145
    iget v5, v7, Landroid/graphics/Point;->y:I

    .line 146
    int-to-float v5, v5

    .line 148
    move/from16 v20, v2

    .line 149
    iget v2, v0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->y:F

    .line 151
    sub-float/2addr v5, v2

    .line 153
    mul-float/2addr v5, v4

    .line 154
    move/from16 v21, v11

    .line 155
    move v4, v12

    .line 157
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    .line 158
    move-result-wide v11

    .line 161
    double-to-float v11, v11

    .line 162
    iget v12, v7, Landroid/graphics/Point;->x:I

    .line 163
    int-to-float v12, v12

    .line 165
    sub-float/2addr v12, v15

    .line 166
    mul-float/2addr v12, v11

    .line 167
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    .line 168
    move-result-wide v8

    .line 171
    double-to-float v8, v8

    .line 172
    iget v7, v7, Landroid/graphics/Point;->y:I

    .line 173
    int-to-float v7, v7

    .line 175
    sub-float/2addr v7, v2

    .line 176
    mul-float/2addr v7, v8

    .line 177
    add-float/2addr v6, v5

    .line 178
    mul-float/2addr v6, v6

    .line 179
    const/4 v2, 0x2

    .line 180
    int-to-float v2, v2

    .line 181
    iget v5, v0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->minor:F

    .line 182
    div-float/2addr v5, v2

    .line 184
    mul-float/2addr v5, v5

    .line 185
    div-float/2addr v6, v5

    .line 186
    sub-float/2addr v12, v7

    .line 187
    mul-float/2addr v12, v12

    .line 188
    iget v5, v0, Lcom/android/systemui/biometrics/udfps/NormalizedTouchData;->major:F

    .line 189
    div-float/2addr v5, v2

    .line 191
    mul-float/2addr v5, v5

    .line 192
    div-float/2addr v12, v5

    .line 193
    add-float/2addr v12, v6

    .line 194
    const/high16 v2, 0x3f800000    # 1.0f

    .line 195
    cmpg-float v2, v12, v2

    .line 197
    if-gtz v2, :cond_4

    .line 199
    const/4 v2, 0x1

    .line 201
    goto :goto_3

    .line 202
    :cond_4
    const/4 v2, 0x0

    .line 203
    :goto_3
    if-eqz v2, :cond_6

    .line 204
    add-int/lit8 v10, v10, 0x1

    .line 206
    if-ne v1, v14, :cond_5

    .line 208
    const/4 v1, 0x1

    .line 210
    goto :goto_4

    .line 211
    :cond_5
    const/4 v1, 0x0

    .line 212
    :goto_4
    or-int/2addr v3, v1

    .line 213
    :cond_6
    move/from16 v9, v18

    .line 214
    move/from16 v11, v21

    .line 216
    goto :goto_5

    .line 218
    :cond_7
    move/from16 v20, v2

    .line 219
    move/from16 v19, v4

    .line 221
    move-object/from16 v16, v5

    .line 223
    move/from16 v17, v6

    .line 225
    move v4, v12

    .line 227
    :goto_5
    if-eq v11, v4, :cond_8

    .line 228
    add-int/2addr v11, v13

    .line 230
    move-object/from16 v7, p0

    .line 231
    move-object/from16 v1, p2

    .line 233
    move-object/from16 v8, p3

    .line 235
    move v12, v4

    .line 237
    move-object/from16 v5, v16

    .line 238
    move/from16 v6, v17

    .line 240
    move/from16 v4, v19

    .line 242
    move/from16 v2, v20

    .line 244
    goto/16 :goto_1

    .line 246
    :cond_8
    move/from16 v1, v19

    .line 248
    move/from16 v2, v20

    .line 250
    goto :goto_6

    .line 252
    :cond_9
    move-object/from16 v16, v5

    .line 253
    move/from16 v17, v6

    .line 255
    move-object/from16 p0, v7

    .line 257
    move-object/from16 p3, v8

    .line 259
    move v1, v4

    .line 261
    :goto_6
    if-eq v2, v1, :cond_c

    .line 262
    add-int v2, v2, v17

    .line 264
    move-object/from16 v7, p0

    .line 266
    move-object/from16 v8, p3

    .line 268
    move v4, v1

    .line 270
    move-object/from16 v5, v16

    .line 271
    move/from16 v6, v17

    .line 273
    move-object/from16 v1, p2

    .line 275
    goto/16 :goto_0

    .line 277
    :cond_a
    move-object/from16 p0, v7

    .line 279
    move-object/from16 p3, v8

    .line 281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 283
    move-object/from16 v1, p0

    .line 285
    move-object/from16 v2, p3

    .line 287
    invoke-static {v2, v13, v1}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 289
    move-result-object v1

    .line 292
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 293
    throw v0

    .line 296
    :cond_b
    move-object/from16 v16, v5

    .line 297
    const/4 v3, 0x0

    .line 299
    const/4 v9, 0x0

    .line 300
    const/4 v10, 0x0

    .line 301
    :cond_c
    int-to-float v0, v10

    .line 302
    int-to-float v1, v9

    .line 303
    div-float/2addr v0, v1

    .line 304
    move-object/from16 v1, v16

    .line 305
    iget v1, v1, Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;->minOverlap:F

    .line 307
    cmpl-float v0, v0, v1

    .line 309
    if-ltz v0, :cond_d

    .line 311
    if-eqz v3, :cond_d

    .line 313
    const/4 v0, 0x1

    .line 315
    goto :goto_7

    .line 316
    :cond_d
    const/4 v0, 0x0

    .line 317
    :goto_7
    return v0

    .line 318
    :cond_e
    move/from16 v17, v6

    .line 319
    move-object v1, v7

    .line 321
    move-object v2, v8

    .line 322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 323
    move/from16 v3, v17

    .line 325
    invoke-static {v2, v3, v1}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 327
    move-result-object v1

    .line 330
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 331
    throw v0
    .line 334
.end method
