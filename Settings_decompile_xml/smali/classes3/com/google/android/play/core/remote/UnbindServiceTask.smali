.class final Lcom/google/android/play/core/remote/UnbindServiceTask;
.super Lcom/google/android/play/core/remote/RemoteTask;
.source "UnbindServiceTask.java"


# instance fields
.field private final mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/remote/RemoteManager;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/google/android/play/core/remote/RemoteTask;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/android/play/core/remote/UnbindServiceTask;->mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/google/android/play/core/remote/UnbindServiceTask;->mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    iget-object v1, v0, Lcom/google/android/play/core/remote/RemoteManager;->mIInterface:Landroid/os/IInterface;

    if-eqz v1, :cond_0

    .line 14
    iget-object v1, v0, Lcom/google/android/play/core/remote/RemoteManager;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/play/core/remote/RemoteManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 15
    iget-object p0, p0, Lcom/google/android/play/core/remote/UnbindServiceTask;->mRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mBindingService:Z

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mIInterface:Landroid/os/IInterface;

    .line 17
    iput-object v0, p0, Lcom/google/android/play/core/remote/RemoteManager;->mServiceConnection:Landroid/content/ServiceConnection;

    :cond_0
    return-void
.end method
