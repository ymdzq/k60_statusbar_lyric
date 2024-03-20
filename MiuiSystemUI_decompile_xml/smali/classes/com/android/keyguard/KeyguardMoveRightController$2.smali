.class public final Lcom/android/keyguard/KeyguardMoveRightController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardMoveRightController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardMoveRightController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMoveRightController$2;->this$0:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onKeyguardBouncerStateChanged(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveRightController$2;->this$0:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMoveRightController;->reset()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final onKeyguardVisibilityChanged(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveRightController$2;->this$0:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/KeyguardMoveHelper$2;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const/4 p0, 0x1

    .line 11
    invoke-static {p0}, Lcom/android/keyguard/KeyguardMoveHelper$2;->updateCanShowGxzw(Z)V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public final onStartedGoingToSleep$1()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveRightController$2;->this$0:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 2
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mCameraViewShowing:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMoveRightController;->reset()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final onStrongAuthStateChanged(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveRightController$2;->this$0:Lcom/android/keyguard/KeyguardMoveRightController;

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 4
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 6
    move-result v0

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mUserAuthenticatedSinceBoot:Z

    .line 12
    if-nez p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 16
    iget-object p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 18
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    .line 20
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mUserAuthenticatedSinceBoot:Z

    .line 27
    :cond_0
    return-void
    .line 29
.end method
