.class final Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$2$1"
    f = "UserSwitcherViewBinder.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $addButton:Landroid/view/View;

.field final synthetic $flowWidget:Landroidx/constraintlayout/helper/widget/Flow;

.field final synthetic $gridContainerView:Lcom/android/systemui/user/UserSwitcherRootView;

.field final synthetic $layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic $popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $popupMenuAdapter:Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;

.field final synthetic $view:Landroid/view/ViewGroup;

.field final synthetic $viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Landroid/view/View;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/ViewGroup;Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;Landroidx/constraintlayout/helper/widget/Flow;Lcom/android/systemui/user/UserSwitcherRootView;Landroid/view/LayoutInflater;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$addButton:Landroid/view/View;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$view:Landroid/view/ViewGroup;

    .line 8
    iput-object p5, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$popupMenuAdapter:Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;

    .line 10
    iput-object p6, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$flowWidget:Landroidx/constraintlayout/helper/widget/Flow;

    .line 12
    iput-object p7, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$gridContainerView:Lcom/android/systemui/user/UserSwitcherRootView;

    .line 14
    iput-object p8, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$layoutInflater:Landroid/view/LayoutInflater;

    .line 16
    const/4 p1, 0x2

    .line 18
    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 19
    return-void
    .line 22
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11

    .line 1
    new-instance v10, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$addButton:Landroid/view/View;

    .line 6
    iget-object v3, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    iget-object v4, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$view:Landroid/view/ViewGroup;

    .line 10
    iget-object v5, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$popupMenuAdapter:Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;

    .line 12
    iget-object v6, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$flowWidget:Landroidx/constraintlayout/helper/widget/Flow;

    .line 14
    iget-object v7, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$gridContainerView:Lcom/android/systemui/user/UserSwitcherRootView;

    .line 16
    iget-object v8, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$layoutInflater:Landroid/view/LayoutInflater;

    .line 18
    move-object v0, v10

    .line 20
    move-object v9, p2

    .line 21
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;-><init>(Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Landroid/view/View;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/ViewGroup;Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;Landroidx/constraintlayout/helper/widget/Flow;Lcom/android/systemui/user/UserSwitcherRootView;Landroid/view/LayoutInflater;Lkotlin/coroutines/Continuation;)V

    .line 22
    iput-object p1, v10, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->L$0:Ljava/lang/Object;

    .line 25
    return-object v10
    .line 27
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-object p1
    .line 17
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->label:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->L$0:Ljava/lang/Object;

    .line 9
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 11
    new-instance v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$1;

    .line 13
    iget-object v1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    .line 15
    iget-object v2, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$addButton:Landroid/view/View;

    .line 17
    const/4 v3, 0x0

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$1;-><init>(Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    .line 20
    const/4 v1, 0x3

    .line 23
    invoke-static {p1, v3, v3, v0, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 24
    new-instance v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2;

    .line 27
    iget-object v5, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    .line 29
    iget-object v6, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 31
    iget-object v7, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$view:Landroid/view/ViewGroup;

    .line 33
    iget-object v8, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$addButton:Landroid/view/View;

    .line 35
    iget-object v9, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$popupMenuAdapter:Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;

    .line 37
    const/4 v10, 0x0

    .line 39
    move-object v4, v0

    .line 40
    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$2;-><init>(Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;Lkotlin/coroutines/Continuation;)V

    .line 41
    invoke-static {p1, v3, v3, v0, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 44
    new-instance v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$3;

    .line 47
    iget-object v2, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    .line 49
    iget-object v4, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$popupMenuAdapter:Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;

    .line 51
    invoke-direct {v0, v2, v4, v3}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$3;-><init>(Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;Lkotlin/coroutines/Continuation;)V

    .line 53
    invoke-static {p1, v3, v3, v0, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 56
    new-instance v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$4;

    .line 59
    iget-object v2, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    .line 61
    iget-object v4, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$flowWidget:Landroidx/constraintlayout/helper/widget/Flow;

    .line 63
    invoke-direct {v0, v2, v4, v3}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$4;-><init>(Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Landroidx/constraintlayout/helper/widget/Flow;Lkotlin/coroutines/Continuation;)V

    .line 65
    invoke-static {p1, v3, v3, v0, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 68
    new-instance v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$5;

    .line 71
    iget-object v6, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    .line 73
    iget-object v7, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$gridContainerView:Lcom/android/systemui/user/UserSwitcherRootView;

    .line 75
    iget-object v8, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$flowWidget:Landroidx/constraintlayout/helper/widget/Flow;

    .line 77
    iget-object v9, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$layoutInflater:Landroid/view/LayoutInflater;

    .line 79
    iget-object v10, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1;->$view:Landroid/view/ViewGroup;

    .line 81
    const/4 v11, 0x0

    .line 83
    move-object v5, v0

    .line 84
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$5;-><init>(Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Lcom/android/systemui/user/UserSwitcherRootView;Landroidx/constraintlayout/helper/widget/Flow;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lkotlin/coroutines/Continuation;)V

    .line 85
    invoke-static {p1, v3, v3, v0, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 88
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 91
    return-object p0

    .line 93
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 94
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 96
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 98
    throw p0
    .line 101
.end method
