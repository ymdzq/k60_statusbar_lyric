.class public final Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mLifecycleObserver:Landroidx/lifecycle/LifecycleEventObserver;

.field public mState:Landroidx/lifecycle/Lifecycle$State;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/lifecycle/Lifecycling;->sCallbackCache:Ljava/util/Map;

    .line 5
    instance-of v0, p1, Landroidx/lifecycle/LifecycleEventObserver;

    .line 7
    instance-of v1, p1, Landroidx/lifecycle/DefaultLifecycleObserver;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    if-eqz v1, :cond_0

    .line 13
    new-instance v0, Landroidx/lifecycle/FullLifecycleObserverAdapter;

    .line 15
    move-object v1, p1

    .line 17
    check-cast v1, Landroidx/lifecycle/DefaultLifecycleObserver;

    .line 18
    check-cast p1, Landroidx/lifecycle/LifecycleEventObserver;

    .line 20
    invoke-direct {v0, v1, p1}, Landroidx/lifecycle/FullLifecycleObserverAdapter;-><init>(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleEventObserver;)V

    .line 22
    goto :goto_1

    .line 25
    :cond_0
    const/4 v2, 0x0

    .line 26
    if-eqz v1, :cond_1

    .line 27
    new-instance v0, Landroidx/lifecycle/FullLifecycleObserverAdapter;

    .line 29
    check-cast p1, Landroidx/lifecycle/DefaultLifecycleObserver;

    .line 31
    invoke-direct {v0, p1, v2}, Landroidx/lifecycle/FullLifecycleObserverAdapter;-><init>(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleEventObserver;)V

    .line 33
    goto :goto_1

    .line 36
    :cond_1
    if-eqz v0, :cond_2

    .line 37
    move-object v0, p1

    .line 39
    check-cast v0, Landroidx/lifecycle/LifecycleEventObserver;

    .line 40
    goto :goto_1

    .line 42
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    move-result-object v0

    .line 46
    invoke-static {v0}, Landroidx/lifecycle/Lifecycling;->getObserverConstructorType(Ljava/lang/Class;)I

    .line 47
    move-result v1

    .line 50
    const/4 v3, 0x2

    .line 51
    if-ne v1, v3, :cond_5

    .line 52
    sget-object v1, Landroidx/lifecycle/Lifecycling;->sClassToAdapters:Ljava/util/Map;

    .line 54
    check-cast v1, Ljava/util/HashMap;

    .line 56
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 61
    check-cast v0, Ljava/util/List;

    .line 62
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 64
    move-result v1

    .line 67
    const/4 v3, 0x1

    .line 68
    const/4 v4, 0x0

    .line 69
    if-ne v1, v3, :cond_3

    .line 70
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v0

    .line 75
    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 76
    invoke-static {v0, p1}, Landroidx/lifecycle/Lifecycling;->createGeneratedAdapter(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 78
    new-instance v0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;

    .line 81
    invoke-direct {v0}, Landroidx/lifecycle/SingleGeneratedAdapterObserver;-><init>()V

    .line 83
    goto :goto_1

    .line 86
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 87
    move-result v1

    .line 90
    new-array v1, v1, [Landroidx/lifecycle/GeneratedAdapter;

    .line 91
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 93
    move-result v3

    .line 96
    if-ge v4, v3, :cond_4

    .line 97
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    move-result-object v3

    .line 102
    check-cast v3, Ljava/lang/reflect/Constructor;

    .line 103
    invoke-static {v3, p1}, Landroidx/lifecycle/Lifecycling;->createGeneratedAdapter(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 105
    aput-object v2, v1, v4

    .line 108
    add-int/lit8 v4, v4, 0x1

    .line 110
    goto :goto_0

    .line 112
    :cond_4
    new-instance v0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;

    .line 113
    invoke-direct {v0, v1}, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;-><init>([Landroidx/lifecycle/GeneratedAdapter;)V

    .line 115
    goto :goto_1

    .line 118
    :cond_5
    new-instance v0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;

    .line 119
    invoke-direct {v0, p1}, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;-><init>(Ljava/lang/Object;)V

    .line 121
    :goto_1
    iput-object v0, p0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mLifecycleObserver:Landroidx/lifecycle/LifecycleEventObserver;

    .line 124
    iput-object p2, p0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 126
    return-void
    .line 128
.end method


# virtual methods
.method public final dispatchEvent(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 8
    move-result v2

    .line 11
    if-gez v2, :cond_0

    .line 12
    move-object v1, v0

    .line 14
    :cond_0
    iput-object v1, p0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 15
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mLifecycleObserver:Landroidx/lifecycle/LifecycleEventObserver;

    .line 17
    invoke-interface {v1, p1, p2}, Landroidx/lifecycle/LifecycleEventObserver;->onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 19
    iput-object v0, p0, Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 22
    return-void
    .line 24
.end method
