.class final Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;
.super Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;
.source "SplitInstallSupervisorImpl.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "Split:SplitInstallSupervisorImpl"


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final downloadSizeThresholdValue:J

.field private final dynamicFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final installedSplitForAAB:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final obtainUserConfirmationActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

.field private final splitInstaller:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;

.field private final userDownloader:Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;

.field private final verifySignature:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;Ljava/lang/Class;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;",
            "Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;Z)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->appContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    .line 88
    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->userDownloader:Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;

    .line 89
    invoke-interface {p3}, Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;->getDownloadSizeThresholdWhenUsingMobileData()J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    const-wide p2, 0x7fffffffffffffffL

    .line 90
    :cond_0
    iput-wide p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->downloadSizeThresholdValue:J

    .line 91
    new-instance p2, Lcom/iqiyi/android/qigsaw/core/common/SplitAABInfoProvider;

    invoke-direct {p2, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitAABInfoProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/iqiyi/android/qigsaw/core/common/SplitAABInfoProvider;->getInstalledSplitsForAAB()Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->installedSplitForAAB:Ljava/util/Set;

    .line 92
    iput-object p4, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->obtainUserConfirmationActivityClass:Ljava/lang/Class;

    .line 93
    new-instance p2, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerImpl;

    invoke-direct {p2, p1, p5}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallerImpl;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->splitInstaller:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;

    .line 94
    iput-boolean p5, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->verifySignature:Z

    .line 95
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/common/SplitBaseInfoProvider;->getDynamicFeatures()[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->dynamicFeatures:Ljava/util/List;

    if-nez p1, :cond_2

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Split:SplitInstallSupervisorImpl"

    const-string p2, "Can\'t read dynamicFeatures from SplitBaseInfoProvider"

    .line 98
    invoke-static {p1, p2, p0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private checkInternalErrorCode()I
    .locals 5

    .line 275
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

    move-result-object v0

    const/16 v1, -0x64

    const/4 v2, 0x0

    const-string v3, "Split:SplitInstallSupervisorImpl"

    if-nez v0, :cond_0

    const-string p0, "Failed to fetch SplitInfoManager instance!"

    new-array v0, v2, [Ljava/lang/Object;

    .line 277
    invoke-static {v3, p0, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 280
    :cond_0
    iget-object v4, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->appContext:Landroid/content/Context;

    invoke-interface {v0, v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->getAllSplitInfo(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 281
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 293
    :cond_1
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->appContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->getQigsawId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 294
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/common/SplitBaseInfoProvider;->getQigsawId()Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    const-string v2, "Failed to match base app qigsaw-version excepted %s but %s!"

    .line 296
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_4
    :goto_1
    const-string p0, "Failed to parse json file of split info!"

    new-array v0, v2, [Ljava/lang/Object;

    .line 282
    invoke-static {v3, p0, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private checkRequestErrorCode(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Split:SplitInstallSupervisorImpl"

    const-string v3, "checkRequestErrorCode: "

    .line 263
    invoke-static {v2, v3, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->isRequestInvalid(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "checkRequestErrorCode: return INVALID_REQUEST"

    new-array p1, v0, [Ljava/lang/Object;

    .line 265
    invoke-static {v2, p0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, -0x3

    return p0

    .line 268
    :cond_0
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->isModuleAvailable(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, -0x2

    return p0

    :cond_1
    return v0
.end method

.method private checkSplitInfo(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Z
    .locals 1

    .line 447
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->isCPUArchMatched(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->isMinSdkVersionMatched(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private createDownloadRequests(Ljava/util/Collection;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 471
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    .line 472
    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->appContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getApkDataList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 473
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;

    .line 474
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitDir(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/io/File;

    move-result-object v4

    .line 475
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->newBuilder()Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;

    move-result-object v5

    .line 476
    invoke-virtual {v3}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->url(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;

    move-result-object v5

    .line 477
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->fileDir(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;->getAbi()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->fileName(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;

    move-result-object v4

    .line 479
    invoke-virtual {v3}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;->getMd5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->fileMD5(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;

    move-result-object v4

    .line 480
    invoke-virtual {v3}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$ApkData;->getSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->size(J)Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;

    move-result-object v3

    .line 481
    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->moduleName(Ljava/lang/String;)Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;

    move-result-object v3

    .line 482
    invoke-virtual {v3}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->build()Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;

    move-result-object v3

    .line 483
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private deferredDownloadSplits(Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;",
            ")V"
        }
    .end annotation

    const-string v0, "Split:SplitInstallSupervisorImpl"

    .line 330
    :try_start_0
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->onPreDownloadSplits(Ljava/util/Collection;)[J

    move-result-object v1

    const/4 v2, 0x0

    .line 331
    invoke-interface {p2, v2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onDeferredInstall(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    .line 332
    aget-wide v3, v1, v2

    .line 333
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->createSessionId(Ljava/util/Collection;)I

    move-result v5

    .line 334
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeferredInstall session id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v0, v6, v8}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    new-instance v6, Lcom/iqiyi/android/qigsaw/core/splitinstall/DeferredDownloadCallback;

    iget-object v8, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->splitInstaller:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;

    invoke-direct {v6, v8, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/DeferredDownloadCallback;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;Ljava/util/List;)V

    const-wide/16 v8, 0x0

    cmp-long v3, v3, v8

    if-nez v3, :cond_0

    const-string p0, "Splits have been downloaded, install them directly!"

    new-array p1, v7, [Ljava/lang/Object;

    .line 337
    invoke-static {v0, p0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    invoke-virtual {v6}, Lcom/iqiyi/android/qigsaw/core/splitinstall/DeferredDownloadCallback;->onCompleted()V

    goto :goto_1

    .line 340
    :cond_0
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->createDownloadRequests(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 341
    iget-object v3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->userDownloader:Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;

    aget-wide v8, v1, v2

    invoke-interface {v3, p1, v8, v9}, Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;->calculateDownloadSize(Ljava/util/List;J)J

    move-result-wide v3

    .line 342
    iget-wide v8, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->downloadSizeThresholdValue:J

    cmp-long v1, v3, v8

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->userDownloader:Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;

    invoke-interface {v1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;->isDeferredDownloadOnlyWhenUsingWifiData()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v7

    .line 343
    :goto_0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->userDownloader:Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;

    invoke-interface {p0, v5, p1, v6, v2}, Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;->deferredDownload(ILjava/util/List;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const/16 p1, -0x63

    .line 346
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorCode(I)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    const-string p1, "onDeferredInstall"

    .line 347
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Failed to copy builtin split apks(%s)"

    invoke-static {v0, p0, p2, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private getInstalledSplitForAAB()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 303
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->installedSplitForAAB:Ljava/util/Set;

    return-object p0
.end method

.method private getNeed2BeInstalledSplits(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;"
        }
    .end annotation

    .line 307
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->appContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->getSplitInfos(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 310
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 311
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    .line 312
    invoke-virtual {v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getDependencies()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 313
    invoke-virtual {v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getDependencies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 316
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 317
    invoke-interface {v2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 318
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "Split:SplitInstallSupervisorImpl"

    const-string v4, "Add dependencies %s automatically for install splits %s!"

    invoke-static {v3, v4, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->appContext:Landroid/content/Context;

    invoke-interface {v0, p0, v2}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->getSplitInfos(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 321
    invoke-interface {p0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object p0

    :cond_3
    return-object v1
.end method

.method private isAllSplitsBuiltIn(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;)Z"
        }
    .end annotation

    .line 238
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    .line 239
    invoke-virtual {p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->isBuiltIn()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isCPUArchMatched(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Z
    .locals 0

    .line 462
    :try_start_0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->appContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getPrimaryLibData(Landroid/content/Context;)Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo$LibData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private isMinSdkVersionMatched(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Z
    .locals 0

    .line 454
    invoke-virtual {p1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getMinSdkVersion()I

    move-result p0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isModuleAvailable(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 431
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

    move-result-object v0

    .line 433
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->appContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->getAllSplitInfo(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 434
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 435
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    .line 436
    invoke-virtual {v3}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 437
    invoke-direct {p0, v3}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->checkSplitInfo(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private isRequestInvalid(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moduleNames = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Split:SplitInstallSupervisorImpl"

    invoke-static {v4, v0, v3}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dynamicFeatures = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->dynamicFeatures:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v3}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dynamicFeatures.containsAll = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->dynamicFeatures:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 427
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->dynamicFeatures:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private onPreDownloadSplits(Ljava/util/Collection;)[J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;)[J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 492
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    .line 493
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitDir(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/io/File;

    move-result-object v5

    .line 494
    new-instance v6, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;

    invoke-direct {v6, v5}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;-><init>(Ljava/io/File;)V

    .line 497
    :try_start_0
    iget-object v5, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->appContext:Landroid/content/Context;

    iget-boolean v7, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->verifySignature:Z

    invoke-virtual {v6, v5, v4, v7}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor;->load(Landroid/content/Context;Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;Z)Ljava/util/List;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    invoke-static {v6}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V

    .line 502
    iget-object v6, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->appContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getApkTotalSize(Landroid/content/Context;)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 503
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor$SplitFile;

    .line 504
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 505
    iget-wide v5, v5, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitDownloadPreprocessor$SplitFile;->realSize:J

    add-long/2addr v2, v5

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 499
    invoke-static {v6}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->closeQuietly(Ljava/lang/Object;)V

    .line 500
    throw p0

    :cond_2
    const/4 p0, 0x2

    new-array p0, p0, [J

    const/4 p1, 0x0

    aput-wide v0, p0, p1

    const/4 p1, 0x1

    aput-wide v2, p0, p1

    return-object p0
.end method

.method private onPreInstallSplits(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 247
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->getInstalledSplitForAAB()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->getInstalledSplitForAAB()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    const-string p0, "onPreInstallSplits: return INVALID_REQUEST"

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Split:SplitInstallSupervisorImpl"

    .line 249
    invoke-static {v0, p0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, -0x3

    return p0

    :cond_0
    return p1

    .line 253
    :cond_1
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->checkInternalErrorCode()I

    move-result v0

    if-nez v0, :cond_2

    .line 255
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->checkRequestErrorCode(Ljava/util/List;)I

    move-result v0

    :cond_2
    return v0
.end method

.method private startDownloadSplits(Ljava/util/List;Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 354
    iget-object v4, v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {v4}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->isActiveSessionsLimitExceeded()Z

    move-result v4

    const-string v5, "Split:SplitInstallSupervisorImpl"

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    const-string v0, "Start install request error code: ACTIVE_SESSIONS_LIMIT_EXCEEDED"

    new-array v2, v6, [Ljava/lang/Object;

    .line 355
    invoke-static {v5, v0, v2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v6, [Ljava/lang/String;

    .line 356
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {v1, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorInfo(I[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    return-void

    .line 359
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->createSessionId(Ljava/util/Collection;)I

    move-result v4

    .line 360
    iget-object v7, v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {v7, v4}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->getSessionState(I)Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    .line 361
    invoke-virtual {v7}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->status()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_1

    move v9, v8

    goto :goto_0

    :cond_1
    move v9, v6

    :goto_0
    if-nez v9, :cond_2

    .line 362
    iget-object v9, v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {v9, v1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->isIncompatibleWithExistingSession(Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v0, "Start install request error code: INCOMPATIBLE_WITH_EXISTING_SESSION"

    new-array v2, v6, [Ljava/lang/Object;

    .line 363
    invoke-static {v5, v0, v2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v6, [Ljava/lang/String;

    .line 364
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, -0x8

    invoke-static {v1, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorInfo(I[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    return-void

    .line 367
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startInstall session id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v5, v9, v10}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    :try_start_0
    invoke-direct {v0, v2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->createDownloadRequests(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v9

    if-nez v7, :cond_3

    .line 371
    new-instance v7, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    invoke-direct {v7, v4, v1, v2, v9}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 376
    :cond_3
    invoke-direct {v0, v2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->onPreDownloadSplits(Ljava/util/Collection;)[J

    move-result-object v10

    const/4 v11, 0x0

    .line 378
    invoke-interface {v3, v4, v11}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onStartInstall(ILandroid/os/Bundle;)V

    .line 379
    iget-object v11, v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {v11, v4, v7}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->setSessionState(ILcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;)V

    .line 381
    aget-wide v11, v10, v6

    .line 382
    iget-object v13, v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->userDownloader:Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;

    aget-wide v14, v10, v8

    invoke-interface {v13, v9, v14, v15}, Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;->calculateDownloadSize(Ljava/util/List;J)J

    move-result-wide v13

    const-string/jumbo v10, "totalBytesToDownload: %d, realTotalBytesNeedToDownload: %d "

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    .line 383
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v15, v6

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v15, v8

    invoke-static {v5, v10, v15}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    invoke-virtual {v7, v11, v12}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->setTotalBytesToDownload(J)V

    .line 385
    new-instance v10, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;

    iget-object v11, v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->splitInstaller:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;

    iget-object v12, v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-direct {v10, v11, v4, v12, v2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;ILcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;Ljava/util/List;)V

    const-wide/16 v11, 0x0

    cmp-long v2, v13, v11

    if-gtz v2, :cond_4

    const-string v0, "Splits have been downloaded, install them directly!"

    new-array v2, v6, [Ljava/lang/Object;

    .line 387
    invoke-static {v5, v0, v2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    invoke-virtual {v10}, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;->onCompleted()V

    goto :goto_1

    .line 396
    :cond_4
    iget-object v2, v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {v2, v4, v8}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->changeSessionState(II)V

    .line 397
    iget-object v2, v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {v2, v7}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->emitSessionState(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;)V

    .line 398
    iget-object v0, v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->userDownloader:Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;

    invoke-interface {v0, v4, v9, v10}, Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;->startDownload(ILjava/util/List;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "Failed to copy internal splits"

    .line 402
    invoke-static {v5, v2, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array v0, v6, [Ljava/lang/String;

    .line 403
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, -0x63

    invoke-static {v1, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorInfo(I[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method private startUserConfirmationActivity(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;JLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;",
            "J",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;",
            ">;)V"
        }
    .end annotation

    .line 410
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 411
    invoke-virtual {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->sessionId()I

    move-result v1

    const-string/jumbo v2, "sessionId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "downloadRequests"

    .line 412
    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p4, "realTotalBytesNeedToDownload"

    .line 413
    invoke-virtual {v0, p4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 414
    invoke-virtual {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->moduleNames()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    const-string p3, "moduleNames"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 415
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->appContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->obtainUserConfirmationActivityClass:Ljava/lang/Class;

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 416
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->appContext:Landroid/content/Context;

    const/4 p3, 0x0

    const/high16 p4, 0xc000000

    invoke-static {p2, p3, v0, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 417
    invoke-virtual {p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->setUserConfirmationIntent(Landroid/app/PendingIntent;)V

    .line 418
    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-virtual {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->sessionId()I

    move-result p3

    const/16 p4, 0x8

    invoke-interface {p2, p3, p4}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->changeSessionState(II)V

    .line 419
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->emitSessionState(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;)V

    return-void
.end method


# virtual methods
.method public cancelInstall(ILcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;)V
    .locals 6

    .line 167
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Split:SplitInstallSupervisorImpl"

    const-string/jumbo v2, "start to cancel session id %d installation"

    invoke-static {v1, v2, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->getSessionState(I)Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "Session id is not found!"

    new-array p1, v2, [Ljava/lang/Object;

    .line 170
    invoke-static {v1, p0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, -0x4

    .line 171
    invoke-static {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorCode(I)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    return-void

    .line 174
    :cond_0
    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->status()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x3

    if-eq v3, v4, :cond_2

    .line 175
    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->status()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->moduleNames()Ljava/util/List;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {v5, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorInfo(I[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    goto :goto_1

    .line 176
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->userDownloader:Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;

    invoke-interface {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;->cancelDownloadSync(I)Z

    move-result p0

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result of cancel request : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    .line 179
    invoke-interface {p2, p1, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onCancelInstall(ILandroid/os/Bundle;)V

    goto :goto_1

    .line 181
    :cond_3
    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->moduleNames()Ljava/util/List;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {v5, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorInfo(I[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method public cancelInstallWithoutUserConfirmation(I)Z
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->getSessionState(I)Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-virtual {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->sessionId()I

    move-result v1

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->changeSessionState(II)V

    .line 231
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->emitSessionState(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public continueInstallWithUserConfirmation(I)Z
    .locals 5

    .line 214
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->getSessionState(I)Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    new-instance v1, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;

    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->splitInstaller:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;

    iget-object v3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    iget-object v4, v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->needInstalledSplits:Ljava/util/List;

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/iqiyi/android/qigsaw/core/splitinstall/StartDownloadCallback;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;ILcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;Ljava/util/List;)V

    .line 218
    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->changeSessionState(II)V

    .line 219
    iget-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {p1, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->emitSessionState(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;)V

    .line 220
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->userDownloader:Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->sessionId()I

    move-result p1

    iget-object v0, v0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->downloadRequests:Ljava/util/List;

    invoke-interface {p0, p1, v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/Downloader;->startDownload(ILjava/util/List;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadCallback;)V

    return v3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public deferredInstall(Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;",
            ")V"
        }
    .end annotation

    .line 121
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->unBundleModuleNames(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 122
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->onPreInstallSplits(Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->getInstalledSplitForAAB()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->getInstalledSplitForAAB()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 126
    invoke-interface {p2, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onDeferredInstall(Landroid/os/Bundle;)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->getNeed2BeInstalledSplits(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->deferredDownloadSplits(Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;)V

    goto :goto_0

    .line 133
    :cond_1
    invoke-static {v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorCode(I)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public deferredUninstall(Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;",
            ")V"
        }
    .end annotation

    .line 139
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->unBundleModuleNames(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 140
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->getInstalledSplitForAAB()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Ljava/lang/String;

    .line 141
    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/16 p1, -0x62

    invoke-static {p1, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorInfo(I[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    return-void

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->checkInternalErrorCode()I

    move-result v0

    if-eqz v0, :cond_1

    new-array p0, v1, [Ljava/lang/String;

    .line 147
    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorInfo(I[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    return-void

    .line 150
    :cond_1
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->isRequestInvalid(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-array p0, v1, [Ljava/lang/String;

    .line 151
    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/4 p1, -0x3

    invoke-static {p1, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorInfo(I[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    return-void

    .line 154
    :cond_2
    new-instance p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;

    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;-><init>()V

    .line 155
    invoke-virtual {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;->recordPendingUninstallSplits(Ljava/util/List;)Z

    move-result p0

    const-string v0, "Split:SplitInstallSupervisorImpl"

    if-eqz p0, :cond_3

    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Succeed to record pending uninstall splits %s!"

    invoke-static {v0, p1, p0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 158
    invoke-interface {p2, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onDeferredUninstall(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    const-string p0, "Failed to record pending uninstall splits!"

    new-array v2, v1, [Ljava/lang/Object;

    .line 160
    invoke-static {v0, p0, v2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p0, v1, [Ljava/lang/String;

    .line 161
    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/16 p1, -0x64

    invoke-static {p1, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorInfo(I[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public getSessionState(ILcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;)V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->getSessionState(I)Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x4

    .line 192
    invoke-static {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorCode(I)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    return-void

    .line 195
    :cond_0
    invoke-static {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->transform2Bundle(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onGetSession(ILandroid/os/Bundle;)V

    return-void
.end method

.method public getSessionStates(Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;)V
    .locals 2

    .line 200
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->sessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    invoke-interface {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->getSessionStates()Ljava/util/List;

    move-result-object p0

    .line 201
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onGetSessionStates(Ljava/util/List;)V

    goto :goto_1

    .line 204
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    .line 206
    invoke-static {v1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->transform2Bundle(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    :cond_1
    invoke-interface {p1, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onGetSessionStates(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public startInstall(Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;",
            ")V"
        }
    .end annotation

    .line 104
    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->unBundleModuleNames(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 105
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->onPreInstallSplits(Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    .line 107
    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor;->bundleErrorInfo(I[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;->onError(Landroid/os/Bundle;)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->getNeed2BeInstalledSplits(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 111
    invoke-direct {p0, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->isAllSplitsBuiltIn(Ljava/util/List;)Z

    .line 115
    invoke-direct {p0, p1, v0, p2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSupervisorImpl;->startDownloadSplits(Ljava/util/List;Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitInstallSupervisor$Callback;)V

    :goto_0
    return-void
.end method
