.class public abstract Lcom/google/android/material/circularreveal/CircularRevealCompat;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static createCircularReveal(Lcom/google/android/material/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;->CIRCULAR_REVEAL:Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;

    .line 2
    sget-object v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->CIRCULAR_REVEAL:Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;

    .line 4
    new-instance v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 6
    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    .line 8
    filled-new-array {v2}, [Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 11
    move-result-object v2

    .line 14
    invoke-static {p0, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    .line 15
    move-result-object v0

    .line 18
    invoke-interface {p0}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 19
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    iget v1, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 25
    check-cast p0, Landroid/view/View;

    .line 27
    float-to-int p1, p1

    .line 29
    float-to-int p2, p2

    .line 30
    invoke-static {p0, p1, p2, v1, p3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    .line 31
    move-result-object p0

    .line 34
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 35
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 37
    filled-new-array {v0, p0}, [Landroid/animation/Animator;

    .line 40
    move-result-object p0

    .line 43
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 44
    return-object p1

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 48
    const-string p1, "Caller must set a non-null RevealInfo before calling this."

    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p0
    .line 55
.end method
