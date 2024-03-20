.class public final Lcom/android/keyguard/AdminSecondaryLockScreenController$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/AdminSecondaryLockScreenController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$1;->this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$1;->this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    .line 2
    invoke-static {p2}, Landroid/app/admin/IKeyguardClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IKeyguardClient;

    .line 4
    move-result-object v0

    .line 7
    iput-object v0, p1, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mClient:Landroid/app/admin/IKeyguardClient;

    .line 8
    iget-object p1, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$1;->this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    .line 10
    iget-object p1, p1, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mView:Lcom/android/keyguard/AdminSecondaryLockScreenController$AdminSecurityView;

    .line 12
    invoke-virtual {p1}, Landroid/view/SurfaceView;->isAttachedToWindow()Z

    .line 14
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    iget-object p1, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$1;->this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    .line 20
    iget-object v0, p1, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mClient:Landroid/app/admin/IKeyguardClient;

    .line 22
    if-eqz v0, :cond_0

    .line 24
    invoke-static {p1}, Lcom/android/keyguard/AdminSecondaryLockScreenController;->-$$Nest$monSurfaceReady(Lcom/android/keyguard/AdminSecondaryLockScreenController;)V

    .line 26
    :try_start_0
    iget-object p1, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$1;->this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    .line 29
    iget-object p1, p1, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mKeyguardClientDeathRecipient:Lcom/android/keyguard/AdminSecondaryLockScreenController$$ExternalSyntheticLambda0;

    .line 31
    const/4 v0, 0x0

    .line 33
    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    const-string p2, "AdminSecondaryLockScreenController"

    .line 39
    const-string v0, "Lost connection to secondary lockscreen service"

    .line 41
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    iget-object p0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$1;->this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    .line 46
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 48
    move-result p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/keyguard/AdminSecondaryLockScreenController;->dismiss(I)V

    .line 52
    :cond_0
    :goto_0
    return-void
    .line 55
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController$1;->this$0:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    .line 2
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mClient:Landroid/app/admin/IKeyguardClient;

    .line 5
    return-void
    .line 7
.end method
