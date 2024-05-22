.class final Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bind$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.qs.footer.ui.binder.FooterActionsViewBinder$bind$1$1$1"
    f = "FooterActionsViewBinder.kt"
    l = {
        0x70
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $view:Landroid/widget/LinearLayout;

.field final synthetic $viewModel:Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;Landroid/widget/LinearLayout;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bind$1$1$1;->$viewModel:Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bind$1$1$1;->$view:Landroid/widget/LinearLayout;

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
    new-instance p1, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bind$1$1$1;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bind$1$1$1;->$viewModel:Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bind$1$1$1;->$view:Landroid/widget/LinearLayout;

    .line 6
    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bind$1$1$1;-><init>(Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;Landroid/widget/LinearLayout;Lkotlin/coroutines/Continuation;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bind$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bind$1$1$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bind$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bind$1$1$1;->label:I

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
    iget-object p1, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bind$1$1$1;->$viewModel:Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;

    .line 28
    iget-object v1, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bind$1$1$1;->$view:Landroid/widget/LinearLayout;

    .line 30
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v1

    .line 35
    iput v3, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bind$1$1$1;->label:I

    .line 36
    iget-object v3, p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;->footerActionsInteractor:Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;

    .line 38
    iget-object v3, v3, Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl;->deviceMonitoringDialogRequests:Lkotlinx/coroutines/flow/Flow;

    .line 40
    new-instance v4, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$observeDeviceMonitoringDialogRequests$2;

    .line 42
    invoke-direct {v4, p1, v1}, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$observeDeviceMonitoringDialogRequests$2;-><init>(Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;Landroid/content/Context;)V

    .line 44
    invoke-interface {v3, v4, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 47
    move-result-object p0

    .line 50
    if-ne p0, v0, :cond_2

    .line 51
    goto :goto_0

    .line 53
    :cond_2
    move-object p0, v2

    .line 54
    :goto_0
    if-ne p0, v0, :cond_3

    .line 55
    return-object v0

    .line 57
    :cond_3
    :goto_1
    return-object v2
    .line 58
.end method
