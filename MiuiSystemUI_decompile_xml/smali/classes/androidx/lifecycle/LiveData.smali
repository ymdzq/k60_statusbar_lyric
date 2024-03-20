.class public abstract Landroidx/lifecycle/LiveData;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final NOT_SET:Ljava/lang/Object;


# instance fields
.field public mActiveCount:I

.field public mChangingActiveState:Z

.field public volatile mData:Ljava/lang/Object;

.field public final mDataLock:Ljava/lang/Object;

.field public mDispatchInvalidated:Z

.field public mDispatchingValue:Z

.field public final mObservers:Landroidx/arch/core/internal/SafeIterableMap;

.field public volatile mPendingData:Ljava/lang/Object;

.field public final mPostValueRunnable:Landroidx/lifecycle/LiveData$1;

.field public mVersion:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    sput-object v0, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    .line 10
    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap;

    .line 12
    invoke-direct {v0}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    .line 14
    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    .line 17
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    .line 20
    sget-object v0, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    .line 22
    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 24
    new-instance v1, Landroidx/lifecycle/LiveData$1;

    .line 26
    invoke-direct {v1, p0}, Landroidx/lifecycle/LiveData$1;-><init>(Landroidx/lifecycle/LiveData;)V

    .line 28
    iput-object v1, p0, Landroidx/lifecycle/LiveData;->mPostValueRunnable:Landroidx/lifecycle/LiveData$1;

    .line 31
    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 33
    const/4 v0, -0x1

    .line 35
    iput v0, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    .line 36
    return-void
    .line 38
.end method

.method public static assertMainThread(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/arch/core/executor/ArchTaskExecutor;->isMainThread()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    const-string v1, "Cannot invoke "

    .line 15
    const-string v2, " on a background thread"

    .line 17
    invoke-static {v1, p0, v2}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    throw v0
    .line 26
.end method


# virtual methods
.method public final considerNotify(Landroidx/lifecycle/LiveData$ObserverWrapper;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData$ObserverWrapper;->shouldBeActive()Z

    .line 7
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    const/4 p0, 0x0

    .line 13
    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData$ObserverWrapper;->activeStateChanged(Z)V

    .line 14
    return-void

    .line 17
    :cond_1
    iget v0, p1, Landroidx/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    .line 18
    iget v1, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    .line 20
    if-lt v0, v1, :cond_2

    .line 22
    return-void

    .line 24
    :cond_2
    iput v1, p1, Landroidx/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    .line 25
    iget-object p1, p1, Landroidx/lifecycle/LiveData$ObserverWrapper;->mObserver:Landroidx/lifecycle/Observer;

    .line 27
    iget-object p0, p0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 29
    invoke-interface {p1, p0}, Landroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    .line 31
    return-void
    .line 34
.end method

.method public final dispatchingValue(Landroidx/lifecycle/LiveData$ObserverWrapper;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/LiveData;->mDispatchingValue:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    .line 7
    return-void

    .line 9
    :cond_0
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->mDispatchingValue:Z

    .line 10
    :cond_1
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    .line 13
    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->considerNotify(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    .line 17
    const/4 p1, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_2
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    new-instance v2, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    .line 27
    invoke-direct {v2, v1}, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;-><init>(Landroidx/arch/core/internal/SafeIterableMap;)V

    .line 29
    iget-object v1, v1, Landroidx/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    .line 32
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 34
    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_3
    invoke-virtual {v2}, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->hasNext()Z

    .line 39
    move-result v1

    .line 42
    if-eqz v1, :cond_4

    .line 43
    invoke-virtual {v2}, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->next()Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 48
    check-cast v1, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 54
    check-cast v1, Landroidx/lifecycle/LiveData$ObserverWrapper;

    .line 55
    invoke-virtual {p0, v1}, Landroidx/lifecycle/LiveData;->considerNotify(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    .line 57
    iget-boolean v1, p0, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    .line 60
    if-eqz v1, :cond_3

    .line 62
    :cond_4
    :goto_0
    iget-boolean v1, p0, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    .line 64
    if-nez v1, :cond_1

    .line 66
    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->mDispatchingValue:Z

    .line 68
    return-void
    .line 70
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 2
    sget-object v0, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    .line 4
    if-eq p0, v0, :cond_0

    .line 6
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
    .line 10
.end method

.method public final observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 2

    .line 1
    const-string v0, "observe"

    .line 2
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    .line 7
    move-result-object v0

    .line 10
    iget-object v0, v0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 11
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 13
    if-ne v0, v1, :cond_0

    .line 15
    return-void

    .line 17
    :cond_0
    new-instance v0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    .line 18
    invoke-direct {v0, p0, p1, p2}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 20
    iget-object p0, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    .line 23
    invoke-virtual {p0, p2, v0}, Landroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 28
    check-cast p0, Landroidx/lifecycle/LiveData$ObserverWrapper;

    .line 29
    if-eqz p0, :cond_2

    .line 31
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData$ObserverWrapper;->isAttachedTo(Landroidx/lifecycle/LifecycleOwner;)Z

    .line 33
    move-result p2

    .line 36
    if-eqz p2, :cond_1

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 40
    const-string p1, "Cannot add the same observer with different lifecycles"

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p0

    .line 47
    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    .line 48
    return-void

    .line 50
    :cond_3
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    .line 51
    move-result-object p0

    .line 54
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 55
    return-void
    .line 58
.end method

.method public final observeForever(Landroidx/lifecycle/Observer;)V
    .locals 1

    .line 1
    const-string v0, "observeForever"

    .line 2
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroidx/lifecycle/LiveData$AlwaysActiveObserver;

    .line 7
    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/LiveData$AlwaysActiveObserver;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 9
    iget-object p0, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    .line 12
    invoke-virtual {p0, p1, v0}, Landroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    check-cast p0, Landroidx/lifecycle/LiveData$ObserverWrapper;

    .line 18
    instance-of p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    .line 20
    if-nez p1, :cond_1

    .line 22
    if-eqz p0, :cond_0

    .line 24
    return-void

    .line 26
    :cond_0
    const/4 p0, 0x1

    .line 27
    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData$ObserverWrapper;->activeStateChanged(Z)V

    .line 28
    return-void

    .line 31
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 32
    const-string p1, "Cannot add the same observer with different lifecycles"

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p0
    .line 39
.end method

.method public onActive()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onInactive()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public postValue(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 5
    sget-object v2, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    .line 7
    if-ne v1, v2, :cond_0

    .line 9
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    if-nez v1, :cond_1

    .line 17
    return-void

    .line 19
    :cond_1
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    .line 20
    move-result-object p1

    .line 23
    iget-object p0, p0, Landroidx/lifecycle/LiveData;->mPostValueRunnable:Landroidx/lifecycle/LiveData$1;

    .line 24
    invoke-virtual {p1, p0}, Landroidx/arch/core/executor/ArchTaskExecutor;->postToMainThread(Landroidx/lifecycle/LiveData$1;)V

    .line 26
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p0
    .line 32
.end method

.method public final removeObserver(Landroidx/lifecycle/Observer;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "removeObserver"

    .line 2
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    .line 8
    invoke-virtual {p0, p1}, Landroidx/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    check-cast p0, Landroidx/lifecycle/LiveData$ObserverWrapper;

    .line 14
    if-nez p0, :cond_0

    .line 16
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData$ObserverWrapper;->detachObserver()V

    .line 19
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData$ObserverWrapper;->activeStateChanged(Z)V

    .line 23
    return-void
    .line 26
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "setValue"

    .line 2
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 5
    iget v0, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 10
    iput v0, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    .line 12
    iput-object p1, p0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 14
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->dispatchingValue(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    .line 17
    return-void
    .line 20
.end method
