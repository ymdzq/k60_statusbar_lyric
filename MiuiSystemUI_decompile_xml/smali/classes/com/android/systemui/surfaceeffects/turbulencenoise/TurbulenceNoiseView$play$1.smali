.class public final Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $config:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;

.field public final synthetic $initialX:F

.field public final synthetic $initialY:F

.field public final synthetic $initialZ:F

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;FLcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;FFI)V
    .locals 0

    .line 1
    iput p6, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;->this$0:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;

    .line 4
    iput p2, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;->$initialX:F

    .line 6
    iput-object p3, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;->$config:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;

    .line 8
    iput p4, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;->$initialY:F

    .line 10
    iput p5, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;->$initialZ:F

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
    .line 17
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;->$r8$classId:I

    .line 2
    const-string v1, "in_opacity"

    .line 4
    const-string v2, "in_noiseMove"

    .line 6
    const v3, 0x3e99999a    # 0.3f

    .line 8
    const/4 v4, 0x0

    .line 11
    const v5, 0x3ed70a3d    # 0.42f

    .line 12
    const/high16 v6, 0x3f800000    # 1.0f

    .line 15
    const v7, 0x3a83126f    # 0.001f

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 20
    goto :goto_0

    .line 23
    :pswitch_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    .line 24
    move-result-wide v8

    .line 27
    long-to-float p1, v8

    .line 28
    mul-float/2addr p1, v7

    .line 29
    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;->this$0:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;

    .line 30
    iget-object v0, v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->turbulenceNoiseShader:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;

    .line 32
    iget v7, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;->$initialX:F

    .line 34
    iget-object v8, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;->$config:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;

    .line 36
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    mul-float/2addr v5, p1

    .line 41
    add-float/2addr v5, v7

    .line 42
    iget v7, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;->$initialY:F

    .line 43
    mul-float/2addr v4, p1

    .line 45
    add-float/2addr v4, v7

    .line 46
    iget v7, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;->$initialZ:F

    .line 47
    mul-float/2addr p1, v3

    .line 49
    add-float/2addr p1, v7

    .line 50
    iput v5, v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;->noiseOffsetX:F

    .line 51
    iput v4, v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;->noiseOffsetY:F

    .line 53
    iput p1, v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;->noiseOffsetZ:F

    .line 55
    invoke-virtual {v0, v2, v5, v4, p1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FFF)V

    .line 57
    iget-object p1, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;->this$0:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;

    .line 60
    iget-object p1, p1, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->turbulenceNoiseShader:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;->$config:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;

    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    invoke-virtual {p1, v1, v6}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 69
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;->this$0:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 74
    return-void

    .line 77
    :goto_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    .line 78
    move-result-wide v8

    .line 81
    long-to-float v0, v8

    .line 82
    mul-float/2addr v0, v7

    .line 83
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 84
    move-result-object p1

    .line 87
    check-cast p1, Ljava/lang/Float;

    .line 88
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 90
    move-result p1

    .line 93
    iget-object v7, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;->this$0:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;

    .line 94
    iget-object v7, v7, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->turbulenceNoiseShader:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;

    .line 96
    iget v8, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;->$initialX:F

    .line 98
    iget-object v9, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;->$config:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;

    .line 100
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    mul-float/2addr v5, v0

    .line 105
    add-float/2addr v5, v8

    .line 106
    iget v8, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;->$initialY:F

    .line 107
    mul-float/2addr v4, v0

    .line 109
    add-float/2addr v4, v8

    .line 110
    iget v8, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;->$initialZ:F

    .line 111
    mul-float/2addr v0, v3

    .line 113
    add-float/2addr v0, v8

    .line 114
    iput v5, v7, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;->noiseOffsetX:F

    .line 115
    iput v4, v7, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;->noiseOffsetY:F

    .line 117
    iput v0, v7, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;->noiseOffsetZ:F

    .line 119
    invoke-virtual {v7, v2, v5, v4, v0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FFF)V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;->this$0:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;

    .line 124
    iget-object v0, v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->turbulenceNoiseShader:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;

    .line 126
    sub-float p1, v6, p1

    .line 128
    iget-object v2, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;->$config:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;

    .line 130
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    mul-float/2addr p1, v6

    .line 135
    invoke-virtual {v0, v1, p1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 136
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$1;->this$0:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 141
    return-void

    .line 144
    nop

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 146
.end method
