.class final Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;
.super Ljava/lang/Object;
.source "SplitInstallManagerImpl.java"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/SplitInstallManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitInstallManagerImpl"


# instance fields
.field private final context:Landroid/content/Context;

.field private final mInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

.field private final mMainHandler:Landroid/os/Handler;

.field private mRegistry:Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;

.field private final packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/play/core/splitinstall/SplitInstallService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->context:Landroid/content/Context;

    .line 45
    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->packageName:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->mInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    .line 47
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->mMainHandler:Landroid/os/Handler;

    .line 48
    new-instance p1, Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;

    invoke-direct {p1, p2}, Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->mRegistry:Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;

    return-void
.end method

.method private cutSplitName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "\\.config\\."

    .line 163
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0
.end method

.method private getFusedModules()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SplitInstallManagerImpl"

    .line 138
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 141
    :try_start_0
    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->packageName:Ljava/lang/String;

    const/16 v3, 0x80

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    const-string/jumbo v2, "shadow.bundletool.com.android.dynamic.apk.fused.modules"

    .line 148
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, ","

    const/4 v2, -0x1

    .line 149
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string p0, ""

    .line 150
    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v1

    :cond_0
    const-string p0, "App has no fused modules."

    .line 153
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const-string p0, "App has no applicationInfo or metaData"

    .line 157
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catchall_0
    const-string p0, "App is not found in PackageManager"

    .line 143
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private getInstalledSplitInstallInfo()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->getFusedModules()Ljava/util/Set;

    move-result-object v0

    .line 121
    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->getSplitInstallInfo()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "SplitInstallManagerImpl"

    if-nez v1, :cond_0

    const-string p0, "No splits are found or app cannot be found in package manager."

    .line 123
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 127
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "Split names are: "

    if-eqz v4, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    const-string v5, "config."

    .line 130
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 131
    invoke-direct {p0, v4}, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->cutSplitName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getSplitInstallInfo()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object v0

    :catchall_0
    const-string p0, "SplitInstallManagerImpl"

    const-string v1, "App is not found in PackageManager"

    .line 172
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public cancelInstall(I)Lcom/google/android/play/core/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->mInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    invoke-virtual {p0, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallService;->cancelInstall(I)Lcom/google/android/play/core/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public deferredInstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;
    .locals 0
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

    .line 99
    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->mInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    invoke-virtual {p0, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallService;->deferredInstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public deferredUninstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;
    .locals 0
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

    .line 104
    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->mInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    invoke-virtual {p0, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallService;->deferredUninstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public getInstalledModules()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->getInstalledSplitInstallInfo()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 110
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 113
    :cond_0
    invoke-static {}, Lcom/google/android/play/core/splitinstall/LoadedSplitFetcherSingleton;->get()Lcom/google/android/play/core/splitinstall/LoadedSplitFetcher;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/play/core/splitinstall/LoadedSplitFetcher;->loadedSplits()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method getRegistry()Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->mRegistry:Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;

    return-object p0
.end method

.method public getSessionState(I)Lcom/google/android/play/core/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/play/core/tasks/Task<",
            "Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->mInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    invoke-virtual {p0, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallService;->getSessionState(I)Lcom/google/android/play/core/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public getSessionStates()Lcom/google/android/play/core/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;",
            ">;>;"
        }
    .end annotation

    .line 94
    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->mInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallService;->getSessionStates()Lcom/google/android/play/core/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public registerListener(Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)V
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->getRegistry()Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->registerListener(Lcom/google/android/play/core/listener/StateUpdatedListener;)V

    return-void
.end method

.method public startConfirmationDialogForResult(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;Landroid/app/Activity;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status()I

    move-result p0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->resolutionIntent()Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 75
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->resolutionIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move v2, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public startInstall(Lcom/google/android/play/core/splitinstall/SplitInstallRequest;)Lcom/google/android/play/core/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/splitinstall/SplitInstallRequest;",
            ")",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->getInstalledModules()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest;->getModuleNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/play/core/splitinstall/SplitInstalledDisposer;

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/splitinstall/SplitInstalledDisposer;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;Lcom/google/android/play/core/splitinstall/SplitInstallRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    .line 65
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/play/core/tasks/Tasks;->createTaskAndSetResult(Ljava/lang/Object;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p0

    return-object p0

    .line 67
    :cond_0
    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->mInstallService:Lcom/google/android/play/core/splitinstall/SplitInstallService;

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallRequest;->getModuleNames()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallService;->startInstall(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public unregisterListener(Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallManagerImpl;->getRegistry()Lcom/google/android/play/core/splitinstall/SplitInstallListenerRegistry;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->unregisterListener(Lcom/google/android/play/core/listener/StateUpdatedListener;)V

    return-void
.end method
