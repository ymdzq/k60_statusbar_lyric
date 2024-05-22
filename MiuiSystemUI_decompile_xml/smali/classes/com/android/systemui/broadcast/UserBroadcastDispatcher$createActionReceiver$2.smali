.class final Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $action:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/systemui/broadcast/UserBroadcastDispatcher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;->$action:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    .line 4
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Landroid/content/BroadcastReceiver;

    .line 2
    const-string/jumbo v0, "unregisterReceiver act="

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    .line 7
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;->$action:Ljava/lang/String;

    .line 13
    iget-object v2, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    .line 15
    iget v2, v2, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->userId:I

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v0, " user="

    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 38
    const-wide/16 v1, 0x1000

    .line 39
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    .line 44
    iget-object v0, v0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->context:Landroid/content/Context;

    .line 46
    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 48
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 51
    iget-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    .line 54
    iget-object v0, p1, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    .line 56
    iget p1, p1, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->userId:I

    .line 58
    iget-object v1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;->$action:Ljava/lang/String;

    .line 60
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->logContextReceiverUnregistered(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 65
    :catch_0
    move-exception p1

    .line 66
    iget-object v0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    .line 67
    iget v0, v0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->userId:I

    .line 69
    iget-object p0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$2;->$action:Ljava/lang/String;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    const-string v2, "Trying to unregister unregistered receiver for user "

    .line 75
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v0, ", action "

    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p0

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 95
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 97
    const-string p1, "UserBroadcastDispatcher"

    .line 100
    invoke-static {p1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 105
    return-object p0
    .line 107
.end method
