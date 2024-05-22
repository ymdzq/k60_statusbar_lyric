.class public final synthetic Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/16 v1, 0x8

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

    .line 10
    sget-object v0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 12
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    return-void

    .line 17
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

    .line 18
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleOffset:F

    .line 20
    const/high16 v1, 0x41000000    # 8.0f

    .line 22
    add-float/2addr v0, v1

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 26
    move-result v0

    .line 29
    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleOffset:F

    .line 30
    const/4 v0, 0x1

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->updateAngle(Z)V

    .line 33
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 36
    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTriggerBackSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 38
    iput-object v3, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 40
    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDesiredTranslation:F

    .line 42
    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDensity:F

    .line 44
    const/high16 v4, 0x42000000    # 32.0f

    .line 46
    mul-float/2addr v3, v4

    .line 48
    sub-float/2addr v2, v3

    .line 49
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->setDesiredTranslation(FZ)V

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 53
    move-result-object v0

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 57
    move-result-object v0

    .line 60
    const-wide/16 v1, 0x50

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 63
    move-result-object v0

    .line 66
    new-instance v1, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;

    .line 67
    const/4 v2, 0x2

    .line 69
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;I)V

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 73
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

    .line 76
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mHandler:Landroid/os/Handler;

    .line 81
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mFailsafeRunnable:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;

    .line 83
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mHandler:Landroid/os/Handler;

    .line 88
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mFailsafeRunnable:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;

    .line 90
    const-wide/16 v1, 0xc8

    .line 92
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    return-void

    .line 97
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

    .line 98
    sget-object v0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 100
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    return-void

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 106
.end method
