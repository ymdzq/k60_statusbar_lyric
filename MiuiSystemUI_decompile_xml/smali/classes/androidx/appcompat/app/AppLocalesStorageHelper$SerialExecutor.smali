.class public final Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public mActive:Ljava/lang/Runnable;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mLock:Ljava/lang/Object;

.field public final mTasks:Ljava/util/Queue;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppLocalesStorageHelper$ThreadPerTaskExecutor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->mLock:Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/util/ArrayDeque;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 14
    iput-object v0, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->mTasks:Ljava/util/Queue;

    .line 17
    iput-object p1, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->mTasks:Ljava/util/Queue;

    .line 5
    new-instance v2, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor$$ExternalSyntheticLambda0;

    .line 7
    invoke-direct {v2, p0, p1}, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;Ljava/lang/Runnable;)V

    .line 9
    check-cast v1, Ljava/util/ArrayDeque;

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->mActive:Ljava/lang/Runnable;

    .line 17
    if-nez p1, :cond_0

    .line 19
    invoke-virtual {p0}, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->scheduleNext()V

    .line 21
    :cond_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
    .line 28
.end method

.method public final scheduleNext()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->mTasks:Ljava/util/Queue;

    .line 5
    check-cast v1, Ljava/util/ArrayDeque;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Runnable;

    .line 13
    iput-object v1, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->mActive:Ljava/lang/Runnable;

    .line 15
    if-eqz v1, :cond_0

    .line 17
    iget-object p0, p0, Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 19
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 21
    :cond_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
    .line 28
.end method
