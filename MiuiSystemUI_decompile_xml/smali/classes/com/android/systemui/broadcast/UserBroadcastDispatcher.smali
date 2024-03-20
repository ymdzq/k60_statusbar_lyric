.class public final Lcom/android/systemui/broadcast/UserBroadcastDispatcher;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final actionsToActionsReceivers:Landroid/util/ArrayMap;

.field public final context:Landroid/content/Context;

.field public final logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

.field public final receiverToActions:Landroid/util/ArrayMap;

.field public final removalPendingStore:Lcom/android/systemui/broadcast/PendingRemovalStore;

.field public final userId:I

.field public final workerExecutor:Ljava/util/concurrent/Executor;

.field public final workerHandler:Landroid/os/Handler;

.field public final workerLooper:Landroid/os/Looper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Looper;Ljava/util/concurrent/Executor;Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;Lcom/android/systemui/broadcast/PendingRemovalStore;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->context:Landroid/content/Context;

    .line 5
    iput p2, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->userId:I

    .line 7
    iput-object p3, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->workerLooper:Landroid/os/Looper;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->workerExecutor:Ljava/util/concurrent/Executor;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->removalPendingStore:Lcom/android/systemui/broadcast/PendingRemovalStore;

    .line 15
    new-instance p1, Landroid/os/Handler;

    .line 17
    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->workerHandler:Landroid/os/Handler;

    .line 22
    new-instance p1, Landroid/util/ArrayMap;

    .line 24
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->actionsToActionsReceivers:Landroid/util/ArrayMap;

    .line 29
    new-instance p1, Landroid/util/ArrayMap;

    .line 31
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->receiverToActions:Landroid/util/ArrayMap;

    .line 36
    return-void
    .line 38
.end method

.method public static synthetic getActionsToActionsReceivers$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public createActionReceiver$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/systemui/broadcast/ActionReceiver;
    .locals 9

    .line 1
    new-instance v8, Lcom/android/systemui/broadcast/ActionReceiver;

    .line 2
    iget v2, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->userId:I

    .line 4
    new-instance v3, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;

    .line 6
    invoke-direct {v3, p1, p0, p2, p3}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;-><init>(Ljava/lang/String;Lcom/android/systemui/broadcast/UserBroadcastDispatcher;Ljava/lang/String;I)V

    .line 8
    new-instance v4, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;

    .line 11
    invoke-direct {v4, p1, p0}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;-><init>(Ljava/lang/String;Lcom/android/systemui/broadcast/UserBroadcastDispatcher;)V

    .line 13
    iget-object v5, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->workerExecutor:Ljava/util/concurrent/Executor;

    .line 16
    iget-object v6, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    .line 18
    new-instance v7, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$3;

    .line 20
    iget-object p0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->removalPendingStore:Lcom/android/systemui/broadcast/PendingRemovalStore;

    .line 22
    invoke-direct {v7, p0}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$3;-><init>(Lcom/android/systemui/broadcast/PendingRemovalStore;)V

    .line 24
    move-object v0, v8

    .line 27
    move-object v1, p1

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/broadcast/ActionReceiver;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Ljava/util/concurrent/Executor;Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;Lkotlin/jvm/functions/Function2;)V

    .line 29
    return-object v8
    .line 32
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1
    instance-of v0, p1, Landroid/util/IndentingPrintWriter;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    move-object v1, p1

    .line 6
    check-cast v1, Landroid/util/IndentingPrintWriter;

    .line 7
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->actionsToActionsReceivers:Landroid/util/ArrayMap;

    .line 12
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 25
    if-eqz v1, :cond_7

    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/Map$Entry;

    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 37
    check-cast v2, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$ReceiverProperties;

    .line 38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 43
    check-cast v1, Lcom/android/systemui/broadcast/ActionReceiver;

    .line 44
    iget-object v3, v2, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$ReceiverProperties;->action:Ljava/lang/String;

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    const-string v5, ""

    .line 50
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    iget v5, v2, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$ReceiverProperties;->flags:I

    .line 55
    and-int/lit8 v6, v5, 0x1

    .line 57
    if-eqz v6, :cond_1

    .line 59
    const-string v6, "instant_apps,"

    .line 61
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_1
    and-int/lit8 v6, v5, 0x4

    .line 66
    if-eqz v6, :cond_2

    .line 68
    const-string v6, "not_exported,"

    .line 70
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_2
    and-int/lit8 v6, v5, 0x2

    .line 75
    if-eqz v6, :cond_3

    .line 77
    const-string v6, "exported"

    .line 79
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_3
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 84
    move-result v6

    .line 87
    if-nez v6, :cond_4

    .line 88
    const/4 v6, 0x1

    .line 90
    goto :goto_1

    .line 91
    :cond_4
    const/4 v6, 0x0

    .line 92
    :goto_1
    if-eqz v6, :cond_5

    .line 93
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v4

    .line 101
    const-string v5, "):"

    .line 102
    iget-object v2, v2, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$ReceiverProperties;->permission:Ljava/lang/String;

    .line 104
    if-nez v2, :cond_6

    .line 106
    goto :goto_2

    .line 108
    :cond_6
    const-string v6, ":"

    .line 109
    invoke-static {v6, v2, v5}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    move-result-object v5

    .line 114
    :goto_2
    const-string v2, "("

    .line 115
    const-string v6, ": "

    .line 117
    invoke-static {v2, v3, v6, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    move-result-object v2

    .line 122
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/broadcast/ActionReceiver;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 126
    goto :goto_0

    .line 129
    :cond_7
    if-eqz v0, :cond_8

    .line 130
    check-cast p1, Landroid/util/IndentingPrintWriter;

    .line 132
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 134
    :cond_8
    return-void
    .line 137
.end method

.method public final isReceiverReferenceHeld$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Landroid/content/BroadcastReceiver;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->actionsToActionsReceivers:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 4
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    :cond_0
    move v0, v3

    .line 16
    goto :goto_2

    .line 17
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 21
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 31
    check-cast v1, Lcom/android/systemui/broadcast/ActionReceiver;

    .line 32
    iget-object v1, v1, Lcom/android/systemui/broadcast/ActionReceiver;->receiverDatas:Landroid/util/ArraySet;

    .line 34
    instance-of v4, v1, Ljava/util/Collection;

    .line 36
    if-eqz v4, :cond_3

    .line 38
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 40
    move-result v4

    .line 43
    if-eqz v4, :cond_3

    .line 44
    goto :goto_0

    .line 46
    :cond_3
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v1

    .line 50
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v4

    .line 54
    if-eqz v4, :cond_5

    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v4

    .line 60
    check-cast v4, Lcom/android/systemui/broadcast/ReceiverData;

    .line 61
    iget-object v4, v4, Lcom/android/systemui/broadcast/ReceiverData;->receiver:Landroid/content/BroadcastReceiver;

    .line 63
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    move-result v4

    .line 68
    if-eqz v4, :cond_4

    .line 69
    move v1, v2

    .line 71
    goto :goto_1

    .line 72
    :cond_5
    :goto_0
    move v1, v3

    .line 73
    :goto_1
    if-eqz v1, :cond_2

    .line 74
    move v0, v2

    .line 76
    :goto_2
    if-nez v0, :cond_7

    .line 77
    iget-object p0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->receiverToActions:Landroid/util/ArrayMap;

    .line 79
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 81
    move-result p0

    .line 84
    if-eqz p0, :cond_6

    .line 85
    goto :goto_3

    .line 87
    :cond_6
    move v2, v3

    .line 88
    :cond_7
    :goto_3
    return v2
    .line 89
.end method

.method public final unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->workerLooper:Landroid/os/Looper;

    .line 2
    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    .line 4
    move-result v0

    .line 7
    const-string v1, "This method should only be called from the worker thread (which is expected to be the BroadcastRunning thread)"

    .line 8
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 10
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 15
    iget-object v1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->receiverToActions:Landroid/util/ArrayMap;

    .line 18
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Iterable;

    .line 24
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 29
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/String;

    .line 40
    iget-object v3, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->actionsToActionsReceivers:Landroid/util/ArrayMap;

    .line 42
    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 44
    move-result-object v3

    .line 47
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object v3

    .line 51
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v4

    .line 55
    if-eqz v4, :cond_0

    .line 56
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v4

    .line 61
    check-cast v4, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 64
    move-result-object v5

    .line 67
    check-cast v5, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$ReceiverProperties;

    .line 68
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 70
    move-result-object v4

    .line 73
    check-cast v4, Lcom/android/systemui/broadcast/ActionReceiver;

    .line 74
    iget-object v5, v5, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$ReceiverProperties;->action:Ljava/lang/String;

    .line 76
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    move-result v5

    .line 81
    if-eqz v5, :cond_1

    .line 82
    iget-object v5, v4, Lcom/android/systemui/broadcast/ActionReceiver;->receiverDatas:Landroid/util/ArraySet;

    .line 84
    new-instance v6, Lcom/android/systemui/broadcast/ActionReceiver$removeReceiver$1;

    .line 86
    invoke-direct {v6, p1}, Lcom/android/systemui/broadcast/ActionReceiver$removeReceiver$1;-><init>(Landroid/content/BroadcastReceiver;)V

    .line 88
    const/4 v7, 0x1

    .line 91
    invoke-static {v5, v6, v7}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->filterInPlace$CollectionsKt__MutableCollectionsKt(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;Z)Z

    .line 92
    move-result v5

    .line 95
    if-eqz v5, :cond_1

    .line 96
    iget-object v5, v4, Lcom/android/systemui/broadcast/ActionReceiver;->receiverDatas:Landroid/util/ArraySet;

    .line 98
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    .line 100
    move-result v5

    .line 103
    if-eqz v5, :cond_1

    .line 104
    iget-boolean v5, v4, Lcom/android/systemui/broadcast/ActionReceiver;->registered:Z

    .line 106
    if-eqz v5, :cond_1

    .line 108
    iget-object v5, v4, Lcom/android/systemui/broadcast/ActionReceiver;->unregisterAction:Lkotlin/jvm/functions/Function1;

    .line 110
    invoke-interface {v5, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const/4 v5, 0x0

    .line 115
    iput-boolean v5, v4, Lcom/android/systemui/broadcast/ActionReceiver;->registered:Z

    .line 116
    iget-object v4, v4, Lcom/android/systemui/broadcast/ActionReceiver;->activeCategories:Landroid/util/ArraySet;

    .line 118
    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 120
    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    .line 127
    iget p0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->userId:I

    .line 129
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->logReceiverUnregistered(ILandroid/content/BroadcastReceiver;)V

    .line 131
    return-void
    .line 134
.end method
