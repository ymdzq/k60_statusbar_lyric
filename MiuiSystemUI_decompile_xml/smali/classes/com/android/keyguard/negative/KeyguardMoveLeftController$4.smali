.class public final Lcom/android/keyguard/negative/KeyguardMoveLeftController$4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/negative/KeyguardMoveLeftController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/negative/KeyguardMoveLeftController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController$4;->this$0:Lcom/android/keyguard/negative/KeyguardMoveLeftController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onKeyguardOccludedChanged(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController$4;->this$0:Lcom/android/keyguard/negative/KeyguardMoveLeftController;

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mLockScreenMagazineClient:Lcom/android/keyguard/negative/LockScreenMagazineClient;

    .line 6
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/keyguard/negative/LockScreenMagazineClient;->hideOverlay(Z)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final onKeyguardShowingChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController$4;->this$0:Lcom/android/keyguard/negative/KeyguardMoveLeftController;

    .line 2
    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mLockScreenMagazineClient:Lcom/android/keyguard/negative/LockScreenMagazineClient;

    .line 6
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/keyguard/negative/LockScreenMagazineClient;->hideOverlay(Z)V

    .line 9
    iget-object p0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mHandler:Lcom/android/keyguard/negative/KeyguardMoveLeftController$1;

    .line 12
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mLockScreenMagazineClient:Lcom/android/keyguard/negative/LockScreenMagazineClient;

    .line 22
    invoke-virtual {p1}, Lcom/android/keyguard/negative/LockScreenMagazineClient;->isConnected()Z

    .line 24
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->bindLockScreenMagazineService()V

    .line 30
    :cond_1
    :goto_0
    return-void
    .line 33
.end method
