.class Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;
.super Lcom/google/android/play/core/splitinstall/protocol/SplitInstallServiceCallback;
.source "SplitInstallServiceCallbackImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/play/core/splitinstall/protocol/SplitInstallServiceCallback;"
    }
.end annotation


# instance fields
.field private final mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

.field final mTask:Lcom/google/android/play/core/tasks/TaskWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/tasks/TaskWrapper<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/splitinstall/SplitInstallService;",
            "Lcom/google/android/play/core/tasks/TaskWrapper<",
            "TT;>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/protocol/SplitInstallServiceCallback;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    .line 18
    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mTask:Lcom/google/android/play/core/tasks/TaskWrapper;

    return-void
.end method


# virtual methods
.method public onCancelInstall(ILandroid/os/Bundle;)V
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {p0}, Lcom/google/android/play/core/remote/RemoteManager;->unbindService()V

    .line 36
    sget-object p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "onCancelInstall(%d)"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public onCompleteInstall(I)V
    .locals 1

    .line 29
    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {p0}, Lcom/google/android/play/core/remote/RemoteManager;->unbindService()V

    .line 30
    sget-object p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "onCompleteInstall(%d)"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public onDeferredInstall(Landroid/os/Bundle;)V
    .locals 1

    .line 53
    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {p0}, Lcom/google/android/play/core/remote/RemoteManager;->unbindService()V

    .line 54
    sget-object p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "onDeferredInstall"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public onDeferredUninstall(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {p0}, Lcom/google/android/play/core/remote/RemoteManager;->unbindService()V

    .line 48
    sget-object p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "onDeferredUninstall"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final onError(Landroid/os/Bundle;)V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {v0}, Lcom/google/android/play/core/remote/RemoteManager;->unbindService()V

    const-string v0, "error_code"

    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "module_names"

    .line 67
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 68
    sget-object v1, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "onError(%d)"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 69
    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mTask:Lcom/google/android/play/core/tasks/TaskWrapper;

    new-instance v1, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    invoke-direct {v1, v0, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallException;-><init>(I[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/android/play/core/tasks/TaskWrapper;->setException(Ljava/lang/Exception;)Z

    return-void
.end method

.method public onGetSession(ILandroid/os/Bundle;)V
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {p0}, Lcom/google/android/play/core/remote/RemoteManager;->unbindService()V

    .line 42
    sget-object p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "onGetSession(%d)"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public onGetSessionStates(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 59
    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {p0}, Lcom/google/android/play/core/remote/RemoteManager;->unbindService()V

    .line 60
    sget-object p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "onGetSessionStates"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public onStartInstall(ILandroid/os/Bundle;)V
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallServiceCallbackImpl;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {p0}, Lcom/google/android/play/core/remote/RemoteManager;->unbindService()V

    .line 24
    sget-object p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "onStartInstall(%d)"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
