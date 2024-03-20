.class public Lmiuix/smooth/SmoothFrameLayout;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field public final mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

.field public final mLayer:Landroid/graphics/Rect;

.field public final mSavedLayer:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 2
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 4
    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 6
    sput-object v0, Lmiuix/smooth/SmoothFrameLayout;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/smooth/SmoothFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/smooth/SmoothFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lmiuix/smooth/SmoothFrameLayout;->mLayer:Landroid/graphics/Rect;

    .line 5
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lmiuix/smooth/SmoothFrameLayout;->mSavedLayer:Landroid/graphics/RectF;

    .line 6
    new-instance p3, Lmiuix/smooth/internal/SmoothDrawHelper;

    invoke-direct {p3}, Lmiuix/smooth/internal/SmoothDrawHelper;-><init>()V

    iput-object p3, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 7
    sget-object p3, Lmiuix/smooth/R$styleable;->MiuixSmoothFrameLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    .line 9
    invoke-virtual {p0, p3}, Lmiuix/smooth/SmoothFrameLayout;->setCornerRadius(F)V

    const/4 p3, 0x1

    .line 10
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    .line 15
    invoke-virtual {p1, v6, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    int-to-float v7, v7

    .line 16
    invoke-virtual {p1, v5, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    int-to-float v8, v8

    .line 17
    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    int-to-float v9, v9

    const/16 v10, 0x8

    new-array v10, v10, [F

    aput v0, v10, p2

    aput v0, v10, p3

    aput v7, v10, v6

    aput v7, v10, v4

    aput v8, v10, v5

    aput v8, v10, v3

    aput v9, v10, v2

    aput v9, v10, v1

    .line 18
    invoke-virtual {p0, v10}, Lmiuix/smooth/SmoothFrameLayout;->setCornerRadii([F)V

    .line 19
    :cond_1
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 20
    invoke-virtual {p0, p3}, Lmiuix/smooth/SmoothFrameLayout;->setStrokeWidth(I)V

    .line 21
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 22
    invoke-virtual {p0, p2}, Lmiuix/smooth/SmoothFrameLayout;->setStrokeColor(I)V

    .line 23
    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    const/4 p3, 0x0

    .line 24
    invoke-virtual {p0, p2, p3}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 25
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayerType()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mSavedLayer:Landroid/graphics/RectF;

    .line 9
    const/4 v2, 0x0

    .line 11
    const/16 v3, 0x1f

    .line 12
    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 14
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, -0x1

    .line 19
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 20
    iget-object v2, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 23
    sget-object v3, Lmiuix/smooth/SmoothFrameLayout;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    .line 25
    invoke-virtual {v2, p1, v3}, Lmiuix/smooth/internal/SmoothDrawHelper;->drawMask(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V

    .line 27
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayerType()I

    .line 30
    move-result v2

    .line 33
    if-eq v2, v1, :cond_1

    .line 34
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 36
    :cond_1
    iget-object p0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 39
    invoke-virtual {p0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->drawStroke(Landroid/graphics/Canvas;)V

    .line 41
    return-void
    .line 44
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayerType()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mSavedLayer:Landroid/graphics/RectF;

    .line 9
    const/4 v2, 0x0

    .line 11
    const/16 v3, 0x1f

    .line 12
    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 14
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, -0x1

    .line 19
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 20
    iget-object v2, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 23
    sget-object v3, Lmiuix/smooth/SmoothFrameLayout;->XFERMODE_DST_OUT:Landroid/graphics/PorterDuffXfermode;

    .line 25
    invoke-virtual {v2, p1, v3}, Lmiuix/smooth/internal/SmoothDrawHelper;->drawMask(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V

    .line 27
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayerType()I

    .line 30
    move-result v2

    .line 33
    if-eq v2, v1, :cond_1

    .line 34
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 36
    :cond_1
    iget-object p0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 39
    invoke-virtual {p0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->drawStroke(Landroid/graphics/Canvas;)V

    .line 41
    return-void
    .line 44
.end method

.method public getCornerRadii()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 2
    iget-object p0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mRadii:[F

    .line 4
    if-nez p0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    check-cast p0, [F

    .line 14
    :goto_0
    return-object p0
    .line 16
.end method

.method public getCornerRadius()F
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 2
    iget p0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mRadius:F

    .line 4
    return p0
    .line 6
.end method

.method public getStrokeColor()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 2
    iget p0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeColor:I

    .line 4
    return p0
    .line 6
.end method

.method public getStrokeWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 2
    iget p0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    .line 4
    return p0
    .line 6
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    iget-object p3, p0, Lmiuix/smooth/SmoothFrameLayout;->mLayer:Landroid/graphics/Rect;

    .line 5
    const/4 p4, 0x0

    .line 7
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 8
    iget-object p3, p0, Lmiuix/smooth/SmoothFrameLayout;->mSavedLayer:Landroid/graphics/RectF;

    .line 11
    int-to-float p1, p1

    .line 13
    int-to-float p2, p2

    .line 14
    const/4 p4, 0x0

    .line 15
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 16
    iget-object p1, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 19
    iget-object p0, p0, Lmiuix/smooth/SmoothFrameLayout;->mLayer:Landroid/graphics/Rect;

    .line 21
    invoke-virtual {p1, p0}, Lmiuix/smooth/internal/SmoothDrawHelper;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 23
    return-void
    .line 26
.end method

.method public setCornerRadii([F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 2
    iput-object p1, v0, Lmiuix/smooth/internal/SmoothDrawHelper;->mRadii:[F

    .line 4
    if-nez p1, :cond_0

    .line 6
    const/4 p1, 0x0

    .line 8
    iput p1, v0, Lmiuix/smooth/internal/SmoothDrawHelper;->mRadius:F

    .line 9
    :cond_0
    iget-object p1, p0, Lmiuix/smooth/SmoothFrameLayout;->mLayer:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 19
    return-void
    .line 22
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
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 8
    iput p1, v0, Lmiuix/smooth/internal/SmoothDrawHelper;->mRadius:F

    .line 10
    const/4 p1, 0x0

    .line 12
    iput-object p1, v0, Lmiuix/smooth/internal/SmoothDrawHelper;->mRadii:[F

    .line 13
    iget-object p1, p0, Lmiuix/smooth/SmoothFrameLayout;->mLayer:Landroid/graphics/Rect;

    .line 15
    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 23
    return-void
    .line 26
.end method

.method public setStrokeColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 2
    iget v1, v0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeColor:I

    .line 4
    if-eq v1, p1, :cond_0

    .line 6
    iput p1, v0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeColor:I

    .line 8
    iget-object p1, p0, Lmiuix/smooth/SmoothFrameLayout;->mLayer:Landroid/graphics/Rect;

    .line 10
    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public setStrokeWidth(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothFrameLayout;->mHelper:Lmiuix/smooth/internal/SmoothDrawHelper;

    .line 2
    iget v1, v0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    .line 4
    if-eq v1, p1, :cond_0

    .line 6
    iput p1, v0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    .line 8
    iget-object p1, p0, Lmiuix/smooth/SmoothFrameLayout;->mLayer:Landroid/graphics/Rect;

    .line 10
    invoke-virtual {v0, p1}, Lmiuix/smooth/internal/SmoothDrawHelper;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 18
    :cond_0
    return-void
    .line 21
.end method
