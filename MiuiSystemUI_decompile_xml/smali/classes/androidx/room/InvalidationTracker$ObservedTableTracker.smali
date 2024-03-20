.class public final Landroidx/room/InvalidationTracker$ObservedTableTracker;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mNeedsSync:Z

.field public final mTableObservers:[J

.field public final mTriggerStateChanges:[I

.field public final mTriggerStates:[Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array v0, p1, [J

    .line 5
    iput-object v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    .line 7
    new-array v1, p1, [Z

    .line 9
    iput-object v1, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    .line 11
    new-array p1, p1, [I

    .line 13
    iput-object p1, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    .line 15
    const-wide/16 p0, 0x0

    .line 17
    invoke-static {v0, p0, p1}, Ljava/util/Arrays;->fill([JJ)V

    .line 19
    const/4 p0, 0x0

    .line 22
    invoke-static {v1, p0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 23
    return-void
    .line 26
.end method


# virtual methods
.method public final getTablesToSync()[I
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    monitor-exit p0

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    .line 10
    array-length v0, v0

    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    :goto_0
    if-ge v2, v0, :cond_4

    .line 15
    iget-object v3, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    .line 17
    aget-wide v3, v3, v2

    .line 19
    const-wide/16 v5, 0x0

    .line 21
    cmp-long v3, v3, v5

    .line 23
    const/4 v4, 0x1

    .line 25
    if-lez v3, :cond_1

    .line 26
    move v3, v4

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v3, v1

    .line 30
    :goto_1
    iget-object v5, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    .line 31
    aget-boolean v6, v5, v2

    .line 33
    if-eq v3, v6, :cond_3

    .line 35
    iget-object v6, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    .line 37
    if-eqz v3, :cond_2

    .line 39
    goto :goto_2

    .line 41
    :cond_2
    const/4 v4, 0x2

    .line 42
    :goto_2
    aput v4, v6, v2

    .line 43
    goto :goto_3

    .line 45
    :cond_3
    iget-object v4, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    .line 46
    aput v1, v4, v2

    .line 48
    :goto_3
    aput-boolean v3, v5, v2

    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 52
    goto :goto_0

    .line 54
    :cond_4
    iput-boolean v1, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    .line 55
    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    .line 57
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 62
    check-cast v0, [I

    .line 63
    monitor-exit p0

    .line 65
    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw v0
    .line 69
.end method
