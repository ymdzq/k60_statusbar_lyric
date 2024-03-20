.class final Lcom/google/android/play/core/splitinstall/SplitInstallService;
.super Ljava/lang/Object;
.source "SplitInstallService.java"


# static fields
.field static final playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mPackageName:Ljava/lang/String;

.field final mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/remote/RemoteManager<",
            "Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const-class v1, Lcom/google/android/play/core/splitinstall/SplitInstallService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/play/core/splitinstall/SplitInstallService;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v6, Lcom/google/android/play/core/splitinstall/OnBinderDiedListenerImpl;

    invoke-direct {v6, p0}, Lcom/google/android/play/core/splitinstall/OnBinderDiedListenerImpl;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;)V

    .line 37
    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mPackageName:Ljava/lang/String;

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.iqiyi.android.play.core.splitinstall.BIND_SPLIT_INSTALL_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 40
    new-instance p2, Lcom/google/android/play/core/remote/RemoteManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const-string v3, "SplitInstallService"

    sget-object v5, Lcom/google/android/play/core/splitinstall/SplitRemoteImpl;->sInstance:Lcom/google/android/play/core/remote/IRemote;

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/play/core/remote/RemoteManager;-><init>(Landroid/content/Context;Lcom/google/android/play/core/splitcompat/util/PlayCore;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/play/core/remote/IRemote;Lcom/google/android/play/core/remote/OnBinderDiedListener;)V

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    return-void
.end method

.method static wrapModuleNames(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "module_name"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static wrapVersionCode()Landroid/os/Bundle;
    .locals 3

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "playcore_version_code"

    const/16 v2, 0x271a

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method cancelInstall(I)Lcom/google/android/play/core/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 79
    sget-object v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "cancelInstall(%d)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 80
    new-instance v0, Lcom/google/android/play/core/tasks/TaskWrapper;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;-><init>()V

    .line 81
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    new-instance v2, Lcom/google/android/play/core/splitinstall/CancelInstallTask;

    invoke-direct {v2, p0, v0, p1, v0}, Lcom/google/android/play/core/splitinstall/CancelInstallTask;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;ILcom/google/android/play/core/tasks/TaskWrapper;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/remote/RemoteManager;->bindService(Lcom/google/android/play/core/remote/RemoteTask;)V

    .line 82
    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;->getTask()Lcom/google/android/play/core/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method deferredInstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const-string v1, "deferredInstall(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 52
    new-instance v0, Lcom/google/android/play/core/tasks/TaskWrapper;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;-><init>()V

    .line 53
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    new-instance v2, Lcom/google/android/play/core/splitinstall/DeferredInstallTask;

    invoke-direct {v2, p0, v0, p1, v0}, Lcom/google/android/play/core/splitinstall/DeferredInstallTask;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;Ljava/util/List;Lcom/google/android/play/core/tasks/TaskWrapper;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/remote/RemoteManager;->bindService(Lcom/google/android/play/core/remote/RemoteTask;)V

    .line 54
    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;->getTask()Lcom/google/android/play/core/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method deferredUninstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const-string v1, "deferredUninstall(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 59
    new-instance v0, Lcom/google/android/play/core/tasks/TaskWrapper;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;-><init>()V

    .line 60
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    new-instance v2, Lcom/google/android/play/core/splitinstall/DeferredUninstallTask;

    invoke-direct {v2, p0, v0, p1, v0}, Lcom/google/android/play/core/splitinstall/DeferredUninstallTask;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;Ljava/util/List;Lcom/google/android/play/core/tasks/TaskWrapper;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/remote/RemoteManager;->bindService(Lcom/google/android/play/core/remote/RemoteTask;)V

    .line 61
    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;->getTask()Lcom/google/android/play/core/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method getSessionState(I)Lcom/google/android/play/core/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/play/core/tasks/Task<",
            "Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;",
            ">;"
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getSessionState(%d)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 66
    new-instance v0, Lcom/google/android/play/core/tasks/TaskWrapper;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;-><init>()V

    .line 67
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    new-instance v2, Lcom/google/android/play/core/splitinstall/GetSessionStateTask;

    invoke-direct {v2, p0, v0, p1, v0}, Lcom/google/android/play/core/splitinstall/GetSessionStateTask;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;ILcom/google/android/play/core/tasks/TaskWrapper;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/remote/RemoteManager;->bindService(Lcom/google/android/play/core/remote/RemoteTask;)V

    .line 68
    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;->getTask()Lcom/google/android/play/core/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method getSessionStates()Lcom/google/android/play/core/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;",
            ">;>;"
        }
    .end annotation

    .line 72
    sget-object v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getSessionStates"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 73
    new-instance v0, Lcom/google/android/play/core/tasks/TaskWrapper;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    new-instance v2, Lcom/google/android/play/core/splitinstall/GetSessionStatesTask;

    invoke-direct {v2, p0, v0, v0}, Lcom/google/android/play/core/splitinstall/GetSessionStatesTask;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;Lcom/google/android/play/core/tasks/TaskWrapper;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/remote/RemoteManager;->bindService(Lcom/google/android/play/core/remote/RemoteTask;)V

    .line 75
    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;->getTask()Lcom/google/android/play/core/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method onBinderDied()V
    .locals 3

    .line 102
    sget-object v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onBinderDied"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 103
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "session_id"

    const/4 v2, -0x1

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "status"

    const/4 v2, 0x6

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "error_code"

    const/16 v2, -0x9

    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 108
    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.google.android.play.core.splitinstall.receiver.SplitInstallUpdateIntentService"

    .line 109
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "session_state"

    .line 110
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x40000000    # 2.0f

    .line 111
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x200000

    .line 113
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method startInstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->playCore:Lcom/google/android/play/core/splitcompat/util/PlayCore;

    const-string/jumbo v1, "startInstall(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/splitcompat/util/PlayCore;->info(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 45
    new-instance v0, Lcom/google/android/play/core/tasks/TaskWrapper;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;-><init>()V

    .line 46
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallService;->mSplitRemoteManager:Lcom/google/android/play/core/remote/RemoteManager;

    new-instance v2, Lcom/google/android/play/core/splitinstall/StartInstallTask;

    invoke-direct {v2, p0, v0, p1, v0}, Lcom/google/android/play/core/splitinstall/StartInstallTask;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Lcom/google/android/play/core/tasks/TaskWrapper;Ljava/util/List;Lcom/google/android/play/core/tasks/TaskWrapper;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/remote/RemoteManager;->bindService(Lcom/google/android/play/core/remote/RemoteTask;)V

    .line 47
    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/TaskWrapper;->getTask()Lcom/google/android/play/core/tasks/Task;

    move-result-object p0

    return-object p0
.end method
