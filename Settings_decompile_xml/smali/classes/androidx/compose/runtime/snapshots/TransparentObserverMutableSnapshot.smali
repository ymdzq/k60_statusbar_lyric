.class public final Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;
.super Landroidx/compose/runtime/snapshots/MutableSnapshot;
.source "Snapshot.kt"


# instance fields
.field private final mergeParentObservers:Z

.field private final ownsPreviousSnapshot:Z

.field private final previousSnapshot:Landroidx/compose/runtime/snapshots/MutableSnapshot;

.field private final specifiedReadObserver:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final specifiedWriteObserver:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/snapshots/MutableSnapshot;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/snapshots/MutableSnapshot;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1445
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->Companion:Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;->getEMPTY()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 1448
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getReadObserver$runtime_release()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getCurrentGlobalSnapshot$p()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getReadObserver$runtime_release()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 1446
    :cond_1
    invoke-static {p2, v1, p4}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$mergedReadObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 1453
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getWriteObserver$runtime_release()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getCurrentGlobalSnapshot$p()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getWriteObserver$runtime_release()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    .line 1451
    :cond_3
    invoke-static {p3, v2}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$mergedWriteObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    const/4 v3, 0x0

    .line 1443
    invoke-direct {p0, v3, v0, v1, v2}, Landroidx/compose/runtime/snapshots/MutableSnapshot;-><init>(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 1438
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->previousSnapshot:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 1439
    iput-object p2, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->specifiedReadObserver:Lkotlin/jvm/functions/Function1;

    .line 1440
    iput-object p3, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->specifiedWriteObserver:Lkotlin/jvm/functions/Function1;

    .line 1441
    iput-boolean p4, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->mergeParentObservers:Z

    .line 1442
    iput-boolean p5, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->ownsPreviousSnapshot:Z

    return-void
.end method

.method private final getCurrentSnapshot()Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .locals 1

    .line 1457
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->previousSnapshot:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    if-nez p0, :cond_0

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getCurrentGlobalSnapshot$p()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "currentGlobalSnapshot.get()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public apply()Landroidx/compose/runtime/snapshots/SnapshotApplyResult;
    .locals 0

    .line 1487
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->apply()Landroidx/compose/runtime/snapshots/SnapshotApplyResult;

    move-result-object p0

    return-object p0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1461
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/snapshots/Snapshot;->setDisposed$runtime_release(Z)V

    .line 1462
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->ownsPreviousSnapshot:Z

    if-eqz v0, :cond_0

    .line 1463
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->previousSnapshot:Landroidx/compose/runtime/snapshots/MutableSnapshot;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->dispose()V

    :cond_0
    return-void
.end method

.method public getId()I
    .locals 0

    .line 1468
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result p0

    return p0
.end method

.method public getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 0

    .line 1472
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->getInvalid$runtime_release()Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p0

    return-object p0
.end method

.method public getModified$runtime_release()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            ">;"
        }
    .end annotation

    .line 1479
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getModified$runtime_release()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getReadOnly()Z
    .locals 0

    .line 1484
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getReadOnly()Z

    move-result p0

    return p0
.end method

.method public nestedActivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)Ljava/lang/Void;
    .locals 0

    const-string/jumbo p0, "snapshot"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1534
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->unsupported()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public bridge synthetic nestedActivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 0

    .line 1437
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->nestedActivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)Ljava/lang/Void;

    return-void
.end method

.method public nestedDeactivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)Ljava/lang/Void;
    .locals 0

    const-string/jumbo p0, "snapshot"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1536
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->unsupported()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public bridge synthetic nestedDeactivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 0

    .line 1437
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->nestedDeactivated$runtime_release(Landroidx/compose/runtime/snapshots/Snapshot;)Ljava/lang/Void;

    return-void
.end method

.method public notifyObjectsInitialized$runtime_release()V
    .locals 0

    .line 1531
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->notifyObjectsInitialized$runtime_release()V

    return-void
.end method

.method public recordModified$runtime_release(Landroidx/compose/runtime/snapshots/StateObject;)V
    .locals 1

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1490
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->recordModified$runtime_release(Landroidx/compose/runtime/snapshots/StateObject;)V

    return-void
.end method

.method public setId$runtime_release(I)V
    .locals 0

    .line 1470
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->unsupported()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public setInvalid$runtime_release(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)V
    .locals 0

    const-string/jumbo p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1474
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->unsupported()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public setModified(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/compose/runtime/snapshots/StateObject;",
            ">;)V"
        }
    .end annotation

    .line 1481
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->unsupported()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public takeNestedMutableSnapshot(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/runtime/snapshots/MutableSnapshot;"
        }
    .end annotation

    .line 1509
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getReadObserver$runtime_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->mergedReadObserver$default(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object v6

    .line 1510
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getWriteObserver$runtime_release()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$mergedWriteObserver(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v7

    .line 1511
    iget-boolean p1, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->mergeParentObservers:Z

    if-nez p1, :cond_0

    .line 1512
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object p0

    invoke-virtual {p0, v3, v7}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->takeNestedMutableSnapshot(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object v5

    .line 1516
    new-instance p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;-><init>(Landroidx/compose/runtime/snapshots/MutableSnapshot;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZ)V

    goto :goto_0

    .line 1524
    :cond_0
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object p0

    invoke-virtual {p0, v6, v7}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->takeNestedMutableSnapshot(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public takeNestedSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/runtime/snapshots/Snapshot;"
        }
    .end annotation

    .line 1493
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->getReadObserver$runtime_release()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotKt;->mergedReadObserver$default(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    .line 1494
    iget-boolean v0, p0, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->mergeParentObservers:Z

    if-nez v0, :cond_0

    .line 1496
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->takeNestedSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p0

    const/4 v0, 0x1

    .line 1495
    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$createTransparentSnapshotWithNoParentReadObserver(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;Z)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p0

    goto :goto_0

    .line 1501
    :cond_0
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getCurrentSnapshot()Landroidx/compose/runtime/snapshots/MutableSnapshot;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->takeNestedSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p0

    :goto_0
    return-object p0
.end method
