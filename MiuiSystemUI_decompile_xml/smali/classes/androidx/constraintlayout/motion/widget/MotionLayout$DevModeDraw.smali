.class public final Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mBounds:Landroid/graphics/Rect;

.field public final mFillPaint:Landroid/graphics/Paint;

.field public mKeyFrameCount:I

.field public final mKeyFramePoints:[F

.field public final mPaint:Landroid/graphics/Paint;

.field public final mPaintGraph:Landroid/graphics/Paint;

.field public final mPaintKeyframes:Landroid/graphics/Paint;

.field public mPath:Landroid/graphics/Path;

.field public final mPathMode:[I

.field public mPoints:[F

.field public final mRectangle:[F

.field public final mShadowTranslate:I

.field public final mTextPaint:Landroid/graphics/Paint;

.field public final synthetic this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 4

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mBounds:Landroid/graphics/Rect;

    .line 12
    const/4 v0, 0x1

    .line 14
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mShadowTranslate:I

    .line 15
    new-instance v1, Landroid/graphics/Paint;

    .line 17
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 19
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    .line 22
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    const/16 v2, -0x55cd

    .line 27
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    const/high16 v2, 0x40000000    # 2.0f

    .line 32
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 37
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    new-instance v1, Landroid/graphics/Paint;

    .line 42
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 44
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    .line 47
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    const v3, -0x1f8a66

    .line 52
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 61
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    new-instance v1, Landroid/graphics/Paint;

    .line 66
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 68
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    .line 71
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    const v3, -0xcc5600

    .line 76
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 85
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    new-instance v2, Landroid/graphics/Paint;

    .line 90
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 92
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    .line 95
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 103
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 111
    move-result-object p1

    .line 114
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 115
    const/high16 v3, 0x41400000    # 12.0f

    .line 117
    mul-float/2addr p1, v3

    .line 119
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 120
    const/16 p1, 0x8

    .line 123
    new-array p1, p1, [F

    .line 125
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mRectangle:[F

    .line 127
    new-instance p1, Landroid/graphics/Paint;

    .line 129
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 131
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mFillPaint:Landroid/graphics/Paint;

    .line 134
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 136
    new-instance p1, Landroid/graphics/DashPathEffect;

    .line 139
    const/4 v0, 0x2

    .line 141
    new-array v0, v0, [F

    .line 142
    fill-array-data v0, :array_0

    .line 144
    const/4 v2, 0x0

    .line 147
    invoke-direct {p1, v0, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 148
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 151
    const/16 p1, 0x64

    .line 154
    new-array p1, p1, [F

    .line 156
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mKeyFramePoints:[F

    .line 158
    const/16 p1, 0x32

    .line 160
    new-array p1, p1, [I

    .line 162
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPathMode:[I

    .line 164
    return-void

    .line 166
    nop

    .line 167
    :array_0
    .array-data 4
        0x40800000    # 4.0f
        0x41000000    # 8.0f
    .end array-data
    .line 168
.end method


# virtual methods
.method public final drawAll(Landroid/graphics/Canvas;IILandroidx/constraintlayout/motion/widget/MotionController;)V
    .locals 22

    .line 1
    move-object/from16 v6, p0

    .line 2
    move-object/from16 v7, p1

    .line 4
    move/from16 v8, p2

    .line 6
    move-object/from16 v9, p4

    .line 8
    iget-object v10, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    .line 10
    iget-object v11, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPathMode:[I

    .line 12
    const/4 v12, 0x1

    .line 14
    const/4 v13, 0x0

    .line 15
    const/4 v14, 0x4

    .line 16
    if-ne v8, v14, :cond_4

    .line 17
    move v0, v13

    .line 19
    move v1, v0

    .line 20
    move v15, v1

    .line 21
    :goto_0
    iget v2, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mKeyFrameCount:I

    .line 22
    if-ge v0, v2, :cond_2

    .line 24
    aget v2, v11, v0

    .line 26
    if-ne v2, v12, :cond_0

    .line 28
    move v1, v12

    .line 30
    :cond_0
    if-nez v2, :cond_1

    .line 31
    move v15, v12

    .line 33
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 34
    goto :goto_0

    .line 36
    :cond_2
    if-eqz v1, :cond_3

    .line 37
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPoints:[F

    .line 39
    aget v1, v0, v13

    .line 41
    aget v2, v0, v12

    .line 43
    array-length v3, v0

    .line 45
    add-int/lit8 v3, v3, -0x2

    .line 46
    aget v3, v0, v3

    .line 48
    array-length v4, v0

    .line 50
    sub-int/2addr v4, v12

    .line 51
    aget v4, v0, v4

    .line 52
    move-object/from16 v0, p1

    .line 54
    move-object v5, v10

    .line 56
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 57
    :cond_3
    if-eqz v15, :cond_4

    .line 60
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawPathCartesian(Landroid/graphics/Canvas;)V

    .line 62
    :cond_4
    const/4 v15, 0x2

    .line 65
    if-ne v8, v15, :cond_5

    .line 66
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPoints:[F

    .line 68
    aget v1, v0, v13

    .line 70
    aget v2, v0, v12

    .line 72
    array-length v3, v0

    .line 74
    add-int/lit8 v3, v3, -0x2

    .line 75
    aget v3, v0, v3

    .line 77
    array-length v4, v0

    .line 79
    sub-int/2addr v4, v12

    .line 80
    aget v4, v0, v4

    .line 81
    move-object/from16 v0, p1

    .line 83
    move-object v5, v10

    .line 85
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 86
    :cond_5
    const/4 v10, 0x3

    .line 89
    if-ne v8, v10, :cond_6

    .line 90
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawPathCartesian(Landroid/graphics/Canvas;)V

    .line 92
    :cond_6
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPoints:[F

    .line 95
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaint:Landroid/graphics/Paint;

    .line 97
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 99
    iget-object v0, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 102
    if-eqz v0, :cond_7

    .line 104
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 106
    move-result v0

    .line 109
    iget-object v1, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 110
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 112
    move-result v1

    .line 115
    move/from16 v16, v0

    .line 116
    move/from16 v17, v1

    .line 118
    goto :goto_1

    .line 120
    :cond_7
    move/from16 v16, v13

    .line 121
    move/from16 v17, v16

    .line 123
    :goto_1
    move v5, v12

    .line 125
    :goto_2
    add-int/lit8 v0, p3, -0x1

    .line 126
    if-ge v5, v0, :cond_10

    .line 128
    if-ne v8, v14, :cond_8

    .line 130
    add-int/lit8 v0, v5, -0x1

    .line 132
    aget v0, v11, v0

    .line 134
    if-nez v0, :cond_8

    .line 136
    move/from16 v21, v5

    .line 138
    goto/16 :goto_6

    .line 140
    :cond_8
    mul-int/lit8 v0, v5, 0x2

    .line 142
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mKeyFramePoints:[F

    .line 144
    aget v4, v1, v0

    .line 146
    add-int/2addr v0, v12

    .line 148
    aget v3, v1, v0

    .line 149
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 151
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 153
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 156
    const/high16 v1, 0x41200000    # 10.0f

    .line 158
    add-float v2, v3, v1

    .line 160
    invoke-virtual {v0, v4, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 162
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 165
    add-float v2, v4, v1

    .line 167
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 169
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 172
    sub-float v2, v3, v1

    .line 174
    invoke-virtual {v0, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 176
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 179
    sub-float v1, v4, v1

    .line 181
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 183
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 186
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 188
    add-int/lit8 v0, v5, -0x1

    .line 191
    iget-object v1, v9, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 193
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 195
    move-result-object v1

    .line 198
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 199
    iget-object v2, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mFillPaint:Landroid/graphics/Paint;

    .line 201
    const/16 v18, 0x0

    .line 203
    if-ne v8, v14, :cond_c

    .line 205
    aget v0, v11, v0

    .line 207
    if-ne v0, v12, :cond_a

    .line 209
    sub-float v0, v4, v18

    .line 211
    sub-float v1, v3, v18

    .line 213
    invoke-virtual {v6, v7, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawPathRelativeTicks(Landroid/graphics/Canvas;FF)V

    .line 215
    :cond_9
    :goto_3
    move-object v14, v2

    .line 218
    move/from16 v19, v3

    .line 219
    move/from16 v20, v4

    .line 221
    move/from16 v21, v5

    .line 223
    goto :goto_4

    .line 225
    :cond_a
    if-nez v0, :cond_b

    .line 226
    sub-float v0, v4, v18

    .line 228
    sub-float v1, v3, v18

    .line 230
    invoke-virtual {v6, v7, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawPathCartesianTicks(Landroid/graphics/Canvas;FF)V

    .line 232
    goto :goto_3

    .line 235
    :cond_b
    if-ne v0, v15, :cond_9

    .line 236
    sub-float v19, v4, v18

    .line 238
    sub-float v20, v3, v18

    .line 240
    move-object/from16 v0, p0

    .line 242
    move-object/from16 v1, p1

    .line 244
    move-object v14, v2

    .line 246
    move/from16 v2, v19

    .line 247
    move/from16 v19, v3

    .line 249
    move/from16 v3, v20

    .line 251
    move/from16 v20, v4

    .line 253
    move/from16 v4, v16

    .line 255
    move/from16 v21, v5

    .line 257
    move/from16 v5, v17

    .line 259
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawPathScreenTicks(Landroid/graphics/Canvas;FFII)V

    .line 261
    :goto_4
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 264
    invoke-virtual {v7, v0, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 266
    goto :goto_5

    .line 269
    :cond_c
    move-object v14, v2

    .line 270
    move/from16 v19, v3

    .line 271
    move/from16 v20, v4

    .line 273
    move/from16 v21, v5

    .line 275
    :goto_5
    if-ne v8, v15, :cond_d

    .line 277
    sub-float v4, v20, v18

    .line 279
    sub-float v3, v19, v18

    .line 281
    invoke-virtual {v6, v7, v4, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawPathRelativeTicks(Landroid/graphics/Canvas;FF)V

    .line 283
    :cond_d
    if-ne v8, v10, :cond_e

    .line 286
    sub-float v4, v20, v18

    .line 288
    sub-float v3, v19, v18

    .line 290
    invoke-virtual {v6, v7, v4, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawPathCartesianTicks(Landroid/graphics/Canvas;FF)V

    .line 292
    :cond_e
    const/4 v0, 0x6

    .line 295
    if-ne v8, v0, :cond_f

    .line 296
    sub-float v2, v20, v18

    .line 298
    sub-float v3, v19, v18

    .line 300
    move-object/from16 v0, p0

    .line 302
    move-object/from16 v1, p1

    .line 304
    move/from16 v4, v16

    .line 306
    move/from16 v5, v17

    .line 308
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->drawPathScreenTicks(Landroid/graphics/Canvas;FFII)V

    .line 310
    :cond_f
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPath:Landroid/graphics/Path;

    .line 313
    invoke-virtual {v7, v0, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 315
    :goto_6
    add-int/lit8 v5, v21, 0x1

    .line 318
    const/4 v14, 0x4

    .line 320
    goto/16 :goto_2

    .line 321
    :cond_10
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPoints:[F

    .line 323
    array-length v1, v0

    .line 325
    if-le v1, v12, :cond_11

    .line 326
    aget v1, v0, v13

    .line 328
    aget v0, v0, v12

    .line 330
    iget-object v2, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintKeyframes:Landroid/graphics/Paint;

    .line 332
    const/high16 v3, 0x41000000    # 8.0f

    .line 334
    invoke-virtual {v7, v1, v0, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 336
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPoints:[F

    .line 339
    array-length v1, v0

    .line 341
    sub-int/2addr v1, v15

    .line 342
    aget v1, v0, v1

    .line 343
    array-length v4, v0

    .line 345
    sub-int/2addr v4, v12

    .line 346
    aget v0, v0, v4

    .line 347
    invoke-virtual {v7, v1, v0, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 349
    :cond_11
    return-void
    .line 352
.end method

.method public final drawPathCartesian(Landroid/graphics/Canvas;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPoints:[F

    .line 4
    const/4 v2, 0x0

    .line 6
    aget v2, v1, v2

    .line 7
    const/4 v3, 0x1

    .line 9
    aget v4, v1, v3

    .line 10
    array-length v5, v1

    .line 12
    add-int/lit8 v5, v5, -0x2

    .line 13
    aget v5, v1, v5

    .line 15
    array-length v6, v1

    .line 17
    sub-int/2addr v6, v3

    .line 18
    aget v1, v1, v6

    .line 19
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    .line 21
    move-result v7

    .line 24
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    .line 25
    move-result v8

    .line 28
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    .line 29
    move-result v9

    .line 32
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    .line 33
    move-result v10

    .line 36
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    .line 37
    move-object/from16 v6, p1

    .line 39
    move-object v11, v0

    .line 41
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 42
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    .line 45
    move-result v12

    .line 48
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    .line 49
    move-result v13

    .line 52
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    .line 53
    move-result v14

    .line 56
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    .line 57
    move-result v15

    .line 60
    move-object/from16 v11, p1

    .line 61
    move-object/from16 v16, v0

    .line 63
    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 65
    return-void
    .line 68
.end method

.method public final drawPathCartesianTicks(Landroid/graphics/Canvas;FF)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v7, p1

    .line 4
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPoints:[F

    .line 6
    const/4 v2, 0x0

    .line 8
    aget v2, v1, v2

    .line 9
    const/4 v3, 0x1

    .line 11
    aget v8, v1, v3

    .line 12
    array-length v4, v1

    .line 14
    add-int/lit8 v4, v4, -0x2

    .line 15
    aget v4, v1, v4

    .line 17
    array-length v5, v1

    .line 19
    sub-int/2addr v5, v3

    .line 20
    aget v9, v1, v5

    .line 21
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 23
    move-result v1

    .line 26
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    .line 27
    move-result v10

    .line 30
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 31
    move-result v3

    .line 34
    sub-float v3, p2, v3

    .line 35
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    .line 37
    move-result v5

    .line 40
    sub-float v11, v5, p3

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    .line 43
    const-string v12, ""

    .line 45
    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    const/high16 v13, 0x42c80000    # 100.0f

    .line 50
    mul-float v6, v3, v13

    .line 52
    sub-float v14, v4, v2

    .line 54
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    .line 56
    move-result v14

    .line 59
    div-float/2addr v6, v14

    .line 60
    float-to-double v14, v6

    .line 61
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    .line 62
    add-double v14, v14, v16

    .line 64
    double-to-int v6, v14

    .line 66
    int-to-float v6, v6

    .line 67
    div-float/2addr v6, v13

    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v5

    .line 75
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    .line 76
    invoke-virtual {v0, v14, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->getTextBounds(Landroid/graphics/Paint;Ljava/lang/String;)V

    .line 78
    const/high16 v15, 0x40000000    # 2.0f

    .line 81
    div-float/2addr v3, v15

    .line 83
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mBounds:Landroid/graphics/Rect;

    .line 84
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 86
    move-result v18

    .line 89
    div-int/lit8 v15, v18, 0x2

    .line 90
    int-to-float v15, v15

    .line 92
    sub-float/2addr v3, v15

    .line 93
    add-float/2addr v3, v1

    .line 94
    const/high16 v1, 0x41a00000    # 20.0f

    .line 95
    sub-float v1, p3, v1

    .line 97
    invoke-virtual {v7, v5, v3, v1, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 99
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 102
    move-result v4

    .line 105
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    .line 106
    move-object/from16 v1, p1

    .line 108
    move/from16 v2, p2

    .line 110
    move/from16 v3, p3

    .line 112
    move/from16 v5, p3

    .line 114
    move-object/from16 v18, v6

    .line 116
    move-object v6, v15

    .line 118
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    mul-float v2, v11, v13

    .line 127
    sub-float v3, v9, v8

    .line 129
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 131
    move-result v3

    .line 134
    div-float/2addr v2, v3

    .line 135
    float-to-double v2, v2

    .line 136
    add-double v2, v2, v16

    .line 137
    double-to-int v2, v2

    .line 139
    int-to-float v2, v2

    .line 140
    div-float/2addr v2, v13

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object v1

    .line 148
    invoke-virtual {v0, v14, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->getTextBounds(Landroid/graphics/Paint;Ljava/lang/String;)V

    .line 149
    const/high16 v0, 0x40000000    # 2.0f

    .line 152
    div-float/2addr v11, v0

    .line 154
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    .line 155
    move-result v0

    .line 158
    div-int/lit8 v0, v0, 0x2

    .line 159
    int-to-float v0, v0

    .line 161
    sub-float/2addr v11, v0

    .line 162
    const/high16 v0, 0x40a00000    # 5.0f

    .line 163
    add-float v0, p2, v0

    .line 165
    sub-float/2addr v10, v11

    .line 167
    invoke-virtual {v7, v1, v0, v10, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 168
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    .line 171
    move-result v4

    .line 174
    move-object/from16 v0, p1

    .line 175
    move/from16 v1, p2

    .line 177
    move/from16 v2, p3

    .line 179
    move/from16 v3, p2

    .line 181
    move-object v5, v15

    .line 183
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 184
    return-void
    .line 187
.end method

.method public final drawPathRelativeTicks(Landroid/graphics/Canvas;FF)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move v1, p2

    .line 3
    move/from16 v2, p3

    .line 4
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPoints:[F

    .line 6
    const/4 v4, 0x0

    .line 8
    aget v4, v3, v4

    .line 9
    const/4 v5, 0x1

    .line 11
    aget v6, v3, v5

    .line 12
    array-length v7, v3

    .line 14
    add-int/lit8 v7, v7, -0x2

    .line 15
    aget v7, v3, v7

    .line 17
    array-length v8, v3

    .line 19
    sub-int/2addr v8, v5

    .line 20
    aget v3, v3, v8

    .line 21
    sub-float v5, v4, v7

    .line 23
    float-to-double v8, v5

    .line 25
    sub-float v5, v6, v3

    .line 26
    float-to-double v10, v5

    .line 28
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    .line 29
    move-result-wide v8

    .line 32
    double-to-float v5, v8

    .line 33
    sub-float v8, v1, v4

    .line 34
    sub-float/2addr v7, v4

    .line 36
    mul-float/2addr v8, v7

    .line 37
    sub-float v9, v2, v6

    .line 38
    sub-float/2addr v3, v6

    .line 40
    mul-float/2addr v9, v3

    .line 41
    add-float/2addr v9, v8

    .line 42
    mul-float v8, v5, v5

    .line 43
    div-float/2addr v9, v8

    .line 45
    mul-float/2addr v7, v9

    .line 46
    add-float/2addr v4, v7

    .line 47
    mul-float/2addr v9, v3

    .line 48
    add-float/2addr v6, v9

    .line 49
    new-instance v9, Landroid/graphics/Path;

    .line 50
    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    .line 52
    invoke-virtual {v9, p2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 55
    invoke-virtual {v9, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 58
    sub-float v3, v4, v1

    .line 61
    float-to-double v7, v3

    .line 63
    sub-float v3, v6, v2

    .line 64
    float-to-double v10, v3

    .line 66
    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    .line 67
    move-result-wide v7

    .line 70
    double-to-float v3, v7

    .line 71
    new-instance v7, Ljava/lang/StringBuilder;

    .line 72
    const-string v8, ""

    .line 74
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    const/high16 v8, 0x42c80000    # 100.0f

    .line 79
    mul-float v10, v3, v8

    .line 81
    div-float/2addr v10, v5

    .line 83
    float-to-int v5, v10

    .line 84
    int-to-float v5, v5

    .line 85
    div-float/2addr v5, v8

    .line 86
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v8

    .line 93
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    .line 94
    invoke-virtual {p0, v12, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->getTextBounds(Landroid/graphics/Paint;Ljava/lang/String;)V

    .line 96
    const/high16 v5, 0x40000000    # 2.0f

    .line 99
    div-float/2addr v3, v5

    .line 101
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mBounds:Landroid/graphics/Rect;

    .line 102
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 104
    move-result v5

    .line 107
    div-int/lit8 v5, v5, 0x2

    .line 108
    int-to-float v5, v5

    .line 110
    sub-float v10, v3, v5

    .line 111
    const/high16 v11, -0x3e600000    # -20.0f

    .line 113
    move-object v7, p1

    .line 115
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 116
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    .line 119
    move-object v0, p1

    .line 121
    move v3, v4

    .line 122
    move v4, v6

    .line 123
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 124
    return-void
    .line 127
.end method

.method public final drawPathScreenTicks(Landroid/graphics/Canvas;FFII)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v7, p1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    const-string v8, ""

    .line 8
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    div-int/lit8 v2, p4, 0x2

    .line 13
    int-to-float v2, v2

    .line 15
    sub-float v2, p2, v2

    .line 16
    const/high16 v9, 0x42c80000    # 100.0f

    .line 18
    mul-float/2addr v2, v9

    .line 20
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 21
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getWidth()I

    .line 23
    move-result v3

    .line 26
    sub-int v3, v3, p4

    .line 27
    int-to-float v3, v3

    .line 29
    div-float/2addr v2, v3

    .line 30
    float-to-double v2, v2

    .line 31
    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    .line 32
    add-double/2addr v2, v11

    .line 34
    double-to-int v2, v2

    .line 35
    int-to-float v2, v2

    .line 36
    div-float/2addr v2, v9

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 44
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mTextPaint:Landroid/graphics/Paint;

    .line 45
    invoke-virtual {v0, v13, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->getTextBounds(Landroid/graphics/Paint;Ljava/lang/String;)V

    .line 47
    const/high16 v14, 0x40000000    # 2.0f

    .line 50
    div-float v2, p2, v14

    .line 52
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mBounds:Landroid/graphics/Rect;

    .line 54
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    .line 56
    move-result v3

    .line 59
    div-int/lit8 v3, v3, 0x2

    .line 60
    int-to-float v3, v3

    .line 62
    sub-float/2addr v2, v3

    .line 63
    const/4 v6, 0x0

    .line 64
    add-float/2addr v2, v6

    .line 65
    const/high16 v3, 0x41a00000    # 20.0f

    .line 66
    sub-float v3, p3, v3

    .line 68
    invoke-virtual {v7, v1, v2, v3, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 70
    const/high16 v5, 0x3f800000    # 1.0f

    .line 73
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    .line 75
    move-result v4

    .line 78
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mPaintGraph:Landroid/graphics/Paint;

    .line 79
    move-object/from16 v1, p1

    .line 81
    move/from16 v2, p2

    .line 83
    move-object/from16 v16, v3

    .line 85
    move/from16 v3, p3

    .line 87
    move/from16 v5, p3

    .line 89
    move-object/from16 v6, v16

    .line 91
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    div-int/lit8 v2, p5, 0x2

    .line 101
    int-to-float v2, v2

    .line 103
    sub-float v2, p3, v2

    .line 104
    mul-float/2addr v2, v9

    .line 106
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getHeight()I

    .line 107
    move-result v3

    .line 110
    sub-int v3, v3, p5

    .line 111
    int-to-float v3, v3

    .line 113
    div-float/2addr v2, v3

    .line 114
    float-to-double v2, v2

    .line 115
    add-double/2addr v2, v11

    .line 116
    double-to-int v2, v2

    .line 117
    int-to-float v2, v2

    .line 118
    div-float/2addr v2, v9

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v1

    .line 126
    invoke-virtual {v0, v13, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->getTextBounds(Landroid/graphics/Paint;Ljava/lang/String;)V

    .line 127
    div-float v0, p3, v14

    .line 130
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    .line 132
    move-result v2

    .line 135
    div-int/lit8 v2, v2, 0x2

    .line 136
    int-to-float v2, v2

    .line 138
    sub-float/2addr v0, v2

    .line 139
    const/high16 v2, 0x40a00000    # 5.0f

    .line 140
    add-float v2, p2, v2

    .line 142
    const/4 v3, 0x0

    .line 144
    sub-float v6, v3, v0

    .line 145
    invoke-virtual {v7, v1, v2, v6, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 147
    const/high16 v0, 0x3f800000    # 1.0f

    .line 150
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    .line 152
    move-result v4

    .line 155
    move-object/from16 v0, p1

    .line 156
    move/from16 v1, p2

    .line 158
    move/from16 v2, p3

    .line 160
    move/from16 v3, p2

    .line 162
    move-object/from16 v5, v16

    .line 164
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 166
    return-void
    .line 169
.end method

.method public final getTextBounds(Landroid/graphics/Paint;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 2
    move-result v0

    .line 5
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->mBounds:Landroid/graphics/Rect;

    .line 6
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, p2, v1, v0, p0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 9
    return-void
    .line 12
.end method
