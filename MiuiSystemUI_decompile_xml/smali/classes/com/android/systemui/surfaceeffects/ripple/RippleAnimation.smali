.class public final Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final animator:Landroid/animation/ValueAnimator;

.field public final config:Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;

.field public final rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;


# direct methods
.method public constructor <init>(Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->config:Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;

    .line 5
    new-instance p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 7
    sget-object v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->CIRCLE:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    .line 9
    invoke-direct {p1, v0}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;-><init>(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;)V

    .line 11
    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 14
    const/4 p1, 0x2

    .line 16
    new-array p1, p1, [F

    .line 17
    fill-array-data p1, :array_0

    .line 19
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 22
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->animator:Landroid/animation/ValueAnimator;

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->applyConfigToShader()V

    .line 28
    return-void

    .line 31
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 32
.end method

.method public static synthetic getRippleShader$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public final applyConfigToShader()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->config:Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;

    .line 2
    iget v1, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerX:F

    .line 4
    const-string v2, "in_center"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 8
    iget v3, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->centerY:F

    .line 10
    invoke-virtual {p0, v2, v1, v3}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    .line 12
    iget-object v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    .line 15
    iget v2, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->maxWidth:F

    .line 17
    iget v3, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->maxHeight:F

    .line 19
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->setMaxSize(FF)V

    .line 21
    iget v1, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->pixelDensity:F

    .line 24
    invoke-virtual {p0, v1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->setPixelDensity(F)V

    .line 26
    iget v0, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->color:I

    .line 29
    const/16 v1, 0x64

    .line 31
    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 33
    move-result v0

    .line 36
    const-string v1, "in_color"

    .line 37
    invoke-virtual {p0, v1, v0}, Landroid/graphics/RuntimeShader;->setColorUniform(Ljava/lang/String;I)V

    .line 39
    const-string v0, "in_sparkle_strength"

    .line 42
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0, v0, v1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 45
    return-void
    .line 48
.end method
