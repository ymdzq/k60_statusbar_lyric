.class public final Landroidx/activity/OnBackPressedDispatcher;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public backInvokedCallbackRegistered:Z

.field public final enabledChangedCallback:Lkotlin/jvm/functions/Function0;

.field public final fallbackOnBackPressed:Ljava/lang/Runnable;

.field public invokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

.field public final onBackInvokedCallback:Landroidx/activity/OnBackPressedDispatcher$Api33Impl$$ExternalSyntheticLambda0;

.field public final onBackPressedCallbacks:Lkotlin/collections/ArrayDeque;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->fallbackOnBackPressed:Ljava/lang/Runnable;

    .line 5
    new-instance p1, Lkotlin/collections/ArrayDeque;

    .line 7
    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 9
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->onBackPressedCallbacks:Lkotlin/collections/ArrayDeque;

    .line 12
    new-instance p1, Landroidx/activity/OnBackPressedDispatcher$1;

    .line 14
    invoke-direct {p1, p0}, Landroidx/activity/OnBackPressedDispatcher$1;-><init>(Landroidx/activity/OnBackPressedDispatcher;)V

    .line 16
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->enabledChangedCallback:Lkotlin/jvm/functions/Function0;

    .line 19
    new-instance p1, Landroidx/activity/OnBackPressedDispatcher$2;

    .line 21
    invoke-direct {p1, p0}, Landroidx/activity/OnBackPressedDispatcher$2;-><init>(Landroidx/activity/OnBackPressedDispatcher;)V

    .line 23
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$Api33Impl$$ExternalSyntheticLambda0;

    .line 26
    invoke-direct {v0, p1}, Landroidx/activity/OnBackPressedDispatcher$Api33Impl$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 28
    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->onBackInvokedCallback:Landroidx/activity/OnBackPressedDispatcher$Api33Impl$$ExternalSyntheticLambda0;

    .line 31
    return-void
    .line 33
.end method


# virtual methods
.method public final addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentManager$1;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    .line 2
    move-result-object p1

    .line 5
    iget-object v0, p1, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/Lifecycle$State;

    .line 6
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 8
    if-ne v0, v1, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    .line 13
    invoke-direct {v0, p0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager$1;)V

    .line 15
    iget-object p1, p2, Landroidx/fragment/app/FragmentManager$1;->cancellables:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->updateBackInvokedCallbackState$activity_release()V

    .line 23
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher;->enabledChangedCallback:Lkotlin/jvm/functions/Function0;

    .line 26
    iput-object p0, p2, Landroidx/fragment/app/FragmentManager$1;->enabledChangedCallback:Lkotlin/jvm/functions/Function0;

    .line 28
    return-void
    .line 30
.end method

.method public final onBackPressed()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->onBackPressedCallbacks:Lkotlin/collections/ArrayDeque;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    move-result v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 8
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    move-object v2, v1

    .line 22
    check-cast v2, Landroidx/fragment/app/FragmentManager$1;

    .line 23
    iget-boolean v2, v2, Landroidx/fragment/app/FragmentManager$1;->isEnabled:Z

    .line 25
    if-eqz v2, :cond_0

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    :goto_0
    check-cast v1, Landroidx/fragment/app/FragmentManager$1;

    .line 31
    if-eqz v1, :cond_3

    .line 33
    iget-object p0, v1, Landroidx/fragment/app/FragmentManager$1;->this$0:Landroidx/fragment/app/FragmentManager;

    .line 35
    const/4 v0, 0x1

    .line 37
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    .line 38
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 41
    iget-boolean v0, v0, Landroidx/fragment/app/FragmentManager$1;->isEnabled:Z

    .line 43
    if-eqz v0, :cond_2

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    .line 47
    goto :goto_1

    .line 50
    :cond_2
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 51
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 53
    :goto_1
    return-void

    .line 56
    :cond_3
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher;->fallbackOnBackPressed:Ljava/lang/Runnable;

    .line 57
    if-eqz p0, :cond_4

    .line 59
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 61
    :cond_4
    return-void
    .line 64
.end method

.method public final updateBackInvokedCallbackState$activity_release()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->onBackPressedCallbacks:Lkotlin/collections/ArrayDeque;

    .line 2
    instance-of v1, v0, Ljava/util/Collection;

    .line 4
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 10
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 20
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 30
    check-cast v1, Landroidx/fragment/app/FragmentManager$1;

    .line 31
    iget-boolean v1, v1, Landroidx/fragment/app/FragmentManager$1;->isEnabled:Z

    .line 33
    if-eqz v1, :cond_1

    .line 35
    move v0, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    :goto_0
    move v0, v3

    .line 39
    :goto_1
    iget-object v1, p0, Landroidx/activity/OnBackPressedDispatcher;->invokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 40
    if-eqz v1, :cond_4

    .line 42
    iget-object v4, p0, Landroidx/activity/OnBackPressedDispatcher;->onBackInvokedCallback:Landroidx/activity/OnBackPressedDispatcher$Api33Impl$$ExternalSyntheticLambda0;

    .line 44
    if-eqz v4, :cond_4

    .line 46
    if-eqz v0, :cond_3

    .line 48
    iget-boolean v5, p0, Landroidx/activity/OnBackPressedDispatcher;->backInvokedCallbackRegistered:Z

    .line 50
    if-nez v5, :cond_3

    .line 52
    invoke-interface {v1, v3, v4}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 54
    iput-boolean v2, p0, Landroidx/activity/OnBackPressedDispatcher;->backInvokedCallbackRegistered:Z

    .line 57
    goto :goto_2

    .line 59
    :cond_3
    if-nez v0, :cond_4

    .line 60
    iget-boolean v0, p0, Landroidx/activity/OnBackPressedDispatcher;->backInvokedCallbackRegistered:Z

    .line 62
    if-eqz v0, :cond_4

    .line 64
    invoke-interface {v1, v4}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 66
    iput-boolean v3, p0, Landroidx/activity/OnBackPressedDispatcher;->backInvokedCallbackRegistered:Z

    .line 69
    :cond_4
    :goto_2
    return-void
    .line 71
.end method
