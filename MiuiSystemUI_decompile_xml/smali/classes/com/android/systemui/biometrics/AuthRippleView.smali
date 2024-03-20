.class public final Lcom/android/systemui/biometrics/AuthRippleView;
.super Landroid/view/View;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public dwellOrigin:Landroid/graphics/Point;

.field public final dwellPaint:Landroid/graphics/Paint;

.field public dwellRadius:F

.field public final dwellShader:Lcom/android/systemui/biometrics/DwellRippleShader;

.field public final rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/view/animation/PathInterpolator;

    .line 5
    const p2, 0x3d4ccccd    # 0.05f

    .line 7
    const v0, 0x3f6e147b    # 0.93f

    .line 10
    const v1, 0x3dcccccd    # 0.1f

    .line 13
    const/high16 v2, 0x3f800000    # 1.0f

    .line 16
    invoke-direct {p1, p2, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 18
    new-instance p1, Lcom/android/systemui/biometrics/DwellRippleShader;

    .line 21
    invoke-direct {p1}, Lcom/android/systemui/biometrics/DwellRippleShader;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellShader:Lcom/android/systemui/biometrics/DwellRippleShader;

    .line 26
    new-instance p2, Landroid/graphics/Paint;

    .line 28
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellPaint:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 35
    sget-object v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->CIRCLE:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 37
    invoke-direct {v0, v1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;-><init>(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;)V

    .line 39
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 42
    new-instance v1, Landroid/graphics/Paint;

    .line 44
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 46
    new-instance v3, Landroid/graphics/Point;

    .line 49
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 51
    iput-object v3, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellOrigin:Landroid/graphics/Point;

    .line 54
    new-instance v3, Landroid/graphics/Point;

    .line 56
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 58
    const/4 v3, 0x0

    .line 61
    invoke-virtual {v0, v3}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->setRawProgress(F)V

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object v4

    .line 68
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 69
    move-result-object v4

    .line 72
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 73
    invoke-virtual {v0, v4}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->setPixelDensity(F)V

    .line 75
    const-string v4, "in_sparkle_strength"

    .line 78
    const v5, 0x3e99999a    # 0.3f

    .line 80
    invoke-virtual {v0, v4, v5}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 83
    iget-object v4, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->baseRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 86
    iput v3, v4, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInStart:F

    .line 88
    const v5, 0x3e4ccccd    # 0.2f

    .line 90
    iput v5, v4, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInEnd:F

    .line 93
    iput v5, v4, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutStart:F

    .line 95
    iput v2, v4, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutEnd:F

    .line 97
    iget-object v4, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->centerFillFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    .line 99
    iput v3, v4, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInStart:F

    .line 101
    const v5, 0x3e19999a    # 0.15f

    .line 103
    iput v5, v4, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInEnd:F

    .line 106
    iput v5, v4, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutStart:F

    .line 108
    const v5, 0x3f0f5c29    # 0.56f

    .line 110
    iput v5, v4, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutEnd:F

    .line 113
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 115
    const/4 v0, -0x1

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthRippleView;->setLockScreenColor(I)V

    .line 119
    iput v0, p1, Lcom/android/systemui/biometrics/DwellRippleShader;->color:I

    .line 122
    const-string v1, "in_color"

    .line 124
    invoke-virtual {p1, v1, v0}, Landroid/graphics/RuntimeShader;->setColorUniform(Ljava/lang/String;I)V

    .line 126
    iput v3, p1, Lcom/android/systemui/biometrics/DwellRippleShader;->progress:F

    .line 129
    const/4 v0, 0x1

    .line 131
    int-to-float v0, v0

    .line 132
    sub-float v1, v0, v3

    .line 133
    mul-float v4, v1, v1

    .line 135
    mul-float/2addr v4, v1

    .line 137
    sub-float/2addr v0, v4

    .line 138
    iget v1, p1, Lcom/android/systemui/biometrics/DwellRippleShader;->maxRadius:F

    .line 139
    mul-float/2addr v0, v1

    .line 141
    const-string v1, "in_radius"

    .line 142
    invoke-virtual {p1, v1, v0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 144
    const v0, 0x3f333333    # 0.7f

    .line 147
    invoke-static {v2, v0, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 150
    move-result v0

    .line 153
    const-string v1, "in_blur"

    .line 154
    invoke-virtual {p1, v1, v0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 156
    const-string v0, "in_distortion_strength"

    .line 159
    const v1, 0x3ecccccd    # 0.4f

    .line 161
    invoke-virtual {p1, v0, v1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 164
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 167
    const/16 p1, 0x8

    .line 170
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    return-void
    .line 175
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setFingerprintSensorLocation(Landroid/graphics/Point;F)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 2
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 4
    int-to-float v1, v1

    .line 6
    iget v2, p1, Landroid/graphics/Point;->y:I

    .line 7
    int-to-float v2, v2

    .line 9
    const-string v3, "in_center"

    .line 10
    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    .line 12
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 15
    iget v1, p1, Landroid/graphics/Point;->y:I

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 19
    move-result v2

    .line 22
    iget v3, p1, Landroid/graphics/Point;->x:I

    .line 23
    sub-int/2addr v2, v3

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 26
    move-result v3

    .line 29
    iget v4, p1, Landroid/graphics/Point;->y:I

    .line 30
    sub-int/2addr v3, v4

    .line 32
    filled-new-array {v1, v2, v3}, [I

    .line 33
    move-result-object v1

    .line 36
    const/4 v2, 0x0

    .line 37
    :goto_0
    const/4 v3, 0x3

    .line 38
    if-ge v2, v3, :cond_0

    .line 39
    aget v3, v1, v2

    .line 41
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 43
    move-result v0

    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    goto :goto_0

    .line 49
    :cond_0
    int-to-float v0, v0

    .line 50
    const v1, 0x3f666666    # 0.9f

    .line 51
    mul-float/2addr v0, v1

    .line 54
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 55
    iget-object v1, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    .line 57
    const/high16 v2, 0x40000000    # 2.0f

    .line 59
    mul-float/2addr v0, v2

    .line 61
    invoke-virtual {v1, v0, v0}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->setMaxSize(FF)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellShader:Lcom/android/systemui/biometrics/DwellRippleShader;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 70
    int-to-float v1, v1

    .line 72
    iget v2, p1, Landroid/graphics/Point;->y:I

    .line 73
    int-to-float v2, v2

    .line 75
    const-string v3, "in_origin"

    .line 76
    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    .line 78
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellOrigin:Landroid/graphics/Point;

    .line 81
    const/high16 p1, 0x3fc00000    # 1.5f

    .line 83
    mul-float/2addr p2, p1

    .line 85
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellShader:Lcom/android/systemui/biometrics/DwellRippleShader;

    .line 86
    iput p2, p1, Lcom/android/systemui/biometrics/DwellRippleShader;->maxRadius:F

    .line 88
    iput p2, p0, Lcom/android/systemui/biometrics/AuthRippleView;->dwellRadius:F

    .line 90
    return-void
    .line 92
.end method

.method public final setLockScreenColor(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 2
    const/16 v0, 0x3e

    .line 4
    invoke-static {p1, v0}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 6
    move-result p1

    .line 9
    const-string v0, "in_color"

    .line 10
    invoke-virtual {p0, v0, p1}, Landroid/graphics/RuntimeShader;->setColorUniform(Ljava/lang/String;I)V

    .line 12
    return-void
    .line 15
.end method

.method public final setSensorLocation(Landroid/graphics/Point;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 2
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 4
    int-to-float v1, v1

    .line 6
    iget v2, p1, Landroid/graphics/Point;->y:I

    .line 7
    int-to-float v2, v2

    .line 9
    const-string v3, "in_center"

    .line 10
    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    .line 12
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 15
    iget v1, p1, Landroid/graphics/Point;->y:I

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 19
    move-result v2

    .line 22
    iget v3, p1, Landroid/graphics/Point;->x:I

    .line 23
    sub-int/2addr v2, v3

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 26
    move-result v3

    .line 29
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 30
    sub-int/2addr v3, p1

    .line 32
    filled-new-array {v1, v2, v3}, [I

    .line 33
    move-result-object p1

    .line 36
    const/4 v1, 0x0

    .line 37
    :goto_0
    const/4 v2, 0x3

    .line 38
    if-ge v1, v2, :cond_0

    .line 39
    aget v2, p1, v1

    .line 41
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 43
    move-result v0

    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_0

    .line 49
    :cond_0
    int-to-float p1, v0

    .line 50
    const v0, 0x3f666666    # 0.9f

    .line 51
    mul-float/2addr p1, v0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 55
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    .line 57
    const/high16 v0, 0x40000000    # 2.0f

    .line 59
    mul-float/2addr p1, v0

    .line 61
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->setMaxSize(FF)V

    .line 62
    return-void
    .line 65
.end method
