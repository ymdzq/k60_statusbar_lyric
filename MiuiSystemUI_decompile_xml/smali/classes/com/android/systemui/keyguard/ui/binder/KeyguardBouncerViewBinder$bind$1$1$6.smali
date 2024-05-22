.class final Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$6;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.keyguard.ui.binder.KeyguardBouncerViewBinder$bind$1$1$6"
    f = "KeyguardBouncerViewBinder.kt"
    l = {
        0xa7
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

.field final synthetic $view:Landroid/view/ViewGroup;

.field final synthetic $viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;

.field label:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/android/keyguard/KeyguardSecurityContainerController;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$6;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$6;->$securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$6;->$view:Landroid/view/ViewGroup;

    .line 6
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$6;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$6;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$6;->$securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$6;->$view:Landroid/view/ViewGroup;

    .line 8
    invoke-direct {p1, p0, v1, v0, p2}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$6;-><init>(Landroid/view/ViewGroup;Lcom/android/keyguard/KeyguardSecurityContainerController;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;Lkotlin/coroutines/Continuation;)V

    .line 10
    return-object p1
    .line 13
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$6;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$6;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$6;->label:I

    .line 4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    const/4 v3, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    if-ne v1, v3, :cond_0

    .line 11
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13
    goto :goto_1

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 17
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$6;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;

    .line 28
    iget-object p1, p1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->bouncerExpansionAmount:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 30
    new-instance v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$1$1;

    .line 32
    iget-object v4, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$6;->$securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 34
    iget-object v5, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$6;->$view:Landroid/view/ViewGroup;

    .line 36
    invoke-direct {v1, v4, v5}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$1$1;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;Landroid/view/ViewGroup;)V

    .line 38
    iput v3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$6;->label:I

    .line 41
    new-instance v3, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$6$invokeSuspend$$inlined$filter$1$2;

    .line 43
    invoke-direct {v3, v1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$6$invokeSuspend$$inlined$filter$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 45
    invoke-virtual {p1, v3, p0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 48
    move-result-object p0

    .line 51
    if-ne p0, v0, :cond_2

    .line 52
    goto :goto_0

    .line 54
    :cond_2
    move-object p0, v2

    .line 55
    :goto_0
    if-ne p0, v0, :cond_3

    .line 56
    return-object v0

    .line 58
    :cond_3
    :goto_1
    return-object v2
    .line 59
.end method
