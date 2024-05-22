.class public final Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;
.super Lcom/android/systemui/statusbar/animation/RectFSpringAnim$VelocityFloatPropertyCompat;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$VelocityFloatPropertyCompat;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getValue(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;)F
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 7
    :pswitch_0
    iget p0, p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCurrentRadius:F

    return p0

    .line 8
    :pswitch_1
    iget p0, p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCurrentRatio:F

    return p0

    .line 9
    :pswitch_2
    iget p0, p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCurrentWidth:F

    return p0

    .line 10
    :pswitch_3
    iget p0, p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCurrentCenterY:F

    return p0

    .line 11
    :pswitch_4
    iget p0, p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCurrentCenterX:F

    return p0

    .line 12
    :goto_0
    iget p0, p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCurrentAlpha:F

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;->getValue(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;)F

    move-result p0

    return p0

    .line 2
    :pswitch_1
    check-cast p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;->getValue(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;)F

    move-result p0

    return p0

    .line 3
    :pswitch_2
    check-cast p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;->getValue(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;)F

    move-result p0

    return p0

    .line 4
    :pswitch_3
    check-cast p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;->getValue(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;)F

    move-result p0

    return p0

    .line 5
    :pswitch_4
    check-cast p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;->getValue(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;)F

    move-result p0

    return p0

    .line 6
    :goto_0
    check-cast p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;->getValue(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;)F

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setValue(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;F)V
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    iput p2, p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCurrentRadius:F

    .line 10
    iget-object p0, p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mRadiusAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->-$$Nest$mneedUpdateCurrentAnim(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;Landroidx/dynamicanimation/animation/SpringAnimation;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 11
    invoke-static {p1}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->-$$Nest$monUpdate(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;)V

    :cond_0
    return-void

    .line 12
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    iput p2, p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCurrentRatio:F

    .line 15
    iget-object p0, p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mRectRatioAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->-$$Nest$mneedUpdateCurrentAnim(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;Landroidx/dynamicanimation/animation/SpringAnimation;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 16
    invoke-static {p1}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->-$$Nest$monUpdate(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;)V

    :cond_1
    return-void

    .line 17
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    iput p2, p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCurrentWidth:F

    .line 20
    iget-object p0, p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mRectWidthAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->-$$Nest$mneedUpdateCurrentAnim(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;Landroidx/dynamicanimation/animation/SpringAnimation;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 21
    invoke-static {p1}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->-$$Nest$monUpdate(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;)V

    :cond_2
    return-void

    .line 22
    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    iput p2, p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCurrentCenterY:F

    .line 25
    iget-object p0, p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mRectCenterYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->-$$Nest$mneedUpdateCurrentAnim(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;Landroidx/dynamicanimation/animation/SpringAnimation;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 26
    invoke-static {p1}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->-$$Nest$monUpdate(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;)V

    :cond_3
    return-void

    .line 27
    :pswitch_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    iput p2, p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCurrentCenterX:F

    .line 30
    iget-object p0, p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mRectCenterXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->-$$Nest$mneedUpdateCurrentAnim(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;Landroidx/dynamicanimation/animation/SpringAnimation;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 31
    invoke-static {p1}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->-$$Nest$monUpdate(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;)V

    :cond_4
    return-void

    .line 32
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    iput p2, p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mCurrentAlpha:F

    .line 35
    iget-object p0, p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->mAlphaAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->-$$Nest$mneedUpdateCurrentAnim(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;Landroidx/dynamicanimation/animation/SpringAnimation;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 36
    invoke-static {p1}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;->-$$Nest$monUpdate(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;)V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;->setValue(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;F)V

    return-void

    .line 2
    :pswitch_1
    check-cast p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;->setValue(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;F)V

    return-void

    .line 3
    :pswitch_2
    check-cast p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;->setValue(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;F)V

    return-void

    .line 4
    :pswitch_3
    check-cast p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;->setValue(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;F)V

    return-void

    .line 5
    :pswitch_4
    check-cast p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;->setValue(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;F)V

    return-void

    .line 6
    :goto_0
    check-cast p1, Lcom/android/systemui/statusbar/animation/RectFSpringAnim;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/animation/RectFSpringAnim$1;->setValue(Lcom/android/systemui/statusbar/animation/RectFSpringAnim;F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
