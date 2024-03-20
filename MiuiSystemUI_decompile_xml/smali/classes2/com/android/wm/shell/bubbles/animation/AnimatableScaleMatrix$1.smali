.class public final Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .locals 1

    .line 1
    const v0, 0x43f9ffff    # 499.99997f

    .line 2
    iget p0, p0, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$1;->$r8$classId:I

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 7
    goto :goto_2

    .line 10
    :pswitch_0
    check-cast p1, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    .line 11
    packed-switch p0, :pswitch_data_1

    .line 13
    goto :goto_0

    .line 16
    :pswitch_1
    iget p0, p1, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->mScaleX:F

    .line 17
    goto :goto_1

    .line 19
    :goto_0
    iget p0, p1, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->mScaleY:F

    .line 20
    :goto_1
    mul-float/2addr p0, v0

    .line 22
    return p0

    .line 23
    :goto_2
    check-cast p1, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    .line 24
    packed-switch p0, :pswitch_data_2

    .line 26
    goto :goto_3

    .line 29
    :pswitch_2
    iget p0, p1, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->mScaleX:F

    .line 30
    goto :goto_4

    .line 32
    :goto_3
    iget p0, p1, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->mScaleY:F

    .line 33
    :goto_4
    mul-float/2addr p0, v0

    .line 35
    return p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 38
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 44
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
    .line 50
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 1

    .line 1
    const v0, 0x3b03126f    # 0.002f

    .line 2
    iget p0, p0, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$1;->$r8$classId:I

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 7
    goto :goto_2

    .line 10
    :pswitch_0
    check-cast p1, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    .line 11
    packed-switch p0, :pswitch_data_1

    .line 13
    goto :goto_0

    .line 16
    :pswitch_1
    mul-float/2addr p2, v0

    .line 17
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScaleX(F)V

    .line 18
    goto :goto_1

    .line 21
    :goto_0
    mul-float/2addr p2, v0

    .line 22
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScaleY(F)V

    .line 23
    :goto_1
    return-void

    .line 26
    :goto_2
    check-cast p1, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    .line 27
    packed-switch p0, :pswitch_data_2

    .line 29
    goto :goto_3

    .line 32
    :pswitch_2
    mul-float/2addr p2, v0

    .line 33
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScaleX(F)V

    .line 34
    goto :goto_4

    .line 37
    :goto_3
    mul-float/2addr p2, v0

    .line 38
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScaleY(F)V

    .line 39
    :goto_4
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 44
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 50
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
    .line 56
.end method
