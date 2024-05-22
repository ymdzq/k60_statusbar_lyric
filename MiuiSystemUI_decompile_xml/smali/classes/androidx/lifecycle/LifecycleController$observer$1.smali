.class final Landroidx/lifecycle/LifecycleController$observer$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    .line 2
    move-result-object p0

    .line 5
    iget-object p0, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 6
    sget-object p2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 8
    const/4 v0, 0x0

    .line 10
    if-eq p0, p2, :cond_1

    .line 11
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    .line 13
    move-result-object p0

    .line 16
    iget-object p0, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 17
    invoke-static {v0}, Landroidx/lifecycle/LifecycleController;->access$getMinState$p(Landroidx/lifecycle/LifecycleController;)Landroidx/lifecycle/Lifecycle$State;

    .line 19
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 23
    move-result p0

    .line 26
    if-gez p0, :cond_0

    .line 27
    invoke-static {v0}, Landroidx/lifecycle/LifecycleController;->access$getDispatchQueue$p(Landroidx/lifecycle/LifecycleController;)Landroidx/lifecycle/DispatchQueue;

    .line 29
    throw v0

    .line 32
    :cond_0
    invoke-static {v0}, Landroidx/lifecycle/LifecycleController;->access$getDispatchQueue$p(Landroidx/lifecycle/LifecycleController;)Landroidx/lifecycle/DispatchQueue;

    .line 33
    throw v0

    .line 36
    :cond_1
    throw v0
    .line 37
.end method
