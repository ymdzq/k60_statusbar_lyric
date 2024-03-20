.class public Lcom/iqiyi/android/qigsaw/core/Qigsaw;
.super Ljava/lang/Object;
.source "Qigsaw.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final sReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/iqiyi/android/qigsaw/core/Qigsaw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private final currentProcessName:Ljava/lang/String;

.field private final downloader:Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;

.field private final isMainProcess:Z

.field private onApplicationCreated:Z

.field private final splitConfiguration:Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/iqiyi/android/qigsaw/core/Qigsaw;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smcleanStaleSplits(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->cleanStaleSplits(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->sReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->onApplicationCreated:Z

    .line 77
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->context:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->downloader:Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;

    .line 79
    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->splitConfiguration:Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;

    .line 80
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/common/ProcessUtil;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->currentProcessName:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->isMainProcess:Z

    .line 82
    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/InjectActivityResource;->inject(Landroid/app/Application;)V

    return-void
.end method

.method private static cleanStaleSplits(Landroid/content/Context;)V
    .locals 2

    .line 244
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.iqiyi.android.qigsaw.core.splitinstall.SplitCleanService"

    .line 245
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static install(Landroid/content/Context;Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;)V
    .locals 1

    .line 99
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->newBuilder()Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration$Builder;->build()Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;

    move-result-object v0

    .line 100
    invoke-static {p0, p1, v0}, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->install(Landroid/content/Context;Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;)V

    return-void
.end method

.method public static install(Landroid/content/Context;Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;)V
    .locals 2

    .line 114
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->sReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 115
    new-instance v1, Lcom/iqiyi/android/qigsaw/core/Qigsaw;

    invoke-direct {v1, p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/Qigsaw;-><init>(Landroid/content/Context;Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 117
    :cond_0
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->instance()Lcom/iqiyi/android/qigsaw/core/Qigsaw;

    move-result-object p0

    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->onBaseContextAttached()V

    return-void
.end method

.method private static instance()Lcom/iqiyi/android/qigsaw/core/Qigsaw;
    .locals 2

    .line 86
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->sReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;

    return-object v0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Have you invoke Qigsaw#install(...)?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static onApplicationCreated()V
    .locals 1

    .line 186
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->instance()Lcom/iqiyi/android/qigsaw/core/Qigsaw;

    move-result-object v0

    invoke-direct {v0}, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->onCreated()V

    return-void
.end method

.method public static onApplicationGetResources(Landroid/content/res/Resources;)V
    .locals 1

    .line 195
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerService;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 196
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->getResources(Landroid/content/res/Resources;)V

    :cond_0
    return-void
.end method

.method private onBaseContextAttached()V
    .locals 8

    .line 121
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitBaseInfoProvider;->setPackageName(Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/common/SplitBaseInfoProvider;->isQigsawMode()Z

    move-result v0

    .line 123
    iget-boolean v1, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->isMainProcess:Z

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->splitConfiguration:Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;

    iget-object v1, v1, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->updateReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitUpdateReporter;

    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitUpdateReporter;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-static {v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitUpdateReporterManager;->install(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUpdateReporter;)V

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->splitConfiguration:Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;

    iget v3, v2, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->splitLoadMode:I

    iget-boolean v4, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->isMainProcess:Z

    iget-object v5, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->currentProcessName:Ljava/lang/String;

    iget-object v6, v2, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->workProcesses:[Ljava/lang/String;

    iget-object v7, v2, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->forbiddenWorkProcesses:[Ljava/lang/String;

    move v2, v3

    move v3, v0

    invoke-static/range {v1 .. v7}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerService;->install(Landroid/content/Context;IZZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->clear()V

    .line 137
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->injectPathClassloader()V

    .line 139
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->getInstance()Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->clear()V

    .line 140
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->getInstance()Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    move-result-object v1

    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->createAndActiveSplitApplication(Landroid/content/Context;Z)V

    .line 141
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/play/core/splitcompat/SplitCompat;->install(Landroid/content/Context;)Z

    return-void
.end method

.method private onCreated()V
    .locals 4

    .line 145
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->getInstance()Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->onApplicationCreate()V

    .line 146
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->splitConfiguration:Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;

    iget-object v0, v0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->loadReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitLoadReporter;

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitLoadReporter;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadReporterManager;->install(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;)V

    .line 148
    iget-boolean v0, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->isMainProcess:Z

    if-eqz v0, :cond_4

    .line 149
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->splitConfiguration:Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;

    iget-object v0, v0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->installReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;

    if-nez v0, :cond_1

    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitInstallReporter;

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitInstallReporter;-><init>(Landroid/content/Context;)V

    :cond_1
    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallReporterManager;->install(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;)V

    .line 150
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->splitConfiguration:Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;

    iget-object v0, v0, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->uninstallReporter:Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;

    if-nez v0, :cond_2

    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitUninstallReporter;

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitreport/DefaultSplitUninstallReporter;-><init>(Landroid/content/Context;)V

    :cond_2
    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitUninstallReporterManager;->install(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;)V

    .line 151
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->downloader:Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;

    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->splitConfiguration:Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;

    iget-object v3, v2, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->obtainUserConfirmationDialogClass:Ljava/lang/Class;

    iget-boolean v2, v2, Lcom/iqiyi/android/qigsaw/core/SplitConfiguration;->verifySignature:Z

    invoke-static {v0, v1, v3, v2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitApkInstaller;->install(Landroid/content/Context;Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;Ljava/lang/Class;Z)V

    .line 156
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitApkInstaller;->startUninstallSplits(Landroid/content/Context;)V

    .line 157
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 158
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/iqiyi/android/qigsaw/core/Qigsaw$1;

    invoke-direct {v1, p0}, Lcom/iqiyi/android/qigsaw/core/Qigsaw$1;-><init>(Lcom/iqiyi/android/qigsaw/core/Qigsaw;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_0

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->cleanStaleSplits(Landroid/content/Context;)V

    :cond_4
    :goto_0
    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->onApplicationCreated:Z

    return-void
.end method

.method public static preloadInstalledSplits(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 179
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->instance()Lcom/iqiyi/android/qigsaw/core/Qigsaw;

    move-result-object v0

    iget-boolean v0, v0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->onApplicationCreated:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;->preloadInstalledSplits(Ljava/util/Collection;)V

    return-void

    .line 180
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "This method must be invoked after Qigsaw#onApplicationCreated()!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static registerSplitActivityLifecycleCallbacks(Lcom/iqiyi/android/qigsaw/core/SplitActivityLifecycleCallbacks;)V
    .locals 2

    .line 201
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->instance()Lcom/iqiyi/android/qigsaw/core/Qigsaw;

    move-result-object v0

    iget-object v0, v0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->context:Landroid/content/Context;

    .line 202
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 205
    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    .line 203
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "If you want to monitor lifecycle of split activity, Application context must be required for Qigsaw#install(...)!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unregisterSplitActivityLifecycleCallbacks(Lcom/iqiyi/android/qigsaw/core/SplitActivityLifecycleCallbacks;)V
    .locals 2

    .line 209
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->instance()Lcom/iqiyi/android/qigsaw/core/Qigsaw;

    move-result-object v0

    iget-object v0, v0, Lcom/iqiyi/android/qigsaw/core/Qigsaw;->context:Landroid/content/Context;

    .line 210
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 213
    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    .line 211
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "If you want to monitor lifecycle of split activity, Application context must be required for Qigsaw#install(...)!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static updateSplits(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 228
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.iqiyi.android.qigsaw.core.splitrequest.splitinfo.SplitUpdateService"

    .line 229
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "new_split_info_version"

    .line 230
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "new_split_info_path"

    .line 231
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
