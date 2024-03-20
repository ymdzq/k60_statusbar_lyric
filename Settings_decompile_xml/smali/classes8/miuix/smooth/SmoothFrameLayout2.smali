.class public Lmiuix/smooth/SmoothFrameLayout2;
.super Landroid/widget/FrameLayout;
.source "SmoothFrameLayout2.java"


# instance fields
.field private mClip:Z

.field private mClipPath:Landroid/graphics/Path;

.field private mLayer:Landroid/graphics/RectF;

.field private mPaintSolid:Landroid/graphics/Paint;

.field private mPaintStroke:Landroid/graphics/Paint;

.field private mRadii:[F

.field private mRadius:F

.field private mStrokeColor:I

.field private mStrokeWidth:I

.field private mTempRadii:[F

.field private mUseSmooth:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lmiuix/smooth/SmoothFrameLayout2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lmiuix/smooth/SmoothFrameLayout2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lmiuix/smooth/SmoothFrameLayout2;->mLayer:Landroid/graphics/RectF;

    .line 37
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    const/4 p3, 0x0

    .line 45
    iput-boolean p3, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClip:Z

    .line 57
    sget-object v0, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout2:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 58
    sget p2, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout2_android_radius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadius:F

    .line 59
    sget p2, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout2_android_topLeftRadius:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget v0, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout2_android_topRightRadius:I

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout2_android_bottomRightRadius:I

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout2_android_bottomLeftRadius:I

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    .line 64
    sget v0, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout2_android_topRightRadius:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    .line 65
    sget v2, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout2_android_bottomRightRadius:I

    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    .line 66
    sget v3, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout2_android_bottomLeftRadius:I

    invoke-virtual {p1, v3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    const/16 v4, 0x8

    new-array v4, v4, [F

    aput p2, v4, p3

    aput p2, v4, v1

    const/4 p2, 0x2

    aput v0, v4, p2

    const/4 p2, 0x3

    aput v0, v4, p2

    const/4 p2, 0x4

    aput v2, v4, p2

    const/4 p2, 0x5

    aput v2, v4, p2

    const/4 p2, 0x6

    aput v3, v4, p2

    const/4 p2, 0x7

    aput v3, v4, p2

    .line 73
    invoke-virtual {p0, v4}, Lmiuix/smooth/SmoothFrameLayout2;->setCornerRadii([F)V

    .line 75
    :cond_1
    sget p2, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout2_miuix_strokeWidth:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeWidth:I

    .line 76
    sget p2, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout2_miuix_strokeColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeColor:I

    .line 77
    sget p2, Lmiuix/smooth/R$styleable;->MiuixSmoothContainerDrawable2_miuix_useSmooth:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/smooth/SmoothFrameLayout2;->mUseSmooth:Z

    .line 79
    sget-object p2, Lmiuix/smooth/SmoothCornerHelper;->FORCE_USE_SMOOTH:Ljava/lang/Boolean;

    if-eqz p2, :cond_2

    .line 80
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/smooth/SmoothFrameLayout2;->mUseSmooth:Z

    .line 82
    :cond_2
    iget-boolean p2, p0, Lmiuix/smooth/SmoothFrameLayout2;->mUseSmooth:Z

    if-eqz p2, :cond_3

    .line 83
    invoke-direct {p0, v1}, Lmiuix/smooth/SmoothFrameLayout2;->setSmoothCornerEnable(Z)V

    .line 85
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mPaintSolid:Landroid/graphics/Paint;

    .line 88
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 89
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mPaintStroke:Landroid/graphics/Paint;

    .line 90
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 91
    iget-object p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mPaintStroke:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    iget-object p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mPaintStroke:Landroid/graphics/Paint;

    iget p2, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 93
    iget-object p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mPaintStroke:Landroid/graphics/Paint;

    iget p0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private clipInnerRoundRect(Landroid/graphics/Canvas;)V
    .locals 10

    .line 241
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 242
    iget v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 243
    iget-object v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadii:[F

    if-nez v1, :cond_0

    .line 244
    iget-object v2, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mLayer:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    iget v4, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v0

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v1, v0

    iget v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadius:F

    add-float v7, v1, v0

    add-float v8, v1, v0

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [F

    iput-object v7, p0, Lmiuix/smooth/SmoothFrameLayout2;->mTempRadii:[F

    .line 249
    iget-object v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadii:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    add-float/2addr v3, v0

    aput v3, v7, v2

    const/4 v2, 0x1

    .line 250
    aget v3, v1, v2

    add-float/2addr v3, v0

    aput v3, v7, v2

    const/4 v2, 0x2

    .line 251
    aget v3, v1, v2

    add-float/2addr v3, v0

    aput v3, v7, v2

    const/4 v2, 0x3

    .line 252
    aget v1, v1, v2

    add-float/2addr v1, v0

    aput v1, v7, v2

    .line 253
    iget-object v2, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mLayer:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    iget v4, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v0

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v1, v0

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 257
    :goto_0
    iget-object p0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method private clipRoundRect(Landroid/graphics/Canvas;)V
    .locals 4

    .line 230
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 231
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadii:[F

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mLayer:Landroid/graphics/RectF;

    iget v2, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    iget-object v2, p0, Lmiuix/smooth/SmoothFrameLayout2;->mLayer:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 236
    :goto_0
    iget-object p0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method private drawRoundRectStroke(Landroid/graphics/Canvas;)V
    .locals 10

    .line 266
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 267
    iget v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 269
    iget-object v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadii:[F

    if-nez v1, :cond_0

    .line 270
    iget-object v2, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mLayer:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    iget v4, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v0

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v1, v0

    iget v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadius:F

    add-float v7, v1, v0

    add-float v8, v1, v0

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [F

    iput-object v7, p0, Lmiuix/smooth/SmoothFrameLayout2;->mTempRadii:[F

    .line 275
    iget-object v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadii:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    add-float/2addr v3, v0

    aput v3, v7, v2

    const/4 v2, 0x1

    .line 276
    aget v3, v1, v2

    add-float/2addr v3, v0

    aput v3, v7, v2

    const/4 v2, 0x2

    .line 277
    aget v3, v1, v2

    add-float/2addr v3, v0

    aput v3, v7, v2

    const/4 v2, 0x3

    .line 278
    aget v1, v1, v2

    add-float/2addr v1, v0

    aput v1, v7, v2

    .line 279
    iget-object v2, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mLayer:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    iget v4, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v0

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v1, v0

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 283
    :goto_0
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    iget-object p0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private setSmoothCornerEnable(Z)V
    .locals 0

    .line 116
    invoke-static {p0, p1}, Lmiuix/smooth/SmoothCornerHelper;->setViewSmoothCornerEnable(Landroid/view/View;Z)V

    return-void
.end method

.method private updateBackground()V
    .locals 0

    .line 156
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 158
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 199
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 201
    iget-boolean v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClip:Z

    if-nez v1, :cond_0

    .line 202
    invoke-direct {p0, p1}, Lmiuix/smooth/SmoothFrameLayout2;->clipRoundRect(Landroid/graphics/Canvas;)V

    .line 206
    :cond_0
    iget v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeWidth:I

    if-lez v1, :cond_1

    .line 207
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 208
    invoke-direct {p0, p1}, Lmiuix/smooth/SmoothFrameLayout2;->clipInnerRoundRect(Landroid/graphics/Canvas;)V

    .line 209
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 210
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 212
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 215
    :goto_0
    iget-boolean v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClip:Z

    if-nez v1, :cond_2

    iget v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeWidth:I

    if-lez v1, :cond_2

    .line 216
    invoke-direct {p0, p1}, Lmiuix/smooth/SmoothFrameLayout2;->drawRoundRectStroke(Landroid/graphics/Canvas;)V

    .line 219
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 177
    invoke-direct {p0, p1}, Lmiuix/smooth/SmoothFrameLayout2;->clipRoundRect(Landroid/graphics/Canvas;)V

    const/4 v1, 0x1

    .line 178
    iput-boolean v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClip:Z

    .line 179
    iget v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeWidth:I

    if-lez v1, :cond_0

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 182
    invoke-direct {p0, p1}, Lmiuix/smooth/SmoothFrameLayout2;->clipInnerRoundRect(Landroid/graphics/Canvas;)V

    .line 183
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 184
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 188
    :goto_0
    iget v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeWidth:I

    if-lez v1, :cond_1

    .line 189
    invoke-direct {p0, p1}, Lmiuix/smooth/SmoothFrameLayout2;->drawRoundRectStroke(Landroid/graphics/Canvas;)V

    :cond_1
    const/4 v1, 0x0

    .line 191
    iput-boolean v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClip:Z

    .line 194
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getCornerRadii()[F
    .locals 0

    .line 138
    iget-object p0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadii:[F

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0
.end method

.method public getCornerRadius()F
    .locals 0

    .line 151
    iget p0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadius:F

    return p0
.end method

.method public getStrokeColor()I
    .locals 0

    .line 129
    iget p0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeColor:I

    return p0
.end method

.method public getStrokeWidth()I
    .locals 0

    .line 120
    iget p0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeWidth:I

    return p0
.end method

.method public getUseSmooth()Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mUseSmooth:Z

    return p0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 163
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 164
    iget-object p0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mLayer:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p3, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setCornerRadii([F)V
    .locals 0

    .line 133
    iput-object p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadii:[F

    .line 134
    invoke-direct {p0}, Lmiuix/smooth/SmoothFrameLayout2;->updateBackground()V

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .line 145
    :cond_0
    iput p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadius:F

    const/4 p1, 0x0

    .line 146
    iput-object p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadii:[F

    .line 147
    invoke-direct {p0}, Lmiuix/smooth/SmoothFrameLayout2;->updateBackground()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    .line 124
    iput p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeColor:I

    .line 125
    invoke-direct {p0}, Lmiuix/smooth/SmoothFrameLayout2;->updateBackground()V

    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 0

    .line 97
    iput p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mStrokeWidth:I

    .line 98
    invoke-direct {p0}, Lmiuix/smooth/SmoothFrameLayout2;->updateBackground()V

    return-void
.end method

.method public setUseSmooth(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mUseSmooth:Z

    .line 103
    invoke-direct {p0, p1}, Lmiuix/smooth/SmoothFrameLayout2;->setSmoothCornerEnable(Z)V

    return-void
.end method
