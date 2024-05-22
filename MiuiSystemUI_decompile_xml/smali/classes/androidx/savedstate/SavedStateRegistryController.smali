.class public final Landroidx/savedstate/SavedStateRegistryController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public attached:Z

.field public final owner:Landroidx/savedstate/SavedStateRegistryOwner;

.field public final savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;


# direct methods
.method public constructor <init>(Landroidx/savedstate/SavedStateRegistryOwner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistryController;->owner:Landroidx/savedstate/SavedStateRegistryOwner;

    .line 5
    new-instance p1, Landroidx/savedstate/SavedStateRegistry;

    .line 7
    invoke-direct {p1}, Landroidx/savedstate/SavedStateRegistry;-><init>()V

    .line 9
    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistryController;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final performAttach()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistryController;->owner:Landroidx/savedstate/SavedStateRegistryOwner;

    .line 2
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    .line 4
    move-result-object v1

    .line 7
    iget-object v2, v1, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 8
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    .line 10
    const/4 v4, 0x1

    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    move v2, v4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-eqz v2, :cond_2

    .line 18
    new-instance v2, Landroidx/savedstate/Recreator;

    .line 20
    invoke-direct {v2, v0}, Landroidx/savedstate/Recreator;-><init>(Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 22
    invoke-virtual {v1, v2}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 25
    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistryController;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    .line 28
    iget-boolean v2, v0, Landroidx/savedstate/SavedStateRegistry;->attached:Z

    .line 30
    xor-int/2addr v2, v4

    .line 32
    if-eqz v2, :cond_1

    .line 33
    new-instance v2, Landroidx/savedstate/SavedStateRegistry$$ExternalSyntheticLambda0;

    .line 35
    invoke-direct {v2, v0}, Landroidx/savedstate/SavedStateRegistry$$ExternalSyntheticLambda0;-><init>(Landroidx/savedstate/SavedStateRegistry;)V

    .line 37
    invoke-virtual {v1, v2}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 40
    iput-boolean v4, v0, Landroidx/savedstate/SavedStateRegistry;->attached:Z

    .line 43
    iput-boolean v4, p0, Landroidx/savedstate/SavedStateRegistryController;->attached:Z

    .line 45
    return-void

    .line 47
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 48
    const-string v0, "SavedStateRegistry was already attached."

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 55
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p0

    .line 59
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 60
    const-string v0, "Restarter must be created only during owner\'s initialization stage"

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 67
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p0
    .line 71
.end method

.method public final performRestore(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/savedstate/SavedStateRegistryController;->attached:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/savedstate/SavedStateRegistryController;->performAttach()V

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistryController;->owner:Landroidx/savedstate/SavedStateRegistryOwner;

    .line 9
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    .line 11
    move-result-object v0

    .line 14
    iget-object v1, v0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 15
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 17
    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    .line 19
    move-result v1

    .line 22
    const/4 v2, 0x1

    .line 23
    xor-int/2addr v1, v2

    .line 24
    if-eqz v1, :cond_4

    .line 25
    iget-object p0, p0, Landroidx/savedstate/SavedStateRegistryController;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    .line 27
    iget-boolean v0, p0, Landroidx/savedstate/SavedStateRegistry;->attached:Z

    .line 29
    if-eqz v0, :cond_3

    .line 31
    iget-boolean v0, p0, Landroidx/savedstate/SavedStateRegistry;->isRestored:Z

    .line 33
    xor-int/2addr v0, v2

    .line 35
    if-eqz v0, :cond_2

    .line 36
    if-eqz p1, :cond_1

    .line 38
    const-string v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 42
    move-result-object p1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p1, 0x0

    .line 47
    :goto_0
    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistry;->restoredState:Landroid/os/Bundle;

    .line 48
    iput-boolean v2, p0, Landroidx/savedstate/SavedStateRegistry;->isRestored:Z

    .line 50
    return-void

    .line 52
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 53
    const-string p1, "SavedStateRegistry was already restored."

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    throw p0

    .line 64
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 65
    const-string p1, "You must call performAttach() before calling performRestore(Bundle)."

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 72
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    throw p0

    .line 76
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 77
    const-string p1, "performRestore cannot be called when owner is "

    .line 79
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    iget-object p1, v0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 84
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 92
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 95
    move-result-object p0

    .line 98
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 99
    throw p1
    .line 102
.end method

.method public final performSave(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/savedstate/SavedStateRegistryController;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Landroid/os/Bundle;

    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    iget-object v1, p0, Landroidx/savedstate/SavedStateRegistry;->restoredState:Landroid/os/Bundle;

    .line 12
    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 16
    :cond_0
    iget-object p0, p0, Landroidx/savedstate/SavedStateRegistry;->components:Landroidx/arch/core/internal/SafeIterableMap;

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    new-instance v1, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    .line 24
    invoke-direct {v1, p0}, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;-><init>(Landroidx/arch/core/internal/SafeIterableMap;)V

    .line 26
    iget-object p0, p0, Landroidx/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    .line 29
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 31
    invoke-virtual {p0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :goto_0
    invoke-virtual {v1}, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->hasNext()Z

    .line 36
    move-result p0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    invoke-virtual {v1}, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->next()Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 45
    check-cast p0, Ljava/util/Map$Entry;

    .line 46
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 51
    check-cast v2, Ljava/lang/String;

    .line 52
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 54
    move-result-object p0

    .line 57
    check-cast p0, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    .line 58
    invoke-interface {p0}, Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;->saveState()Landroid/os/Bundle;

    .line 60
    move-result-object p0

    .line 63
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 64
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    .line 68
    move-result p0

    .line 71
    if-nez p0, :cond_2

    .line 72
    const-string p0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 74
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 76
    :cond_2
    return-void
    .line 79
.end method
