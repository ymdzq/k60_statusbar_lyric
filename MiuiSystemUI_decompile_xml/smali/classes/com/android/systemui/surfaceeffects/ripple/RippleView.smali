.class public Lcom/android/systemui/surfaceeffects/ripple/RippleView;
.super Landroid/view/View;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final animator:Landroid/animation/ValueAnimator;

.field public centerX:F

.field public centerY:F

.field public duration:J

.field public final ripplePaint:Landroid/graphics/Paint;

.field public rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

.field public rippleShape:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    .line 5
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->ripplePaint:Landroid/graphics/Paint;

    .line 10
    const/4 p1, 0x2

    .line 12
    new-array p1, p1, [F

    .line 13
    fill-array-data p1, :array_0

    .line 15
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 18
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->animator:Landroid/animation/ValueAnimator;

    .line 22
    const-wide/16 p1, 0x6d6

    .line 24
    iput-wide p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->duration:J

    .line 26
    return-void

    .line 28
    nop

    .line 29
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 30
.end method

.method public static setBaseRingFadeParams$default(Lcom/android/systemui/surfaceeffects/ripple/RippleView;FFFFILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p6, :cond_4

    .line 2
    and-int/lit8 p6, p5, 0x1

    .line 4
    if-eqz p6, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 8
    move-result-object p1

    .line 11
    iget-object p1, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->baseRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 12
    iget p1, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInStart:F

    .line 14
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 16
    if-eqz p6, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 20
    move-result-object p2

    .line 23
    iget-object p2, p2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->baseRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 24
    iget p2, p2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInEnd:F

    .line 26
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 28
    if-eqz p6, :cond_2

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 32
    move-result-object p3

    .line 35
    iget-object p3, p3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->baseRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 36
    iget p3, p3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutStart:F

    .line 38
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 40
    if-eqz p5, :cond_3

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 44
    move-result-object p4

    .line 47
    iget-object p4, p4, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->baseRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 48
    iget p4, p4, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutEnd:F

    .line 50
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setBaseRingFadeParams(FFFF)V

    .line 52
    return-void

    .line 55
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 56
    const-string p1, "Super calls with default arguments not supported in this target, function: setBaseRingFadeParams"

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p0
    .line 63
.end method

.method public static setCenterFillFadeParams$default(Lcom/android/systemui/surfaceeffects/ripple/RippleView;FFFFILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p6, :cond_4

    .line 2
    and-int/lit8 p6, p5, 0x1

    .line 4
    if-eqz p6, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 8
    move-result-object p1

    .line 11
    iget-object p1, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->centerFillFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 12
    iget p1, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInStart:F

    .line 14
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 16
    if-eqz p6, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 20
    move-result-object p2

    .line 23
    iget-object p2, p2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->centerFillFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 24
    iget p2, p2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInEnd:F

    .line 26
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 28
    if-eqz p6, :cond_2

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 32
    move-result-object p3

    .line 35
    iget-object p3, p3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->centerFillFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 36
    iget p3, p3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutStart:F

    .line 38
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 40
    if-eqz p5, :cond_3

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 44
    move-result-object p4

    .line 47
    iget-object p4, p4, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->centerFillFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 48
    iget p4, p4, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutEnd:F

    .line 50
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setCenterFillFadeParams(FFFF)V

    .line 52
    return-void

    .line 55
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 56
    const-string p1, "Super calls with default arguments not supported in this target, function: setCenterFillFadeParams"

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p0
    .line 63
.end method

.method public static synthetic setColor$default(Lcom/android/systemui/surfaceeffects/ripple/RippleView;IIILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    and-int/lit8 p3, p3, 0x2

    .line 4
    if-eqz p3, :cond_0

    .line 6
    const/16 p2, 0x73

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setColor(II)V

    .line 10
    return-void

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: setColor"

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p0
    .line 21
.end method

.method public static setSparkleRingFadeParams$default(Lcom/android/systemui/surfaceeffects/ripple/RippleView;FFFFILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p6, :cond_4

    .line 2
    and-int/lit8 p6, p5, 0x1

    .line 4
    if-eqz p6, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 8
    move-result-object p1

    .line 11
    iget-object p1, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->sparkleRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 12
    iget p1, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInStart:F

    .line 14
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 16
    if-eqz p6, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 20
    move-result-object p2

    .line 23
    iget-object p2, p2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->sparkleRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 24
    iget p2, p2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInEnd:F

    .line 26
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 28
    if-eqz p6, :cond_2

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 32
    move-result-object p3

    .line 35
    iget-object p3, p3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->sparkleRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 36
    iget p3, p3, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutStart:F

    .line 38
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 40
    if-eqz p5, :cond_3

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 44
    move-result-object p4

    .line 47
    iget-object p4, p4, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->sparkleRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 48
    iget p4, p4, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutEnd:F

    .line 50
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setSparkleRingFadeParams(FFFF)V

    .line 52
    return-void

    .line 55
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 56
    const-string p1, "Super calls with default arguments not supported in this target, function: setSparkleRingFadeParams"

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p0
    .line 63
.end method

.method public static synthetic setupShader$default(Lcom/android/systemui/surfaceeffects/ripple/RippleView;Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    and-int/lit8 p2, p2, 0x1

    .line 4
    if-eqz p2, :cond_0

    .line 6
    sget-object p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->CIRCLE:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setupShader(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;)V

    .line 10
    return-void

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: setupShader"

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p0
    .line 21
.end method


# virtual methods
.method public final getAnimator()Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->animator:Landroid/animation/ValueAnimator;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->duration:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public final getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getRippleShape()Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShape:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
    .line 8
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    move-result-object v1

    .line 13
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->setPixelDensity(F)V

    .line 16
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 19
    return-void
    .line 22
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    move-result-object v1

    .line 13
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->setPixelDensity(F)V

    .line 16
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 19
    return-void
    .line 22
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShape()Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 9
    move-result-object v0

    .line 12
    sget-object v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->CIRCLE:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 13
    if-ne v0, v1, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 17
    move-result-object v0

    .line 20
    iget-object v0, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    .line 21
    iget v0, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->currentWidth:F

    .line 23
    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->centerX:F

    .line 25
    iget v2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->centerY:F

    .line 27
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->ripplePaint:Landroid/graphics/Paint;

    .line 29
    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 31
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShape()Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 35
    move-result-object v0

    .line 38
    sget-object v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->ELLIPSE:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 39
    if-ne v0, v1, :cond_2

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 43
    move-result-object v0

    .line 46
    iget-object v0, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    .line 47
    iget v0, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->currentWidth:F

    .line 49
    const/4 v1, 0x2

    .line 51
    int-to-float v1, v1

    .line 52
    mul-float/2addr v0, v1

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 54
    move-result-object v2

    .line 57
    iget-object v2, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    .line 58
    iget v2, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->currentHeight:F

    .line 60
    mul-float/2addr v2, v1

    .line 62
    iget v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->centerX:F

    .line 63
    sub-float v4, v1, v0

    .line 65
    iget v3, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->centerY:F

    .line 67
    sub-float v5, v3, v2

    .line 69
    add-float v6, v1, v0

    .line 71
    add-float v7, v3, v2

    .line 73
    iget-object v8, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->ripplePaint:Landroid/graphics/Paint;

    .line 75
    move-object v3, p1

    .line 77
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 78
    goto :goto_0

    .line 81
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->ripplePaint:Landroid/graphics/Paint;

    .line 82
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 84
    :goto_0
    return-void
    .line 87
.end method

.method public final setBaseRingFadeParams()V
    .locals 7

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setBaseRingFadeParams$default(Lcom/android/systemui/surfaceeffects/ripple/RippleView;FFFFILjava/lang/Object;)V

    return-void
.end method

.method public final setBaseRingFadeParams(F)V
    .locals 7

    .line 2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setBaseRingFadeParams$default(Lcom/android/systemui/surfaceeffects/ripple/RippleView;FFFFILjava/lang/Object;)V

    return-void
.end method

.method public final setBaseRingFadeParams(FF)V
    .locals 7

    .line 3
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setBaseRingFadeParams$default(Lcom/android/systemui/surfaceeffects/ripple/RippleView;FFFFILjava/lang/Object;)V

    return-void
.end method

.method public final setBaseRingFadeParams(FFF)V
    .locals 7

    .line 4
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setBaseRingFadeParams$default(Lcom/android/systemui/surfaceeffects/ripple/RippleView;FFFFILjava/lang/Object;)V

    return-void
.end method

.method public final setBaseRingFadeParams(FFFF)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    move-result-object p0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->baseRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 7
    iput p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInStart:F

    .line 8
    iput p2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInEnd:F

    .line 9
    iput p3, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutStart:F

    .line 10
    iput p4, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutEnd:F

    return-void
.end method

.method public final setBlur(FF)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 2
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    return-void
    .line 16
.end method

.method public final setCenter(FF)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->centerX:F

    .line 2
    iput p2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->centerY:F

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 6
    move-result-object p0

    .line 9
    const-string v0, "in_center"

    .line 10
    invoke-virtual {p0, v0, p1, p2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    .line 12
    return-void
    .line 15
.end method

.method public final setCenterFillFadeParams()V
    .locals 7

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setCenterFillFadeParams$default(Lcom/android/systemui/surfaceeffects/ripple/RippleView;FFFFILjava/lang/Object;)V

    return-void
.end method

.method public final setCenterFillFadeParams(F)V
    .locals 7

    .line 2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setCenterFillFadeParams$default(Lcom/android/systemui/surfaceeffects/ripple/RippleView;FFFFILjava/lang/Object;)V

    return-void
.end method

.method public final setCenterFillFadeParams(FF)V
    .locals 7

    .line 3
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setCenterFillFadeParams$default(Lcom/android/systemui/surfaceeffects/ripple/RippleView;FFFFILjava/lang/Object;)V

    return-void
.end method

.method public final setCenterFillFadeParams(FFF)V
    .locals 7

    .line 4
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setCenterFillFadeParams$default(Lcom/android/systemui/surfaceeffects/ripple/RippleView;FFFFILjava/lang/Object;)V

    return-void
.end method

.method public final setCenterFillFadeParams(FFFF)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    move-result-object p0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->centerFillFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 7
    iput p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInStart:F

    .line 8
    iput p2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInEnd:F

    .line 9
    iput p3, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutStart:F

    .line 10
    iput p4, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutEnd:F

    return-void
.end method

.method public final setColor(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p1, p2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 6
    move-result p1

    .line 9
    const-string p2, "in_color"

    .line 10
    invoke-virtual {p0, p2, p1}, Landroid/graphics/RuntimeShader;->setColorUniform(Ljava/lang/String;I)V

    .line 12
    return-void
    .line 15
.end method

.method public final setDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->duration:J

    .line 2
    return-void
    .line 4
.end method

.method public final setMaxSize(FF)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 2
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->setMaxSize(FF)V

    .line 8
    return-void
    .line 11
.end method

.method public final varargs setSizeAtProgresses([Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 2
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    .line 6
    array-length v0, p1

    .line 8
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 12
    check-cast p1, [Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->setSizeAtProgresses([Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;)V

    .line 15
    return-void
    .line 18
.end method

.method public final setSparkleRingFadeParams()V
    .locals 7

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setSparkleRingFadeParams$default(Lcom/android/systemui/surfaceeffects/ripple/RippleView;FFFFILjava/lang/Object;)V

    return-void
.end method

.method public final setSparkleRingFadeParams(F)V
    .locals 7

    .line 2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setSparkleRingFadeParams$default(Lcom/android/systemui/surfaceeffects/ripple/RippleView;FFFFILjava/lang/Object;)V

    return-void
.end method

.method public final setSparkleRingFadeParams(FF)V
    .locals 7

    .line 3
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setSparkleRingFadeParams$default(Lcom/android/systemui/surfaceeffects/ripple/RippleView;FFFFILjava/lang/Object;)V

    return-void
.end method

.method public final setSparkleRingFadeParams(FFF)V
    .locals 7

    .line 4
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->setSparkleRingFadeParams$default(Lcom/android/systemui/surfaceeffects/ripple/RippleView;FFFFILjava/lang/Object;)V

    return-void
.end method

.method public final setSparkleRingFadeParams(FFFF)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    move-result-object p0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->sparkleRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 7
    iput p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInStart:F

    .line 8
    iput p2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInEnd:F

    .line 9
    iput p3, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutStart:F

    .line 10
    iput p4, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutEnd:F

    return-void
.end method

.method public final setSparkleStrength(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 2
    move-result-object p0

    .line 5
    const-string v0, "in_sparkle_strength"

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 8
    return-void
    .line 11
.end method

.method public final setupShader(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShape:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 2
    new-instance v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 4
    invoke-direct {v0, p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;-><init>(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;)V

    .line 6
    iput-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 11
    move-result-object p1

    .line 14
    const-string v0, "in_color"

    .line 15
    const/4 v1, -0x1

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/graphics/RuntimeShader;->setColorUniform(Ljava/lang/String;I)V

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 21
    move-result-object p1

    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->setRawProgress(F)V

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 29
    move-result-object p1

    .line 32
    const-string v0, "in_sparkle_strength"

    .line 33
    const v1, 0x3e99999a    # 0.3f

    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 41
    move-result-object p1

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 45
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 49
    move-result-object v0

    .line 52
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 53
    invoke-virtual {p1, v0}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->setPixelDensity(F)V

    .line 55
    iget-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->ripplePaint:Landroid/graphics/Paint;

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 60
    move-result-object p0

    .line 63
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 64
    return-void
    .line 67
.end method
