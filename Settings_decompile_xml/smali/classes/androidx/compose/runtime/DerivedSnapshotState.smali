.class final Landroidx/compose/runtime/DerivedSnapshotState;
.super Ljava/lang/Object;
.source "DerivedState.kt"

# interfaces
.implements Landroidx/compose/runtime/snapshots/StateObject;
.implements Landroidx/compose/runtime/DerivedState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/snapshots/StateObject;",
        "Landroidx/compose/runtime/DerivedState<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDerivedState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DerivedState.kt\nandroidx/compose/runtime/DerivedSnapshotState\n+ 2 DerivedState.kt\nandroidx/compose/runtime/SnapshotStateKt__DerivedStateKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 5 IdentityArrayMap.kt\nandroidx/compose/runtime/collection/IdentityArrayMap\n+ 6 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 7 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 8 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,346:1\n311#2:347\n312#2:349\n313#2,2:361\n316#2,2:368\n311#2:370\n312#2:372\n313#2,5:384\n1162#3:348\n1162#3:371\n460#4,11:350\n460#4,11:373\n144#5,5:363\n1686#6:389\n2180#6:391\n2180#6:392\n2180#6:393\n2180#6:395\n2180#6:396\n2180#6:397\n70#7:390\n26#8:394\n*S KotlinDebug\n*F\n+ 1 DerivedState.kt\nandroidx/compose/runtime/DerivedSnapshotState\n*L\n143#1:347\n143#1:349\n143#1:361,2\n143#1:368,2\n158#1:370\n158#1:372\n158#1:384,5\n143#1:348\n158#1:371\n143#1:350,11\n158#1:373,11\n146#1:363,5\n180#1:389\n222#1:391\n229#1:392\n235#1:393\n241#1:395\n252#1:396\n260#1:397\n180#1:390\n238#1:394\n*E\n"
.end annotation


# instance fields
.field private final calculation:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "TT;>;"
        }
    .end annotation
.end field

.field private first:Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final policy:Landroidx/compose/runtime/SnapshotMutationPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/SnapshotMutationPolicy<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/SnapshotMutationPolicy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Landroidx/compose/runtime/SnapshotMutationPolicy<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "calculation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroidx/compose/runtime/DerivedSnapshotState;->calculation:Lkotlin/jvm/functions/Function0;

    .line 67
    iput-object p2, p0, Landroidx/compose/runtime/DerivedSnapshotState;->policy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 69
    new-instance p1, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    invoke-direct {p1}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/DerivedSnapshotState;->first:Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    return-void
.end method

.method private final currentRecord(Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;Landroidx/compose/runtime/snapshots/Snapshot;ZLkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord<",
            "TT;>;",
            "Landroidx/compose/runtime/snapshots/Snapshot;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)",
            "Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord<",
            "TT;>;"
        }
    .end annotation

    .line 139
    invoke-virtual {p1, p0, p2}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->isValid(Landroidx/compose/runtime/DerivedState;Landroidx/compose/runtime/snapshots/Snapshot;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    if-eqz p3, :cond_8

    .line 311
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->access$getDerivedStateObservers$p()Landroidx/compose/runtime/SnapshotThreadLocal;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/compose/runtime/SnapshotThreadLocal;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/runtime/collection/MutableVector;

    if-nez p3, :cond_0

    .line 1162
    new-instance p3, Landroidx/compose/runtime/collection/MutableVector;

    new-array p4, v2, [Lkotlin/Pair;

    invoke-direct {p3, p4, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 461
    :cond_0
    invoke-virtual {p3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p4

    if-lez p4, :cond_2

    .line 464
    invoke-virtual {p3}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v0

    move v3, v2

    .line 466
    :cond_1
    aget-object v4, v0, v3

    check-cast v4, Lkotlin/Pair;

    .line 312
    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {v4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v3, v1

    if-lt v3, p4, :cond_1

    .line 144
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->getDependencies()Landroidx/compose/runtime/collection/IdentityArrayMap;

    move-result-object p4

    .line 145
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->access$getCalculationBlockNestedLevel$p()Landroidx/compose/runtime/SnapshotThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    if-eqz p4, :cond_5

    .line 144
    invoke-virtual {p4}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getSize$runtime_release()I

    move-result v3

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_5

    .line 146
    invoke-virtual {p4}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getKeys$runtime_release()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v4

    const-string/jumbo v6, "null cannot be cast to non-null type Key of androidx.compose.runtime.collection.IdentityArrayMap"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getValues$runtime_release()[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v4

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    check-cast v5, Landroidx/compose/runtime/snapshots/StateObject;

    .line 147
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->access$getCalculationBlockNestedLevel$p()Landroidx/compose/runtime/SnapshotThreadLocal;

    move-result-object v7

    add-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/SnapshotThreadLocal;->set(Ljava/lang/Object;)V

    .line 148
    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver$runtime_release()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 150
    :cond_5
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->access$getCalculationBlockNestedLevel$p()Landroidx/compose/runtime/SnapshotThreadLocal;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroidx/compose/runtime/SnapshotThreadLocal;->set(Ljava/lang/Object;)V

    .line 151
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    invoke-virtual {p3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p2

    if-lez p2, :cond_8

    .line 464
    invoke-virtual {p3}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p3

    .line 466
    :cond_6
    aget-object p4, p3, v2

    check-cast p4, Lkotlin/Pair;

    .line 316
    invoke-virtual {p4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lkotlin/jvm/functions/Function1;

    invoke-interface {p4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v2, v1

    if-lt v2, p2, :cond_6

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 461
    invoke-virtual {p3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p2

    if-lez p2, :cond_7

    .line 464
    invoke-virtual {p3}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p3

    .line 466
    :goto_2
    aget-object p4, p3, v2

    check-cast p4, Lkotlin/Pair;

    .line 316
    invoke-virtual {p4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lkotlin/jvm/functions/Function1;

    invoke-interface {p4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v2, v1

    if-ge v2, p2, :cond_7

    goto :goto_2

    .line 470
    :cond_7
    throw p1

    :cond_8
    :goto_3
    return-object p1

    .line 155
    :cond_9
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->access$getCalculationBlockNestedLevel$p()Landroidx/compose/runtime/SnapshotThreadLocal;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/compose/runtime/SnapshotThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_4

    :cond_a
    move p2, v2

    .line 157
    :goto_4
    new-instance p3, Landroidx/compose/runtime/collection/IdentityArrayMap;

    const/4 v0, 0x0

    invoke-direct {p3, v2, v1, v0}, Landroidx/compose/runtime/collection/IdentityArrayMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 311
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->access$getDerivedStateObservers$p()Landroidx/compose/runtime/SnapshotThreadLocal;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    if-nez v3, :cond_b

    .line 1162
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v4, v2, [Lkotlin/Pair;

    invoke-direct {v3, v4, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 461
    :cond_b
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v4

    if-lez v4, :cond_d

    .line 464
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v5

    move v6, v2

    .line 466
    :cond_c
    aget-object v7, v5, v6

    check-cast v7, Lkotlin/Pair;

    .line 312
    invoke-virtual {v7}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-interface {v7, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v6, v1

    if-lt v6, v4, :cond_c

    .line 159
    :cond_d
    :try_start_1
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->access$getCalculationBlockNestedLevel$p()Landroidx/compose/runtime/SnapshotThreadLocal;

    move-result-object v4

    add-int/lit8 v5, p2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/SnapshotThreadLocal;->set(Ljava/lang/Object;)V

    .line 161
    sget-object v4, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    new-instance v5, Landroidx/compose/runtime/DerivedSnapshotState$currentRecord$result$1$result$1;

    invoke-direct {v5, p0, p3, p2}, Landroidx/compose/runtime/DerivedSnapshotState$currentRecord$result$1$result$1;-><init>(Landroidx/compose/runtime/DerivedSnapshotState;Landroidx/compose/runtime/collection/IdentityArrayMap;I)V

    invoke-virtual {v4, v5, v0, p4}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->observe(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p4

    .line 176
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->access$getCalculationBlockNestedLevel$p()Landroidx/compose/runtime/SnapshotThreadLocal;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/SnapshotThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 461
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    if-lez v0, :cond_f

    .line 464
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v3

    move v4, v2

    .line 466
    :cond_e
    aget-object v5, v3, v4

    check-cast v5, Lkotlin/Pair;

    .line 316
    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v4, v1

    if-lt v4, v0, :cond_e

    .line 1686
    :cond_f
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v0

    .line 70
    monitor-enter v0

    .line 181
    :try_start_2
    sget-object v3, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v4

    .line 184
    invoke-virtual {p1}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->getResult()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->Companion:Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord$Companion;->getUnset()Ljava/lang/Object;

    move-result-object v6

    if-eq v5, v6, :cond_11

    .line 186
    invoke-virtual {p0}, Landroidx/compose/runtime/DerivedSnapshotState;->getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {p1}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->getResult()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, p4, v6}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v1, :cond_10

    goto :goto_5

    :cond_10
    move v1, v2

    :goto_5
    if-eqz v1, :cond_11

    .line 188
    invoke-virtual {p1, p3}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->setDependencies(Landroidx/compose/runtime/collection/IdentityArrayMap;)V

    .line 189
    invoke-virtual {p1, p0, v4}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->readableHash(Landroidx/compose/runtime/DerivedState;Landroidx/compose/runtime/snapshots/Snapshot;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->setResultHash(I)V

    goto :goto_6

    .line 192
    :cond_11
    iget-object p1, p0, Landroidx/compose/runtime/DerivedSnapshotState;->first:Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    invoke-static {p1, p0, v4}, Landroidx/compose/runtime/snapshots/SnapshotKt;->newWritableRecord(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/StateObject;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    .line 193
    invoke-virtual {p1, p3}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->setDependencies(Landroidx/compose/runtime/collection/IdentityArrayMap;)V

    .line 194
    invoke-virtual {p1, p0, v4}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->readableHash(Landroidx/compose/runtime/DerivedState;Landroidx/compose/runtime/snapshots/Snapshot;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->setResultHash(I)V

    .line 195
    invoke-virtual {p1, p4}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->setResult(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 70
    :goto_6
    monitor-exit v0

    if-nez p2, :cond_12

    .line 201
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->notifyObjectsInitialized()V

    :cond_12
    return-object p1

    :catchall_1
    move-exception p0

    .line 70
    monitor-exit v0

    throw p0

    :catchall_2
    move-exception p1

    .line 461
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p2

    if-lez p2, :cond_13

    .line 464
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p3

    .line 466
    :goto_7
    aget-object p4, p3, v2

    check-cast p4, Lkotlin/Pair;

    .line 316
    invoke-virtual {p4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lkotlin/jvm/functions/Function1;

    invoke-interface {p4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v2, v1

    if-ge v2, p2, :cond_13

    goto :goto_7

    .line 470
    :cond_13
    throw p1
.end method

.method private final displayValue()Ljava/lang/String;
    .locals 2

    .line 260
    iget-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState;->first:Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    .line 2180
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    .line 261
    sget-object v1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->isValid(Landroidx/compose/runtime/DerivedState;Landroidx/compose/runtime/snapshots/Snapshot;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 262
    invoke-virtual {v0}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "<Not calculated>"

    return-object p0
.end method


# virtual methods
.method public final current(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 3

    const-string/jumbo v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState;->first:Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    invoke-static {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/compose/runtime/DerivedSnapshotState;->calculation:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0, p1, v1, v2}, Landroidx/compose/runtime/DerivedSnapshotState;->currentRecord(Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;Landroidx/compose/runtime/snapshots/Snapshot;ZLkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState;->first:Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    .line 2180
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    .line 231
    sget-object v1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/compose/runtime/DerivedSnapshotState;->calculation:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/compose/runtime/DerivedSnapshotState;->currentRecord(Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;Landroidx/compose/runtime/snapshots/Snapshot;ZLkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getDependencies()[Ljava/lang/Object;
    .locals 4

    .line 235
    iget-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState;->first:Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    .line 2180
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    .line 236
    sget-object v1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/runtime/DerivedSnapshotState;->calculation:Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Landroidx/compose/runtime/DerivedSnapshotState;->currentRecord(Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;Landroidx/compose/runtime/snapshots/Snapshot;ZLkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    move-result-object p0

    .line 238
    invoke-virtual {p0}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->getDependencies()Landroidx/compose/runtime/collection/IdentityArrayMap;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->getKeys$runtime_release()[Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    new-array p0, v3, [Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public getFirstStateRecord()Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 0

    .line 207
    iget-object p0, p0, Landroidx/compose/runtime/DerivedSnapshotState;->first:Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    return-object p0
.end method

.method public getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/SnapshotMutationPolicy<",
            "TT;>;"
        }
    .end annotation

    .line 67
    iget-object p0, p0, Landroidx/compose/runtime/DerivedSnapshotState;->policy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 221
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver$runtime_release()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/DerivedSnapshotState;->first:Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    .line 2180
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    .line 224
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/compose/runtime/DerivedSnapshotState;->calculation:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v1, v0, v2, v3}, Landroidx/compose/runtime/DerivedSnapshotState;->currentRecord(Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;Landroidx/compose/runtime/snapshots/Snapshot;ZLkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public prependStateRecord(Landroidx/compose/runtime/snapshots/StateRecord;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    check-cast p1, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    iput-object p1, p0, Landroidx/compose/runtime/DerivedSnapshotState;->first:Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 241
    iget-object v0, p0, Landroidx/compose/runtime/DerivedSnapshotState;->first:Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    .line 2180
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotKt;->current(Landroidx/compose/runtime/snapshots/StateRecord;)Landroidx/compose/runtime/snapshots/StateRecord;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DerivedState(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroidx/compose/runtime/DerivedSnapshotState;->displayValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
