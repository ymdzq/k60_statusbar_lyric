.class public Landroidx/lifecycle/LifecycleRegistry;
.super Landroidx/lifecycle/Lifecycle;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAddingObserverCounter:I

.field public final mEnforceMainThread:Z

.field public mHandlingEvent:Z

.field public final mLifecycleOwner:Ljava/lang/ref/WeakReference;

.field public mNewEventOccurred:Z

.field public mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

.field public final mParentStates:Ljava/util/ArrayList;

.field public mState:Landroidx/lifecycle/Lifecycle$State;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/Lifecycle;-><init>()V

    .line 2
    new-instance v0, Landroidx/arch/core/internal/FastSafeIterableMap;

    .line 5
    invoke-direct {v0}, Landroidx/arch/core/internal/FastSafeIterableMap;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    .line 10
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    .line 13
    iput-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    .line 15
    iput-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 26
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 28
    iput-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    .line 31
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    .line 33
    iput-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 35
    iput-boolean p2, p0, Landroidx/lifecycle/LifecycleRegistry;->mEnforceMainThread:Z

    .line 37
    return-void
    .line 39
.end method


# virtual methods
.method public final addObserver(Landroidx/lifecycle/LifecycleObserver;)V
    .locals 7

    .line 1
    const-string v0, "addObserver"

    .line 2
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 7
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 9
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    .line 14
    :goto_0
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 16
    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;-><init>(Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/Lifecycle$State;)V

    .line 18
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    .line 21
    invoke-virtual {v1, p1, v0}, Landroidx/arch/core/internal/FastSafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 26
    check-cast v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 27
    if-eqz v1, :cond_1

    .line 29
    return-void

    .line 31
    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    .line 32
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 37
    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    .line 38
    if-nez v1, :cond_2

    .line 40
    return-void

    .line 42
    :cond_2
    iget v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    .line 43
    const/4 v3, 0x1

    .line 45
    if-nez v2, :cond_4

    .line 46
    iget-boolean v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    .line 48
    if-eqz v2, :cond_3

    .line 50
    goto :goto_1

    .line 52
    :cond_3
    const/4 v2, 0x0

    .line 53
    goto :goto_2

    .line 54
    :cond_4
    :goto_1
    move v2, v3

    .line 55
    :goto_2
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->calculateTargetState(Landroidx/lifecycle/LifecycleObserver;)Landroidx/lifecycle/Lifecycle$State;

    .line 56
    move-result-object v4

    .line 59
    iget v5, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    .line 60
    add-int/2addr v5, v3

    .line 62
    iput v5, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    .line 63
    :goto_3
    iget-object v5, v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 65
    invoke-virtual {v5, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 67
    move-result v4

    .line 70
    if-gez v4, :cond_9

    .line 71
    iget-object v4, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    .line 73
    iget-object v4, v4, Landroidx/arch/core/internal/FastSafeIterableMap;->mHashMap:Ljava/util/HashMap;

    .line 75
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 77
    move-result v4

    .line 80
    if-eqz v4, :cond_9

    .line 81
    iget-object v4, v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 83
    iget-object v5, p0, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v4, v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 90
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 92
    move-result v4

    .line 95
    if-eq v4, v3, :cond_7

    .line 96
    const/4 v6, 0x2

    .line 98
    if-eq v4, v6, :cond_6

    .line 99
    const/4 v6, 0x3

    .line 101
    if-eq v4, v6, :cond_5

    .line 102
    const/4 v4, 0x0

    .line 104
    goto :goto_4

    .line 105
    :cond_5
    sget-object v4, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 106
    goto :goto_4

    .line 108
    :cond_6
    sget-object v4, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 109
    goto :goto_4

    .line 111
    :cond_7
    sget-object v4, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 112
    :goto_4
    if-eqz v4, :cond_8

    .line 114
    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 116
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 119
    move-result v4

    .line 122
    add-int/lit8 v4, v4, -0x1

    .line 123
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 125
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->calculateTargetState(Landroidx/lifecycle/LifecycleObserver;)Landroidx/lifecycle/Lifecycle$State;

    .line 128
    move-result-object v4

    .line 131
    goto :goto_3

    .line 132
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    .line 135
    const-string v1, "no event up from "

    .line 137
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    iget-object v0, v0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object p1

    .line 150
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 151
    throw p0

    .line 154
    :cond_9
    if-nez v2, :cond_a

    .line 155
    invoke-virtual {p0}, Landroidx/lifecycle/LifecycleRegistry;->sync()V

    .line 157
    :cond_a
    iget p1, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    .line 160
    sub-int/2addr p1, v3

    .line 162
    iput p1, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    .line 163
    return-void
    .line 165
.end method

.method public final calculateTargetState(Landroidx/lifecycle/LifecycleObserver;)Landroidx/lifecycle/Lifecycle$State;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    .line 2
    iget-object v1, v0, Landroidx/arch/core/internal/FastSafeIterableMap;->mHashMap:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    iget-object v0, v0, Landroidx/arch/core/internal/FastSafeIterableMap;->mHashMap:Ljava/util/HashMap;

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 18
    check-cast p1, Landroidx/arch/core/internal/SafeIterableMap$Entry;

    .line 19
    iget-object p1, p1, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    move-object p1, v2

    .line 24
    :goto_0
    if-eqz p1, :cond_1

    .line 25
    iget-object p1, p1, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mValue:Ljava/lang/Object;

    .line 27
    check-cast p1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 29
    iget-object p1, p1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 31
    goto :goto_1

    .line 33
    :cond_1
    move-object p1, v2

    .line 34
    :goto_1
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    move-result v1

    .line 40
    if-nez v1, :cond_2

    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    move-result v1

    .line 46
    add-int/lit8 v1, v1, -0x1

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 52
    move-object v2, v0

    .line 53
    check-cast v2, Landroidx/lifecycle/Lifecycle$State;

    .line 54
    :cond_2
    iget-object p0, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 56
    if-eqz p1, :cond_3

    .line 58
    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 60
    move-result v0

    .line 63
    if-gez v0, :cond_3

    .line 64
    goto :goto_2

    .line 66
    :cond_3
    move-object p1, p0

    .line 67
    :goto_2
    if-eqz v2, :cond_4

    .line 68
    invoke-virtual {v2, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 70
    move-result p0

    .line 73
    if-gez p0, :cond_4

    .line 74
    goto :goto_3

    .line 76
    :cond_4
    move-object v2, p1

    .line 77
    :goto_3
    return-object v2
    .line 78
.end method

.method public final enforceMainThreadIfNeeded(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean p0, p0, Landroidx/lifecycle/LifecycleRegistry;->mEnforceMainThread:Z

    .line 2
    if-eqz p0, :cond_1

    .line 4
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroidx/arch/core/executor/ArchTaskExecutor;->isMainThread()Z

    .line 10
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 17
    const-string v0, "Method "

    .line 19
    const-string v1, " must be called on the main thread"

    .line 21
    invoke-static {v0, p1, v1}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0

    .line 30
    :cond_1
    :goto_0
    return-void
    .line 31
.end method

.method public final handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 1
    const-string v0, "handleLifecycleEvent"

    .line 2
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    .line 7
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->moveToState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 11
    return-void
    .line 14
.end method

.method public final moveToState(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    .line 7
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 9
    if-ne v0, v1, :cond_2

    .line 11
    if-eq p1, v2, :cond_1

    .line 13
    goto :goto_0

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    const-string v1, "no event down from "

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, " in component "

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object p0, p0, Landroidx/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    .line 35
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 47
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p1

    .line 51
    :cond_2
    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 52
    iget-boolean p1, p0, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    .line 54
    const/4 v0, 0x1

    .line 56
    if-nez p1, :cond_5

    .line 57
    iget p1, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    .line 59
    if-eqz p1, :cond_3

    .line 61
    goto :goto_1

    .line 63
    :cond_3
    iput-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    .line 64
    invoke-virtual {p0}, Landroidx/lifecycle/LifecycleRegistry;->sync()V

    .line 66
    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    .line 70
    iget-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 72
    if-ne p1, v2, :cond_4

    .line 74
    new-instance p1, Landroidx/arch/core/internal/FastSafeIterableMap;

    .line 76
    invoke-direct {p1}, Landroidx/arch/core/internal/FastSafeIterableMap;-><init>()V

    .line 78
    iput-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    .line 81
    :cond_4
    return-void

    .line 83
    :cond_5
    :goto_1
    iput-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    .line 84
    return-void
    .line 86
.end method

.method public final removeObserver(Landroidx/lifecycle/LifecycleObserver;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "removeObserver"

    .line 2
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    .line 8
    invoke-virtual {p0, p1}, Landroidx/arch/core/internal/FastSafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-void
    .line 13
.end method

.method public final setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "setCurrentState"

    .line 2
    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->moveToState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 8
    return-void
    .line 11
.end method

.method public final sync()V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    .line 8
    if-eqz v0, :cond_f

    .line 10
    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    .line 12
    iget v2, v1, Landroidx/arch/core/internal/SafeIterableMap;->mSize:I

    .line 14
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    if-nez v2, :cond_1

    .line 18
    goto :goto_0

    .line 20
    :cond_1
    iget-object v2, v1, Landroidx/arch/core/internal/SafeIterableMap;->mStart:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    .line 21
    iget-object v2, v2, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mValue:Ljava/lang/Object;

    .line 23
    check-cast v2, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 25
    iget-object v2, v2, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 27
    iget-object v5, v1, Landroidx/arch/core/internal/SafeIterableMap;->mEnd:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    .line 29
    iget-object v5, v5, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mValue:Ljava/lang/Object;

    .line 31
    check-cast v5, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 33
    iget-object v5, v5, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 35
    if-ne v2, v5, :cond_2

    .line 37
    iget-object v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 39
    if-ne v2, v5, :cond_2

    .line 41
    :goto_0
    move v2, v3

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v2, v4

    .line 45
    :goto_1
    if-nez v2, :cond_e

    .line 46
    iput-boolean v4, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    .line 48
    iget-object v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 50
    iget-object v1, v1, Landroidx/arch/core/internal/SafeIterableMap;->mStart:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    .line 52
    iget-object v1, v1, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mValue:Ljava/lang/Object;

    .line 54
    check-cast v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 56
    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 58
    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 60
    move-result v1

    .line 63
    const/4 v2, 0x0

    .line 64
    const/4 v4, 0x3

    .line 65
    const/4 v5, 0x2

    .line 66
    iget-object v6, p0, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    .line 67
    if-gez v1, :cond_8

    .line 69
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    new-instance v7, Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator;

    .line 76
    iget-object v8, v1, Landroidx/arch/core/internal/SafeIterableMap;->mEnd:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    .line 78
    iget-object v9, v1, Landroidx/arch/core/internal/SafeIterableMap;->mStart:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    .line 80
    invoke-direct {v7, v8, v9, v3}, Landroidx/arch/core/internal/SafeIterableMap$AscendingIterator;-><init>(Landroidx/arch/core/internal/SafeIterableMap$Entry;Landroidx/arch/core/internal/SafeIterableMap$Entry;I)V

    .line 82
    iget-object v1, v1, Landroidx/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    .line 85
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 87
    invoke-virtual {v1, v7, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_3
    invoke-virtual {v7}, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->hasNext()Z

    .line 92
    move-result v1

    .line 95
    if-eqz v1, :cond_8

    .line 96
    iget-boolean v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    .line 98
    if-nez v1, :cond_8

    .line 100
    invoke-virtual {v7}, Landroidx/arch/core/internal/SafeIterableMap$ListIterator;->next()Ljava/lang/Object;

    .line 102
    move-result-object v1

    .line 105
    check-cast v1, Ljava/util/Map$Entry;

    .line 106
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 108
    move-result-object v8

    .line 111
    check-cast v8, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 112
    :goto_2
    iget-object v9, v8, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 114
    iget-object v10, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 116
    invoke-virtual {v9, v10}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 118
    move-result v9

    .line 121
    if-lez v9, :cond_3

    .line 122
    iget-boolean v9, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    .line 124
    if-nez v9, :cond_3

    .line 126
    iget-object v9, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    .line 128
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 130
    move-result-object v10

    .line 133
    check-cast v10, Landroidx/lifecycle/LifecycleObserver;

    .line 134
    iget-object v9, v9, Landroidx/arch/core/internal/FastSafeIterableMap;->mHashMap:Ljava/util/HashMap;

    .line 136
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 138
    move-result v9

    .line 141
    if-eqz v9, :cond_3

    .line 142
    iget-object v9, v8, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 144
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 146
    move-result v9

    .line 149
    if-eq v9, v5, :cond_6

    .line 150
    if-eq v9, v4, :cond_5

    .line 152
    const/4 v10, 0x4

    .line 154
    if-eq v9, v10, :cond_4

    .line 155
    move-object v9, v2

    .line 157
    goto :goto_3

    .line 158
    :cond_4
    sget-object v9, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 159
    goto :goto_3

    .line 161
    :cond_5
    sget-object v9, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 162
    goto :goto_3

    .line 164
    :cond_6
    sget-object v9, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 165
    :goto_3
    if-eqz v9, :cond_7

    .line 167
    invoke-virtual {v9}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    .line 169
    move-result-object v10

    .line 172
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {v8, v0, v9}, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 176
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 179
    move-result v9

    .line 182
    add-int/lit8 v9, v9, -0x1

    .line 183
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 185
    goto :goto_2

    .line 188
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    .line 191
    const-string v1, "no event down from "

    .line 193
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    iget-object v1, v8, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    move-result-object v0

    .line 206
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 207
    throw p0

    .line 210
    :cond_8
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    .line 211
    iget-object v1, v1, Landroidx/arch/core/internal/SafeIterableMap;->mEnd:Landroidx/arch/core/internal/SafeIterableMap$Entry;

    .line 213
    iget-boolean v7, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    .line 215
    if-nez v7, :cond_0

    .line 217
    if-eqz v1, :cond_0

    .line 219
    iget-object v7, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 221
    iget-object v1, v1, Landroidx/arch/core/internal/SafeIterableMap$Entry;->mValue:Ljava/lang/Object;

    .line 223
    check-cast v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 225
    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 227
    invoke-virtual {v7, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 229
    move-result v1

    .line 232
    if-lez v1, :cond_0

    .line 233
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    .line 235
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    new-instance v7, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    .line 240
    invoke-direct {v7, v1}, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;-><init>(Landroidx/arch/core/internal/SafeIterableMap;)V

    .line 242
    iget-object v1, v1, Landroidx/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    .line 245
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 247
    invoke-virtual {v1, v7, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_9
    invoke-virtual {v7}, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->hasNext()Z

    .line 252
    move-result v1

    .line 255
    if-eqz v1, :cond_0

    .line 256
    iget-boolean v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    .line 258
    if-nez v1, :cond_0

    .line 260
    invoke-virtual {v7}, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->next()Ljava/lang/Object;

    .line 262
    move-result-object v1

    .line 265
    check-cast v1, Ljava/util/Map$Entry;

    .line 266
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 268
    move-result-object v8

    .line 271
    check-cast v8, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;

    .line 272
    :goto_4
    iget-object v9, v8, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 274
    iget-object v10, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 276
    invoke-virtual {v9, v10}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 278
    move-result v9

    .line 281
    if-gez v9, :cond_9

    .line 282
    iget-boolean v9, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    .line 284
    if-nez v9, :cond_9

    .line 286
    iget-object v9, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/arch/core/internal/FastSafeIterableMap;

    .line 288
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 290
    move-result-object v10

    .line 293
    check-cast v10, Landroidx/lifecycle/LifecycleObserver;

    .line 294
    iget-object v9, v9, Landroidx/arch/core/internal/FastSafeIterableMap;->mHashMap:Ljava/util/HashMap;

    .line 296
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 298
    move-result v9

    .line 301
    if-eqz v9, :cond_9

    .line 302
    iget-object v9, v8, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 304
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v9, v8, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 309
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 311
    move-result v9

    .line 314
    if-eq v9, v3, :cond_c

    .line 315
    if-eq v9, v5, :cond_b

    .line 317
    if-eq v9, v4, :cond_a

    .line 319
    move-object v9, v2

    .line 321
    goto :goto_5

    .line 322
    :cond_a
    sget-object v9, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 323
    goto :goto_5

    .line 325
    :cond_b
    sget-object v9, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    .line 326
    goto :goto_5

    .line 328
    :cond_c
    sget-object v9, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    .line 329
    :goto_5
    if-eqz v9, :cond_d

    .line 331
    invoke-virtual {v8, v0, v9}, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->dispatchEvent(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 333
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 336
    move-result v9

    .line 339
    add-int/lit8 v9, v9, -0x1

    .line 340
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 342
    goto :goto_4

    .line 345
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    .line 348
    const-string v1, "no event up from "

    .line 350
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    iget-object v1, v8, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    move-result-object v0

    .line 363
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 364
    throw p0

    .line 367
    :cond_e
    iput-boolean v4, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    .line 368
    return-void

    .line 370
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 371
    const-string v0, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    .line 373
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 375
    throw p0
    .line 378
.end method
