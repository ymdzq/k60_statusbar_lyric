.class public final Lcom/android/systemui/dump/LogBufferFreezer$onBugreportStarted$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dump/LogBufferFreezer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/LogBufferFreezer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/dump/LogBufferFreezer$onBugreportStarted$1;->this$0:Lcom/android/systemui/dump/LogBufferFreezer;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    const-string v0, "LogBufferFreezer"

    .line 2
    const-string v1, "Unfreezing log buffers"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/android/systemui/dump/LogBufferFreezer$onBugreportStarted$1;->this$0:Lcom/android/systemui/dump/LogBufferFreezer;

    .line 9
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/android/systemui/dump/LogBufferFreezer;->pendingToken:Ljava/lang/Runnable;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/dump/LogBufferFreezer;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 14
    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/dump/DumpManager;->buffers:Ljava/util/Map;

    .line 17
    check-cast v0, Ljava/util/TreeMap;

    .line 19
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 21
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 38
    check-cast v1, Lcom/android/systemui/dump/RegisteredDumpable;

    .line 39
    iget-object v1, v1, Lcom/android/systemui/dump/RegisteredDumpable;->dumpable:Ljava/lang/Object;

    .line 41
    check-cast v1, Lcom/android/systemui/log/LogBuffer;

    .line 43
    invoke-virtual {v1}, Lcom/android/systemui/log/LogBuffer;->unfreeze()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    goto :goto_0

    .line 48
    :cond_0
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    monitor-exit p0

    .line 52
    throw v0
    .line 53
.end method
