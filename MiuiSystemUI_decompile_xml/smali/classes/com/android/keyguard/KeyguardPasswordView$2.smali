.class public final Lcom/android/keyguard/KeyguardPasswordView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic val$finishRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView$2;->val$finishRunnable:Ljava/lang/Runnable;

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
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    const-string p1, "KeyguardPasswordView"

    .line 5
    const-string/jumbo v0, "startDisappearAnimation finish"

    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordView$2;->val$finishRunnable:Ljava/lang/Runnable;

    .line 13
    if-eqz p0, :cond_0

    .line 15
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 17
    :cond_0
    return-void
    .line 20
.end method
