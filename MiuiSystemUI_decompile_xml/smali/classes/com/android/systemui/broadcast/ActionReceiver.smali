.class public final Lcom/android/systemui/broadcast/ActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final index:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final action:Ljava/lang/String;

.field public final activeCategories:Landroid/util/ArraySet;

.field public final logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

.field public final receiverDatas:Landroid/util/ArraySet;

.field public final registerAction:Lkotlin/jvm/functions/Function2;

.field public registered:Z

.field public final testPendingRemovalAction:Lkotlin/jvm/functions/Function2;

.field public final unregisterAction:Lkotlin/jvm/functions/Function1;

.field public final userId:I

.field public final workerExecutor:Ljava/util/concurrent/Executor;


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
    sput-object v0, Lcom/android/systemui/broadcast/ActionReceiver;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    return-void
    .line 10
.end method

.method public constructor <init>(Ljava/lang/String;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Ljava/util/concurrent/Executor;Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/broadcast/ActionReceiver;->action:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/android/systemui/broadcast/ActionReceiver;->userId:I

    .line 7
    iput-object p3, p0, Lcom/android/systemui/broadcast/ActionReceiver;->registerAction:Lkotlin/jvm/functions/Function2;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/broadcast/ActionReceiver;->unregisterAction:Lkotlin/jvm/functions/Function1;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/broadcast/ActionReceiver;->workerExecutor:Ljava/util/concurrent/Executor;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/broadcast/ActionReceiver;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/broadcast/ActionReceiver;->testPendingRemovalAction:Lkotlin/jvm/functions/Function2;

    .line 17
    new-instance p1, Landroid/util/ArraySet;

    .line 19
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/broadcast/ActionReceiver;->receiverDatas:Landroid/util/ArraySet;

    .line 24
    new-instance p1, Landroid/util/ArraySet;

    .line 26
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/broadcast/ActionReceiver;->activeCategories:Landroid/util/ArraySet;

    .line 31
    return-void
    .line 33
.end method


# virtual methods
.method public final createFilter()Landroid/content/IntentFilter;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/broadcast/ActionReceiver;->action:Ljava/lang/String;

    .line 4
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/systemui/broadcast/ActionReceiver;->action:Ljava/lang/String;

    .line 9
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    const/16 v1, 0x3e8

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/broadcast/ActionReceiver;->activeCategories:Landroid/util/ArraySet;

    .line 24
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p0

    .line 29
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 42
    goto :goto_0

    .line 45
    :cond_1
    return-object v0
    .line 46
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1
    instance-of p2, p1, Landroid/util/IndentingPrintWriter;

    .line 2
    if-eqz p2, :cond_0

    .line 4
    move-object v0, p1

    .line 6
    check-cast v0, Landroid/util/IndentingPrintWriter;

    .line 7
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/broadcast/ActionReceiver;->registered:Z

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    const-string v2, "Registered: "

    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    const-string v0, "Receivers:"

    .line 31
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    if-eqz p2, :cond_1

    .line 36
    move-object v0, p1

    .line 38
    check-cast v0, Landroid/util/IndentingPrintWriter;

    .line 39
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/broadcast/ActionReceiver;->receiverDatas:Landroid/util/ArraySet;

    .line 44
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v0

    .line 49
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 59
    check-cast v1, Lcom/android/systemui/broadcast/ReceiverData;

    .line 60
    iget-object v1, v1, Lcom/android/systemui/broadcast/ReceiverData;->receiver:Landroid/content/BroadcastReceiver;

    .line 62
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 64
    goto :goto_0

    .line 67
    :cond_2
    if-eqz p2, :cond_3

    .line 68
    move-object v0, p1

    .line 70
    check-cast v0, Landroid/util/IndentingPrintWriter;

    .line 71
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 73
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/broadcast/ActionReceiver;->activeCategories:Landroid/util/ArraySet;

    .line 76
    const-string v2, ", "

    .line 78
    const/4 v3, 0x0

    .line 80
    const/4 v4, 0x0

    .line 81
    const/4 v5, 0x0

    .line 82
    const/16 v6, 0x3e

    .line 83
    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 88
    const-string v0, "Categories: "

    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object p0

    .line 94
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    if-eqz p2, :cond_4

    .line 98
    check-cast p1, Landroid/util/IndentingPrintWriter;

    .line 100
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 102
    :cond_4
    return-void
    .line 105
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/broadcast/ActionReceiver;->action:Ljava/lang/String;

    .line 6
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    sget-object v0, Lcom/android/systemui/broadcast/ActionReceiver;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 16
    move-result v2

    .line 19
    iget-object v0, p0, Lcom/android/systemui/broadcast/ActionReceiver;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    .line 20
    iget v1, p0, Lcom/android/systemui/broadcast/ActionReceiver;->userId:I

    .line 22
    invoke-virtual {v0, v2, v1, p2}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->logBroadcastReceived(IILandroid/content/Intent;)V

    .line 24
    iget-object v0, p0, Lcom/android/systemui/broadcast/ActionReceiver;->workerExecutor:Ljava/util/concurrent/Executor;

    .line 27
    new-instance v7, Lcom/android/systemui/broadcast/ActionReceiver$ReceiverRunnable;

    .line 29
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    .line 31
    move-result-object v3

    .line 34
    move-object v1, v7

    .line 35
    move-object v4, p1

    .line 36
    move-object v5, p2

    .line 37
    move-object v6, p0

    .line 38
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/broadcast/ActionReceiver$ReceiverRunnable;-><init>(ILandroid/content/BroadcastReceiver$PendingResult;Landroid/content/Context;Landroid/content/Intent;Lcom/android/systemui/broadcast/ActionReceiver;)V

    .line 39
    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 42
    return-void

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 48
    move-result-object p2

    .line 51
    iget-object p0, p0, Lcom/android/systemui/broadcast/ActionReceiver;->action:Ljava/lang/String;

    .line 52
    const-string v0, "Received intent for "

    .line 54
    const-string v1, " in receiver for "

    .line 56
    const-string/jumbo v2, "}"

    .line 58
    invoke-static {v0, p2, v1, p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 64
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p1
    .line 68
.end method
