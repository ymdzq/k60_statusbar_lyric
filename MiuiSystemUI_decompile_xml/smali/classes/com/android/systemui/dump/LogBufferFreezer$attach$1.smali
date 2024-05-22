.class public final Lcom/android/systemui/dump/LogBufferFreezer$attach$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dump/LogBufferFreezer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/LogBufferFreezer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/dump/LogBufferFreezer$attach$1;->this$0:Lcom/android/systemui/dump/LogBufferFreezer;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dump/LogBufferFreezer$attach$1;->this$0:Lcom/android/systemui/dump/LogBufferFreezer;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/dump/LogBufferFreezer;->pendingToken:Ljava/lang/Runnable;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 8
    :cond_0
    const-string p1, "LogBufferFreezer"

    .line 11
    const-string p2, "Freezing log buffers"

    .line 13
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object p1, p0, Lcom/android/systemui/dump/LogBufferFreezer;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 18
    monitor-enter p1

    .line 20
    :try_start_0
    iget-object p2, p1, Lcom/android/systemui/dump/DumpManager;->buffers:Ljava/util/Map;

    .line 21
    check-cast p2, Ljava/util/TreeMap;

    .line 23
    invoke-virtual {p2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 25
    move-result-object p2

    .line 28
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p2

    .line 32
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/systemui/dump/RegisteredDumpable;

    .line 43
    iget-object v0, v0, Lcom/android/systemui/dump/RegisteredDumpable;->dumpable:Ljava/lang/Object;

    .line 45
    check-cast v0, Lcom/android/systemui/log/LogBuffer;

    .line 47
    invoke-virtual {v0}, Lcom/android/systemui/log/LogBuffer;->freeze()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    goto :goto_0

    .line 52
    :cond_1
    monitor-exit p1

    .line 53
    iget-object p1, p0, Lcom/android/systemui/dump/LogBufferFreezer;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 54
    new-instance p2, Lcom/android/systemui/dump/LogBufferFreezer$onBugreportStarted$1;

    .line 56
    invoke-direct {p2, p0}, Lcom/android/systemui/dump/LogBufferFreezer$onBugreportStarted$1;-><init>(Lcom/android/systemui/dump/LogBufferFreezer;)V

    .line 58
    iget-wide v0, p0, Lcom/android/systemui/dump/LogBufferFreezer;->freezeDuration:J

    .line 61
    invoke-interface {p1, p2, v0, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 63
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/android/systemui/dump/LogBufferFreezer;->pendingToken:Ljava/lang/Runnable;

    .line 67
    return-void

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    monitor-exit p1

    .line 71
    throw p0
    .line 72
.end method
