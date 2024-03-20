.class public Lcom/android/keyguard/widget/NumPadRippleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAlpha:I

.field public mInnerRadius:F

.field public mOuterRadius:F

.field public final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    const/16 v0, 0xff

    .line 5
    iput v0, p0, Lcom/android/keyguard/widget/NumPadRippleDrawable;->mAlpha:I

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    .line 9
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/android/keyguard/widget/NumPadRippleDrawable;->mPaint:Landroid/graphics/Paint;

    .line 14
    const/4 p0, 0x1

    .line 16
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 17
    const p0, 0x30ffffff

    .line 20
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 26
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    return-void
    .line 31
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/keyguard/widget/NumPadRippleDrawable;->mPaint:Landroid/graphics/Paint;

    .line 6
    iget v2, p0, Lcom/android/keyguard/widget/NumPadRippleDrawable;->mOuterRadius:F

    .line 8
    iget v3, p0, Lcom/android/keyguard/widget/NumPadRippleDrawable;->mInnerRadius:F

    .line 10
    add-float v4, v2, v3

    .line 12
    const/high16 v5, 0x40000000    # 2.0f

    .line 14
    div-float/2addr v4, v5

    .line 16
    sub-float/2addr v2, v3

    .line 17
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 21
    move-result v3

    .line 24
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    .line 25
    move-result v0

    .line 28
    const/high16 v5, 0x3f800000    # 1.0f

    .line 29
    cmpl-float v2, v2, v5

    .line 31
    if-lez v2, :cond_0

    .line 33
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    .line 35
    move-result v2

    .line 38
    iget p0, p0, Lcom/android/keyguard/widget/NumPadRippleDrawable;->mAlpha:I

    .line 39
    mul-int/2addr p0, v2

    .line 41
    int-to-float p0, p0

    .line 42
    const/high16 v5, 0x437f0000    # 255.0f

    .line 43
    div-float/2addr p0, v5

    .line 45
    float-to-int p0, p0

    .line 46
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 47
    int-to-float p0, v3

    .line 50
    int-to-float v0, v0

    .line 51
    invoke-virtual {p1, p0, v0, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 52
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 55
    :cond_0
    return-void
    .line 58
.end method

.method public final getAlpha()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/widget/NumPadRippleDrawable;->mAlpha:I

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

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 2
    return-void
    .line 5
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/keyguard/widget/NumPadRippleDrawable;->mAlpha:I

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput p1, p0, Lcom/android/keyguard/widget/NumPadRippleDrawable;->mAlpha:I

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
