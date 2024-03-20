.class public final Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mCancel:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

.field public final mCommand:Ljava/lang/Runnable;

.field public final mDelay:J

.field public final mLock:Ljava/lang/Object;

.field public final mUnit:Ljava/util/concurrent/TimeUnit;

.field public final synthetic this$0:Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$onDestroy$1;Ljava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->this$0:Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Ljava/lang/Object;

    .line 7
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mLock:Ljava/lang/Object;

    .line 12
    iput-object p2, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mCommand:Ljava/lang/Runnable;

    .line 14
    const-wide/16 p1, 0x64

    .line 16
    iput-wide p1, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mDelay:J

    .line 18
    iput-object p3, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mUnit:Ljava/util/concurrent/TimeUnit;

    .line 20
    return-void
    .line 22
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mCommand:Ljava/lang/Runnable;

    .line 2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mCancel:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->this$0:Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    .line 14
    iget-object v1, v1, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 16
    iget-wide v2, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mDelay:J

    .line 18
    iget-object v4, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mUnit:Ljava/util/concurrent/TimeUnit;

    .line 20
    check-cast v1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 22
    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 24
    move-result-object v1

    .line 27
    iput-object v1, p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mCancel:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 28
    :cond_0
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
    .line 34
.end method
