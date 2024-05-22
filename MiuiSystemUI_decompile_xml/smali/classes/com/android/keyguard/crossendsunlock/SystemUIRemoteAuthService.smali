.class public Lcom/android/keyguard/crossendsunlock/SystemUIRemoteAuthService;
.super Landroid/app/Service;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mSystemUIRemoteAuthImpl:Lcom/android/keyguard/CrossEndsUnlockController$ISystemUIRemoteAuthImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/crossendsunlock/SystemUIRemoteAuthService;->mSystemUIRemoteAuthImpl:Lcom/android/keyguard/CrossEndsUnlockController$ISystemUIRemoteAuthImpl;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    return-object p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return-object p0
    .line 11
.end method

.method public final onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 5
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/android/keyguard/CrossEndsUnlockController$ISystemUIRemoteAuthImpl;

    .line 11
    invoke-direct {v0, p0}, Lcom/android/keyguard/CrossEndsUnlockController$ISystemUIRemoteAuthImpl;-><init>(Landroid/content/Context;)V

    .line 13
    iput-object v0, p0, Lcom/android/keyguard/crossendsunlock/SystemUIRemoteAuthService;->mSystemUIRemoteAuthImpl:Lcom/android/keyguard/CrossEndsUnlockController$ISystemUIRemoteAuthImpl;

    .line 16
    :cond_0
    return-void
    .line 18
.end method
