.class public final Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public final mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field public final mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

.field public mTransitionAnimationScaleSetting:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/internal/policy/TransitionAnimation;

    .line 5
    const/4 v1, 0x0

    .line 7
    const-string v2, "ActivityEmbeddingAnimSpec"

    .line 8
    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/policy/TransitionAnimation;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 10
    iput-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 13
    const v0, 0x10c001a    # @android:interpolator/fast_out_extra_slow_in

    .line 15
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 18
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 22
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    .line 24
    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 29
    return-void
    .line 31
.end method
