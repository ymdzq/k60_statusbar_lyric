.class public final Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;
.super Landroid/graphics/drawable/Drawable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public mAlpha:I

.field public mCircleX:I

.field public mCircleY:I

.field public final mDarkColor:I

.field public final mRadialGradientPaint:Landroid/graphics/Paint;

.field public mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    const/16 v0, 0xff

    .line 5
    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mAlpha:I

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    .line 9
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mRadialGradientPaint:Landroid/graphics/Paint;

    .line 14
    const v0, 0x7f060175    # @color/keyguard_user_switcher_background_gradient_color '#77000000'

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    .line 19
    move-result p1

    .line 22
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mDarkColor:I

    .line 23
    return-void
    .line 25
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mAlpha:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 7
    move-result-object v0

    .line 10
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 11
    int-to-float v3, v1

    .line 13
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 14
    int-to-float v4, v1

    .line 16
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 17
    int-to-float v5, v1

    .line 19
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 20
    int-to-float v6, v0

    .line 22
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mRadialGradientPaint:Landroid/graphics/Paint;

    .line 23
    move-object v2, p1

    .line 25
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 26
    return-void
    .line 29
.end method

.method public final getAlpha()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mAlpha:I

    .line 2
    return p0
    .line 4
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x3

    .line 2
    return p0
    .line 3
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    if-ne p2, p6, :cond_0

    .line 2
    if-ne p3, p7, :cond_0

    .line 4
    if-ne p4, p8, :cond_0

    .line 6
    if-eq p5, p9, :cond_1

    .line 8
    :cond_0
    sub-int/2addr p4, p2

    .line 10
    sub-int/2addr p5, p3

    .line 11
    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    .line 12
    move-result p1

    .line 15
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mSize:I

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->updatePaint()V

    .line 18
    :cond_1
    return-void
    .line 21
.end method

.method public final setAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mAlpha:I

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->updatePaint()V

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    return-void
    .line 10
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final updatePaint()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mSize:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    int-to-float v0, v0

    .line 7
    const/high16 v1, 0x40200000    # 2.5f

    .line 8
    mul-float v5, v0, v1

    .line 10
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mRadialGradientPaint:Landroid/graphics/Paint;

    .line 12
    new-instance v1, Landroid/graphics/RadialGradient;

    .line 14
    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mCircleX:I

    .line 16
    int-to-float v3, v2

    .line 18
    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mCircleY:I

    .line 19
    int-to-float v4, v2

    .line 21
    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mDarkColor:I

    .line 22
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    .line 24
    move-result v2

    .line 27
    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mAlpha:I

    .line 28
    mul-int/2addr v2, p0

    .line 30
    int-to-float p0, v2

    .line 31
    const/high16 v2, 0x437f0000    # 255.0f

    .line 32
    div-float/2addr p0, v2

    .line 34
    float-to-int p0, p0

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-static {p0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 37
    move-result p0

    .line 40
    filled-new-array {p0, v2}, [I

    .line 41
    move-result-object v6

    .line 44
    const/4 p0, 0x2

    .line 45
    new-array v7, p0, [F

    .line 46
    const/4 p0, 0x0

    .line 48
    const v8, 0x3dcccccd    # 0.1f

    .line 49
    invoke-static {p0, v8}, Ljava/lang/Math;->max(FF)F

    .line 52
    move-result p0

    .line 55
    aput p0, v7, v2

    .line 56
    const/4 p0, 0x1

    .line 58
    const/high16 v2, 0x3f800000    # 1.0f

    .line 59
    aput v2, v7, p0

    .line 61
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 63
    move-object v2, v1

    .line 65
    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 69
    return-void
    .line 72
.end method
