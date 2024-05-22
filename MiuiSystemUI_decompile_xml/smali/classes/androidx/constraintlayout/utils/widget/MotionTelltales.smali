.class public Landroidx/constraintlayout/utils/widget/MotionTelltales;
.super Landroidx/constraintlayout/utils/widget/MockView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mInvertMatrix:Landroid/graphics/Matrix;

.field public mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public final mPaintTelltales:Landroid/graphics/Paint;

.field public mTailColor:I

.field public mTailScale:F

.field public final mVelocity:[F

.field public mVelocityMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocity:[F

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    const v0, -0xff01

    .line 6
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    const/high16 v0, 0x3e800000    # 0.25f

    .line 7
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocity:[F

    .line 12
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    const v0, -0xff01

    .line 14
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    const/high16 v0, 0x3e800000    # 0.25f

    .line 15
    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    .line 16
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    const/4 p3, 0x2

    new-array p3, p3, [F

    .line 19
    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocity:[F

    .line 20
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    const/4 p3, 0x0

    .line 21
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    const p3, -0xff01

    .line 22
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    const/high16 p3, 0x3e800000    # 0.25f

    .line 23
    iput p3, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_4

    .line 2
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales:[I

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 10
    move-result p2

    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-ge v0, p2, :cond_3

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 17
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    .line 23
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 25
    move-result v1

    .line 28
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    .line 29
    goto :goto_1

    .line 31
    :cond_0
    const/4 v2, 0x2

    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    .line 35
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 37
    move-result v1

    .line 40
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    .line 41
    goto :goto_1

    .line 43
    :cond_1
    const/4 v2, 0x1

    .line 44
    if-ne v1, v2, :cond_2

    .line 45
    iget v2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    .line 47
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 49
    move-result v1

    .line 52
    iput v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    .line 53
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 55
    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    .line 61
    iget p2, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    .line 63
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object p0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    .line 68
    const/high16 p1, 0x40a00000    # 5.0f

    .line 70
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    return-void
    .line 75
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    return-void
    .line 5
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-super/range {p0 .. p1}, Landroidx/constraintlayout/utils/widget/MockView;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 7
    move-result-object v1

    .line 10
    iget-object v2, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    .line 11
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 13
    iget-object v1, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 16
    if-nez v1, :cond_1

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 20
    move-result-object v1

    .line 23
    instance-of v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 24
    if-eqz v2, :cond_0

    .line 26
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 28
    iput-object v1, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 30
    :cond_0
    return-void

    .line 32
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 33
    move-result v1

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 37
    move-result v2

    .line 40
    const/4 v3, 0x5

    .line 41
    new-array v4, v3, [F

    .line 42
    fill-array-data v4, :array_0

    .line 44
    move-object v7, v0

    .line 47
    const/4 v6, 0x0

    .line 48
    :goto_0
    if-ge v6, v3, :cond_29

    .line 49
    aget v14, v4, v6

    .line 51
    const/4 v15, 0x0

    .line 53
    :goto_1
    if-ge v15, v3, :cond_28

    .line 54
    aget v13, v4, v15

    .line 56
    iget-object v8, v7, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 58
    iget-object v12, v7, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocity:[F

    .line 60
    iget v11, v7, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    .line 62
    iget v9, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 64
    iget v10, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 66
    iget-object v3, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 68
    if-eqz v3, :cond_2

    .line 70
    iget v3, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    .line 72
    sub-float/2addr v3, v10

    .line 74
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    .line 75
    move-result v3

    .line 78
    iget-object v9, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 79
    iget v10, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 81
    const v16, 0x3727c5ac    # 1.0E-5f

    .line 83
    add-float v10, v10, v16

    .line 86
    invoke-interface {v9, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 88
    move-result v9

    .line 91
    iget-object v10, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 92
    iget v5, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    .line 94
    invoke-interface {v10, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 96
    move-result v10

    .line 99
    sub-float/2addr v9, v10

    .line 100
    div-float v9, v9, v16

    .line 101
    mul-float/2addr v9, v3

    .line 103
    iget v3, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    .line 104
    div-float/2addr v9, v3

    .line 106
    :cond_2
    iget-object v3, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 107
    instance-of v5, v3, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    .line 109
    if-eqz v5, :cond_3

    .line 111
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;->getVelocity()F

    .line 113
    move-result v9

    .line 116
    :cond_3
    move v3, v9

    .line 117
    iget-object v5, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    .line 118
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    move-result-object v5

    .line 123
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 124
    and-int/lit8 v7, v11, 0x1

    .line 126
    const/16 v16, 0x1

    .line 128
    if-nez v7, :cond_26

    .line 130
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 132
    move-result v7

    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 136
    move-result v17

    .line 139
    iget-object v8, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    .line 140
    invoke-virtual {v5, v10, v8}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    .line 142
    move-result v9

    .line 145
    iget-object v10, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 146
    const/16 v18, 0x0

    .line 148
    move-object/from16 v19, v4

    .line 150
    const-string/jumbo v4, "translationX"

    .line 152
    if-nez v10, :cond_4

    .line 155
    move/from16 v20, v11

    .line 157
    move-object/from16 v10, v18

    .line 159
    goto :goto_2

    .line 161
    :cond_4
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    move-result-object v10

    .line 165
    check-cast v10, Landroidx/constraintlayout/motion/utils/ViewSpline;

    .line 166
    move/from16 v20, v11

    .line 168
    :goto_2
    iget-object v11, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 170
    move/from16 v21, v6

    .line 172
    const-string/jumbo v6, "translationY"

    .line 174
    if-nez v11, :cond_5

    .line 177
    move/from16 v22, v15

    .line 179
    move-object/from16 v11, v18

    .line 181
    goto :goto_3

    .line 183
    :cond_5
    invoke-virtual {v11, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    move-result-object v11

    .line 187
    check-cast v11, Landroidx/constraintlayout/motion/utils/ViewSpline;

    .line 188
    move/from16 v22, v15

    .line 190
    :goto_3
    iget-object v15, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 192
    move/from16 v23, v2

    .line 194
    const-string/jumbo v2, "rotation"

    .line 196
    if-nez v15, :cond_6

    .line 199
    move/from16 v24, v1

    .line 201
    move-object/from16 v15, v18

    .line 203
    goto :goto_4

    .line 205
    :cond_6
    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    move-result-object v15

    .line 209
    check-cast v15, Landroidx/constraintlayout/motion/utils/ViewSpline;

    .line 210
    move/from16 v24, v1

    .line 212
    :goto_4
    iget-object v1, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 214
    const-string/jumbo v0, "scaleX"

    .line 216
    if-nez v1, :cond_7

    .line 219
    move/from16 v25, v3

    .line 221
    move-object/from16 v1, v18

    .line 223
    goto :goto_5

    .line 225
    :cond_7
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    move-result-object v1

    .line 229
    check-cast v1, Landroidx/constraintlayout/motion/utils/ViewSpline;

    .line 230
    move/from16 v25, v3

    .line 232
    :goto_5
    iget-object v3, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 234
    move-object/from16 v26, v8

    .line 236
    const-string/jumbo v8, "scaleY"

    .line 238
    if-nez v3, :cond_8

    .line 241
    move/from16 v27, v7

    .line 243
    move-object/from16 v3, v18

    .line 245
    goto :goto_6

    .line 247
    :cond_8
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    move-result-object v3

    .line 251
    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewSpline;

    .line 252
    move/from16 v27, v7

    .line 254
    :goto_6
    iget-object v7, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 256
    if-nez v7, :cond_9

    .line 258
    move-object/from16 v4, v18

    .line 260
    goto :goto_7

    .line 262
    :cond_9
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    move-result-object v4

    .line 266
    check-cast v4, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 267
    :goto_7
    iget-object v7, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 269
    if-nez v7, :cond_a

    .line 271
    move-object/from16 v6, v18

    .line 273
    goto :goto_8

    .line 275
    :cond_a
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    move-result-object v6

    .line 279
    check-cast v6, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 280
    :goto_8
    iget-object v7, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 282
    if-nez v7, :cond_b

    .line 284
    move-object/from16 v2, v18

    .line 286
    goto :goto_9

    .line 288
    :cond_b
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    move-result-object v2

    .line 292
    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 293
    :goto_9
    iget-object v7, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 295
    if-nez v7, :cond_c

    .line 297
    move-object/from16 v0, v18

    .line 299
    goto :goto_a

    .line 301
    :cond_c
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    move-result-object v0

    .line 305
    check-cast v0, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 306
    :goto_a
    iget-object v7, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 308
    if-nez v7, :cond_d

    .line 310
    goto :goto_b

    .line 312
    :cond_d
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    move-result-object v7

    .line 316
    move-object/from16 v18, v7

    .line 317
    check-cast v18, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    .line 319
    :goto_b
    move-object/from16 v7, v18

    .line 321
    new-instance v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;

    .line 323
    invoke-direct {v8}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;-><init>()V

    .line 325
    move-object/from16 v18, v12

    .line 328
    const/4 v12, 0x0

    .line 330
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    .line 331
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    .line 333
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    .line 335
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    .line 337
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    .line 339
    if-eqz v15, :cond_e

    .line 341
    iget-object v12, v15, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 343
    move/from16 v29, v13

    .line 345
    move/from16 v28, v14

    .line 347
    float-to-double v13, v9

    .line 349
    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 350
    move-result-wide v12

    .line 353
    double-to-float v12, v12

    .line 354
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    .line 355
    invoke-virtual {v15, v9}, Landroidx/constraintlayout/motion/utils/ViewSpline;->get(F)F

    .line 357
    move-result v12

    .line 360
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mRotate:F

    .line 361
    goto :goto_c

    .line 363
    :cond_e
    move/from16 v29, v13

    .line 364
    move/from16 v28, v14

    .line 366
    :goto_c
    if-eqz v10, :cond_f

    .line 368
    iget-object v12, v10, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 370
    float-to-double v13, v9

    .line 372
    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 373
    move-result-wide v12

    .line 376
    double-to-float v12, v12

    .line 377
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    .line 378
    :cond_f
    if-eqz v11, :cond_10

    .line 380
    iget-object v12, v11, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 382
    float-to-double v13, v9

    .line 384
    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 385
    move-result-wide v12

    .line 388
    double-to-float v12, v12

    .line 389
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    .line 390
    :cond_10
    if-eqz v1, :cond_11

    .line 392
    iget-object v12, v1, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 394
    float-to-double v13, v9

    .line 396
    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 397
    move-result-wide v12

    .line 400
    double-to-float v12, v12

    .line 401
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    .line 402
    :cond_11
    if-eqz v3, :cond_12

    .line 404
    iget-object v12, v3, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 406
    float-to-double v13, v9

    .line 408
    invoke-virtual {v12, v13, v14}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 409
    move-result-wide v12

    .line 412
    double-to-float v12, v12

    .line 413
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    .line 414
    :cond_12
    if-eqz v2, :cond_13

    .line 416
    invoke-virtual {v2, v9}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->getSlope(F)F

    .line 418
    move-result v12

    .line 421
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    .line 422
    :cond_13
    if-eqz v4, :cond_14

    .line 424
    invoke-virtual {v4, v9}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->getSlope(F)F

    .line 426
    move-result v12

    .line 429
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    .line 430
    :cond_14
    if-eqz v6, :cond_15

    .line 432
    invoke-virtual {v6, v9}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->getSlope(F)F

    .line 434
    move-result v12

    .line 437
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    .line 438
    :cond_15
    if-eqz v0, :cond_16

    .line 440
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->getSlope(F)F

    .line 442
    move-result v12

    .line 445
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    .line 446
    :cond_16
    if-eqz v7, :cond_17

    .line 448
    invoke-virtual {v7, v9}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->getSlope(F)F

    .line 450
    move-result v12

    .line 453
    iput v12, v8, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    .line 454
    :cond_17
    iget-object v12, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    .line 456
    iget-object v13, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 458
    if-eqz v12, :cond_19

    .line 460
    iget-object v0, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 462
    array-length v1, v0

    .line 464
    if-lez v1, :cond_18

    .line 465
    float-to-double v1, v9

    .line 467
    invoke-virtual {v12, v1, v2, v0}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->getPos(D[D)V

    .line 468
    iget-object v0, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;

    .line 471
    iget-object v3, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 473
    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/core/motion/utils/ArcCurveFit;->getSlope(D[D)V

    .line 475
    iget-object v11, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 478
    iget-object v12, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 480
    iget-object v0, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 482
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 484
    move-object v14, v8

    .line 487
    move/from16 v8, v29

    .line 488
    move/from16 v9, v28

    .line 490
    move-object/from16 v10, v18

    .line 492
    move/from16 v1, v20

    .line 494
    move-object/from16 v2, v18

    .line 496
    move/from16 v3, v29

    .line 498
    move-object v13, v0

    .line 500
    invoke-static/range {v8 .. v13}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    .line 501
    goto :goto_d

    .line 504
    :cond_18
    move-object v14, v8

    .line 505
    move-object/from16 v2, v18

    .line 506
    move/from16 v1, v20

    .line 508
    move/from16 v3, v29

    .line 510
    :goto_d
    move-object v8, v14

    .line 512
    move v9, v3

    .line 513
    move/from16 v10, v28

    .line 514
    move/from16 v11, v27

    .line 516
    move/from16 v12, v17

    .line 518
    move-object v13, v2

    .line 520
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    .line 521
    move/from16 v30, v1

    .line 524
    move-object v1, v2

    .line 526
    goto :goto_f

    .line 527
    :cond_19
    move-object v14, v8

    .line 528
    move/from16 v30, v20

    .line 529
    move/from16 v12, v29

    .line 531
    iget-object v8, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 533
    if-eqz v8, :cond_1b

    .line 535
    move-object/from16 v8, v26

    .line 537
    invoke-virtual {v5, v9, v8}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    .line 539
    move-result v0

    .line 542
    iget-object v1, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 543
    const/4 v2, 0x0

    .line 545
    aget-object v1, v1, v2

    .line 546
    float-to-double v3, v0

    .line 548
    iget-object v0, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 549
    invoke-virtual {v1, v3, v4, v0}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 551
    iget-object v0, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 554
    aget-object v0, v0, v2

    .line 556
    iget-object v1, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 558
    invoke-virtual {v0, v3, v4, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 560
    aget v0, v8, v2

    .line 563
    const/4 v1, 0x0

    .line 565
    :goto_e
    iget-object v2, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 566
    array-length v3, v2

    .line 568
    if-ge v1, v3, :cond_1a

    .line 569
    aget-wide v3, v2, v1

    .line 571
    float-to-double v6, v0

    .line 573
    mul-double/2addr v3, v6

    .line 574
    aput-wide v3, v2, v1

    .line 575
    add-int/lit8 v1, v1, 0x1

    .line 577
    goto :goto_e

    .line 579
    :cond_1a
    iget-object v11, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 580
    iget-object v0, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 582
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 584
    move-object/from16 v1, v18

    .line 587
    move v8, v12

    .line 589
    move/from16 v9, v28

    .line 590
    move-object v10, v1

    .line 592
    move v3, v12

    .line 593
    move-object v12, v2

    .line 594
    move-object v13, v0

    .line 595
    invoke-static/range {v8 .. v13}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    .line 596
    move-object v8, v14

    .line 599
    move v9, v3

    .line 600
    move/from16 v10, v28

    .line 601
    move/from16 v11, v27

    .line 603
    move/from16 v12, v17

    .line 605
    move-object v13, v1

    .line 607
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    .line 608
    :goto_f
    move-object v0, v1

    .line 611
    move v1, v3

    .line 612
    goto/16 :goto_10

    .line 613
    :cond_1b
    move-object/from16 v8, v18

    .line 615
    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 617
    move-object/from16 v18, v7

    .line 619
    iget v7, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 621
    move-object/from16 v20, v0

    .line 623
    iget v0, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mX:F

    .line 625
    sub-float/2addr v7, v0

    .line 627
    iget v0, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 628
    move-object/from16 v26, v6

    .line 630
    iget v6, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mY:F

    .line 632
    sub-float/2addr v0, v6

    .line 634
    iget v6, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 635
    move-object/from16 v29, v4

    .line 637
    iget v4, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mWidth:F

    .line 639
    sub-float/2addr v6, v4

    .line 641
    iget v4, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 642
    iget v5, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mHeight:F

    .line 644
    sub-float/2addr v4, v5

    .line 646
    add-float/2addr v6, v7

    .line 647
    add-float/2addr v4, v0

    .line 648
    const/high16 v5, 0x3f800000    # 1.0f

    .line 649
    sub-float v13, v5, v12

    .line 651
    mul-float/2addr v13, v7

    .line 653
    mul-float/2addr v6, v12

    .line 654
    add-float/2addr v6, v13

    .line 655
    const/4 v7, 0x0

    .line 656
    aput v6, v8, v7

    .line 657
    sub-float v5, v5, v28

    .line 659
    mul-float/2addr v5, v0

    .line 661
    mul-float v4, v4, v28

    .line 662
    add-float/2addr v4, v5

    .line 664
    aput v4, v8, v16

    .line 665
    const/4 v0, 0x0

    .line 667
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    .line 668
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    .line 670
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    .line 672
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    .line 674
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    .line 676
    if-eqz v15, :cond_1c

    .line 678
    iget-object v0, v15, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 680
    float-to-double v4, v9

    .line 682
    invoke-virtual {v0, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 683
    move-result-wide v4

    .line 686
    double-to-float v0, v4

    .line 687
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    .line 688
    invoke-virtual {v15, v9}, Landroidx/constraintlayout/motion/utils/ViewSpline;->get(F)F

    .line 690
    move-result v0

    .line 693
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mRotate:F

    .line 694
    :cond_1c
    if-eqz v10, :cond_1d

    .line 696
    iget-object v0, v10, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 698
    float-to-double v4, v9

    .line 700
    invoke-virtual {v0, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 701
    move-result-wide v4

    .line 704
    double-to-float v0, v4

    .line 705
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    .line 706
    :cond_1d
    if-eqz v11, :cond_1e

    .line 708
    iget-object v0, v11, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 710
    float-to-double v4, v9

    .line 712
    invoke-virtual {v0, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 713
    move-result-wide v4

    .line 716
    double-to-float v0, v4

    .line 717
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    .line 718
    :cond_1e
    if-eqz v1, :cond_1f

    .line 720
    iget-object v0, v1, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 722
    float-to-double v4, v9

    .line 724
    invoke-virtual {v0, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 725
    move-result-wide v0

    .line 728
    double-to-float v0, v0

    .line 729
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    .line 730
    :cond_1f
    if-eqz v3, :cond_20

    .line 732
    iget-object v0, v3, Landroidx/constraintlayout/motion/utils/ViewSpline;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    .line 734
    float-to-double v3, v9

    .line 736
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D)D

    .line 737
    move-result-wide v0

    .line 740
    double-to-float v0, v0

    .line 741
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    .line 742
    :cond_20
    if-eqz v2, :cond_21

    .line 744
    invoke-virtual {v2, v9}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->getSlope(F)F

    .line 746
    move-result v0

    .line 749
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDRotate:F

    .line 750
    :cond_21
    if-eqz v29, :cond_22

    .line 752
    move-object/from16 v4, v29

    .line 754
    invoke-virtual {v4, v9}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->getSlope(F)F

    .line 756
    move-result v0

    .line 759
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateX:F

    .line 760
    :cond_22
    if-eqz v26, :cond_23

    .line 762
    move-object/from16 v6, v26

    .line 764
    invoke-virtual {v6, v9}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->getSlope(F)F

    .line 766
    move-result v0

    .line 769
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDTranslateY:F

    .line 770
    :cond_23
    if-eqz v20, :cond_24

    .line 772
    move-object/from16 v0, v20

    .line 774
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->getSlope(F)F

    .line 776
    move-result v0

    .line 779
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleX:F

    .line 780
    :cond_24
    if-eqz v18, :cond_25

    .line 782
    move-object/from16 v0, v18

    .line 784
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->getSlope(F)F

    .line 786
    move-result v0

    .line 789
    iput v0, v14, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->mDScaleY:F

    .line 790
    :cond_25
    move-object v0, v8

    .line 792
    move-object v8, v14

    .line 793
    move v9, v12

    .line 794
    move/from16 v10, v28

    .line 795
    move/from16 v11, v27

    .line 797
    move v1, v12

    .line 799
    move/from16 v12, v17

    .line 800
    move-object v13, v0

    .line 802
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/core/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    .line 803
    :goto_10
    move/from16 v2, v28

    .line 806
    goto :goto_11

    .line 808
    :cond_26
    move/from16 v24, v1

    .line 809
    move/from16 v23, v2

    .line 811
    move/from16 v25, v3

    .line 813
    move-object/from16 v19, v4

    .line 815
    move/from16 v21, v6

    .line 817
    move/from16 v30, v11

    .line 819
    move-object v0, v12

    .line 821
    move v1, v13

    .line 822
    move v2, v14

    .line 823
    move/from16 v22, v15

    .line 824
    invoke-virtual {v5, v10, v1, v2, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getDpDt(FFF[F)V

    .line 826
    :goto_11
    const/4 v3, 0x2

    .line 829
    move/from16 v4, v30

    .line 830
    if-ge v4, v3, :cond_27

    .line 832
    const/4 v3, 0x0

    .line 834
    aget v4, v0, v3

    .line 835
    mul-float v4, v4, v25

    .line 837
    aput v4, v0, v3

    .line 839
    aget v3, v0, v16

    .line 841
    mul-float v3, v3, v25

    .line 843
    aput v3, v0, v16

    .line 845
    :cond_27
    move-object/from16 v0, p0

    .line 847
    iget-object v3, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    .line 849
    iget-object v4, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocity:[F

    .line 851
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 853
    move/from16 v3, v24

    .line 856
    int-to-float v4, v3

    .line 858
    mul-float v6, v4, v1

    .line 859
    move/from16 v1, v23

    .line 861
    int-to-float v4, v1

    .line 863
    mul-float v7, v4, v2

    .line 864
    iget-object v4, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocity:[F

    .line 866
    const/4 v11, 0x0

    .line 868
    aget v5, v4, v11

    .line 869
    iget v8, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    .line 871
    mul-float/2addr v5, v8

    .line 873
    sub-float v9, v6, v5

    .line 874
    aget v5, v4, v16

    .line 876
    mul-float/2addr v5, v8

    .line 878
    sub-float v10, v7, v5

    .line 879
    iget-object v5, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    .line 881
    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 883
    iget-object v4, v0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    .line 886
    move-object/from16 v5, p1

    .line 888
    move v8, v9

    .line 890
    move v9, v10

    .line 891
    move-object v10, v4

    .line 892
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 893
    add-int/lit8 v15, v22, 0x1

    .line 896
    move-object v7, v0

    .line 898
    move v14, v2

    .line 899
    move-object/from16 v4, v19

    .line 900
    move/from16 v6, v21

    .line 902
    move v2, v1

    .line 904
    move v1, v3

    .line 905
    const/4 v3, 0x5

    .line 906
    goto/16 :goto_1

    .line 907
    :cond_28
    move v3, v1

    .line 909
    move v1, v2

    .line 910
    move-object/from16 v19, v4

    .line 911
    move/from16 v21, v6

    .line 913
    const/4 v11, 0x0

    .line 915
    add-int/lit8 v6, v21, 0x1

    .line 916
    move v1, v3

    .line 918
    const/4 v3, 0x5

    .line 919
    goto/16 :goto_0

    .line 920
    :cond_29
    return-void

    .line 922
    nop

    .line 923
    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f666666    # 0.9f
    .end array-data
    .line 924
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 5
    return-void
    .line 8
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MockView;->mText:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    return-void
    .line 11
.end method
