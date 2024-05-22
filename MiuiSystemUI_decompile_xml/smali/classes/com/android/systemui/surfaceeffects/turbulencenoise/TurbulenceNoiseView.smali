.class public final Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;
.super Landroid/view/View;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public currentAnimator:Landroid/animation/ValueAnimator;

.field public noiseConfig:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;

.field public final paint:Landroid/graphics/Paint;

.field public final turbulenceNoiseShader:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;

    .line 5
    invoke-direct {p1}, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->turbulenceNoiseShader:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;

    .line 10
    new-instance p2, Landroid/graphics/Paint;

    .line 12
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 14
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 17
    iput-object p2, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->paint:Landroid/graphics/Paint;

    .line 20
    return-void
    .line 22
.end method

.method public static synthetic getCurrentAnimator$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getNoiseConfig$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public final applyConfig(Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->noiseConfig:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->turbulenceNoiseShader:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const v1, 0x4008f5c3    # 2.14f

    .line 9
    const-string v2, "in_gridNum"

    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 14
    const-string v1, "in_color"

    .line 17
    iget v2, p1, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;->color:I

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RuntimeShader;->setColorUniform(Ljava/lang/String;I)V

    .line 21
    const-string v1, "in_backgroundColor"

    .line 24
    const/high16 v2, -0x1000000

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RuntimeShader;->setColorUniform(Ljava/lang/String;I)V

    .line 28
    const-string v1, "in_size"

    .line 31
    iget v2, p1, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;->width:F

    .line 33
    iget v3, p1, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;->height:F

    .line 35
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    .line 37
    const v1, 0x3a83126f    # 0.001f

    .line 40
    invoke-static {v3, v1}, Ljava/lang/Float;->max(FF)F

    .line 43
    move-result v1

    .line 46
    div-float/2addr v2, v1

    .line 47
    const-string v1, "in_aspectRatio"

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 50
    const-string v1, "in_pixelDensity"

    .line 53
    iget v2, p1, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;->pixelDensity:F

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 57
    const/high16 v1, 0x3f800000    # 1.0f

    .line 60
    const-string v2, "in_inverseLuma"

    .line 62
    invoke-virtual {v0, v2, v1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 64
    const-string v1, "in_lumaMatteBlendFactor"

    .line 67
    const v2, 0x3e851eb8    # 0.26f

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 72
    const-string v1, "in_lumaMatteOverallBrightness"

    .line 75
    const v2, 0x3db851ec    # 0.09f

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 80
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->paint:Landroid/graphics/Paint;

    .line 83
    iget-object p1, p1, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;->blendMode:Landroid/graphics/BlendMode;

    .line 85
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 87
    return-void
    .line 90
.end method

.method public final finish(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->currentAnimator:Landroid/animation/ValueAnimator;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->currentAnimator:Landroid/animation/ValueAnimator;

    .line 10
    if-eqz p1, :cond_1

    .line 12
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 14
    :cond_1
    return-void
    .line 17
.end method

.method public final getCurrentAnimator()Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->currentAnimator:Landroid/animation/ValueAnimator;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getNoiseConfig()Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->noiseConfig:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;

    .line 2
    return-object p0
    .line 4
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 1

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
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->paint:Landroid/graphics/Paint;

    .line 9
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 11
    return-void
    .line 14
.end method

.method public final play(Ljava/lang/Runnable;)V
    .locals 9

    .line 1
    iget-object v3, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->noiseConfig:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;

    .line 2
    if-nez v3, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [F

    .line 8
    fill-array-data v0, :array_0

    .line 10
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 13
    move-result-object v7

    .line 16
    const v0, 0x46ea6000    # 30000.0f

    .line 17
    float-to-long v0, v0

    .line 20
    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 21
    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->turbulenceNoiseShader:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;

    .line 24
    iget v2, v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;->noiseOffsetX:F

    .line 26
    iget v4, v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;->noiseOffsetY:F

    .line 28
    iget v5, v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;->noiseOffsetZ:F

    .line 30
    new-instance v8, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;

    .line 32
    const/4 v6, 0x0

    .line 34
    move-object v0, v8

    .line 35
    move-object v1, p0

    .line 36
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;-><init>(Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;FLcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;FFI)V

    .line 37
    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 40
    new-instance v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$2;

    .line 43
    const/4 v1, 0x0

    .line 45
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$2;-><init>(Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;Ljava/lang/Runnable;I)V

    .line 46
    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 49
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 52
    iput-object v7, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->currentAnimator:Landroid/animation/ValueAnimator;

    .line 55
    return-void

    .line 57
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 58
.end method

.method public final playEaseIn(FFLjava/lang/Runnable;)V
    .locals 10

    .line 1
    iget-object v4, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->noiseConfig:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;

    .line 2
    if-nez v4, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [F

    .line 8
    fill-array-data v0, :array_0

    .line 10
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 13
    move-result-object v8

    .line 16
    const v0, 0x44a8c000    # 1350.0f

    .line 17
    float-to-long v0, v0

    .line 20
    invoke-virtual {v8, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 21
    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->turbulenceNoiseShader:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;

    .line 24
    iget v3, v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;->noiseOffsetX:F

    .line 26
    iget v6, v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;->noiseOffsetY:F

    .line 28
    iget v7, v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;->noiseOffsetZ:F

    .line 30
    new-instance v9, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$playEaseIn$1;

    .line 32
    move-object v0, v9

    .line 34
    move-object v1, p0

    .line 35
    move v2, p1

    .line 36
    move v5, p2

    .line 37
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$playEaseIn$1;-><init>(Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;FFLcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;FFF)V

    .line 38
    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 41
    new-instance p1, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$2;

    .line 44
    const/4 p2, 0x1

    .line 46
    invoke-direct {p1, p0, p3, p2}, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$2;-><init>(Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;Ljava/lang/Runnable;I)V

    .line 47
    invoke-virtual {v8, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 50
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    .line 53
    iput-object v8, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->currentAnimator:Landroid/animation/ValueAnimator;

    .line 56
    return-void

    .line 58
    nop

    .line 59
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 60
.end method

.method public final playEaseOut(Ljava/lang/Runnable;)V
    .locals 10

    .line 1
    iget-object v3, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->noiseConfig:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;

    .line 2
    if-nez v3, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v7, 0x2

    .line 7
    new-array v0, v7, [F

    .line 8
    fill-array-data v0, :array_0

    .line 10
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 13
    move-result-object v8

    .line 16
    const v0, 0x44a8c000    # 1350.0f

    .line 17
    float-to-long v0, v0

    .line 20
    invoke-virtual {v8, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 21
    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->turbulenceNoiseShader:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;

    .line 24
    iget v2, v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;->noiseOffsetX:F

    .line 26
    iget v4, v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;->noiseOffsetY:F

    .line 28
    iget v5, v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;->noiseOffsetZ:F

    .line 30
    new-instance v9, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;

    .line 32
    const/4 v6, 0x1

    .line 34
    move-object v0, v9

    .line 35
    move-object v1, p0

    .line 36
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;-><init>(Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;FLcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;FFI)V

    .line 37
    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 40
    new-instance v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$2;

    .line 43
    invoke-direct {v0, p0, p1, v7}, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$2;-><init>(Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;Ljava/lang/Runnable;I)V

    .line 45
    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 48
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    .line 51
    iput-object v8, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->currentAnimator:Landroid/animation/ValueAnimator;

    .line 54
    return-void

    .line 56
    nop

    .line 57
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 58
.end method

.method public final setCurrentAnimator(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->currentAnimator:Landroid/animation/ValueAnimator;

    .line 2
    return-void
    .line 4
.end method

.method public final setNoiseConfig(Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->noiseConfig:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;

    .line 2
    return-void
    .line 4
.end method
