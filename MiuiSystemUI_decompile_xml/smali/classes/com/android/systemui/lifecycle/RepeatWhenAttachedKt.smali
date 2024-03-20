.class public abstract Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static final createLifecycleOwnerAndRun(Landroid/view/View;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/ViewLifecycleOwner;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;-><init>(Landroid/view/View;)V

    .line 4
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 7
    iget-object v2, v0, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 9
    invoke-virtual {v2, v1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 14
    move-result-object v1

    .line 17
    iget-object v2, v0, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;->windowVisibleListener:Lcom/android/systemui/lifecycle/ViewLifecycleOwner$windowVisibleListener$1;

    .line 18
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnWindowVisibilityChangeListener(Landroid/view/ViewTreeObserver$OnWindowVisibilityChangeListener;)V

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 23
    move-result-object v1

    .line 26
    iget-object v2, v0, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;->windowFocusListener:Lcom/android/systemui/lifecycle/ViewLifecycleOwner$windowFocusListener$1;

    .line 27
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 29
    invoke-virtual {v0}, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;->updateState()V

    .line 32
    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 35
    move-result-object v1

    .line 38
    new-instance v2, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$createLifecycleOwnerAndRun$1$1;

    .line 39
    const/4 v3, 0x0

    .line 41
    invoke-direct {v2, p2, v0, p0, v3}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$createLifecycleOwnerAndRun$1$1;-><init>(Lkotlin/jvm/functions/Function3;Lcom/android/systemui/lifecycle/ViewLifecycleOwner;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    .line 42
    const/4 p0, 0x2

    .line 45
    invoke-static {v1, p1, v3, v2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 46
    return-object v0
    .line 49
.end method

.method public static final repeatWhenAttached(Landroid/view/View;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 5
    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {v0, p1}, Lkotlin/coroutines/CoroutineContext$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 12
    move-result-object p1

    .line 15
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 16
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 18
    new-instance v1, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$onAttachListener$1;

    .line 21
    invoke-direct {v1, v0, p0, p1, p2}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$onAttachListener$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)V

    .line 23
    invoke-virtual {p0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 29
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    invoke-static {p0, p1, p2}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->createLifecycleOwnerAndRun(Landroid/view/View;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/ViewLifecycleOwner;

    .line 35
    move-result-object p1

    .line 38
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 39
    :cond_0
    new-instance p1, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    .line 41
    invoke-direct {p1, v0, p0, v1}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$onAttachListener$1;)V

    .line 43
    return-object p1
    .line 46
.end method

.method public static synthetic repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 2
    invoke-static {p0, v0, p1}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached(Landroid/view/View;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method
