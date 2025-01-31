.class final Lcom/google/android/play/core/splitinstall/DeferredInstallTask;
.super Lcom/google/android/play/core/remote/RemoteTask;
.source "DeferredInstallTask.java"


# instance fields
.field private final mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

.field private final mTask:Lcom/google/android/play/core/tasks/TaskWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/tasks/TaskWrapper<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final moduleNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;Ljava/util/List;Lcom/google/android/play/core/tasks/TaskWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/splitinstall/SplitInstallService;",
            "Lcom/google/android/play/core/tasks/TaskWrapper;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/play/core/tasks/TaskWrapper<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p2}, Lcom/google/android/play/core/remote/RemoteTask;-><init>(Lcom/google/android/play/core/tasks/TaskWrapper;)V

    .line 21
    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/DeferredInstallTask;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    .line 22
    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/DeferredInstallTask;->moduleNames:Ljava/util/List;

    .line 23
    iput-object p4, p0, Lcom/google/android/play/core/splitinstall/DeferredInstallTask;->mTask:Lcom/google/android/play/core/tasks/TaskWrapper;

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 7

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/DeferredInstallTask;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {v0}, Lcom/google/android/play/core/remote/RemoteManager;->getIInterface()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceProxy;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/DeferredInstallTask;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object v1, v1, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/DeferredInstallTask;->moduleNames:Ljava/util/List;

    .line 31
    invoke-static {v2}, Lcom/google/android/play/core/splitinstall/SplitInstallService;->wrapModuleNames(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 32
    invoke-static {}, Lcom/google/android/play/core/splitinstall/SplitInstallService;->wrapVersionCode()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/google/android/play/core/splitinstall/DeferredInstallCallback;

    iget-object v5, p0, Lcom/google/android/play/core/splitinstall/DeferredInstallTask;->mSplitInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    iget-object v6, p0, Lcom/google/android/play/core/splitinstall/DeferredInstallTask;->mTask:Lcom/google/android/play/core/tasks/TaskWrapper;

    invoke-direct {v4, v5, v6}, Lcom/google/android/play/core/splitinstall/DeferredInstallCallback;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;)V

    .line 29
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceProxy;->deferredInstall(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 36
    sget-object v1, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/DeferredInstallTask;->moduleNames:Ljava/util/List;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "deferredInstall(%s)"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 37
    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/DeferredInstallTask;->mTask:Lcom/google/android/play/core/tasks/TaskWrapper;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/google/android/play/core/tasks/TaskWrapper;->setException(Ljava/lang/Exception;)Z

    :goto_0
    return-void
.end method
