.class final Lcom/google/android/play/core/remote/ServiceConnectionImpl;
.super Ljava/lang/Object;
.source "ServiceConnectionImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/remote/RemoteManager;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/google/android/play/core/remote/ServiceConnectionImpl;->mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/google/android/play/core/remote/ServiceConnectionImpl;->mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    iget-object v0, v0, Lcom/google/android/play/core/remote/RemoteManager;->mPlayCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const-string v1, "ServiceConnectionImpl.onServiceConnected(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 18
    iget-object p1, p0, Lcom/google/android/play/core/remote/ServiceConnectionImpl;->mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    new-instance v0, Lcom/google/android/play/core/remote/ServiceConnectedTask;

    invoke-direct {v0, p0, p2}, Lcom/google/android/play/core/remote/ServiceConnectedTask;-><init>(Lcom/google/android/play/core/remote/ServiceConnectionImpl;Landroid/os/IBinder;)V

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/remote/RemoteManager;->post(Lcom/google/android/play/core/remote/RemoteTask;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/google/android/play/core/remote/ServiceConnectionImpl;->mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    iget-object v0, v0, Lcom/google/android/play/core/remote/RemoteManager;->mPlayCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const-string v1, "ServiceConnectionImpl.onServiceDisconnected(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 24
    iget-object p1, p0, Lcom/google/android/play/core/remote/ServiceConnectionImpl;->mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    new-instance v0, Lcom/google/android/play/core/remote/ServiceDisconnectedTask;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/remote/ServiceDisconnectedTask;-><init>(Lcom/google/android/play/core/remote/ServiceConnectionImpl;)V

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/remote/RemoteManager;->post(Lcom/google/android/play/core/remote/RemoteTask;)V

    return-void
.end method
