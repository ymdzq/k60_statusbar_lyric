.class public final Lcom/android/systemui/broadcast/ActionReceiver$ReceiverRunnable;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final context:Landroid/content/Context;

.field public final id:I

.field public final intent:Landroid/content/Intent;

.field public final mActionReceiver:Ljava/lang/ref/WeakReference;

.field public final pendingResult:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public constructor <init>(ILandroid/content/BroadcastReceiver$PendingResult;Landroid/content/Context;Landroid/content/Intent;Lcom/android/systemui/broadcast/ActionReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/android/systemui/broadcast/ActionReceiver$ReceiverRunnable;->context:Landroid/content/Context;

    .line 5
    iput-object p4, p0, Lcom/android/systemui/broadcast/ActionReceiver$ReceiverRunnable;->intent:Landroid/content/Intent;

    .line 7
    iput p1, p0, Lcom/android/systemui/broadcast/ActionReceiver$ReceiverRunnable;->id:I

    .line 9
    iput-object p2, p0, Lcom/android/systemui/broadcast/ActionReceiver$ReceiverRunnable;->pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    .line 11
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 13
    invoke-direct {p1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 15
    iput-object p1, p0, Lcom/android/systemui/broadcast/ActionReceiver$ReceiverRunnable;->mActionReceiver:Ljava/lang/ref/WeakReference;

    .line 18
    return-void
    .line 20
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/systemui/broadcast/ActionReceiver$ReceiverRunnable;->mActionReceiver:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/broadcast/ActionReceiver;

    .line 8
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/broadcast/ActionReceiver$ReceiverRunnable;->context:Landroid/content/Context;

    .line 13
    iget-object v9, p0, Lcom/android/systemui/broadcast/ActionReceiver$ReceiverRunnable;->intent:Landroid/content/Intent;

    .line 15
    iget v10, p0, Lcom/android/systemui/broadcast/ActionReceiver$ReceiverRunnable;->id:I

    .line 17
    iget-object p0, p0, Lcom/android/systemui/broadcast/ActionReceiver$ReceiverRunnable;->pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    .line 19
    iget-object v1, v0, Lcom/android/systemui/broadcast/ActionReceiver;->receiverDatas:Landroid/util/ArraySet;

    .line 21
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v11

    .line 26
    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 36
    move-object v12, v1

    .line 37
    check-cast v12, Lcom/android/systemui/broadcast/ReceiverData;

    .line 38
    iget-object v1, v12, Lcom/android/systemui/broadcast/ReceiverData;->filter:Landroid/content/IntentFilter;

    .line 40
    invoke-virtual {v9}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 42
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->matchCategories(Ljava/util/Set;)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    iget-object v1, v0, Lcom/android/systemui/broadcast/ActionReceiver;->testPendingRemovalAction:Lkotlin/jvm/functions/Function2;

    .line 52
    iget v2, v0, Lcom/android/systemui/broadcast/ActionReceiver;->userId:I

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v2

    .line 59
    iget-object v3, v12, Lcom/android/systemui/broadcast/ReceiverData;->receiver:Landroid/content/BroadcastReceiver;

    .line 60
    invoke-interface {v1, v3, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 65
    check-cast v1, Ljava/lang/Boolean;

    .line 66
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    move-result v1

    .line 71
    if-nez v1, :cond_1

    .line 72
    new-instance v13, Lcom/android/systemui/broadcast/ActionReceiver$dispatchReceiver$1$1;

    .line 74
    move-object v1, v13

    .line 76
    move-object v2, v12

    .line 77
    move-object v3, p0

    .line 78
    move-object v4, v8

    .line 79
    move-object v5, v9

    .line 80
    move-object v6, v0

    .line 81
    move v7, v10

    .line 82
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/broadcast/ActionReceiver$dispatchReceiver$1$1;-><init>(Lcom/android/systemui/broadcast/ReceiverData;Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/Context;Landroid/content/Intent;Lcom/android/systemui/broadcast/ActionReceiver;I)V

    .line 83
    iget-object v1, v12, Lcom/android/systemui/broadcast/ReceiverData;->executor:Ljava/util/concurrent/Executor;

    .line 86
    invoke-interface {v1, v13}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 88
    goto :goto_0

    .line 91
    :cond_2
    return-void
    .line 92
.end method
