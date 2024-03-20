.class public Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;
.super Landroid/widget/ImageView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mLastConfiguration:Landroid/content/res/Configuration;

.field public final mOvalBgPaint:Landroid/graphics/Paint;

.field public mRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;->mLastConfiguration:Landroid/content/res/Configuration;

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setWillNotDraw(Z)V

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->forceHasOverlappingRendering(Z)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    .line 6
    move-result v1

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    move-result v0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    int-to-float v5, v0

    .line 16
    iget-object v6, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    .line 17
    move-object v1, p1

    .line 19
    move v4, v5

    .line 20
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 21
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 24
    return-void
    .line 27
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 4
    move-result p1

    .line 7
    and-int/lit16 v0, p1, 0x400

    .line 8
    if-nez v0, :cond_0

    .line 10
    and-int/lit16 p1, p1, 0x1000

    .line 12
    if-eqz p1, :cond_1

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;->mRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    .line 16
    if-eqz p0, :cond_1

    .line 18
    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mTargetView:Landroid/view/View;

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object p1

    .line 29
    iget v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mMaxWidthResource:I

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 32
    move-result p1

    .line 35
    iput p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mMaxWidth:I

    .line 36
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 38
    :cond_1
    return-void
    .line 41
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    .line 2
    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->jumpDrawablesToCurrentState()V

    .line 7
    :cond_0
    return-void
    .line 10
.end method

.method public setColors(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 6
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 8
    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 13
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    .line 16
    move-result p1

    .line 19
    int-to-float p1, p1

    .line 20
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    .line 21
    move-result v0

    .line 24
    int-to-float v0, v0

    .line 25
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    .line 26
    move-result p2

    .line 29
    int-to-float p2, p2

    .line 30
    const v1, 0x3f6b851f    # 0.92f

    .line 31
    invoke-static {p1, v0, p2, v1}, Landroid/graphics/Color;->valueOf(FFFF)Landroid/graphics/Color;

    .line 34
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Color;->toArgb()I

    .line 38
    move-result p1

    .line 41
    iget-object p2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    .line 42
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;->mRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    .line 47
    sget-object p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;->OVAL:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

    .line 49
    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mType:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

    .line 51
    return-void
    .line 53
.end method

.method public setDarkIntensity(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;->mRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/high16 v0, 0x3f000000    # 0.5f

    .line 7
    cmpl-float p1, p1, v0

    .line 9
    if-ltz p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->mDark:Z

    .line 16
    return-void
    .line 18
.end method

.method public setRipple(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 8
    iput-object v0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonView;->mRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    return-void
    .line 16
.end method
