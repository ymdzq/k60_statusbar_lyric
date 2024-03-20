.class final Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.biometrics.ui.binder.CredentialViewBinder$bind$1$2"
    f = "CredentialViewBinder.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $descriptionView:Landroid/widget/TextView;

.field final synthetic $errorTimer:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $errorView:Landroid/widget/TextView;

.field final synthetic $host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

.field final synthetic $iconView:Landroid/widget/ImageView;

.field final synthetic $maxErrorDuration:J

.field final synthetic $subtitleView:Landroid/widget/TextView;

.field final synthetic $titleView:Landroid/widget/TextView;

.field final synthetic $view:Landroid/view/ViewGroup;

.field final synthetic $viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Landroid/widget/TextView;Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lkotlin/jvm/internal/Ref$ObjectRef;JLandroid/widget/TextView;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$titleView:Landroid/widget/TextView;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$view:Landroid/view/ViewGroup;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$subtitleView:Landroid/widget/TextView;

    .line 8
    iput-object p5, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$descriptionView:Landroid/widget/TextView;

    .line 10
    iput-object p6, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$iconView:Landroid/widget/ImageView;

    .line 12
    iput-object p7, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$errorTimer:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 14
    iput-wide p8, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$maxErrorDuration:J

    .line 16
    iput-object p10, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$errorView:Landroid/widget/TextView;

    .line 18
    iput-object p11, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    .line 20
    const/4 p1, 0x2

    .line 22
    invoke-direct {p0, p1, p12}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 23
    return-void
    .line 26
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    new-instance v13, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;

    .line 3
    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    .line 5
    iget-object v2, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$titleView:Landroid/widget/TextView;

    .line 7
    iget-object v3, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$view:Landroid/view/ViewGroup;

    .line 9
    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$subtitleView:Landroid/widget/TextView;

    .line 11
    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$descriptionView:Landroid/widget/TextView;

    .line 13
    iget-object v6, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$iconView:Landroid/widget/ImageView;

    .line 15
    iget-object v7, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$errorTimer:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 17
    iget-wide v8, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$maxErrorDuration:J

    .line 19
    iget-object v10, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$errorView:Landroid/widget/TextView;

    .line 21
    iget-object v11, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    .line 23
    move-object v0, v13

    .line 25
    move-object/from16 v12, p2

    .line 26
    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Landroid/widget/TextView;Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lkotlin/jvm/internal/Ref$ObjectRef;JLandroid/widget/TextView;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lkotlin/coroutines/Continuation;)V

    .line 28
    move-object v0, p1

    .line 31
    iput-object v0, v13, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->L$0:Ljava/lang/Object;

    .line 32
    return-object v13
    .line 34
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-object p1
    .line 17
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->label:I

    .line 4
    if-nez v1, :cond_0

    .line 6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 8
    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->L$0:Ljava/lang/Object;

    .line 11
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 13
    new-instance v10, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;

    .line 15
    iget-object v3, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    .line 17
    iget-object v4, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$titleView:Landroid/widget/TextView;

    .line 19
    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$view:Landroid/view/ViewGroup;

    .line 21
    iget-object v6, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$subtitleView:Landroid/widget/TextView;

    .line 23
    iget-object v7, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$descriptionView:Landroid/widget/TextView;

    .line 25
    iget-object v8, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$iconView:Landroid/widget/ImageView;

    .line 27
    const/4 v9, 0x0

    .line 29
    move-object v2, v10

    .line 30
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Landroid/widget/TextView;Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lkotlin/coroutines/Continuation;)V

    .line 31
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x3

    .line 35
    invoke-static {v1, v2, v2, v10, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 36
    new-instance v4, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2;

    .line 39
    iget-object v12, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    .line 41
    iget-object v13, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$errorTimer:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 43
    iget-wide v14, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$maxErrorDuration:J

    .line 45
    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$errorView:Landroid/widget/TextView;

    .line 47
    const/16 v17, 0x0

    .line 49
    move-object v11, v4

    .line 51
    move-object/from16 v16, v5

    .line 52
    invoke-direct/range {v11 .. v17}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;JLandroid/widget/TextView;Lkotlin/coroutines/Continuation;)V

    .line 54
    invoke-static {v1, v2, v2, v4, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 57
    new-instance v4, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$3;

    .line 60
    iget-object v5, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    .line 62
    iget-object v0, v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2;->$host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    .line 64
    invoke-direct {v4, v5, v0, v2}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$3;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lkotlin/coroutines/Continuation;)V

    .line 66
    invoke-static {v1, v2, v2, v4, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 69
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 72
    return-object v0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 75
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 77
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    throw v0
    .line 82
.end method
