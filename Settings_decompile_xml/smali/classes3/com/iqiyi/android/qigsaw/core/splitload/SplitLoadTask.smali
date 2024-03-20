.class abstract Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;
.super Ljava/lang/Object;
.source "SplitLoadTask.java"

# interfaces
.implements Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderWrapper;
.implements Ljava/lang/Runnable;
.implements Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler$OnSplitLoadFinishListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitLoadTask"


# instance fields
.field private final loadHandler:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;

.field private final loadListener:Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;

.field private splitLoader:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;


# direct methods
.method static bridge synthetic -$$Nest$fgetloadHandler(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;)Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->loadHandler:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;

    return-object p0
.end method

.method constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;Ljava/util/List;Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;-><init>(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderWrapper;Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->loadHandler:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;

    .line 56
    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->loadListener:Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;

    return-void
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->loadHandler:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;

    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method getSplitLoader()Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->splitLoader:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;

    if-nez v0, :cond_0

    .line 65
    invoke-interface {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoaderWrapper;->createSplitLoader()Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->splitLoader:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;

    .line 67
    :cond_0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->splitLoader:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;

    return-object p0
.end method

.method public loadResources(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->getSplitLoader()Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoader;->loadResources(Ljava/lang/String;)V

    return-void
.end method

.method public onLoadFinish(Ljava/util/List;Ljava/util/List;Ljava/lang/String;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitBriefInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 105
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadReporterManager;->getLoadReporter()Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;

    move-result-object v0

    .line 106
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->loadListener:Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;

    if-eqz v1, :cond_0

    .line 108
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;

    iget v1, v1, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadError;->errorCode:I

    .line 109
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->loadListener:Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;

    invoke-interface {p0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;->onFailed(I)V

    :cond_0
    if-eqz v0, :cond_3

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p4

    .line 112
    invoke-interface/range {v0 .. v5}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;->onLoadFailed(Ljava/lang/String;Ljava/util/List;Ljava/util/List;J)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->loadListener:Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;

    if-eqz p0, :cond_2

    .line 116
    invoke-interface {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;->onCompleted()V

    :cond_2
    if-eqz v0, :cond_3

    .line 119
    invoke-interface {v0, p3, p1, p4, p5}, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitLoadReporter;->onLoadOK(Ljava/lang/String;Ljava/util/List;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final run()V
    .locals 4

    .line 77
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->loadHandler:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;

    invoke-virtual {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->loadSplitsSync(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler$OnSplitLoadFinishListener;)V

    goto :goto_1

    .line 80
    :cond_0
    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->loadHandler:Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadHandler;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask$1;

    invoke-direct {v1, p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask$1;-><init>(Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "SplitLoadTask"

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to block thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->loadListener:Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadTask;->loadListener:Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;

    const/16 v1, -0x63

    invoke-interface {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/listener/OnSplitLoadListener;->onFailed(I)V

    .line 99
    :cond_1
    :goto_0
    monitor-exit p0

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
