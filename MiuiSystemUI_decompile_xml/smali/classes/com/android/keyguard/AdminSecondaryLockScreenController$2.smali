.class public final Lcom/android/keyguard/AdminSecondaryLockScreenController$2;
.super Landroid/app/admin/IKeyguardCallback$Stub;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/AdminSecondaryLockScreenController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$2;->this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    .line 2
    invoke-direct {p0}, Landroid/app/admin/IKeyguardCallback$Stub;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$2;->this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    .line 2
    iget-object v0, v0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mHandler:Landroid/os/Handler;

    .line 4
    new-instance v1, Lcom/android/keyguard/AdminSecondaryLockScreenController$2$$ExternalSyntheticLambda0;

    .line 6
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/AdminSecondaryLockScreenController$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/AdminSecondaryLockScreenController$2;I)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    return-void
    .line 15
.end method

.method public final onRemoteContentReady(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$2;->this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    .line 2
    iget-object v0, v0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mHandler:Landroid/os/Handler;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    iget-object p0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$2;->this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    .line 14
    iget-object p0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mView:Lcom/android/keyguard/AdminSecondaryLockScreenController$AdminSecurityView;

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setChildSurfacePackage(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 18
    goto :goto_0

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$2;->this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    .line 22
    iget-object p1, p1, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mHandler:Landroid/os/Handler;

    .line 24
    new-instance v0, Lcom/android/keyguard/AdminSecondaryLockScreenController$2$$ExternalSyntheticLambda0;

    .line 26
    const/4 v1, 0x1

    .line 28
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/AdminSecondaryLockScreenController$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/AdminSecondaryLockScreenController$2;I)V

    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    :goto_0
    return-void
    .line 35
.end method
