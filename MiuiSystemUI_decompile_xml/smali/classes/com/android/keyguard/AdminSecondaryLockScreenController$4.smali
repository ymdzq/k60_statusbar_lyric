.class public final Lcom/android/keyguard/AdminSecondaryLockScreenController$4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/AdminSecondaryLockScreenController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$4;->this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$4;->this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    .line 6
    iget-object v1, v0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 8
    iget-object v0, v0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 10
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 12
    iget-object v0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$4;->this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    .line 15
    iget-object v1, v0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mClient:Landroid/app/admin/IKeyguardClient;

    .line 17
    if-eqz v1, :cond_0

    .line 19
    invoke-static {v0}, Lcom/android/keyguard/AdminSecondaryLockScreenController;->-$$Nest$monSurfaceReady(Lcom/android/keyguard/AdminSecondaryLockScreenController;)V

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$4;->this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    .line 24
    iget-object v0, v0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mHandler:Landroid/os/Handler;

    .line 26
    new-instance v1, Lcom/android/keyguard/AdminSecondaryLockScreenController$4$$ExternalSyntheticLambda0;

    .line 28
    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/AdminSecondaryLockScreenController$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/AdminSecondaryLockScreenController$4;I)V

    .line 30
    const-wide/16 p0, 0x1f4

    .line 33
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    return-void
    .line 38
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$4;->this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 6
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 8
    return-void
    .line 11
.end method
