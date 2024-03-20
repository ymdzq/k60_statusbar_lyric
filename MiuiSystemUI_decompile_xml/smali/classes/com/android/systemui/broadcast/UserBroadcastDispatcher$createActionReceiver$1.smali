.class final Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $action:Ljava/lang/String;

.field final synthetic $flags:I

.field final synthetic $permission:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/systemui/broadcast/UserBroadcastDispatcher;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;->$action:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;->$permission:Ljava/lang/String;

    .line 6
    iput p4, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;->$flags:I

    .line 8
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 11
    return-void
    .line 14
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v1, p1

    .line 2
    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 3
    check-cast p2, Landroid/content/IntentFilter;

    .line 5
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    .line 7
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;->$action:Ljava/lang/String;

    .line 13
    iget-object v0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    .line 15
    iget v0, v0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->userId:I

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo v3, "registerReceiver act="

    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string p1, " user="

    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 41
    const-wide/16 v2, 0x1000

    .line 42
    invoke-static {v2, v3, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    .line 47
    iget-object v0, p1, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->context:Landroid/content/Context;

    .line 49
    iget p1, p1, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->userId:I

    .line 51
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 53
    move-result-object v2

    .line 56
    iget-object v4, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;->$permission:Ljava/lang/String;

    .line 57
    iget-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    .line 59
    iget-object v5, p1, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->workerHandler:Landroid/os/Handler;

    .line 61
    iget v6, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;->$flags:I

    .line 63
    move-object v3, p2

    .line 65
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 66
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 69
    iget-object p1, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;->this$0:Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    .line 72
    iget-object v0, p1, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    .line 74
    iget p1, p1, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->userId:I

    .line 76
    iget p0, p0, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$1;->$flags:I

    .line 78
    invoke-virtual {v0, p1, p0, p2}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->logContextReceiverRegistered(IILandroid/content/IntentFilter;)V

    .line 80
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 83
    return-object p0
    .line 85
.end method
