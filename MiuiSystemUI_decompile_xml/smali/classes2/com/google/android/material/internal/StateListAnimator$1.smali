.class public final Lcom/google/android/material/internal/StateListAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/internal/StateListAnimator;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/StateListAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/StateListAnimator$1;->this$0:Lcom/google/android/material/internal/StateListAnimator;

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/internal/StateListAnimator$1;->this$0:Lcom/google/android/material/internal/StateListAnimator;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 4
    if-ne v0, p1, :cond_0

    .line 6
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 9
    :cond_0
    return-void
    .line 11
.end method
