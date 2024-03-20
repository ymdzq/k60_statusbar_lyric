.class final Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl$setValueAndProvideDispatcher$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $value:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl$setValueAndProvideDispatcher$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl$setValueAndProvideDispatcher$1;->$value:Ljava/lang/Object;

    .line 4
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl$setValueAndProvideDispatcher$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->syncObservers:Lcom/android/systemui/util/ListenerSet;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/util/ListenerSet;->isEmpty()Z

    .line 6
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl$setValueAndProvideDispatcher$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    .line 14
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->name:Ljava/lang/String;

    .line 16
    const-string v1, "NotifLiveData("

    .line 18
    const-string v2, ").dispatchToSyncObservers"

    .line 20
    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl$setValueAndProvideDispatcher$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    .line 26
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl$setValueAndProvideDispatcher$1;->$value:Ljava/lang/Object;

    .line 28
    const-wide/16 v3, 0x1000

    .line 30
    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 32
    move-result v5

    .line 35
    if-eqz v5, :cond_1

    .line 36
    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 38
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->syncObservers:Lcom/android/systemui/util/ListenerSet;

    .line 41
    invoke-virtual {v0}, Lcom/android/systemui/util/ListenerSet;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v0

    .line 46
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 56
    check-cast v1, Landroidx/lifecycle/Observer;

    .line 57
    invoke-interface {v1, v2}, Landroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    goto :goto_0

    .line 62
    :cond_0
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 63
    goto :goto_2

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 68
    throw p0

    .line 71
    :cond_1
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->syncObservers:Lcom/android/systemui/util/ListenerSet;

    .line 72
    invoke-virtual {v0}, Lcom/android/systemui/util/ListenerSet;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object v0

    .line 77
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v1

    .line 81
    if-eqz v1, :cond_2

    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object v1

    .line 87
    check-cast v1, Landroidx/lifecycle/Observer;

    .line 88
    invoke-interface {v1, v2}, Landroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    .line 90
    goto :goto_1

    .line 93
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl$setValueAndProvideDispatcher$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    .line 94
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->asyncObservers:Lcom/android/systemui/util/ListenerSet;

    .line 96
    invoke-virtual {v0}, Lcom/android/systemui/util/ListenerSet;->isEmpty()Z

    .line 98
    move-result v0

    .line 101
    xor-int/lit8 v0, v0, 0x1

    .line 102
    if-eqz v0, :cond_3

    .line 104
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl$setValueAndProvideDispatcher$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 108
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl$setValueAndProvideDispatcher$1$2;

    .line 110
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl$setValueAndProvideDispatcher$1$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataImpl;)V

    .line 112
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 115
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 118
    return-object p0
    .line 120
.end method
