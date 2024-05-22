.class public final Lcom/google/android/setupdesign/GlifPatternDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static bitmapCache:Ljava/lang/ref/SoftReference;

.field public static patternLightness:[I

.field public static patternPaths:[Landroid/graphics/Path;


# instance fields
.field public color:I

.field public final tempPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 8
    iput-object v0, p0, Lcom/google/android/setupdesign/GlifPatternDrawable;->tempPaint:Landroid/graphics/Paint;

    .line 11
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 13
    move-result v0

    .line 16
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 17
    move-result v1

    .line 20
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 21
    move-result p1

    .line 24
    const/16 v2, 0xcc

    .line 25
    invoke-static {v2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 27
    move-result p1

    .line 30
    iput p1, p0, Lcom/google/android/setupdesign/GlifPatternDrawable;->color:I

    .line 31
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 33
    return-void
    .line 36
.end method

.method public static invalidatePattern()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/google/android/setupdesign/GlifPatternDrawable;->bitmapCache:Ljava/lang/ref/SoftReference;

    .line 3
    return-void
    .line 5
.end method


# virtual methods
.method public createBitmapCache(II)Landroid/graphics/Bitmap;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    int-to-float v1, v1

    .line 6
    const v2, 0x44aac000    # 1366.0f

    .line 7
    div-float/2addr v1, v2

    .line 10
    move/from16 v3, p2

    .line 11
    int-to-float v3, v3

    .line 13
    const/high16 v4, 0x44400000    # 768.0f

    .line 14
    div-float/2addr v3, v4

    .line 16
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    .line 17
    move-result v1

    .line 20
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 21
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    .line 23
    move-result v1

    .line 26
    mul-float v3, v1, v2

    .line 27
    float-to-int v3, v3

    .line 29
    mul-float v5, v1, v4

    .line 30
    float-to-int v5, v5

    .line 32
    sget-object v6, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 33
    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 35
    move-result-object v3

    .line 38
    new-instance v5, Landroid/graphics/Canvas;

    .line 39
    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 41
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 44
    invoke-virtual {v5, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 47
    iget-object v1, v0, Lcom/google/android/setupdesign/GlifPatternDrawable;->tempPaint:Landroid/graphics/Paint;

    .line 50
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    .line 52
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 54
    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 56
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 59
    sget-object v1, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternPaths:[Landroid/graphics/Path;

    .line 62
    const/4 v6, 0x0

    .line 64
    const/4 v7, 0x7

    .line 65
    if-nez v1, :cond_0

    .line 66
    new-array v1, v7, [Landroid/graphics/Path;

    .line 68
    sput-object v1, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternPaths:[Landroid/graphics/Path;

    .line 70
    new-array v8, v7, [I

    .line 72
    fill-array-data v8, :array_0

    .line 74
    sput-object v8, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternLightness:[I

    .line 77
    new-instance v8, Landroid/graphics/Path;

    .line 79
    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 81
    aput-object v8, v1, v6

    .line 84
    const v1, 0x4480accd    # 1029.4f

    .line 86
    const v9, 0x43b2c000    # 357.5f

    .line 89
    invoke-virtual {v8, v1, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 92
    const v1, 0x443dc666    # 759.1f

    .line 95
    invoke-virtual {v8, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 98
    const/4 v1, 0x0

    .line 101
    invoke-virtual {v8, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 102
    const v2, 0x448e3666    # 1137.7f

    .line 105
    invoke-virtual {v8, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 108
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 111
    sget-object v2, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternPaths:[Landroid/graphics/Path;

    .line 114
    new-instance v15, Landroid/graphics/Path;

    .line 116
    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 118
    const/4 v8, 0x1

    .line 121
    aput-object v15, v2, v8

    .line 122
    const v2, 0x448e4333    # 1138.1f

    .line 124
    invoke-virtual {v15, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 127
    const v2, -0x3cef3333    # -144.8f

    .line 130
    invoke-virtual {v15, v2, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 133
    const v2, 0x43ba599a    # 372.7f

    .line 136
    invoke-virtual {v15, v2, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 139
    const/high16 v2, -0x3bfd0000    # -524.0f

    .line 142
    invoke-virtual {v15, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 144
    const v9, 0x44a15666    # 1290.7f

    .line 147
    const v10, 0x42f33333    # 121.6f

    .line 150
    const v11, 0x44986666    # 1219.2f

    .line 153
    const v12, 0x42246666    # 41.1f

    .line 156
    const v13, 0x44935666    # 1178.7f

    .line 159
    const/4 v14, 0x0

    .line 162
    move-object v8, v15

    .line 163
    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 164
    invoke-virtual {v15}, Landroid/graphics/Path;->close()V

    .line 167
    sget-object v2, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternPaths:[Landroid/graphics/Path;

    .line 170
    new-instance v15, Landroid/graphics/Path;

    .line 172
    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 174
    const/4 v8, 0x2

    .line 177
    aput-object v15, v2, v8

    .line 178
    const v2, 0x446d7333    # 949.8f

    .line 180
    invoke-virtual {v15, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 183
    const v9, 0x42b93333    # 92.6f

    .line 186
    const v10, -0x3cd56666    # -170.6f

    .line 189
    const/high16 v11, 0x43550000    # 213.0f

    .line 192
    const v12, -0x3c23d99a    # -440.3f

    .line 194
    const v13, 0x4386b333    # 269.4f

    .line 197
    const/high16 v14, -0x3bc00000    # -768.0f

    .line 200
    move-object v8, v15

    .line 202
    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 203
    const v2, 0x44124000    # 585.0f

    .line 206
    invoke-virtual {v15, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 209
    const v2, 0x40066666    # 2.1f

    .line 212
    const v8, 0x443f8000    # 766.0f

    .line 215
    invoke-virtual {v15, v2, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 218
    invoke-virtual {v15}, Landroid/graphics/Path;->close()V

    .line 221
    sget-object v2, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternPaths:[Landroid/graphics/Path;

    .line 224
    new-instance v15, Landroid/graphics/Path;

    .line 226
    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 228
    const/4 v8, 0x3

    .line 231
    aput-object v15, v2, v8

    .line 232
    const v2, 0x43eb8ccd    # 471.1f

    .line 234
    invoke-virtual {v15, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 237
    const v2, 0x44302000    # 704.5f

    .line 240
    invoke-virtual {v15, v2, v1}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 243
    const v9, 0x448c7333    # 1123.6f

    .line 246
    const v10, 0x440cd333    # 563.3f

    .line 249
    const v11, 0x44806ccd    # 1027.4f

    .line 252
    const v12, 0x4389999a    # 275.2f

    .line 255
    const v13, 0x44560ccd    # 856.2f

    .line 258
    const/4 v14, 0x0

    .line 261
    move-object v8, v15

    .line 262
    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 263
    const v2, 0x43ee3333    # 476.4f

    .line 266
    invoke-virtual {v15, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 269
    const v2, -0x3f566666    # -5.3f

    .line 272
    invoke-virtual {v15, v2, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 275
    invoke-virtual {v15}, Landroid/graphics/Path;->close()V

    .line 278
    sget-object v2, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternPaths:[Landroid/graphics/Path;

    .line 281
    new-instance v15, Landroid/graphics/Path;

    .line 283
    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 285
    const/4 v8, 0x4

    .line 288
    aput-object v15, v2, v8

    .line 289
    const v2, 0x43a18ccd    # 323.1f

    .line 291
    invoke-virtual {v15, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 294
    const v8, 0x44426000    # 777.5f

    .line 297
    invoke-virtual {v15, v8, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 300
    const v9, 0x4425799a    # 661.9f

    .line 303
    const v10, 0x43ae6666    # 348.8f

    .line 306
    const v11, 0x43d5999a    # 427.2f

    .line 309
    const v12, 0x41ab3333    # 21.4f

    .line 312
    const v13, 0x43c8999a    # 401.2f

    .line 315
    const v14, 0x41cb3333    # 25.4f

    .line 318
    move-object v8, v15

    .line 321
    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 322
    invoke-virtual {v15, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 325
    invoke-virtual {v15}, Landroid/graphics/Path;->close()V

    .line 328
    sget-object v2, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternPaths:[Landroid/graphics/Path;

    .line 331
    new-instance v15, Landroid/graphics/Path;

    .line 333
    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 335
    const/4 v8, 0x5

    .line 338
    aput-object v15, v2, v8

    .line 339
    const v2, 0x4332715f

    .line 341
    const v8, 0x443fb6db

    .line 344
    invoke-virtual {v15, v2, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 347
    const v2, 0x439a599a    # 308.7f

    .line 350
    invoke-virtual {v15, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 353
    const v9, 0x43bed99a    # 381.7f

    .line 356
    const v10, 0x44172666    # 604.6f

    .line 359
    const v11, 0x43f0cccd    # 481.6f

    .line 362
    const v12, 0x43ac2666    # 344.3f

    .line 365
    const v13, 0x440c8ccd    # 562.2f

    .line 368
    const/16 v22, 0x0

    .line 371
    const/4 v14, 0x0

    .line 373
    move-object v8, v15

    .line 374
    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 375
    invoke-virtual {v15, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 378
    invoke-virtual {v15}, Landroid/graphics/Path;->close()V

    .line 381
    sget-object v2, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternPaths:[Landroid/graphics/Path;

    .line 384
    new-instance v8, Landroid/graphics/Path;

    .line 386
    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 388
    const/4 v9, 0x6

    .line 391
    aput-object v8, v2, v9

    .line 392
    const/high16 v2, 0x43120000    # 146.0f

    .line 394
    invoke-virtual {v8, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 396
    invoke-virtual {v8, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 399
    invoke-virtual {v8, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 402
    const v1, 0x43c5199a    # 394.2f

    .line 405
    invoke-virtual {v8, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 408
    const v17, 0x43a3d99a    # 327.7f

    .line 411
    const v18, 0x43eda666    # 475.3f

    .line 414
    const v19, 0x43648000    # 228.5f

    .line 417
    const/high16 v20, 0x43490000    # 201.0f

    .line 420
    const/high16 v21, 0x43120000    # 146.0f

    .line 422
    move-object/from16 v16, v8

    .line 424
    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 426
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 429
    :cond_0
    :goto_0
    if-ge v6, v7, :cond_1

    .line 432
    iget-object v1, v0, Lcom/google/android/setupdesign/GlifPatternDrawable;->tempPaint:Landroid/graphics/Paint;

    .line 434
    sget-object v2, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternLightness:[I

    .line 436
    aget v2, v2, v6

    .line 438
    shl-int/lit8 v2, v2, 0x18

    .line 440
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 442
    sget-object v1, Lcom/google/android/setupdesign/GlifPatternDrawable;->patternPaths:[Landroid/graphics/Path;

    .line 445
    aget-object v1, v1, v6

    .line 447
    iget-object v2, v0, Lcom/google/android/setupdesign/GlifPatternDrawable;->tempPaint:Landroid/graphics/Paint;

    .line 449
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 451
    add-int/lit8 v6, v6, 0x1

    .line 454
    goto :goto_0

    .line 456
    :cond_1
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 457
    iget-object v0, v0, Lcom/google/android/setupdesign/GlifPatternDrawable;->tempPaint:Landroid/graphics/Paint;

    .line 460
    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 462
    return-object v3

    .line 465
    :array_0
    .array-data 4
        0xa
        0x28
        0x33
        0x42
        0x5b
        0x70
        0x82
    .end array-data
    .line 466
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 6
    move-result v1

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 10
    move-result v2

    .line 13
    sget-object v3, Lcom/google/android/setupdesign/GlifPatternDrawable;->bitmapCache:Ljava/lang/ref/SoftReference;

    .line 14
    const/4 v4, 0x0

    .line 16
    if-eqz v3, :cond_0

    .line 17
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 22
    check-cast v3, Landroid/graphics/Bitmap;

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    move-object v3, v4

    .line 26
    :goto_0
    if-eqz v3, :cond_2

    .line 27
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 29
    move-result v5

    .line 32
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 33
    move-result v6

    .line 36
    if-le v1, v5, :cond_1

    .line 37
    int-to-float v5, v5

    .line 39
    const v7, 0x45001000    # 2049.0f

    .line 40
    cmpg-float v5, v5, v7

    .line 43
    if-gez v5, :cond_1

    .line 45
    goto :goto_1

    .line 47
    :cond_1
    if-le v2, v6, :cond_2

    .line 48
    int-to-float v5, v6

    .line 50
    const/high16 v6, 0x44900000    # 1152.0f

    .line 51
    cmpg-float v5, v5, v6

    .line 53
    if-gez v5, :cond_2

    .line 55
    goto :goto_1

    .line 57
    :cond_2
    move-object v4, v3

    .line 58
    :goto_1
    if-nez v4, :cond_3

    .line 59
    iget-object v3, p0, Lcom/google/android/setupdesign/GlifPatternDrawable;->tempPaint:Landroid/graphics/Paint;

    .line 61
    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    .line 63
    invoke-virtual {p0, v1, v2}, Lcom/google/android/setupdesign/GlifPatternDrawable;->createBitmapCache(II)Landroid/graphics/Bitmap;

    .line 66
    move-result-object v4

    .line 69
    new-instance v1, Ljava/lang/ref/SoftReference;

    .line 70
    invoke-direct {v1, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 72
    sput-object v1, Lcom/google/android/setupdesign/GlifPatternDrawable;->bitmapCache:Ljava/lang/ref/SoftReference;

    .line 75
    iget-object v1, p0, Lcom/google/android/setupdesign/GlifPatternDrawable;->tempPaint:Landroid/graphics/Paint;

    .line 77
    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 79
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 82
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 85
    invoke-virtual {p0, p1, v4, v0}, Lcom/google/android/setupdesign/GlifPatternDrawable;->scaleCanvasToBounds(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 88
    const/high16 v0, -0x1000000

    .line 91
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 93
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifPatternDrawable;->tempPaint:Landroid/graphics/Paint;

    .line 96
    const/4 v1, -0x1

    .line 98
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifPatternDrawable;->tempPaint:Landroid/graphics/Paint;

    .line 102
    const/4 v1, 0x0

    .line 104
    invoke-virtual {p1, v4, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 105
    iget p0, p0, Lcom/google/android/setupdesign/GlifPatternDrawable;->color:I

    .line 108
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 113
    return-void
    .line 116
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public scaleCanvasToBounds(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    move-result p0

    .line 5
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 6
    move-result p2

    .line 9
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 10
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    int-to-float p0, p0

    .line 15
    div-float/2addr v0, p0

    .line 16
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 17
    move-result p3

    .line 20
    int-to-float p3, p3

    .line 21
    int-to-float p2, p2

    .line 22
    div-float/2addr p3, p2

    .line 23
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 24
    cmpl-float v1, p3, v0

    .line 27
    const/4 v2, 0x0

    .line 29
    const/high16 v3, 0x3f800000    # 1.0f

    .line 30
    if-lez v1, :cond_0

    .line 32
    div-float/2addr p3, v0

    .line 34
    const p2, 0x3e158106    # 0.146f

    .line 35
    mul-float/2addr p0, p2

    .line 38
    invoke-virtual {p1, p3, v3, p0, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 39
    goto :goto_0

    .line 42
    :cond_0
    cmpl-float p0, v0, p3

    .line 43
    if-lez p0, :cond_1

    .line 45
    div-float/2addr v0, p3

    .line 47
    const p0, 0x3e6978d5    # 0.228f

    .line 48
    mul-float/2addr p2, p0

    .line 51
    invoke-virtual {p1, v3, v0, v2, p2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 52
    :cond_1
    :goto_0
    return-void
    .line 55
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
