.class final Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$8;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.keyguard.ui.binder.KeyguardBouncerViewBinder$bind$1$1$8"
    f = "KeyguardBouncerViewBinder.kt"
    l = {
        0xb4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

.field final synthetic $viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;Lcom/android/keyguard/KeyguardSecurityContainerController;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$8;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$8;->$securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 4
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$8;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$8;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$8;->$securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 6
    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$8;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;Lcom/android/keyguard/KeyguardSecurityContainerController;Lkotlin/coroutines/Continuation;)V

    .line 8
    return-object p1
    .line 11
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$8;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$8;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$8;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$8;->label:I

    .line 4
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    if-ne v1, v2, :cond_0

    .line 9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 15
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0

    .line 22
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$8;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;

    .line 26
    iget-object p1, p1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->keyguardPosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 28
    new-instance v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$2$1;

    .line 30
    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$8;->$securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 32
    const/4 v4, 0x6

    .line 34
    invoke-direct {v1, v3, v4}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$2$1;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;I)V

    .line 35
    iput v2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$1$1$8;->label:I

    .line 38
    invoke-virtual {p1, v1, p0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 40
    move-result-object p0

    .line 43
    if-ne p0, v0, :cond_2

    .line 44
    return-object v0

    .line 46
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 47
    return-object p0
    .line 49
.end method
