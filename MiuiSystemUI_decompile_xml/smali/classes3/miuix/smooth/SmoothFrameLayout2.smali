.class public Lmiuix/smooth/SmoothFrameLayout2;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mClipPath:Landroid/graphics/Path;

.field public final mLayer:Landroid/graphics/RectF;

.field public final mPaintStroke:Landroid/graphics/Paint;

.field public mRadii:[F

.field public radius:F

.field public strokeColor:I

.field public strokeWidth:I

.field public useSmooth:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/smooth/SmoothFrameLayout2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/smooth/SmoothFrameLayout2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lmiuix/smooth/SmoothFrameLayout2;->mLayer:Landroid/graphics/RectF;

    .line 5
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    .line 6
    sget-object p3, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout2:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lmiuix/smooth/SmoothFrameLayout2;->radius:F

    const/4 p3, 0x1

    .line 8
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x7

    const/16 v2, 0x8

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    .line 13
    invoke-virtual {p1, v5, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    .line 14
    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    int-to-float v7, v7

    .line 15
    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    int-to-float v8, v8

    new-array v9, v2, [F

    aput v0, v9, p2

    aput v0, v9, p3

    aput v6, v9, v5

    aput v6, v9, v3

    aput v7, v9, v4

    const/4 v0, 0x5

    aput v7, v9, v0

    const/4 v0, 0x6

    aput v8, v9, v0

    aput v8, v9, v1

    .line 16
    invoke-virtual {p0, v9}, Lmiuix/smooth/SmoothFrameLayout2;->setCornerRadii([F)V

    .line 17
    :cond_1
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->strokeWidth:I

    .line 18
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/smooth/SmoothFrameLayout2;->strokeColor:I

    const/16 p2, 0x9

    .line 19
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/smooth/SmoothFrameLayout2;->useSmooth:Z

    if-eqz p2, :cond_2

    .line 20
    invoke-static {}, Lmiuix/smooth/SmoothCornerHelper;->setSmoothCornerEnable()V

    .line 21
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 23
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mPaintStroke:Landroid/graphics/Paint;

    .line 25
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 26
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    iget p2, p0, Lmiuix/smooth/SmoothFrameLayout2;->strokeWidth:I

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 28
    iget p0, p0, Lmiuix/smooth/SmoothFrameLayout2;->strokeColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 10
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    .line 13
    iget-object v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mLayer:Landroid/graphics/RectF;

    .line 15
    iget v2, p0, Lmiuix/smooth/SmoothFrameLayout2;->radius:F

    .line 17
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 19
    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 21
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 26
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 29
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 32
    move-result v0

    .line 35
    if-lez v0, :cond_1

    .line 36
    iget v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->strokeWidth:I

    .line 38
    if-lez v0, :cond_1

    .line 40
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mLayer:Landroid/graphics/RectF;

    .line 42
    iget v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->radius:F

    .line 44
    iget-object p0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mPaintStroke:Landroid/graphics/Paint;

    .line 46
    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 48
    :cond_1
    return-void
    .line 51
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 10
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    .line 13
    iget-object v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mLayer:Landroid/graphics/RectF;

    .line 15
    iget v2, p0, Lmiuix/smooth/SmoothFrameLayout2;->radius:F

    .line 17
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 19
    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 21
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mClipPath:Landroid/graphics/Path;

    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 26
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 29
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 32
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    iget v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->strokeWidth:I

    .line 38
    if-lez v0, :cond_1

    .line 40
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mLayer:Landroid/graphics/RectF;

    .line 42
    iget v1, p0, Lmiuix/smooth/SmoothFrameLayout2;->radius:F

    .line 44
    iget-object p0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mPaintStroke:Landroid/graphics/Paint;

    .line 46
    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 48
    :cond_1
    return-void
    .line 51
.end method

.method public getCornerRadii()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadii:[F

    .line 2
    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, [F

    .line 8
    return-object p0
    .line 10
.end method

.method public getCornerRadius()F
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/smooth/SmoothFrameLayout2;->radius:F

    .line 2
    return p0
    .line 4
.end method

.method public getStrokeColor()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/smooth/SmoothFrameLayout2;->strokeColor:I

    .line 2
    return p0
    .line 4
.end method

.method public getStrokeWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/smooth/SmoothFrameLayout2;->strokeWidth:I

    .line 2
    return p0
    .line 4
.end method

.method public getUseSmooth()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/smooth/SmoothFrameLayout2;->useSmooth:Z

    .line 2
    return p0
    .line 4
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    iget-object p0, p0, Lmiuix/smooth/SmoothFrameLayout2;->mLayer:Landroid/graphics/RectF;

    .line 5
    int-to-float p1, p1

    .line 7
    int-to-float p2, p2

    .line 8
    const/4 p3, 0x0

    .line 9
    invoke-virtual {p0, p3, p3, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 10
    return-void
    .line 13
.end method

.method public setCornerRadii([F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadii:[F

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 7
    return-void
    .line 10
.end method

.method public setCornerRadius(F)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    if-gez v1, :cond_0

    .line 5
    move p1, v0

    .line 7
    :cond_0
    iput p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->radius:F

    .line 8
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->mRadii:[F

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 16
    return-void
    .line 19
.end method

.method public setStrokeColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->strokeColor:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 7
    return-void
    .line 10
.end method

.method public setStrokeWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->strokeWidth:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 7
    return-void
    .line 10
.end method

.method public setUseSmooth(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/smooth/SmoothFrameLayout2;->useSmooth:Z

    .line 2
    return-void
    .line 4
.end method
