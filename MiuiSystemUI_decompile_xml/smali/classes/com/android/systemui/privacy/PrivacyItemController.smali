.class public final Lcom/android/systemui/privacy/PrivacyItemController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final callbacks:Ljava/util/List;

.field public holdingRunnableCanceler:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

.field public final internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

.field public listening:Z

.field public final logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

.field public final notifyChanges:Lcom/android/systemui/privacy/PrivacyItemController$update$1;

.field public final optionsCallback:Lcom/android/systemui/privacy/PrivacyItemController$optionsCallback$1;

.field public final privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

.field public final privacyItemMonitorCallback:Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;

.field public final privacyItemMonitors:Ljava/util/Set;

.field public privacyList:Ljava/util/List;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final updateListAndNotifyChanges:Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/privacy/PrivacyItemController$Companion;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/privacy/PrivacyItemController$Companion;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method

.method public constructor <init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/privacy/PrivacyConfig;Ljava/util/Set;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyItemMonitors:Ljava/util/Set;

    .line 9
    iput-object p5, p0, Lcom/android/systemui/privacy/PrivacyItemController;->logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    .line 11
    iput-object p6, p0, Lcom/android/systemui/privacy/PrivacyItemController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 13
    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 15
    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    .line 17
    new-instance p2, Ljava/util/ArrayList;

    .line 19
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    .line 24
    new-instance p2, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    .line 26
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    .line 28
    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    .line 31
    new-instance p2, Lcom/android/systemui/privacy/PrivacyItemController$update$1;

    .line 33
    const/4 p4, 0x2

    .line 35
    invoke-direct {p2, p0, p4}, Lcom/android/systemui/privacy/PrivacyItemController$update$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;I)V

    .line 36
    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->notifyChanges:Lcom/android/systemui/privacy/PrivacyItemController$update$1;

    .line 39
    new-instance p2, Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;

    .line 41
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    .line 43
    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->updateListAndNotifyChanges:Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;

    .line 46
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$optionsCallback$1;

    .line 48
    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController$optionsCallback$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;)V

    .line 50
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->optionsCallback:Lcom/android/systemui/privacy/PrivacyItemController$optionsCallback$1;

    .line 53
    new-instance p2, Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;

    .line 55
    invoke-direct {p2, p0}, Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;)V

    .line 57
    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyItemMonitorCallback:Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;

    .line 60
    sget-object p2, Lcom/android/systemui/dump/DumpPriority;->CRITICAL:Lcom/android/systemui/dump/DumpPriority;

    .line 62
    const-string p4, "PrivacyItemController"

    .line 64
    invoke-virtual {p7, p4, p0, p2}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;Lcom/android/systemui/dump/DumpPriority;)V

    .line 66
    invoke-virtual {p3, p1}, Lcom/android/systemui/privacy/PrivacyConfig;->addCallback(Lcom/android/systemui/privacy/PrivacyConfig$Callback;)V

    .line 69
    return-void
    .line 72
.end method

.method public static synthetic getPrivacyList$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    .line 7
    check-cast p1, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    move-result p1

    .line 17
    const/4 v1, 0x1

    .line 18
    xor-int/2addr p1, v1

    .line 19
    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyItemController;->internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    .line 20
    if-eqz p1, :cond_1

    .line 22
    iget-boolean p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    .line 24
    if-nez p1, :cond_1

    .line 26
    iget-object p0, v2, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->listeningCanceller:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 28
    if-eqz p0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 32
    :cond_0
    iget-object p0, v2, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->delegate:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 35
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$update$1;

    .line 37
    iget-object v0, v2, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 39
    invoke-direct {p1, v0, v1}, Lcom/android/systemui/privacy/PrivacyItemController$update$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;I)V

    .line 41
    const-wide/16 v0, 0x0

    .line 44
    invoke-interface {p0, p1, v0, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 46
    move-result-object p0

    .line 49
    iput-object p0, v2, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->listeningCanceller:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 50
    goto :goto_0

    .line 52
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    .line 53
    if-eqz p1, :cond_2

    .line 55
    new-instance p1, Lcom/android/systemui/privacy/PrivacyItemController$NotifyChangesToCallback;

    .line 57
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 62
    check-cast v0, Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    .line 63
    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    .line 66
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 68
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    .line 72
    invoke-direct {p1, v0, v1}, Lcom/android/systemui/privacy/PrivacyItemController$NotifyChangesToCallback;-><init>(Lcom/android/systemui/privacy/PrivacyItemController$Callback;Ljava/util/List;)V

    .line 73
    invoke-virtual {v2, p1}, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->execute(Ljava/lang/Runnable;)V

    .line 76
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    monitor-exit p0

    .line 81
    throw p1

    .line 82
    :cond_2
    :goto_0
    return-void
    .line 83
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "Listening: "

    .line 2
    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    .line 4
    move-result-object p1

    .line 7
    const-string v1, "PrivacyItemController state:"

    .line 8
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 13
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 30
    const-string v0, "Privacy Items:"

    .line 33
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 38
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 41
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    .line 42
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 44
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 47
    :try_start_3
    monitor-exit p0

    .line 48
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object v0

    .line 52
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 62
    check-cast v1, Lcom/android/systemui/privacy/PrivacyItem;

    .line 63
    invoke-virtual {v1}, Lcom/android/systemui/privacy/PrivacyItem;->toString()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 68
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 69
    goto :goto_0

    .line 72
    :cond_0
    :try_start_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 73
    const-string v0, "Callbacks:"

    .line 76
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 81
    :try_start_5
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    .line 84
    check-cast v0, Ljava/util/ArrayList;

    .line 86
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 88
    move-result-object v0

    .line 91
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    move-result v1

    .line 95
    if-eqz v1, :cond_2

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    move-result-object v1

    .line 101
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 102
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 104
    move-result-object v1

    .line 107
    check-cast v1, Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    .line 108
    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 115
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 116
    goto :goto_1

    .line 119
    :cond_2
    :try_start_6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 120
    const-string v0, "PrivacyItemMonitors:"

    .line 123
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 128
    :try_start_7
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->privacyItemMonitors:Ljava/util/Set;

    .line 131
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 133
    move-result-object p0

    .line 136
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    move-result v0

    .line 140
    if-eqz v0, :cond_3

    .line 141
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    move-result-object v0

    .line 146
    check-cast v0, Lcom/android/systemui/privacy/PrivacyItemMonitor;

    .line 147
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 149
    goto :goto_2

    .line 152
    :cond_3
    :try_start_8
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 153
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 156
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->flush()V

    .line 159
    return-void

    .line 162
    :catchall_0
    move-exception p0

    .line 163
    :try_start_9
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 164
    throw p0

    .line 167
    :catchall_1
    move-exception p0

    .line 168
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 169
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 172
    :catchall_2
    move-exception p0

    .line 173
    goto :goto_3

    .line 174
    :catchall_3
    move-exception p2

    .line 175
    :try_start_a
    monitor-exit p0

    .line 176
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 177
    :goto_3
    :try_start_b
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 178
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 181
    :catchall_4
    move-exception p0

    .line 182
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 183
    throw p0
    .line 186
.end method

.method public final removeCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController;->callbacks:Ljava/util/List;

    .line 7
    new-instance v1, Lcom/android/systemui/privacy/PrivacyItemController$removeCallback$1;

    .line 9
    invoke-direct {v1, v0}, Lcom/android/systemui/privacy/PrivacyItemController$removeCallback$1;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 11
    check-cast p1, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController;->internalUiExecutor:Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;

    .line 25
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->listeningCanceller:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 27
    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->delegate:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 34
    new-instance v0, Lcom/android/systemui/privacy/PrivacyItemController$update$1;

    .line 36
    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 38
    const/4 v2, 0x1

    .line 40
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/privacy/PrivacyItemController$update$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController;I)V

    .line 41
    const-wide/16 v1, 0x0

    .line 44
    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 46
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$MyExecutor;->listeningCanceller:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 50
    :cond_1
    return-void
    .line 52
.end method
