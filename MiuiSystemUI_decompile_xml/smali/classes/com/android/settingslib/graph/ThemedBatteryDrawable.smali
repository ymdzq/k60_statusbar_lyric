.class public final Lcom/android/settingslib/graph/ThemedBatteryDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public batteryLevel:I

.field public final boltPath:Landroid/graphics/Path;

.field public charging:Z

.field public final colorLevels:[I

.field public final context:Landroid/content/Context;

.field public dualTone:Z

.field public final dualToneBackgroundFill:Landroid/graphics/Paint;

.field public final errorPerimeterPath:Landroid/graphics/Path;

.field public fillColor:I

.field public final fillColorStrokePaint:Landroid/graphics/Paint;

.field public final fillColorStrokeProtection:Landroid/graphics/Paint;

.field public final fillMask:Landroid/graphics/Path;

.field public final fillPaint:Landroid/graphics/Paint;

.field public final fillRect:Landroid/graphics/RectF;

.field public final intrinsicHeight:I

.field public final intrinsicWidth:I

.field public final invalidateRunnable:Lkotlin/jvm/functions/Function0;

.field public invertFillIcon:Z

.field public levelColor:I

.field public final levelPath:Landroid/graphics/Path;

.field public final levelRect:Landroid/graphics/RectF;

.field public final perimeterPath:Landroid/graphics/Path;

.field public final plusPath:Landroid/graphics/Path;

.field public final scaleMatrix:Landroid/graphics/Matrix;

.field public final scaledBolt:Landroid/graphics/Path;

.field public final scaledErrorPerimeter:Landroid/graphics/Path;

.field public final scaledFill:Landroid/graphics/Path;

.field public final scaledPerimeter:Landroid/graphics/Path;

.field public final scaledPlus:Landroid/graphics/Path;

.field public final unifiedPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    .line 5
    new-instance v0, Landroid/graphics/Path;

    .line 7
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->perimeterPath:Landroid/graphics/Path;

    .line 12
    new-instance v0, Landroid/graphics/Path;

    .line 14
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledPerimeter:Landroid/graphics/Path;

    .line 19
    new-instance v0, Landroid/graphics/Path;

    .line 21
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->errorPerimeterPath:Landroid/graphics/Path;

    .line 26
    new-instance v0, Landroid/graphics/Path;

    .line 28
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledErrorPerimeter:Landroid/graphics/Path;

    .line 33
    new-instance v0, Landroid/graphics/Path;

    .line 35
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillMask:Landroid/graphics/Path;

    .line 40
    new-instance v0, Landroid/graphics/Path;

    .line 42
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledFill:Landroid/graphics/Path;

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    .line 49
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillRect:Landroid/graphics/RectF;

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    .line 56
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelRect:Landroid/graphics/RectF;

    .line 61
    new-instance v0, Landroid/graphics/Path;

    .line 63
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelPath:Landroid/graphics/Path;

    .line 68
    new-instance v0, Landroid/graphics/Matrix;

    .line 70
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    .line 77
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 79
    new-instance v0, Landroid/graphics/Path;

    .line 82
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 84
    iput-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    .line 87
    new-instance v0, Landroid/graphics/Path;

    .line 89
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 91
    iput-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->boltPath:Landroid/graphics/Path;

    .line 94
    new-instance v0, Landroid/graphics/Path;

    .line 96
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 98
    iput-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    .line 101
    new-instance v0, Landroid/graphics/Path;

    .line 103
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 105
    iput-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->plusPath:Landroid/graphics/Path;

    .line 108
    new-instance v0, Landroid/graphics/Path;

    .line 110
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 112
    iput-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledPlus:Landroid/graphics/Path;

    .line 115
    const v0, -0xff01

    .line 117
    iput v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    .line 120
    iput v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelColor:I

    .line 122
    new-instance v0, Lcom/android/settingslib/graph/ThemedBatteryDrawable$invalidateRunnable$1;

    .line 124
    invoke-direct {v0, p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$invalidateRunnable$1;-><init>(Lcom/android/settingslib/graph/ThemedBatteryDrawable;)V

    .line 126
    iput-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invalidateRunnable:Lkotlin/jvm/functions/Function0;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 131
    move-result-object v0

    .line 134
    const v1, 0x10e0042    # @android:integer/config_defaultAlarmVibrationIntensity

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 138
    new-instance v0, Landroid/graphics/Paint;

    .line 141
    const/4 v1, 0x1

    .line 143
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 144
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    const/16 v2, 0xff

    .line 150
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 152
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 155
    const/high16 v3, 0x40a00000    # 5.0f

    .line 158
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 163
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 165
    sget-object v4, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    .line 168
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 170
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 173
    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 176
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 178
    iput-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokePaint:Landroid/graphics/Paint;

    .line 181
    new-instance v0, Landroid/graphics/Paint;

    .line 183
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 185
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 188
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 191
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 194
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    sget-object v4, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    .line 199
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 201
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 204
    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 207
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 209
    iput-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokeProtection:Landroid/graphics/Paint;

    .line 212
    new-instance v0, Landroid/graphics/Paint;

    .line 214
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 216
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 222
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 225
    const/4 v3, 0x0

    .line 228
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 229
    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 232
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 234
    iput-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 237
    new-instance v0, Landroid/graphics/Paint;

    .line 239
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 241
    const v4, 0x7f06004e    # @color/batterymeter_saver_color '#fbbc04'

    .line 244
    invoke-static {v4, p1}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(ILandroid/content/Context;)I

    .line 247
    move-result v4

    .line 250
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 254
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 257
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 260
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 263
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 265
    sget-object v2, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    .line 268
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 270
    new-instance v0, Landroid/graphics/Paint;

    .line 273
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 275
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 278
    const/16 p2, 0x55

    .line 281
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 283
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 286
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 289
    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 292
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 294
    iput-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualToneBackgroundFill:Landroid/graphics/Paint;

    .line 297
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 299
    move-result-object p2

    .line 302
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 303
    move-result-object p2

    .line 306
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 307
    const/high16 v0, 0x41a00000    # 20.0f

    .line 309
    mul-float/2addr v0, p2

    .line 311
    float-to-int v0, v0

    .line 312
    iput v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->intrinsicHeight:I

    .line 313
    const/high16 v0, 0x41400000    # 12.0f

    .line 315
    mul-float/2addr p2, v0

    .line 317
    float-to-int p2, p2

    .line 318
    iput p2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->intrinsicWidth:I

    .line 319
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 321
    move-result-object p1

    .line 324
    const p2, 0x7f030013    # @array/batterymeter_color_levels

    .line 325
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 328
    move-result-object p2

    .line 331
    const v0, 0x7f030014    # @array/batterymeter_color_values

    .line 332
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 335
    move-result-object p1

    .line 338
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->length()I

    .line 339
    move-result v0

    .line 342
    mul-int/lit8 v2, v0, 0x2

    .line 343
    new-array v2, v2, [I

    .line 345
    iput-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->colorLevels:[I

    .line 347
    const/4 v2, 0x0

    .line 349
    move v3, v2

    .line 350
    :goto_0
    if-ge v3, v0, :cond_1

    .line 351
    iget-object v4, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->colorLevels:[I

    .line 353
    mul-int/lit8 v5, v3, 0x2

    .line 355
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 357
    move-result v6

    .line 360
    aput v6, v4, v5

    .line 361
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getType(I)I

    .line 363
    move-result v4

    .line 366
    const/4 v6, 0x2

    .line 367
    if-ne v4, v6, :cond_0

    .line 368
    iget-object v4, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->colorLevels:[I

    .line 370
    add-int/lit8 v5, v5, 0x1

    .line 372
    iget-object v6, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    .line 374
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getThemeAttributeId(II)I

    .line 376
    move-result v7

    .line 379
    invoke-static {v6, v7, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 380
    move-result v6

    .line 383
    aput v6, v4, v5

    .line 384
    goto :goto_1

    .line 386
    :cond_0
    iget-object v4, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->colorLevels:[I

    .line 387
    add-int/lit8 v5, v5, 0x1

    .line 389
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 391
    move-result v6

    .line 394
    aput v6, v4, v5

    .line 395
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 397
    goto :goto_0

    .line 399
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 400
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 403
    iget-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    .line 406
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 408
    move-result-object p1

    .line 411
    const p2, 0x1040239    # @android:string/config_doubleTouchGestureEnableFile

    .line 412
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 415
    move-result-object p1

    .line 418
    iget-object p2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->perimeterPath:Landroid/graphics/Path;

    .line 419
    invoke-static {p1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    .line 421
    move-result-object p1

    .line 424
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 425
    iget-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->perimeterPath:Landroid/graphics/Path;

    .line 428
    new-instance p2, Landroid/graphics/RectF;

    .line 430
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 432
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 435
    iget-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    .line 438
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 440
    move-result-object p1

    .line 443
    const p2, 0x1040237    # @android:string/config_display_features

    .line 444
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 447
    move-result-object p1

    .line 450
    iget-object p2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->errorPerimeterPath:Landroid/graphics/Path;

    .line 451
    invoke-static {p1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    .line 453
    move-result-object p1

    .line 456
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 457
    iget-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->errorPerimeterPath:Landroid/graphics/Path;

    .line 460
    new-instance p2, Landroid/graphics/RectF;

    .line 462
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 464
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 467
    iget-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    .line 470
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 472
    move-result-object p1

    .line 475
    const p2, 0x1040238    # @android:string/config_doublePressOnPowerTargetActivity

    .line 476
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 479
    move-result-object p1

    .line 482
    iget-object p2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillMask:Landroid/graphics/Path;

    .line 483
    invoke-static {p1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    .line 485
    move-result-object p1

    .line 488
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 489
    iget-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillMask:Landroid/graphics/Path;

    .line 492
    iget-object p2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillRect:Landroid/graphics/RectF;

    .line 494
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 496
    iget-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    .line 499
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 501
    move-result-object p1

    .line 504
    const p2, 0x1040236    # @android:string/config_displayWhiteBalanceColorTemperatureSensorName

    .line 505
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 508
    move-result-object p1

    .line 511
    iget-object p2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->boltPath:Landroid/graphics/Path;

    .line 512
    invoke-static {p1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    .line 514
    move-result-object p1

    .line 517
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 518
    iget-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    .line 521
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 523
    move-result-object p1

    .line 526
    const p2, 0x104023a    # @android:string/config_dozeComponent

    .line 527
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 530
    move-result-object p1

    .line 533
    iget-object p2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->plusPath:Landroid/graphics/Path;

    .line 534
    invoke-static {p1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    .line 536
    move-result-object p1

    .line 539
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 540
    iget-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->context:Landroid/content/Context;

    .line 543
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 545
    move-result-object p1

    .line 548
    const p2, 0x111003f    # @android:bool/config_batterymeterDualTone

    .line 549
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 552
    move-result p1

    .line 555
    iput-boolean p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualTone:Z

    .line 556
    return-void
    .line 558
.end method


# virtual methods
.method public final batteryColorForLevel(I)I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->charging:Z

    .line 2
    if-nez v0, :cond_2

    .line 4
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->colorLevels:[I

    .line 8
    array-length v3, v2

    .line 10
    if-ge v0, v3, :cond_3

    .line 11
    aget v1, v2, v0

    .line 13
    add-int/lit8 v3, v0, 0x1

    .line 15
    aget v3, v2, v3

    .line 17
    if-gt p1, v1, :cond_1

    .line 19
    array-length p1, v2

    .line 21
    add-int/lit8 p1, p1, -0x2

    .line 22
    if-ne v0, p1, :cond_0

    .line 24
    iget p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    .line 26
    move v1, p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    move v1, v3

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    add-int/lit8 v0, v0, 0x2

    .line 32
    move v1, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    .line 36
    :cond_3
    :goto_1
    return v1
    .line 38
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    .line 3
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 8
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelPath:Landroid/graphics/Path;

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 13
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelRect:Landroid/graphics/RectF;

    .line 16
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillRect:Landroid/graphics/RectF;

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 20
    iget v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->batteryLevel:I

    .line 23
    int-to-float v1, v0

    .line 25
    const/high16 v2, 0x42c80000    # 100.0f

    .line 26
    div-float/2addr v1, v2

    .line 28
    const/16 v2, 0x5f

    .line 29
    if-lt v0, v2, :cond_0

    .line 31
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillRect:Landroid/graphics/RectF;

    .line 33
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 35
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillRect:Landroid/graphics/RectF;

    .line 38
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 40
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 42
    move-result v0

    .line 45
    const/4 v3, 0x1

    .line 46
    int-to-float v3, v3

    .line 47
    invoke-static {v3, v1, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 48
    move-result v0

    .line 51
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelRect:Landroid/graphics/RectF;

    .line 52
    float-to-double v3, v0

    .line 54
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 55
    move-result-wide v3

    .line 58
    double-to-float v0, v3

    .line 59
    iput v0, v2, Landroid/graphics/RectF;->top:F

    .line 60
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelPath:Landroid/graphics/Path;

    .line 62
    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelRect:Landroid/graphics/RectF;

    .line 64
    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 66
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 68
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    .line 71
    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledPerimeter:Landroid/graphics/Path;

    .line 73
    invoke-virtual {v0, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 75
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualTone:Z

    .line 78
    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    .line 82
    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelPath:Landroid/graphics/Path;

    .line 84
    sget-object v3, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    .line 86
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 91
    iget v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelColor:I

    .line 93
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->charging:Z

    .line 98
    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    .line 102
    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    .line 104
    sget-object v3, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    .line 106
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 108
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invertFillIcon:Z

    .line 111
    if-nez v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    .line 115
    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 117
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 119
    :cond_2
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualTone:Z

    .line 122
    if-eqz v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    .line 126
    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualToneBackgroundFill:Landroid/graphics/Paint;

    .line 128
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 133
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 136
    move-result-object v0

    .line 139
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 140
    int-to-float v0, v0

    .line 142
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 143
    move-result-object v2

    .line 146
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 147
    move-result v2

    .line 150
    int-to-float v2, v2

    .line 151
    mul-float/2addr v2, v1

    .line 152
    sub-float/2addr v0, v2

    .line 153
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 154
    move-result-object v1

    .line 157
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 158
    int-to-float v1, v1

    .line 160
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 161
    move-result-object v2

    .line 164
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 165
    int-to-float v2, v2

    .line 167
    const/4 v3, 0x0

    .line 168
    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 169
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    .line 172
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 174
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 176
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 179
    goto :goto_1

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 183
    iget v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColor:I

    .line 185
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->unifiedPath:Landroid/graphics/Path;

    .line 190
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 192
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 194
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 197
    iget v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelColor:I

    .line 199
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    iget v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->batteryLevel:I

    .line 204
    const/16 v1, 0x14

    .line 206
    if-gt v0, v1, :cond_4

    .line 208
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->charging:Z

    .line 210
    if-nez v0, :cond_4

    .line 212
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 214
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledFill:Landroid/graphics/Path;

    .line 217
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 219
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->levelPath:Landroid/graphics/Path;

    .line 222
    iget-object v1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 224
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 226
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 229
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->charging:Z

    .line 232
    if-eqz v0, :cond_6

    .line 234
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    .line 236
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 238
    iget-boolean v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invertFillIcon:Z

    .line 241
    if-eqz v0, :cond_5

    .line 243
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    .line 245
    iget-object p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokePaint:Landroid/graphics/Paint;

    .line 247
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 249
    goto :goto_2

    .line 252
    :cond_5
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    .line 253
    iget-object p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokeProtection:Landroid/graphics/Paint;

    .line 255
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 257
    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 260
    return-void
    .line 263
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->intrinsicHeight:I

    .line 2
    return p0
    .line 4
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->intrinsicWidth:I

    .line 2
    return p0
    .line 4
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
    .line 3
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 5
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 9
    move-result v0

    .line 12
    const/high16 v1, 0x41400000    # 12.0f

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    .line 17
    const/high16 v2, 0x3f800000    # 1.0f

    .line 19
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    .line 25
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 27
    int-to-float v2, v2

    .line 29
    div-float/2addr v2, v1

    .line 30
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 31
    int-to-float v3, v3

    .line 33
    const/high16 v4, 0x41a00000    # 20.0f

    .line 34
    div-float/2addr v3, v4

    .line 36
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 37
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->perimeterPath:Landroid/graphics/Path;

    .line 40
    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    .line 42
    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledPerimeter:Landroid/graphics/Path;

    .line 44
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 46
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->errorPerimeterPath:Landroid/graphics/Path;

    .line 49
    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    .line 51
    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledErrorPerimeter:Landroid/graphics/Path;

    .line 53
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 55
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillMask:Landroid/graphics/Path;

    .line 58
    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    .line 60
    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledFill:Landroid/graphics/Path;

    .line 62
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 64
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledFill:Landroid/graphics/Path;

    .line 67
    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillRect:Landroid/graphics/RectF;

    .line 69
    const/4 v3, 0x1

    .line 71
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 72
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->boltPath:Landroid/graphics/Path;

    .line 75
    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    .line 77
    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledBolt:Landroid/graphics/Path;

    .line 79
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 81
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->plusPath:Landroid/graphics/Path;

    .line 84
    iget-object v2, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaleMatrix:Landroid/graphics/Matrix;

    .line 86
    iget-object v3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->scaledPlus:Landroid/graphics/Path;

    .line 88
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 90
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 93
    int-to-float p1, p1

    .line 95
    div-float/2addr p1, v1

    .line 96
    const/high16 v0, 0x40400000    # 3.0f

    .line 97
    mul-float/2addr p1, v0

    .line 99
    const/high16 v0, 0x40c00000    # 6.0f

    .line 100
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 102
    move-result p1

    .line 105
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokePaint:Landroid/graphics/Paint;

    .line 106
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    iget-object p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokeProtection:Landroid/graphics/Paint;

    .line 111
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    return-void
    .line 116
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 4
    iget-object v0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->fillColorStrokePaint:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 9
    iget-object p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->dualToneBackgroundFill:Landroid/graphics/Paint;

    .line 12
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 14
    return-void
    .line 17
.end method
