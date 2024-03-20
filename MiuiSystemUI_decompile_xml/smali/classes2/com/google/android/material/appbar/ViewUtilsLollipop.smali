.class public abstract Lcom/google/android/material/appbar/ViewUtilsLollipop;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final STATE_LIST_ANIM_ATTRS:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x1010448    # @android:attr/stateListAnimator

    .line 2
    filled-new-array {v0}, [I

    .line 5
    move-result-object v0

    .line 8
    sput-object v0, Lcom/google/android/material/appbar/ViewUtilsLollipop;->STATE_LIST_ANIM_ATTRS:[I

    .line 9
    return-void
    .line 11
.end method

.method public static setDefaultAppBarLayoutStateListAnimator(FLandroid/view/View;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f0b0009    # @integer/app_bar_elevation_anim_duration '150'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 9
    move-result v0

    .line 12
    new-instance v1, Landroid/animation/StateListAnimator;

    .line 13
    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    .line 15
    const v2, 0x7f04070b    # @attr/state_liftable

    .line 18
    const v3, -0x7f04070c

    .line 21
    const v4, 0x101009e    # @android:attr/state_enabled

    .line 24
    filled-new-array {v4, v2, v3}, [I

    .line 27
    move-result-object v2

    .line 30
    const/4 v3, 0x1

    .line 31
    new-array v5, v3, [F

    .line 32
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    aput v7, v5, v6

    .line 36
    const-string v8, "elevation"

    .line 38
    invoke-static {p1, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 40
    move-result-object v5

    .line 43
    int-to-long v9, v0

    .line 44
    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 45
    move-result-object v0

    .line 48
    invoke-virtual {v1, v2, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 49
    filled-new-array {v4}, [I

    .line 52
    move-result-object v0

    .line 55
    new-array v2, v3, [F

    .line 56
    aput p0, v2, v6

    .line 58
    invoke-static {p1, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 60
    move-result-object p0

    .line 63
    invoke-virtual {p0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 64
    move-result-object p0

    .line 67
    invoke-virtual {v1, v0, p0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 68
    new-array p0, v6, [I

    .line 71
    new-array v0, v3, [F

    .line 73
    aput v7, v0, v6

    .line 75
    invoke-static {p1, v8, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 77
    move-result-object v0

    .line 80
    const-wide/16 v2, 0x0

    .line 81
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 83
    move-result-object v0

    .line 86
    invoke-virtual {v1, p0, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 87
    invoke-virtual {p1, v1}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 90
    return-void
    .line 93
.end method
