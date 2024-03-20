.class final Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitStartUninstallTask;
.super Ljava/lang/Object;
.source "SplitStartUninstallTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitStartUninstallTask"


# instance fields
.field private final uninstallSplits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitStartUninstallTask;->uninstallSplits:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitStartUninstallTask;->uninstallSplits:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/remote/SplitStartUninstallTask;->uninstallSplits:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "SplitStartUninstallTask"

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;

    .line 54
    invoke-virtual {v3}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "split %s need to be uninstalled, try to delete its files"

    invoke-static {v4, v6, v5}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->require()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitPathManager;->getSplitRootDir(Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;)Ljava/io/File;

    move-result-object v4

    .line 56
    invoke-static {v4}, Lcom/iqiyi/android/qigsaw/core/common/FileUtil;->deleteDir(Ljava/io/File;)Z

    .line 57
    invoke-virtual {v3}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;->getSplitName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitUninstallReporterManager;->getUninstallReporter()Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-interface {p0, v2, v5, v6}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitUninstallReporter;->onSplitUninstallOK(Ljava/util/List;J)V

    .line 63
    :cond_1
    new-instance p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;

    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;-><init>()V

    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitPendingUninstallManager;->deletePendingUninstallSplitsRecord()Z

    move-result p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    if-eqz p0, :cond_2

    const-string p0, "Succeed"

    goto :goto_1

    :cond_2
    const-string p0, "Failed"

    :goto_1
    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "%s to delete record file of pending uninstall splits!"

    .line 64
    invoke-static {v4, p0, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
