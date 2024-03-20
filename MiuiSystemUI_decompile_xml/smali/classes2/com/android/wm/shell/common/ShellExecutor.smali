.class public interface abstract Lcom/android/wm/shell/common/ShellExecutor;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/concurrent/Executor;


# virtual methods
.method public executeBlocking(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 4
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 7
    new-instance v2, Lcom/android/wm/shell/common/ShellExecutor$$ExternalSyntheticLambda0;

    .line 10
    invoke-direct {v2, p1, v1}, Lcom/android/wm/shell/common/ShellExecutor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V

    .line 12
    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 15
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 17
    const/4 p0, 0x2

    .line 20
    int-to-long p0, p0

    .line 21
    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 22
    return-void
    .line 25
.end method

.method public executeBlockingForResult(Ljava/util/function/Supplier;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 3
    move-result-object p2

    .line 6
    check-cast p2, [Ljava/lang/Object;

    .line 7
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 9
    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 11
    new-instance v0, Lcom/android/wm/shell/common/ShellExecutor$$ExternalSyntheticLambda1;

    .line 14
    invoke-direct {v0, p2, p1, v1}, Lcom/android/wm/shell/common/ShellExecutor$$ExternalSyntheticLambda1;-><init>([Ljava/lang/Object;Ljava/util/function/Supplier;Ljava/util/concurrent/CountDownLatch;)V

    .line 16
    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 21
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 24
    const/4 p0, 0x0

    .line 27
    aget-object p0, p2, p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return-object p0

    .line 30
    :catch_0
    const/4 p0, 0x0

    .line 31
    return-object p0
    .line 32
.end method
