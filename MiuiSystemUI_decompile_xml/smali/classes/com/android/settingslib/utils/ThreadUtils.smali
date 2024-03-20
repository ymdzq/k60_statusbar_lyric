.class public abstract Lcom/android/settingslib/utils/ThreadUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static volatile sMainThread:Ljava/lang/Thread;

.field public static volatile sMainThreadHandler:Landroid/os/Handler;

.field public static volatile sThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static ensureMainThread()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/settingslib/utils/ThreadUtils;->sMainThread:Ljava/lang/Thread;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 10
    move-result-object v0

    .line 13
    sput-object v0, Lcom/android/settingslib/utils/ThreadUtils;->sMainThread:Ljava/lang/Thread;

    .line 14
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 16
    move-result-object v0

    .line 19
    sget-object v1, Lcom/android/settingslib/utils/ThreadUtils;->sMainThread:Ljava/lang/Thread;

    .line 20
    if-ne v0, v1, :cond_1

    .line 22
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    if-eqz v0, :cond_2

    .line 27
    return-void

    .line 29
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 30
    const-string v1, "Must be called on the UI thread"

    .line 32
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 34
    throw v0
    .line 37
.end method

.method public static postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2

    .line 1
    const-class v0, Lcom/android/settingslib/utils/ThreadUtils;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/settingslib/utils/ThreadUtils;->sThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 5
    if-nez v1, :cond_0

    .line 7
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    .line 13
    move-result v1

    .line 16
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 17
    move-result-object v1

    .line 20
    sput-object v1, Lcom/android/settingslib/utils/ThreadUtils;->sThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 21
    :cond_0
    sget-object v1, Lcom/android/settingslib/utils/ThreadUtils;->sThreadExecutor:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit v0

    .line 25
    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 26
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0

    .line 32
    throw p0
    .line 33
.end method

.method public static postOnMainThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/settingslib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    sput-object v0, Lcom/android/settingslib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    .line 15
    :cond_0
    sget-object v0, Lcom/android/settingslib/utils/ThreadUtils;->sMainThreadHandler:Landroid/os/Handler;

    .line 17
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    return-void
    .line 22
.end method
