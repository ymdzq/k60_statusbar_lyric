.class public final Lcom/android/systemui/broadcast/PendingRemovalStore;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

.field public final pendingRemoval:Landroid/util/SparseSetArray;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/broadcast/PendingRemovalStore;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    .line 5
    new-instance p1, Landroid/util/SparseSetArray;

    .line 7
    invoke-direct {p1}, Landroid/util/SparseSetArray;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/systemui/broadcast/PendingRemovalStore;->pendingRemoval:Landroid/util/SparseSetArray;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/android/systemui/broadcast/PendingRemovalStore;->pendingRemoval:Landroid/util/SparseSetArray;

    .line 2
    monitor-enter p2

    .line 4
    :try_start_0
    instance-of v0, p1, Landroid/util/IndentingPrintWriter;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    move-object v0, p1

    .line 9
    check-cast v0, Landroid/util/IndentingPrintWriter;

    .line 10
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/broadcast/PendingRemovalStore;->pendingRemoval:Landroid/util/SparseSetArray;

    .line 15
    invoke-virtual {v0}, Landroid/util/SparseSetArray;->size()I

    .line 17
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, v0, :cond_1

    .line 22
    iget-object v2, p0, Lcom/android/systemui/broadcast/PendingRemovalStore;->pendingRemoval:Landroid/util/SparseSetArray;

    .line 24
    invoke-virtual {v2, v1}, Landroid/util/SparseSetArray;->keyAt(I)I

    .line 26
    move-result v2

    .line 29
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 30
    const-string v3, "->"

    .line 33
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 35
    iget-object v3, p0, Lcom/android/systemui/broadcast/PendingRemovalStore;->pendingRemoval:Landroid/util/SparseSetArray;

    .line 38
    invoke-virtual {v3, v2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    .line 40
    move-result-object v2

    .line 43
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_0

    .line 49
    :cond_1
    instance-of p0, p1, Landroid/util/IndentingPrintWriter;

    .line 50
    if-eqz p0, :cond_2

    .line 52
    check-cast p1, Landroid/util/IndentingPrintWriter;

    .line 54
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_2
    monitor-exit p2

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    monitor-exit p2

    .line 62
    throw p0
    .line 63
.end method
