.class public final Lcom/android/keyguard/CrossEndsUnlockController$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/keyguard/OnCheckForUsersCallback;


# instance fields
.field public final synthetic val$callback:Lcom/android/keyguard/crossendsunlock/ISystemUIRemoteAuthCheckCallback;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(ILcom/android/keyguard/crossendsunlock/ISystemUIRemoteAuthCheckCallback;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/keyguard/CrossEndsUnlockController$1;->val$userId:I

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/CrossEndsUnlockController$1;->val$callback:Lcom/android/keyguard/crossendsunlock/ISystemUIRemoteAuthCheckCallback;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onChecked(IIIZ)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/keyguard/CrossEndsUnlockController;->sLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 2
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 5
    const/4 v0, 0x0

    .line 8
    sput-object v0, Lcom/android/keyguard/CrossEndsUnlockController;->sPendingLockCheck:Landroid/os/AsyncTask;

    .line 9
    const-string v0, "CrossEndsUnlockController"

    .line 11
    const/4 v1, 0x0

    .line 13
    iget-object p0, p0, Lcom/android/keyguard/CrossEndsUnlockController$1;->val$callback:Lcom/android/keyguard/crossendsunlock/ISystemUIRemoteAuthCheckCallback;

    .line 14
    if-nez p4, :cond_0

    .line 16
    invoke-static {p1, p2, p3, v1}, Lcom/android/keyguard/CrossEndsUnlockController;->onGeneralChecked(IIIZ)V

    .line 18
    :try_start_0
    check-cast p0, Lcom/android/keyguard/crossendsunlock/ISystemUIRemoteAuthCheckCallback$Stub$Proxy;

    .line 21
    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/keyguard/crossendsunlock/ISystemUIRemoteAuthCheckCallback$Stub$Proxy;->onCheckResult(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    goto :goto_0

    .line 36
    :cond_0
    :try_start_1
    check-cast p0, Lcom/android/keyguard/crossendsunlock/ISystemUIRemoteAuthCheckCallback$Stub$Proxy;

    .line 37
    invoke-virtual {p0, v1}, Lcom/android/keyguard/crossendsunlock/ISystemUIRemoteAuthCheckCallback$Stub$Proxy;->onCheckResult(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 39
    goto :goto_0

    .line 42
    :catch_1
    move-exception p0

    .line 43
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 47
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_0
    return-void
    .line 51
.end method

.method public final onEarlyMatched()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/keyguard/CrossEndsUnlockController;->sLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 5
    const/4 v0, 0x0

    .line 8
    iget p0, p0, Lcom/android/keyguard/CrossEndsUnlockController$1;->val$userId:I

    .line 9
    const/4 v1, 0x1

    .line 11
    invoke-static {p0, v0, p0, v1}, Lcom/android/keyguard/CrossEndsUnlockController;->onGeneralChecked(IIIZ)V

    .line 12
    return-void
    .line 15
.end method
