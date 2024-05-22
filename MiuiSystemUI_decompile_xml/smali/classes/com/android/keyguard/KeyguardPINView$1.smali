.class public final Lcom/android/keyguard/KeyguardPINView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardPINView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardPINView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPINView$1;->this$0:Lcom/android/keyguard/KeyguardPINView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPINView$1;->this$0:Lcom/android/keyguard/KeyguardPINView;

    .line 2
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimating:Z

    .line 5
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimatePending:Z

    .line 7
    if-eqz v1, :cond_0

    .line 9
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimatePending:Z

    .line 11
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 13
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    .line 15
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearFinishRunnable:Ljava/lang/Runnable;

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->startDisappearAnimation(Ljava/lang/Runnable;)V

    .line 19
    :cond_0
    return-void
    .line 22
.end method
