.class public final Landroidx/cardview/widget/RoundRectDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mBackground:Landroid/content/res/ColorStateList;

.field public final mBoundsF:Landroid/graphics/RectF;

.field public final mBoundsI:Landroid/graphics/Rect;

.field public mInsetForPadding:Z

.field public mInsetForRadius:Z

.field public mPadding:F

.field public final mPaint:Landroid/graphics/Paint;

.field public mRadius:F

.field public mTint:Landroid/content/res/ColorStateList;

.field public mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field public mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(FLandroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForPadding:Z

    .line 6
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForRadius:Z

    .line 9
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 11
    iput-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 13
    iput p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    .line 17
    const/4 v0, 0x5

    .line 19
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 20
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    .line 23
    invoke-virtual {p0, p2}, Landroidx/cardview/widget/RoundRectDrawable;->setBackground(Landroid/content/res/ColorStateList;)V

    .line 25
    new-instance p1, Landroid/graphics/RectF;

    .line 28
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 30
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    .line 33
    new-instance p1, Landroid/graphics/Rect;

    .line 35
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    .line 40
    return-void
    .line 42
.end method


# virtual methods
.method public final createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    if-nez p2, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 7
    move-result-object p0

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 12
    move-result p0

    .line 15
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    .line 16
    invoke-direct {p1, p0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 18
    return-object p1

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 22
    return-object p0
    .line 23
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    .line 2
    iget-object v1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    .line 8
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    iget-object v1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 16
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    iget-object v2, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    .line 22
    iget p0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    .line 24
    invoke-virtual {p1, v2, p0, p0, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 26
    if-eqz v1, :cond_1

    .line 29
    const/4 p0, 0x0

    .line 31
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 32
    :cond_1
    return-void
    .line 35
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x3

    .line 2
    return p0
    .line 3
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    .line 2
    iget p0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    .line 4
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 6
    return-void
    .line 9
.end method

.method public final isStateful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 16
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    :cond_1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 22
    move-result p0

    .line 25
    if-eqz p0, :cond_3

    .line 26
    :cond_2
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_3
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
    .line 31
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 5
    return-void
    .line 8
.end method

.method public final onStateChange([I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    .line 2
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 4
    move-result v1

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 8
    move-result p1

    .line 11
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    .line 12
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 14
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    move v0, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    iget-object v2, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    .line 26
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    :cond_1
    iget-object p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    .line 31
    if-eqz p1, :cond_2

    .line 33
    iget-object v2, p0, Landroidx/cardview/widget/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 35
    if-eqz v2, :cond_2

    .line 37
    invoke-virtual {p0, p1, v2}, Landroidx/cardview/widget/RoundRectDrawable;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 39
    move-result-object p1

    .line 42
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 43
    return v1

    .line 45
    :cond_2
    return v0
    .line 46
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4
    return-void
    .line 7
.end method

.method public final setBackground(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 5
    move-result-object p1

    .line 8
    :cond_0
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    .line 9
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 13
    move-result-object v1

    .line 16
    iget-object p0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBackground:Landroid/content/res/ColorStateList;

    .line 17
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 19
    move-result p0

    .line 22
    invoke-virtual {p1, v1, p0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 23
    move-result p0

    .line 26
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    return-void
    .line 30
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPaint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 4
    return-void
    .line 7
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    .line 2
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/cardview/widget/RoundRectDrawable;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 6
    move-result-object p1

    .line 9
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 12
    return-void
    .line 15
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 2
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mTint:Landroid/content/res/ColorStateList;

    .line 4
    invoke-virtual {p0, v0, p1}, Landroidx/cardview/widget/RoundRectDrawable;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 6
    move-result-object p1

    .line 9
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 12
    return-void
    .line 15
.end method

.method public final updateBounds(Landroid/graphics/Rect;)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object p1

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    .line 8
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 10
    int-to-float v1, v1

    .line 12
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 13
    int-to-float v2, v2

    .line 15
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 16
    int-to-float v3, v3

    .line 18
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 19
    int-to-float v4, v4

    .line 21
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 22
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    .line 25
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 27
    iget-boolean p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForPadding:Z

    .line 30
    if-eqz p1, :cond_2

    .line 32
    iget p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    .line 34
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    .line 36
    iget-boolean v1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForRadius:Z

    .line 38
    invoke-static {p1, v0, v1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    .line 40
    move-result p1

    .line 43
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    .line 44
    iget v1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    .line 46
    iget-boolean v2, p0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForRadius:Z

    .line 48
    if-eqz v2, :cond_1

    .line 50
    float-to-double v2, v0

    .line 52
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 53
    sget-wide v6, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->COS_45:D

    .line 55
    sub-double/2addr v4, v6

    .line 57
    float-to-double v0, v1

    .line 58
    mul-double/2addr v4, v0

    .line 59
    add-double/2addr v4, v2

    .line 60
    double-to-float v0, v4

    .line 61
    :cond_1
    iget-object v1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    .line 62
    float-to-double v2, v0

    .line 64
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 65
    move-result-wide v2

    .line 68
    double-to-int v0, v2

    .line 69
    float-to-double v2, p1

    .line 70
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 71
    move-result-wide v2

    .line 74
    double-to-int p1, v2

    .line 75
    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 76
    iget-object p1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBoundsF:Landroid/graphics/RectF;

    .line 79
    iget-object p0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mBoundsI:Landroid/graphics/Rect;

    .line 81
    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 83
    :cond_2
    return-void
    .line 86
.end method
