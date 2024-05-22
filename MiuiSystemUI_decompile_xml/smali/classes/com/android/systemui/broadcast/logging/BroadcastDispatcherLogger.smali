.class public final Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final logBroadcastDispatched(ILjava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 4

    .line 1
    invoke-virtual {p3}, Landroid/content/BroadcastReceiver;->toString()Ljava/lang/String;

    .line 2
    move-result-object p3

    .line 5
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 6
    sget-object v1, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logBroadcastDispatched$2;->INSTANCE:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logBroadcastDispatched$2;

    .line 8
    const-string v2, "BroadcastDispatcherLog"

    .line 10
    const/4 v3, 0x0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 13
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 15
    move-result-object v0

    .line 18
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 19
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 22
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 28
    return-void
    .line 31
.end method

.method public final logBroadcastReceived(IILandroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 2
    move-result-object p3

    .line 5
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 6
    sget-object v1, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logBroadcastReceived$2;->INSTANCE:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logBroadcastReceived$2;

    .line 8
    const-string v2, "BroadcastDispatcherLog"

    .line 10
    const/4 v3, 0x0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 13
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 15
    move-result-object v0

    .line 18
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 19
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 22
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 28
    return-void
    .line 31
.end method

.method public final logClearedAfterRemoval(ILandroid/content/BroadcastReceiver;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver;->toString()Ljava/lang/String;

    .line 2
    move-result-object p2

    .line 5
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 6
    sget-object v1, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logClearedAfterRemoval$2;->INSTANCE:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logClearedAfterRemoval$2;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 10
    const-string v2, "BroadcastDispatcherLog"

    .line 12
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 15
    move-result-object v0

    .line 18
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 19
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 25
    return-void
    .line 28
.end method

.method public final logContextReceiverRegistered(IILandroid/content/IntentFilter;)V
    .locals 6

    .line 1
    invoke-virtual {p3}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/sequences/SequencesKt___SequencesJvmKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    .line 6
    move-result-object v0

    .line 9
    const-string v1, "Actions("

    .line 10
    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {p3}, Landroid/content/IntentFilter;->countCategories()I

    .line 16
    move-result v1

    .line 19
    const-string v2, ""

    .line 20
    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {p3}, Landroid/content/IntentFilter;->categoriesIterator()Ljava/util/Iterator;

    .line 24
    move-result-object p3

    .line 27
    invoke-static {p3}, Lkotlin/sequences/SequencesKt___SequencesJvmKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    .line 28
    move-result-object p3

    .line 31
    const-string v1, "Categories("

    .line 32
    invoke-static {p3, v1}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 34
    move-result-object p3

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object p3, v2

    .line 39
    :goto_0
    sget-object v1, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 40
    sget-object v3, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logContextReceiverRegistered$2;->INSTANCE:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logContextReceiverRegistered$2;

    .line 42
    iget-object p0, p0, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 44
    const-string v4, "BroadcastDispatcherLog"

    .line 46
    const/4 v5, 0x0

    .line 48
    invoke-virtual {p0, v4, v1, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 49
    move-result-object v1

    .line 52
    invoke-interface {v1, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 53
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result p1

    .line 59
    if-nez p1, :cond_1

    .line 60
    const-string p1, "\n"

    .line 62
    invoke-static {v0, p1, p3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 67
    :cond_1
    invoke-interface {v1, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 68
    invoke-static {p2}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$Companion;->flagToString(I)Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 74
    invoke-interface {v1, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 78
    return-void
    .line 81
.end method

.method public final logContextReceiverUnregistered(ILjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logContextReceiverUnregistered$2;->INSTANCE:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logContextReceiverUnregistered$2;

    .line 4
    const-string v2, "BroadcastDispatcherLog"

    .line 6
    const/4 v3, 0x0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 9
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 15
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 21
    return-void
    .line 24
.end method

.method public final logReceiverRegistered(ILandroid/content/BroadcastReceiver;I)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver;->toString()Ljava/lang/String;

    .line 2
    move-result-object p2

    .line 5
    invoke-static {p3}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$Companion;->flagToString(I)Ljava/lang/String;

    .line 6
    move-result-object p3

    .line 9
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 10
    sget-object v1, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logReceiverRegistered$2;->INSTANCE:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logReceiverRegistered$2;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 14
    const-string v2, "BroadcastDispatcherLog"

    .line 16
    const/4 v3, 0x0

    .line 18
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 19
    move-result-object v0

    .line 22
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 23
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 26
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 32
    return-void
    .line 35
.end method

.method public final logReceiverUnregistered(ILandroid/content/BroadcastReceiver;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver;->toString()Ljava/lang/String;

    .line 2
    move-result-object p2

    .line 5
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 6
    sget-object v1, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logReceiverUnregistered$2;->INSTANCE:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logReceiverUnregistered$2;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 10
    const-string v2, "BroadcastDispatcherLog"

    .line 12
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 15
    move-result-object v0

    .line 18
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 19
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 25
    return-void
    .line 28
.end method

.method public final logTagForRemoval(Landroid/content/BroadcastReceiver;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver;->toString()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 6
    sget-object v1, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logTagForRemoval$2;->INSTANCE:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger$logTagForRemoval$2;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 10
    const-string v2, "BroadcastDispatcherLog"

    .line 12
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 15
    move-result-object v0

    .line 18
    const/4 v1, -0x1

    .line 19
    invoke-interface {v0, v1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 20
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 26
    return-void
    .line 29
.end method
