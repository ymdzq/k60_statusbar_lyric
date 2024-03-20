.class public abstract Lcom/android/systemui/statusbar/notification/stack/PanelAppearDisappearEvent$Companion;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static animateAppearDisappear$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Lcom/android/systemui/statusbar/views/DismissView;ZLcom/miui/utils/animation/OnAnimatorEndsListener;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 2
    move-result-object v0

    .line 5
    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 8
    const/4 p3, 0x0

    .line 11
    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :cond_0
    const-wide/16 v1, 0xfa

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 17
    sget-object p0, Lcom/android/systemui/statusbar/notification/stack/PanelAppearDisappearEvent;->INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    .line 20
    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 22
    const p0, 0x3f6b851f    # 0.92f

    .line 25
    const/high16 p3, 0x3f800000    # 1.0f

    .line 28
    if-eqz p1, :cond_1

    .line 30
    move v1, p3

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v1, p0

    .line 34
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 35
    if-eqz p1, :cond_2

    .line 38
    move p0, p3

    .line 40
    :cond_2
    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 41
    if-eqz p1, :cond_3

    .line 44
    goto :goto_1

    .line 46
    :cond_3
    const/4 p3, 0x0

    .line 47
    :goto_1
    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 48
    if-eqz p2, :cond_4

    .line 51
    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 53
    :cond_4
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 56
    return-void
    .line 59
.end method
