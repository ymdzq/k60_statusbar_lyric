.class public final Lmiuix/internal/view/CheckWidgetCircleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mHasStroke:Z

.field public final mPaint:Landroid/graphics/Paint;

.field public mScale:F

.field public final mStrokeDisableAlpha:I

.field public final mStrokeNormalAlpha:I

.field public final mStrokePaint:Landroid/graphics/Paint;

.field public final mUncheckedDisableAlpha:I

.field public final mUncheckedNormalAlpha:I


# direct methods
.method public constructor <init>(III)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Lmiuix/internal/view/CheckWidgetCircleDrawable;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 3

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mPaint:Landroid/graphics/Paint;

    .line 4
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    iput v2, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mScale:F

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iput p2, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mUncheckedNormalAlpha:I

    .line 9
    iput p3, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mUncheckedDisableAlpha:I

    if-eqz p4, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    iput-boolean p1, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mHasStroke:Z

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, 0x40000000    # 2.0f

    .line 14
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 15
    :cond_1
    iput p5, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokeNormalAlpha:I

    .line 16
    iput p6, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokeDisableAlpha:I

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    move-result-object v0

    .line 5
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 6
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 8
    add-int v3, v1, v2

    .line 10
    div-int/lit8 v3, v3, 0x2

    .line 12
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 14
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 16
    add-int v5, v4, v0

    .line 18
    div-int/lit8 v5, v5, 0x2

    .line 20
    sub-int/2addr v1, v2

    .line 22
    sub-int/2addr v0, v4

    .line 23
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 24
    move-result v0

    .line 27
    div-int/lit8 v0, v0, 0x2

    .line 28
    int-to-float v1, v3

    .line 30
    int-to-float v2, v5

    .line 31
    int-to-float v0, v0

    .line 32
    iget v3, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mScale:F

    .line 33
    mul-float/2addr v3, v0

    .line 35
    const/high16 v4, 0x3f800000    # 1.0f

    .line 36
    sub-float/2addr v3, v4

    .line 38
    iget-object v5, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mPaint:Landroid/graphics/Paint;

    .line 39
    invoke-virtual {p1, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 41
    iget-boolean v3, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mHasStroke:Z

    .line 44
    if-eqz v3, :cond_0

    .line 46
    iget v3, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mScale:F

    .line 48
    mul-float/2addr v0, v3

    .line 50
    sub-float/2addr v0, v4

    .line 51
    sub-float/2addr v0, v4

    .line 52
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 53
    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 55
    :cond_0
    return-void
    .line 58
.end method

.method public final getAlpha()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mPaint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x3

    .line 2
    return p0
    .line 3
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mPaint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4
    iget-boolean v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mHasStroke:Z

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mUncheckedNormalAlpha:I

    .line 11
    if-ne p1, v0, :cond_0

    .line 13
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 15
    iget p0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokeNormalAlpha:I

    .line 17
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    iget v0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mUncheckedDisableAlpha:I

    .line 23
    if-ne p1, v0, :cond_1

    .line 25
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 27
    iget p0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mStrokeDisableAlpha:I

    .line 29
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 31
    :cond_1
    :goto_0
    return-void
    .line 34
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetCircleDrawable;->mPaint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 4
    return-void
    .line 7
.end method
