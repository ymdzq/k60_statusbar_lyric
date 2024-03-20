.class final Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.biometrics.ui.binder.CredentialViewBinder$bind$1"
    f = "CredentialViewBinder.kt"
    l = {
        0x42
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $animatePanel:Z

.field final synthetic $descriptionView:Landroid/widget/TextView;

.field final synthetic $errorTimer:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $errorView:Landroid/widget/TextView;

.field final synthetic $host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

.field final synthetic $iconView:Landroid/widget/ImageView;

.field final synthetic $maxErrorDuration:J

.field final synthetic $panelViewController:Lcom/android/systemui/biometrics/AuthPanelController;

.field final synthetic $subtitleView:Landroid/widget/TextView;

.field final synthetic $titleView:Landroid/widget/TextView;

.field final synthetic $view:Landroid/view/ViewGroup;

.field final synthetic $viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(ZLcom/android/systemui/biometrics/AuthPanelController;Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Landroid/widget/TextView;Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lkotlin/jvm/internal/Ref$ObjectRef;JLandroid/widget/TextView;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$animatePanel:Z

    .line 2
    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$panelViewController:Lcom/android/systemui/biometrics/AuthPanelController;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$titleView:Landroid/widget/TextView;

    .line 8
    iput-object p5, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$view:Landroid/view/ViewGroup;

    .line 10
    iput-object p6, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$subtitleView:Landroid/widget/TextView;

    .line 12
    iput-object p7, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$descriptionView:Landroid/widget/TextView;

    .line 14
    iput-object p8, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$iconView:Landroid/widget/ImageView;

    .line 16
    iput-object p9, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$errorTimer:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 18
    iput-wide p10, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$maxErrorDuration:J

    .line 20
    iput-object p12, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$errorView:Landroid/widget/TextView;

    .line 22
    iput-object p13, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    .line 24
    const/4 p1, 0x3

    .line 26
    invoke-direct {p0, p1, p14}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 27
    return-void
    .line 30
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

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
    move-object/from16 v16, p3

    .line 12
    check-cast v16, Lkotlin/coroutines/Continuation;

    .line 14
    new-instance v15, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;

    .line 16
    iget-boolean v3, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$animatePanel:Z

    .line 18
    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$panelViewController:Lcom/android/systemui/biometrics/AuthPanelController;

    .line 20
    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    .line 22
    iget-object v6, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$titleView:Landroid/widget/TextView;

    .line 24
    iget-object v7, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$view:Landroid/view/ViewGroup;

    .line 26
    iget-object v8, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$subtitleView:Landroid/widget/TextView;

    .line 28
    iget-object v9, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$descriptionView:Landroid/widget/TextView;

    .line 30
    iget-object v10, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$iconView:Landroid/widget/ImageView;

    .line 32
    iget-object v11, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$errorTimer:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 34
    iget-wide v12, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$maxErrorDuration:J

    .line 36
    iget-object v14, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$errorView:Landroid/widget/TextView;

    .line 38
    iget-object v0, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    .line 40
    move-object v2, v15

    .line 42
    move-object/from16 v17, v15

    .line 43
    move-object v15, v0

    .line 45
    invoke-direct/range {v2 .. v16}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;-><init>(ZLcom/android/systemui/biometrics/AuthPanelController;Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Landroid/widget/TextView;Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lkotlin/jvm/internal/Ref$ObjectRef;JLandroid/widget/TextView;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lkotlin/coroutines/Continuation;)V

    .line 46
    move-object/from16 v0, v17

    .line 49
    iput-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->L$0:Ljava/lang/Object;

    .line 51
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 53
    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 58
    return-object v0
    .line 59
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    iget v2, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->label:I

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
    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->L$0:Ljava/lang/Object;

    .line 28
    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    .line 30
    iget-boolean v4, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$animatePanel:Z

    .line 32
    if-eqz v4, :cond_2

    .line 34
    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$panelViewController:Lcom/android/systemui/biometrics/AuthPanelController;

    .line 36
    iput-boolean v3, v4, Lcom/android/systemui/biometrics/AuthPanelController;->mUseFullScreen:Z

    .line 38
    iget v5, v4, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerWidth:I

    .line 40
    iget v6, v4, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerHeight:I

    .line 42
    const/4 v7, 0x0

    .line 44
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/biometrics/AuthPanelController;->updateForContentDimensions(III)V

    .line 45
    :cond_2
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 48
    new-instance v15, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;

    .line 50
    iget-object v6, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    .line 52
    iget-object v7, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$titleView:Landroid/widget/TextView;

    .line 54
    iget-object v8, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$view:Landroid/view/ViewGroup;

    .line 56
    iget-object v9, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$subtitleView:Landroid/widget/TextView;

    .line 58
    iget-object v10, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$descriptionView:Landroid/widget/TextView;

    .line 60
    iget-object v11, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$iconView:Landroid/widget/ImageView;

    .line 62
    iget-object v12, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$errorTimer:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 64
    iget-wide v13, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$maxErrorDuration:J

    .line 66
    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$errorView:Landroid/widget/TextView;

    .line 68
    iget-object v3, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->$host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    .line 70
    const/16 v17, 0x0

    .line 72
    move-object/from16 v16, v5

    .line 74
    move-object v5, v15

    .line 76
    move-object/from16 v18, v1

    .line 77
    move-object v1, v15

    .line 79
    move-object/from16 v15, v16

    .line 80
    move-object/from16 v16, v3

    .line 82
    invoke-direct/range {v5 .. v17}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Landroid/widget/TextView;Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lkotlin/jvm/internal/Ref$ObjectRef;JLandroid/widget/TextView;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lkotlin/coroutines/Continuation;)V

    .line 84
    const/4 v3, 0x1

    .line 87
    iput v3, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;->label:I

    .line 88
    invoke-static {v2, v4, v1, v0}, Landroidx/lifecycle/RepeatOnLifecycleKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 90
    move-result-object v0

    .line 93
    move-object/from16 v1, v18

    .line 94
    if-ne v0, v1, :cond_3

    .line 96
    return-object v1

    .line 98
    :cond_3
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 99
    return-object v0
    .line 101
.end method
