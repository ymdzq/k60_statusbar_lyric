.class final Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1"
    f = "KeyguardBottomAreaViewBinder.kt"
    l = {
        0x8d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field final synthetic $ambientIndicationArea:Landroid/view/View;

.field final synthetic $configurationBasedDimensions:Lkotlinx/coroutines/flow/MutableStateFlow;

.field final synthetic $endButton:Landroid/widget/ImageView;

.field final synthetic $indicationArea:Landroid/view/View;

.field final synthetic $indicationText:Landroid/widget/TextView;

.field final synthetic $overlayContainer:Landroid/view/View;

.field final synthetic $settingsMenu:Lcom/android/systemui/animation/view/LaunchableLinearLayout;

.field final synthetic $startButton:Landroid/widget/ImageView;

.field final synthetic $vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field final synthetic $view:Landroid/view/ViewGroup;

.field final synthetic $viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Lkotlinx/coroutines/flow/MutableStateFlow;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/systemui/animation/view/LaunchableLinearLayout;Lcom/android/systemui/statusbar/VibratorHelper;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$overlayContainer:Landroid/view/View;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$view:Landroid/view/ViewGroup;

    .line 8
    iput-object p5, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$ambientIndicationArea:Landroid/view/View;

    .line 10
    iput-object p6, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$indicationArea:Landroid/view/View;

    .line 12
    iput-object p7, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$configurationBasedDimensions:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 14
    iput-object p8, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$indicationText:Landroid/widget/TextView;

    .line 16
    iput-object p9, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$startButton:Landroid/widget/ImageView;

    .line 18
    iput-object p10, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$endButton:Landroid/widget/ImageView;

    .line 20
    iput-object p11, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$settingsMenu:Lcom/android/systemui/animation/view/LaunchableLinearLayout;

    .line 22
    iput-object p12, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 24
    const/4 p1, 0x3

    .line 26
    invoke-direct {p0, p1, p13}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 27
    return-void
    .line 30
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    .line 6
    move-object/from16 v2, p2

    .line 8
    check-cast v2, Landroid/view/View;

    .line 10
    move-object/from16 v15, p3

    .line 12
    check-cast v15, Lkotlin/coroutines/Continuation;

    .line 14
    new-instance v14, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;

    .line 16
    iget-object v3, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 18
    iget-object v4, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    .line 20
    iget-object v5, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$overlayContainer:Landroid/view/View;

    .line 22
    iget-object v6, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$view:Landroid/view/ViewGroup;

    .line 24
    iget-object v7, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$ambientIndicationArea:Landroid/view/View;

    .line 26
    iget-object v8, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$indicationArea:Landroid/view/View;

    .line 28
    iget-object v9, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$configurationBasedDimensions:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 30
    iget-object v10, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$indicationText:Landroid/widget/TextView;

    .line 32
    iget-object v11, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$startButton:Landroid/widget/ImageView;

    .line 34
    iget-object v12, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$endButton:Landroid/widget/ImageView;

    .line 36
    iget-object v13, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$settingsMenu:Lcom/android/systemui/animation/view/LaunchableLinearLayout;

    .line 38
    iget-object v0, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 40
    move-object v2, v14

    .line 42
    move-object/from16 v16, v14

    .line 43
    move-object v14, v0

    .line 45
    invoke-direct/range {v2 .. v15}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;-><init>(Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Lkotlinx/coroutines/flow/MutableStateFlow;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/systemui/animation/view/LaunchableLinearLayout;Lcom/android/systemui/statusbar/VibratorHelper;Lkotlin/coroutines/Continuation;)V

    .line 46
    move-object/from16 v0, v16

    .line 49
    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->L$0:Ljava/lang/Object;

    .line 51
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 53
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 58
    return-object v0
    .line 59
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    iget v2, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->label:I

    .line 6
    const/4 v3, 0x1

    .line 8
    if-eqz v2, :cond_1

    .line 9
    if-ne v2, v3, :cond_0

    .line 11
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0

    .line 24
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    iget-object v2, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->L$0:Ljava/lang/Object;

    .line 28
    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    .line 30
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 32
    new-instance v15, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1;

    .line 34
    iget-object v6, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 36
    iget-object v7, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    .line 38
    iget-object v8, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$overlayContainer:Landroid/view/View;

    .line 40
    iget-object v9, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$view:Landroid/view/ViewGroup;

    .line 42
    iget-object v10, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$ambientIndicationArea:Landroid/view/View;

    .line 44
    iget-object v11, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$indicationArea:Landroid/view/View;

    .line 46
    iget-object v12, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$configurationBasedDimensions:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 48
    iget-object v13, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$indicationText:Landroid/widget/TextView;

    .line 50
    iget-object v14, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$startButton:Landroid/widget/ImageView;

    .line 52
    iget-object v5, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$endButton:Landroid/widget/ImageView;

    .line 54
    iget-object v3, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$settingsMenu:Lcom/android/systemui/animation/view/LaunchableLinearLayout;

    .line 56
    move-object/from16 v19, v1

    .line 58
    iget-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->$vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 60
    const/16 v18, 0x0

    .line 62
    move-object/from16 v16, v5

    .line 64
    move-object v5, v15

    .line 66
    move-object/from16 v20, v15

    .line 67
    move-object/from16 v15, v16

    .line 69
    move-object/from16 v16, v3

    .line 71
    move-object/from16 v17, v1

    .line 73
    invoke-direct/range {v5 .. v18}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1;-><init>(Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Lkotlinx/coroutines/flow/MutableStateFlow;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/systemui/animation/view/LaunchableLinearLayout;Lcom/android/systemui/statusbar/VibratorHelper;Lkotlin/coroutines/Continuation;)V

    .line 75
    const/4 v1, 0x1

    .line 78
    iput v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;->label:I

    .line 79
    move-object/from16 v1, v20

    .line 81
    invoke-static {v2, v4, v1, v0}, Landroidx/lifecycle/RepeatOnLifecycleKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 83
    move-result-object v0

    .line 86
    move-object/from16 v1, v19

    .line 87
    if-ne v0, v1, :cond_2

    .line 89
    return-object v1

    .line 91
    :cond_2
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 92
    return-object v0
    .line 94
.end method
