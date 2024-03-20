.class public final Landroidx/lifecycle/LegacySavedStateHandleController$OnRecreation;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/savedstate/SavedStateRegistry$AutoRecreated;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRecreated(Landroidx/savedstate/SavedStateRegistryOwner;)V
    .locals 7

    .line 1
    instance-of p0, p1, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 2
    if-eqz p0, :cond_5

    .line 4
    move-object p0, p1

    .line 6
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 7
    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 9
    move-result-object p0

    .line 12
    invoke-interface {p1}, Landroidx/savedstate/SavedStateRegistryOwner;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    .line 13
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    new-instance v1, Ljava/util/HashSet;

    .line 20
    iget-object v2, p0, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    .line 22
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 24
    move-result-object v2

    .line 27
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 28
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v1

    .line 34
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v2

    .line 38
    if-eqz v2, :cond_3

    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/String;

    .line 45
    iget-object v3, p0, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    .line 47
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 52
    check-cast v2, Landroidx/lifecycle/ViewModel;

    .line 53
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    .line 55
    move-result-object v3

    .line 58
    const-string v4, "androidx.lifecycle.savedstate.vm.tag"

    .line 59
    iget-object v5, v2, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    .line 61
    const/4 v6, 0x0

    .line 63
    if-nez v5, :cond_1

    .line 64
    move-object v2, v6

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    monitor-enter v5

    .line 68
    :try_start_0
    iget-object v2, v2, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    .line 69
    check-cast v2, Ljava/util/HashMap;

    .line 71
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-result-object v2

    .line 76
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :goto_0
    check-cast v2, Landroidx/lifecycle/SavedStateHandleController;

    .line 78
    if-eqz v2, :cond_0

    .line 80
    iget-boolean v4, v2, Landroidx/lifecycle/SavedStateHandleController;->mIsAttached:Z

    .line 82
    if-nez v4, :cond_0

    .line 84
    if-eqz v4, :cond_2

    .line 86
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 88
    const-string p1, "Already attached to lifecycleOwner"

    .line 90
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    throw p0

    .line 95
    :cond_2
    const/4 p0, 0x1

    .line 96
    iput-boolean p0, v2, Landroidx/lifecycle/SavedStateHandleController;->mIsAttached:Z

    .line 97
    invoke-virtual {v3, v2}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 99
    throw v6

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    throw p0

    .line 105
    :cond_3
    new-instance p1, Ljava/util/HashSet;

    .line 106
    iget-object p0, p0, Landroidx/lifecycle/ViewModelStore;->mMap:Ljava/util/HashMap;

    .line 108
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 110
    move-result-object p0

    .line 113
    invoke-direct {p1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 114
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 117
    move-result p0

    .line 120
    if-nez p0, :cond_4

    .line 121
    invoke-virtual {v0}, Landroidx/savedstate/SavedStateRegistry;->runOnNextRecreation()V

    .line 123
    :cond_4
    return-void

    .line 126
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 127
    const-string p1, "Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner"

    .line 129
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 131
    throw p0
    .line 134
.end method
