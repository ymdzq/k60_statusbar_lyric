.class abstract Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;
.super Ljava/lang/Object;
.source "SplitInstallTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final installer:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;

.field private final needUpdateSplits:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;",
            "Ljava/util/Collection<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;->installer:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;

    .line 45
    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;->needUpdateSplits:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method abstract isStartInstallOperation()Z
.end method

.method onInstallCompleted(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method onInstallFailed(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallError;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method protected onPreInstall()V
    .locals 0

    .line 0
    return-void
.end method

.method public final run()V
    .locals 18

    move-object/from16 v1, p0

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;->onPreInstall()V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;->isStartInstallOperation()Z

    move-result v4

    .line 56
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 57
    new-instance v6, Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;->needUpdateSplits:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 59
    iget-object v0, v1, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;->needUpdateSplits:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x1

    move v0, v9

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    .line 60
    new-instance v12, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;

    invoke-virtual {v10}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitVersion()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->isBuiltIn()Z

    move-result v15

    invoke-direct {v12, v13, v14, v15}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 63
    iget-object v15, v1, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;->installer:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;

    invoke-virtual {v15, v4, v10}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;->install(ZLcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;

    move-result-object v10

    .line 64
    iget-boolean v15, v10, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;->firstInstalled:Z

    if-eqz v15, :cond_1

    move v15, v9

    goto :goto_1

    :cond_1
    const/4 v15, 0x2

    .line 65
    :goto_1
    invoke-virtual {v12, v15}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->setInstallFlag(I)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v13, v16, v13

    invoke-virtual {v15, v13, v14}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;->setTimeCost(J)Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    new-instance v10, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallError;

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;->getErrorCode()I

    move-result v13

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v10, v12, v13, v0}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallError;-><init>(Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;ILjava/lang/Throwable;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v11

    if-eqz v4, :cond_0

    .line 75
    :cond_2
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallReporterManager;->getInstallReporter()Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;

    move-result-object v8

    if-eqz v0, :cond_4

    .line 77
    invoke-virtual {v1, v5}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;->onInstallCompleted(Ljava/util/List;)V

    if-eqz v8, :cond_6

    if-eqz v4, :cond_3

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-interface {v8, v6, v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;->onStartInstallOK(Ljava/util/List;J)V

    goto :goto_2

    .line 82
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-interface {v8, v6, v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;->onDeferredInstallOK(Ljava/util/List;J)V

    goto :goto_2

    .line 86
    :cond_4
    invoke-virtual {v1, v7}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;->onInstallFailed(Ljava/util/List;)V

    if-eqz v8, :cond_6

    if-eqz v4, :cond_5

    .line 89
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallError;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-interface {v8, v6, v0, v4, v5}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;->onStartInstallFailed(Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallError;J)V

    goto :goto_2

    .line 91
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-interface {v8, v6, v7, v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallReporter;->onDeferredInstallFailed(Ljava/util/List;Ljava/util/List;J)V

    :cond_6
    :goto_2
    return-void
.end method
