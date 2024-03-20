.class final Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4"
    f = "UserSwitcherViewBinder.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $addButton:Landroid/view/View;

.field final synthetic $flowWidget:Landroidx/constraintlayout/helper/widget/Flow;

.field final synthetic $gridContainerView:Lcom/android/systemui/user/UserSwitcherRootView;

.field final synthetic $layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic $onFinish:Lkotlin/jvm/functions/Function0;

.field final synthetic $popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $popupMenuAdapter:Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;

.field final synthetic $view:Landroid/view/ViewGroup;

.field final synthetic $viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function0;Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;Landroidx/constraintlayout/helper/widget/Flow;Lcom/android/systemui/user/UserSwitcherRootView;Landroid/view/LayoutInflater;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$onFinish:Lkotlin/jvm/functions/Function0;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$addButton:Landroid/view/View;

    .line 8
    iput-object p5, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$view:Landroid/view/ViewGroup;

    .line 10
    iput-object p6, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$popupMenuAdapter:Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;

    .line 12
    iput-object p7, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$flowWidget:Landroidx/constraintlayout/helper/widget/Flow;

    .line 14
    iput-object p8, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$gridContainerView:Lcom/android/systemui/user/UserSwitcherRootView;

    .line 16
    iput-object p9, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$layoutInflater:Landroid/view/LayoutInflater;

    .line 18
    const/4 p1, 0x3

    .line 20
    invoke-direct {p0, p1, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 21
    return-void
    .line 24
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    .line 2
    check-cast p2, Landroid/view/View;

    .line 4
    move-object v10, p3

    .line 6
    check-cast v10, Lkotlin/coroutines/Continuation;

    .line 7
    new-instance p2, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;

    .line 9
    iget-object v1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    .line 11
    iget-object v2, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 13
    iget-object v3, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$onFinish:Lkotlin/jvm/functions/Function0;

    .line 15
    iget-object v4, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$addButton:Landroid/view/View;

    .line 17
    iget-object v5, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$view:Landroid/view/ViewGroup;

    .line 19
    iget-object v6, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$popupMenuAdapter:Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;

    .line 21
    iget-object v7, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$flowWidget:Landroidx/constraintlayout/helper/widget/Flow;

    .line 23
    iget-object v8, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$gridContainerView:Lcom/android/systemui/user/UserSwitcherRootView;

    .line 25
    iget-object v9, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$layoutInflater:Landroid/view/LayoutInflater;

    .line 27
    move-object v0, p2

    .line 29
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;-><init>(Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function0;Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;Landroidx/constraintlayout/helper/widget/Flow;Lcom/android/systemui/user/UserSwitcherRootView;Landroid/view/LayoutInflater;Lkotlin/coroutines/Continuation;)V

    .line 30
    iput-object p1, p2, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->L$0:Ljava/lang/Object;

    .line 33
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 35
    invoke-virtual {p2, p0}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-object p0
    .line 40
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->label:I

    .line 4
    if-nez v1, :cond_0

    .line 6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 8
    iget-object v1, v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->L$0:Ljava/lang/Object;

    .line 11
    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    .line 13
    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 15
    move-result-object v8

    .line 18
    new-instance v9, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1;

    .line 19
    iget-object v4, v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    .line 21
    iget-object v5, v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 23
    iget-object v6, v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$onFinish:Lkotlin/jvm/functions/Function0;

    .line 25
    const/4 v7, 0x0

    .line 27
    move-object v2, v9

    .line 28
    move-object v3, v1

    .line 29
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 30
    const/4 v13, 0x0

    .line 33
    const/4 v14, 0x3

    .line 34
    invoke-static {v8, v13, v13, v9, v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 35
    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 38
    move-result-object v15

    .line 41
    new-instance v12, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2;

    .line 42
    iget-object v4, v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    .line 44
    iget-object v5, v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$addButton:Landroid/view/View;

    .line 46
    iget-object v6, v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 48
    iget-object v7, v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$view:Landroid/view/ViewGroup;

    .line 50
    iget-object v8, v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$popupMenuAdapter:Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;

    .line 52
    iget-object v9, v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$flowWidget:Landroidx/constraintlayout/helper/widget/Flow;

    .line 54
    iget-object v10, v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$gridContainerView:Lcom/android/systemui/user/UserSwitcherRootView;

    .line 56
    iget-object v11, v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$layoutInflater:Landroid/view/LayoutInflater;

    .line 58
    const/4 v0, 0x0

    .line 60
    move-object v2, v12

    .line 61
    move-object v1, v12

    .line 62
    move-object v12, v0

    .line 63
    invoke-direct/range {v2 .. v12}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Landroid/view/View;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/ViewGroup;Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;Landroidx/constraintlayout/helper/widget/Flow;Lcom/android/systemui/user/UserSwitcherRootView;Landroid/view/LayoutInflater;Lkotlin/coroutines/Continuation;)V

    .line 64
    invoke-static {v15, v13, v13, v1, v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 67
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 70
    return-object v0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 73
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 75
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    throw v0
    .line 80
.end method
