.class public final Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mCornerRadiusBottom:I

.field public final mCornerRadiusTop:I

.field public final mHeight:I

.field public final mPath:Landroid/graphics/Path;

.field public final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mPath:Landroid/graphics/Path;

    .line 10
    invoke-static {p1}, Lcom/android/systemui/assist/ui/DisplayUtils;->getCornerRadiusBottom(Landroid/content/Context;)I

    .line 12
    move-result v0

    .line 15
    iput v0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mCornerRadiusBottom:I

    .line 16
    invoke-static {p1}, Lcom/android/systemui/assist/ui/DisplayUtils;->getCornerRadiusTop(Landroid/content/Context;)I

    .line 18
    move-result v0

    .line 21
    iput v0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mCornerRadiusTop:I

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 24
    move-result-object v0

    .line 27
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 28
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 33
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 36
    move-result v0

    .line 39
    const/4 v2, 0x2

    .line 40
    if-eqz v0, :cond_1

    .line 41
    if-ne v0, v2, :cond_0

    .line 43
    goto :goto_0

    .line 45
    :cond_0
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 46
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 49
    :goto_1
    iput v0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mHeight:I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 53
    move-result-object p1

    .line 56
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 57
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 62
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 65
    move-result p1

    .line 68
    if-eqz p1, :cond_3

    .line 69
    if-ne p1, v2, :cond_2

    .line 71
    goto :goto_2

    .line 73
    :cond_2
    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 74
    goto :goto_3

    .line 76
    :cond_3
    :goto_2
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 77
    :goto_3
    iput p1, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mWidth:I

    .line 79
    return-void
    .line 81
.end method


# virtual methods
.method public final getInsetPath(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;F)Landroid/graphics/Path;
    .locals 11

    .line 1
    iget-object v8, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mPath:Landroid/graphics/Path;

    .line 2
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 7
    move-result p1

    .line 10
    const/4 v0, 0x2

    .line 11
    const/4 v9, 0x1

    .line 12
    const/4 v10, 0x0

    .line 13
    iget v1, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mCornerRadiusBottom:I

    .line 14
    iget v2, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mHeight:I

    .line 16
    if-eqz p1, :cond_3

    .line 18
    iget v3, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mWidth:I

    .line 20
    if-eq p1, v9, :cond_2

    .line 22
    iget p0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mCornerRadiusTop:I

    .line 24
    if-eq p1, v0, :cond_1

    .line 26
    const/4 v1, 0x3

    .line 28
    if-eq p1, v1, :cond_0

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    int-to-float p1, p0

    .line 32
    invoke-virtual {v8, p1, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 33
    const/4 v1, 0x0

    .line 36
    const/4 v2, 0x0

    .line 37
    mul-int/2addr p0, v0

    .line 38
    int-to-float v4, p0

    .line 39
    const/high16 v5, 0x43870000    # 270.0f

    .line 40
    const/high16 v6, -0x3d4c0000    # -90.0f

    .line 42
    const/4 v7, 0x1

    .line 44
    move-object v0, v8

    .line 45
    move v3, v4

    .line 46
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 47
    goto :goto_0

    .line 50
    :cond_1
    int-to-float p1, v3

    .line 51
    int-to-float v1, p0

    .line 52
    invoke-virtual {v8, p1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 53
    mul-int/2addr p0, v0

    .line 56
    sub-int/2addr v3, p0

    .line 57
    int-to-float v1, v3

    .line 58
    const/4 v2, 0x0

    .line 59
    int-to-float v4, p0

    .line 60
    const/4 v5, 0x0

    .line 61
    const/high16 v6, -0x3d4c0000    # -90.0f

    .line 62
    const/4 v7, 0x1

    .line 64
    move-object v0, v8

    .line 65
    move v3, p1

    .line 66
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 67
    goto :goto_0

    .line 70
    :cond_2
    sub-int p0, v3, v1

    .line 71
    int-to-float p0, p0

    .line 73
    int-to-float v4, v2

    .line 74
    invoke-virtual {v8, p0, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 75
    mul-int/2addr v1, v0

    .line 78
    sub-int p0, v3, v1

    .line 79
    int-to-float p0, p0

    .line 81
    sub-int/2addr v2, v1

    .line 82
    int-to-float v2, v2

    .line 83
    int-to-float v3, v3

    .line 84
    const/high16 v5, 0x42b40000    # 90.0f

    .line 85
    const/high16 v6, -0x3d4c0000    # -90.0f

    .line 87
    const/4 v7, 0x1

    .line 89
    move-object v0, v8

    .line 90
    move v1, p0

    .line 91
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 92
    goto :goto_0

    .line 95
    :cond_3
    sub-int p0, v2, v1

    .line 96
    int-to-float p0, p0

    .line 98
    invoke-virtual {v8, v10, p0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 99
    const/4 p0, 0x0

    .line 102
    mul-int/2addr v1, v0

    .line 103
    sub-int p1, v2, v1

    .line 104
    int-to-float p1, p1

    .line 106
    int-to-float v3, v1

    .line 107
    int-to-float v4, v2

    .line 108
    const/high16 v5, 0x43340000    # 180.0f

    .line 109
    const/high16 v6, -0x3d4c0000    # -90.0f

    .line 111
    const/4 v7, 0x1

    .line 113
    move-object v0, v8

    .line 114
    move v1, p0

    .line 115
    move v2, p1

    .line 116
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 117
    :goto_0
    neg-float p0, p2

    .line 120
    const p1, 0x3dcccccd    # 0.1f

    .line 121
    invoke-virtual {v8, p1}, Landroid/graphics/Path;->approximate(F)[F

    .line 124
    move-result-object p1

    .line 127
    new-instance p2, Ljava/util/ArrayList;

    .line 128
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    const/4 v0, 0x0

    .line 133
    move v1, v0

    .line 134
    :goto_1
    array-length v2, p1

    .line 135
    if-ge v1, v2, :cond_4

    .line 136
    new-instance v2, Landroid/graphics/PointF;

    .line 138
    add-int/lit8 v3, v1, 0x1

    .line 140
    aget v3, p1, v3

    .line 142
    add-int/lit8 v4, v1, 0x2

    .line 144
    aget v4, p1, v4

    .line 146
    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 148
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v1, v1, 0x3

    .line 154
    goto :goto_1

    .line 156
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    .line 157
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    move v1, v0

    .line 162
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 163
    move-result v2

    .line 166
    if-ge v1, v2, :cond_8

    .line 167
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 169
    move-result-object v2

    .line 172
    check-cast v2, Landroid/graphics/PointF;

    .line 173
    if-nez v1, :cond_5

    .line 175
    new-instance v3, Landroid/graphics/PointF;

    .line 177
    invoke-direct {v3, v10, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 179
    goto :goto_3

    .line 182
    :cond_5
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 183
    move-result-object v3

    .line 186
    check-cast v3, Landroid/graphics/PointF;

    .line 187
    add-int/lit8 v4, v1, -0x1

    .line 189
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 191
    move-result-object v4

    .line 194
    check-cast v4, Landroid/graphics/PointF;

    .line 195
    new-instance v5, Landroid/graphics/PointF;

    .line 197
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 199
    iget v7, v4, Landroid/graphics/PointF;->x:F

    .line 201
    sub-float/2addr v6, v7

    .line 203
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 204
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 206
    sub-float/2addr v3, v4

    .line 208
    invoke-direct {v5, v6, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 209
    move-object v3, v5

    .line 212
    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 213
    move-result v4

    .line 216
    add-int/lit8 v4, v4, -0x1

    .line 217
    if-ne v1, v4, :cond_6

    .line 219
    new-instance v4, Landroid/graphics/PointF;

    .line 221
    invoke-direct {v4, v10, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 223
    goto :goto_4

    .line 226
    :cond_6
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 227
    move-result-object v4

    .line 230
    check-cast v4, Landroid/graphics/PointF;

    .line 231
    add-int/lit8 v5, v1, 0x1

    .line 233
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 235
    move-result-object v5

    .line 238
    check-cast v5, Landroid/graphics/PointF;

    .line 239
    new-instance v6, Landroid/graphics/PointF;

    .line 241
    iget v7, v5, Landroid/graphics/PointF;->x:F

    .line 243
    iget v8, v4, Landroid/graphics/PointF;->x:F

    .line 245
    sub-float/2addr v7, v8

    .line 247
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 248
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 250
    sub-float/2addr v5, v4

    .line 252
    invoke-direct {v6, v7, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 253
    move-object v4, v6

    .line 256
    :goto_4
    new-instance v5, Landroid/graphics/PointF;

    .line 257
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 259
    iget v7, v4, Landroid/graphics/PointF;->x:F

    .line 261
    add-float/2addr v6, v7

    .line 263
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 264
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 266
    add-float/2addr v3, v4

    .line 268
    invoke-direct {v5, v6, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 269
    iget v3, v5, Landroid/graphics/PointF;->x:F

    .line 272
    mul-float/2addr v3, v3

    .line 274
    iget v4, v5, Landroid/graphics/PointF;->y:F

    .line 275
    mul-float/2addr v4, v4

    .line 277
    add-float/2addr v4, v3

    .line 278
    float-to-double v3, v4

    .line 279
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 280
    move-result-wide v3

    .line 283
    double-to-float v3, v3

    .line 284
    cmpl-float v4, v3, v10

    .line 285
    if-nez v4, :cond_7

    .line 287
    goto :goto_5

    .line 289
    :cond_7
    const/high16 v4, 0x3f800000    # 1.0f

    .line 290
    div-float/2addr v4, v3

    .line 292
    new-instance v3, Landroid/graphics/PointF;

    .line 293
    iget v6, v5, Landroid/graphics/PointF;->x:F

    .line 295
    mul-float/2addr v6, v4

    .line 297
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 298
    mul-float/2addr v5, v4

    .line 300
    invoke-direct {v3, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 301
    move-object v5, v3

    .line 304
    :goto_5
    new-instance v3, Landroid/graphics/PointF;

    .line 305
    iget v4, v5, Landroid/graphics/PointF;->y:F

    .line 307
    neg-float v4, v4

    .line 309
    iget v5, v5, Landroid/graphics/PointF;->x:F

    .line 310
    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 312
    new-instance v4, Landroid/graphics/PointF;

    .line 315
    iget v5, v2, Landroid/graphics/PointF;->x:F

    .line 317
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 319
    mul-float/2addr v6, p0

    .line 321
    add-float/2addr v6, v5

    .line 322
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 323
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 325
    mul-float/2addr v3, p0

    .line 327
    add-float/2addr v3, v2

    .line 328
    invoke-direct {v4, v6, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 329
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    add-int/lit8 v1, v1, 0x1

    .line 335
    goto/16 :goto_2

    .line 337
    :cond_8
    new-instance p0, Landroid/graphics/Path;

    .line 339
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 341
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 344
    move-result p2

    .line 347
    if-lez p2, :cond_9

    .line 348
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 350
    move-result-object p2

    .line 353
    check-cast p2, Landroid/graphics/PointF;

    .line 354
    iget p2, p2, Landroid/graphics/PointF;->x:F

    .line 356
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 358
    move-result-object v0

    .line 361
    check-cast v0, Landroid/graphics/PointF;

    .line 362
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 364
    invoke-virtual {p0, p2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 366
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 369
    move-result p2

    .line 372
    invoke-virtual {p1, v9, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 373
    move-result-object p1

    .line 376
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 377
    move-result-object p1

    .line 380
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 381
    move-result p2

    .line 384
    if-eqz p2, :cond_9

    .line 385
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 387
    move-result-object p2

    .line 390
    check-cast p2, Landroid/graphics/PointF;

    .line 391
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 393
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 395
    invoke-virtual {p0, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 397
    goto :goto_6

    .line 400
    :cond_9
    return-object p0
    .line 401
.end method
