.class public interface abstract Lcom/android/systemui/util/concurrency/DelayableExecutor;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/concurrent/Executor;


# virtual methods
.method public executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;
    .locals 1

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    check-cast p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 4
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method
