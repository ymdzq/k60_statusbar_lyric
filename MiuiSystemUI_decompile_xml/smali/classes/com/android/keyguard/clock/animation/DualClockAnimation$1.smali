.class public final Lcom/android/keyguard/clock/animation/DualClockAnimation$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/clock/animation/DualClockAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/clock/animation/DualClockAnimation;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/clock/animation/DualClockAnimation$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/DualClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/DualClockAnimation;

    .line 4
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onBegin(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/keyguard/clock/animation/DualClockAnimation$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 7
    return-void

    .line 10
    :pswitch_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 11
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/DualClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/DualClockAnimation;

    .line 14
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/DualClockAnimation;->mContainer:Landroid/view/View;

    .line 16
    instance-of v0, p1, Lcom/miui/clock/MiuiDualClock;

    .line 18
    if-eqz v0, :cond_1

    .line 20
    check-cast p1, Lcom/miui/clock/MiuiDualClock;

    .line 22
    iget-boolean v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mToAod:Z

    .line 24
    if-eqz v0, :cond_0

    .line 26
    const/4 p0, 0x0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-boolean p0, p0, Lcom/android/keyguard/clock/animation/DualClockAnimation;->mTextDark:Z

    .line 30
    :goto_0
    invoke-virtual {p1, p0}, Lcom/miui/clock/MiuiDualClock;->setTextColorDark(Z)V

    .line 32
    :cond_1
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
    .line 36
.end method

.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/keyguard/clock/animation/DualClockAnimation$1;->$r8$classId:I

    .line 2
    const-string/jumbo v1, "uTexture"

    .line 4
    const-string/jumbo v2, "uReveal"

    .line 7
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/DualClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/DualClockAnimation;

    .line 10
    const-string v4, "ClockBaseAnimation"

    .line 12
    const-string v5, "SmartFrameParam toAod SmartFrameParamProcess : "

    .line 14
    const-string v6, "alpha"

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 18
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 21
    return-void

    .line 24
    :pswitch_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 25
    invoke-static {p2, v6}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 28
    move-result-object p0

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 37
    move-result p2

    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 47
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object p1, v3, Lcom/android/keyguard/clock/animation/DualClockAnimation;->mRuntimeShader:Landroid/graphics/RuntimeShader;

    .line 51
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 53
    move-result p0

    .line 56
    invoke-virtual {p1, v2, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 57
    iget-object p0, v3, Lcom/android/keyguard/clock/animation/DualClockAnimation;->mRuntimeShader:Landroid/graphics/RuntimeShader;

    .line 60
    invoke-static {p0, v1}, Landroid/graphics/RenderEffect;->createRuntimeShaderEffect(Landroid/graphics/RuntimeShader;Ljava/lang/String;)Landroid/graphics/RenderEffect;

    .line 62
    move-result-object p0

    .line 65
    iget-object p1, v3, Lcom/android/keyguard/clock/animation/DualClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 66
    invoke-virtual {p1, p0}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    .line 68
    return-void

    .line 71
    :pswitch_1
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 72
    invoke-static {p2, v6}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 75
    move-result-object p0

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 84
    move-result p2

    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 94
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object p1, v3, Lcom/android/keyguard/clock/animation/DualClockAnimation;->mRuntimeShader:Landroid/graphics/RuntimeShader;

    .line 98
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 100
    move-result p0

    .line 103
    invoke-virtual {p1, v2, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 104
    iget-object p0, v3, Lcom/android/keyguard/clock/animation/DualClockAnimation;->mRuntimeShader:Landroid/graphics/RuntimeShader;

    .line 107
    invoke-static {p0, v1}, Landroid/graphics/RenderEffect;->createRuntimeShaderEffect(Landroid/graphics/RuntimeShader;Ljava/lang/String;)Landroid/graphics/RenderEffect;

    .line 109
    move-result-object p0

    .line 112
    iget-object p1, v3, Lcom/android/keyguard/clock/animation/DualClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 113
    invoke-virtual {p1, p0}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    .line 115
    return-void

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 120
.end method
