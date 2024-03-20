.class final Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.dreams.DreamOverlayAnimationsController$init$1"
    f = "DreamOverlayAnimationsController.kt"
    l = {
        0x62
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $view:Landroid/view/View;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;Landroid/view/View;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->$view:Landroid/view/View;

    .line 4
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    .line 2
    check-cast p2, Landroid/view/View;

    .line 4
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 6
    new-instance p2, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;

    .line 8
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->$view:Landroid/view/View;

    .line 12
    invoke-direct {p2, v0, p0, p3}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;-><init>(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    .line 14
    iput-object p1, p2, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->L$0:Ljava/lang/Object;

    .line 17
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    invoke-virtual {p2, p0}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 24
    return-object p0
    .line 25
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->label:I

    .line 4
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    if-ne v1, v2, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->L$0:Ljava/lang/Object;

    .line 11
    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$configCallback$1;

    .line 13
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 15
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 19
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p0

    .line 26
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    iget-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->L$0:Ljava/lang/Object;

    .line 30
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    .line 32
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 34
    iget-object v3, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->$view:Landroid/view/View;

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    new-instance v1, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$ConfigurationBasedDimensions;

    .line 41
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 43
    move-result-object v3

    .line 46
    const v4, 0x7f07031c    # @dimen/dream_overlay_exit_y_offset '40.0dp'

    .line 47
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 50
    move-result v3

    .line 53
    invoke-direct {v1, v3}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$ConfigurationBasedDimensions;-><init>(I)V

    .line 54
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 57
    move-result-object v1

    .line 60
    new-instance v3, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$configCallback$1;

    .line 61
    iget-object v4, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 63
    iget-object v5, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->$view:Landroid/view/View;

    .line 65
    invoke-direct {v3, v1, v4, v5}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$configCallback$1;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;Lcom/android/systemui/dreams/DreamOverlayAnimationsController;Landroid/view/View;)V

    .line 67
    iget-object v4, v4, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->configController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 70
    check-cast v4, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 72
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 74
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 77
    new-instance v5, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1;

    .line 79
    iget-object v6, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 81
    const/4 v7, 0x0

    .line 83
    invoke-direct {v5, v1, v6, v7}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/android/systemui/dreams/DreamOverlayAnimationsController;Lkotlin/coroutines/Continuation;)V

    .line 84
    iput-object v3, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->L$0:Ljava/lang/Object;

    .line 87
    iput v2, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->label:I

    .line 89
    invoke-static {p1, v4, v5, p0}, Landroidx/lifecycle/RepeatOnLifecycleKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 91
    move-result-object p1

    .line 94
    if-ne p1, v0, :cond_2

    .line 95
    return-object v0

    .line 97
    :cond_2
    move-object v0, v3

    .line 98
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 99
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->configController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 101
    check-cast p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 105
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 108
    return-object p0
    .line 110
.end method
