.class public final Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final MARGIN:I

.field public c1x:F

.field public c1y:F

.field public c2x:F

.field public c2y:F

.field public final mPaint1:Landroid/graphics/Paint;

.field public final mPaint2:Landroid/graphics/Paint;

.field public mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 2
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->mPaint1:Landroid/graphics/Paint;

    .line 6
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->mPaint2:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07121b    # @dimen/two_circle_margin '50.0dp'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->MARGIN:I

    const/4 p0, 0x1

    .line 8
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    invoke-virtual {p3, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->c1x:F

    .line 5
    iget v1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->c1y:F

    .line 7
    iget v2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->mRadius:F

    .line 9
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->mPaint1:Landroid/graphics/Paint;

    .line 11
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 13
    iget v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->c2x:F

    .line 16
    iget v1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->c2y:F

    .line 18
    iget v2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->mRadius:F

    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->mPaint2:Landroid/graphics/Paint;

    .line 22
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 24
    return-void
    .line 27
.end method

.method public final setBackground([I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 2
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 4
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 9
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 19
    return-void
    .line 22
.end method

.method public final setPaintColor([I[ILandroid/graphics/drawable/GradientDrawable$Orientation;Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    filled-new-array {v1, v1}, [I

    .line 4
    move-result-object v1

    .line 7
    move-object/from16 v2, p4

    .line 8
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 10
    sget-object v1, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 13
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    .line 15
    move-result v3

    .line 18
    aget v1, v1, v3

    .line 19
    const/4 v3, 0x1

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x2

    .line 23
    if-eq v1, v3, :cond_3

    .line 24
    if-eq v1, v5, :cond_2

    .line 26
    const/4 v3, 0x3

    .line 28
    if-eq v1, v3, :cond_1

    .line 29
    const/4 v3, 0x4

    .line 31
    if-eq v1, v3, :cond_0

    .line 32
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 34
    move-result v1

    .line 37
    div-int/2addr v1, v5

    .line 38
    int-to-float v1, v1

    .line 39
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 40
    move-result v3

    .line 43
    int-to-float v3, v3

    .line 44
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 45
    move-result v6

    .line 48
    div-int/2addr v6, v5

    .line 49
    int-to-float v6, v6

    .line 50
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getWidth()I

    .line 51
    move-result v7

    .line 54
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 55
    move-result v8

    .line 58
    sub-int/2addr v7, v8

    .line 59
    int-to-float v7, v7

    .line 60
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 61
    move-result v8

    .line 64
    div-int/2addr v8, v5

    .line 65
    int-to-float v8, v8

    .line 66
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getWidth()I

    .line 67
    move-result v9

    .line 70
    int-to-float v9, v9

    .line 71
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 72
    move-result v10

    .line 75
    div-int/2addr v10, v5

    .line 76
    int-to-float v10, v10

    .line 77
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 78
    move-result v11

    .line 81
    div-int/2addr v11, v5

    .line 82
    int-to-float v11, v11

    .line 83
    iput v11, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->c1x:F

    .line 84
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 86
    move-result v11

    .line 89
    div-int/2addr v11, v5

    .line 90
    int-to-float v11, v11

    .line 91
    iput v11, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->c1y:F

    .line 92
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getWidth()I

    .line 94
    move-result v11

    .line 97
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 98
    move-result v12

    .line 101
    div-int/2addr v12, v5

    .line 102
    sub-int/2addr v11, v12

    .line 103
    int-to-float v11, v11

    .line 104
    iput v11, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->c2x:F

    .line 105
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 107
    move-result v11

    .line 110
    div-int/2addr v11, v5

    .line 111
    int-to-float v11, v11

    .line 112
    iput v11, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->c2y:F

    .line 113
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 115
    move-result v2

    .line 118
    div-int/2addr v2, v5

    .line 119
    goto/16 :goto_1

    .line 120
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getWidth()I

    .line 122
    move-result v1

    .line 125
    div-int/2addr v1, v5

    .line 126
    int-to-float v1, v1

    .line 127
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getWidth()I

    .line 128
    move-result v3

    .line 131
    div-int/2addr v3, v5

    .line 132
    int-to-float v3, v3

    .line 133
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 134
    move-result v6

    .line 137
    int-to-float v6, v6

    .line 138
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getWidth()I

    .line 139
    move-result v7

    .line 142
    div-int/2addr v7, v5

    .line 143
    int-to-float v7, v7

    .line 144
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 145
    move-result v8

    .line 148
    int-to-float v8, v8

    .line 149
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getWidth()I

    .line 150
    move-result v9

    .line 153
    div-int/2addr v9, v5

    .line 154
    int-to-float v9, v9

    .line 155
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getWidth()I

    .line 156
    move-result v10

    .line 159
    div-int/2addr v10, v5

    .line 160
    int-to-float v10, v10

    .line 161
    iput v10, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->c1x:F

    .line 162
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 164
    move-result v10

    .line 167
    int-to-float v10, v10

    .line 168
    iput v10, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->c1y:F

    .line 169
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getWidth()I

    .line 171
    move-result v10

    .line 174
    div-int/2addr v10, v5

    .line 175
    int-to-float v5, v10

    .line 176
    iput v5, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->c2x:F

    .line 177
    iput v4, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->c2y:F

    .line 179
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 181
    move-result v2

    .line 184
    int-to-float v2, v2

    .line 185
    iget v5, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->MARGIN:I

    .line 186
    int-to-float v5, v5

    .line 188
    sub-float/2addr v2, v5

    .line 189
    move v5, v4

    .line 190
    move v13, v5

    .line 191
    move v11, v7

    .line 192
    move v12, v9

    .line 193
    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getWidth()I

    .line 195
    move-result v1

    .line 198
    div-int/2addr v1, v5

    .line 199
    int-to-float v1, v1

    .line 200
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getWidth()I

    .line 201
    move-result v3

    .line 204
    div-int/2addr v3, v5

    .line 205
    int-to-float v3, v3

    .line 206
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 207
    move-result v6

    .line 210
    int-to-float v6, v6

    .line 211
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getWidth()I

    .line 212
    move-result v7

    .line 215
    div-int/2addr v7, v5

    .line 216
    int-to-float v7, v7

    .line 217
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 218
    move-result v8

    .line 221
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getWidth()I

    .line 222
    move-result v9

    .line 225
    div-int/2addr v9, v5

    .line 226
    sub-int/2addr v8, v9

    .line 227
    int-to-float v8, v8

    .line 228
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getWidth()I

    .line 229
    move-result v9

    .line 232
    div-int/2addr v9, v5

    .line 233
    int-to-float v9, v9

    .line 234
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 235
    move-result v10

    .line 238
    int-to-float v10, v10

    .line 239
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getWidth()I

    .line 240
    move-result v11

    .line 243
    div-int/2addr v11, v5

    .line 244
    int-to-float v11, v11

    .line 245
    iput v11, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->c1x:F

    .line 246
    iput v4, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->c1y:F

    .line 248
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getWidth()I

    .line 250
    move-result v11

    .line 253
    div-int/2addr v11, v5

    .line 254
    int-to-float v5, v11

    .line 255
    iput v5, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->c2x:F

    .line 256
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 258
    move-result v5

    .line 261
    int-to-float v5, v5

    .line 262
    iput v5, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->c2y:F

    .line 263
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 265
    move-result v2

    .line 268
    int-to-float v2, v2

    .line 269
    iget v5, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->MARGIN:I

    .line 270
    int-to-float v5, v5

    .line 272
    sub-float/2addr v2, v5

    .line 273
    move v5, v4

    .line 274
    move v11, v7

    .line 275
    move v12, v9

    .line 276
    move v13, v10

    .line 277
    :goto_0
    move v4, v1

    .line 278
    move v7, v6

    .line 279
    move v1, v8

    .line 280
    goto/16 :goto_2

    .line 281
    :cond_2
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getWidth()I

    .line 283
    move-result v1

    .line 286
    int-to-float v1, v1

    .line 287
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 288
    move-result v3

    .line 291
    div-int/2addr v3, v5

    .line 292
    int-to-float v3, v3

    .line 293
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 294
    move-result v6

    .line 297
    int-to-float v6, v6

    .line 298
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 299
    move-result v7

    .line 302
    div-int/2addr v7, v5

    .line 303
    int-to-float v7, v7

    .line 304
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 305
    move-result v8

    .line 308
    div-int/2addr v8, v5

    .line 309
    int-to-float v8, v8

    .line 310
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 311
    move-result v9

    .line 314
    div-int/2addr v9, v5

    .line 315
    int-to-float v9, v9

    .line 316
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getWidth()I

    .line 317
    move-result v10

    .line 320
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 321
    move-result v11

    .line 324
    div-int/2addr v11, v5

    .line 325
    sub-int/2addr v10, v11

    .line 326
    int-to-float v10, v10

    .line 327
    iput v10, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->c1x:F

    .line 328
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 330
    move-result v10

    .line 333
    div-int/2addr v10, v5

    .line 334
    int-to-float v10, v10

    .line 335
    iput v10, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->c1y:F

    .line 336
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 338
    move-result v10

    .line 341
    div-int/2addr v10, v5

    .line 342
    int-to-float v10, v10

    .line 343
    iput v10, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->c2x:F

    .line 344
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 346
    move-result v10

    .line 349
    div-int/2addr v10, v5

    .line 350
    int-to-float v10, v10

    .line 351
    iput v10, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->c2y:F

    .line 352
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 354
    move-result v2

    .line 357
    div-int/2addr v2, v5

    .line 358
    int-to-float v2, v2

    .line 359
    move v5, v3

    .line 360
    move v12, v4

    .line 361
    move v11, v8

    .line 362
    move v13, v9

    .line 363
    move v4, v1

    .line 364
    move v1, v12

    .line 365
    goto :goto_3

    .line 366
    :cond_3
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 367
    move-result v1

    .line 370
    div-int/2addr v1, v5

    .line 371
    int-to-float v1, v1

    .line 372
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 373
    move-result v3

    .line 376
    int-to-float v3, v3

    .line 377
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 378
    move-result v6

    .line 381
    div-int/2addr v6, v5

    .line 382
    int-to-float v6, v6

    .line 383
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getWidth()I

    .line 384
    move-result v7

    .line 387
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 388
    move-result v8

    .line 391
    sub-int/2addr v7, v8

    .line 392
    int-to-float v7, v7

    .line 393
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 394
    move-result v8

    .line 397
    div-int/2addr v8, v5

    .line 398
    int-to-float v8, v8

    .line 399
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getWidth()I

    .line 400
    move-result v9

    .line 403
    int-to-float v9, v9

    .line 404
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 405
    move-result v10

    .line 408
    div-int/2addr v10, v5

    .line 409
    int-to-float v10, v10

    .line 410
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 411
    move-result v11

    .line 414
    div-int/2addr v11, v5

    .line 415
    int-to-float v11, v11

    .line 416
    iput v11, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->c1x:F

    .line 417
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 419
    move-result v11

    .line 422
    div-int/2addr v11, v5

    .line 423
    int-to-float v11, v11

    .line 424
    iput v11, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->c1y:F

    .line 425
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getWidth()I

    .line 427
    move-result v11

    .line 430
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 431
    move-result v12

    .line 434
    div-int/2addr v12, v5

    .line 435
    sub-int/2addr v11, v12

    .line 436
    int-to-float v11, v11

    .line 437
    iput v11, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->c2x:F

    .line 438
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 440
    move-result v11

    .line 443
    div-int/2addr v11, v5

    .line 444
    int-to-float v11, v11

    .line 445
    iput v11, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->c2y:F

    .line 446
    invoke-virtual/range {p4 .. p4}, Landroid/widget/ImageView;->getHeight()I

    .line 448
    move-result v2

    .line 451
    div-int/2addr v2, v5

    .line 452
    :goto_1
    int-to-float v2, v2

    .line 453
    move v5, v1

    .line 454
    move v11, v7

    .line 455
    move v1, v8

    .line 456
    move v12, v9

    .line 457
    move v13, v10

    .line 458
    move v7, v6

    .line 459
    :goto_2
    move v6, v3

    .line 460
    :goto_3
    iput v2, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->mRadius:F

    .line 461
    new-instance v2, Landroid/graphics/LinearGradient;

    .line 463
    const/4 v9, 0x0

    .line 465
    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 466
    move-object v3, v2

    .line 468
    move-object/from16 v8, p1

    .line 469
    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 471
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->mPaint1:Landroid/graphics/Paint;

    .line 474
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 476
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->mPaint1:Landroid/graphics/Paint;

    .line 479
    new-instance v3, Landroid/graphics/BlurMaskFilter;

    .line 481
    iget v4, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->mRadius:F

    .line 483
    const/high16 v5, 0x3f400000    # 0.75f

    .line 485
    mul-float/2addr v4, v5

    .line 487
    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    .line 488
    invoke-direct {v3, v4, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 490
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 493
    new-instance v2, Landroid/graphics/LinearGradient;

    .line 496
    const/4 v3, 0x0

    .line 498
    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 499
    move-object v7, v2

    .line 501
    move v8, v11

    .line 502
    move v9, v1

    .line 503
    move v10, v12

    .line 504
    move v11, v13

    .line 505
    move-object/from16 v12, p2

    .line 506
    move-object v13, v3

    .line 508
    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 509
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->mPaint2:Landroid/graphics/Paint;

    .line 512
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 514
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->mPaint2:Landroid/graphics/Paint;

    .line 517
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    .line 519
    iget v3, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/PlayerTwoCircleView;->mRadius:F

    .line 521
    mul-float/2addr v3, v5

    .line 523
    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    .line 524
    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 526
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 529
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 532
    return-void
    .line 535
.end method
