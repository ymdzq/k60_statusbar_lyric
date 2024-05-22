.class public final Lcom/android/systemui/controls/management/ControlsAnimations;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

.field public static translationY:F = -1.0f


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/controls/management/ControlsAnimations;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/controls/management/ControlsAnimations;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    .line 7
    return-void
    .line 9
.end method

.method public static enterAnimation(Landroid/view/View;)Landroid/animation/Animator;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "Enter animation for "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    const-string v1, "ControlsUiController"

    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 22
    const/high16 v1, 0x3f800000    # 1.0f

    .line 25
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 27
    sget v1, Lcom/android/systemui/controls/management/ControlsAnimations;->translationY:F

    .line 30
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 32
    const/4 v1, 0x2

    .line 35
    new-array v1, v1, [F

    .line 36
    fill-array-data v1, :array_0

    .line 38
    const-string/jumbo v2, "transitionAlpha"

    .line 41
    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 44
    move-result-object v1

    .line 47
    sget-object v2, Lcom/android/app/animation/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 48
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 50
    const-wide/16 v3, 0xb7

    .line 53
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 55
    const-wide/16 v3, 0xa7

    .line 58
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 60
    const/4 v3, 0x1

    .line 63
    new-array v3, v3, [F

    .line 64
    const/4 v4, 0x0

    .line 66
    aput v0, v3, v4

    .line 67
    const-string/jumbo v0, "translationY"

    .line 69
    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 72
    move-result-object p0

    .line 75
    invoke-virtual {p0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 76
    const-wide/16 v2, 0xd9

    .line 79
    invoke-virtual {p0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 81
    invoke-virtual {p0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 84
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 87
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 89
    filled-new-array {v1, p0}, [Landroid/animation/Animator;

    .line 92
    move-result-object p0

    .line 95
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 96
    return-object v0

    .line 99
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 100
.end method

.method public static final exitAnimation(Landroid/view/View;Ljava/lang/Runnable;)Landroid/animation/Animator;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "Exit animation for "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    const-string v1, "ControlsUiController"

    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const/4 v0, 0x1

    .line 21
    new-array v1, v0, [F

    .line 22
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    aput v3, v1, v2

    .line 26
    const-string/jumbo v4, "transitionAlpha"

    .line 28
    invoke-static {p0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 31
    move-result-object v1

    .line 34
    sget-object v4, Lcom/android/app/animation/Interpolators;->ACCELERATE:Landroid/view/animation/Interpolator;

    .line 35
    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37
    const-wide/16 v5, 0xb7

    .line 40
    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 42
    invoke-virtual {p0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 45
    new-array v0, v0, [F

    .line 48
    sget v3, Lcom/android/systemui/controls/management/ControlsAnimations;->translationY:F

    .line 50
    neg-float v3, v3

    .line 52
    aput v3, v0, v2

    .line 53
    const-string/jumbo v2, "translationY"

    .line 55
    invoke-static {p0, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 58
    move-result-object p0

    .line 61
    invoke-virtual {p0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 62
    invoke-virtual {p0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 65
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 68
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 70
    filled-new-array {v1, p0}, [Landroid/animation/Animator;

    .line 73
    move-result-object p0

    .line 76
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 77
    if-eqz p1, :cond_0

    .line 80
    new-instance p0, Lcom/android/systemui/controls/management/ControlsAnimations$exitAnimation$1$1$1;

    .line 82
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/ControlsAnimations$exitAnimation$1$1$1;-><init>(Ljava/lang/Runnable;)V

    .line 84
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 87
    :cond_0
    return-object v0
    .line 90
.end method
