.class final synthetic Lcom/android/systemui/broadcast/UserBroadcastDispatcher$createActionReceiver$3;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/PendingRemovalStore;)V
    .locals 7

    .line 1
    const/4 v1, 0x2

    .line 2
    const-class v3, Lcom/android/systemui/broadcast/PendingRemovalStore;

    .line 3
    const-string v4, "isPendingRemoval"

    .line 5
    const-string v5, "isPendingRemoval(Landroid/content/BroadcastReceiver;I)Z"

    .line 7
    const/4 v6, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move-object v2, p1

    .line 11
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/content/BroadcastReceiver;

    .line 2
    check-cast p2, Ljava/lang/Number;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    move-result p2

    .line 9
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 10
    check-cast p0, Lcom/android/systemui/broadcast/PendingRemovalStore;

    .line 12
    iget-object v0, p0, Lcom/android/systemui/broadcast/PendingRemovalStore;->pendingRemoval:Landroid/util/SparseSetArray;

    .line 14
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/broadcast/PendingRemovalStore;->pendingRemoval:Landroid/util/SparseSetArray;

    .line 17
    invoke-virtual {v1, p2, p1}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    .line 19
    move-result p2

    .line 22
    if-nez p2, :cond_1

    .line 23
    iget-object p0, p0, Lcom/android/systemui/broadcast/PendingRemovalStore;->pendingRemoval:Landroid/util/SparseSetArray;

    .line 25
    const/4 p2, -0x1

    .line 27
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    .line 28
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 37
    :goto_1
    monitor-exit v0

    .line 38
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v0

    .line 45
    throw p0
    .line 46
.end method
