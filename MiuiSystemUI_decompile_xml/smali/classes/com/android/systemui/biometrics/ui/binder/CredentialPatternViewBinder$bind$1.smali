.class final Lcom/android/systemui/biometrics/ui/binder/CredentialPatternViewBinder$bind$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.biometrics.ui.binder.CredentialPatternViewBinder$bind$1"
    f = "CredentialPatternViewBinder.kt"
    l = {
        0x1a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

.field final synthetic $lockPatternView:Lcom/android/internal/widget/LockPatternView;

.field final synthetic $viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Lcom/android/internal/widget/LockPatternView;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPatternViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPatternViewBinder$bind$1;->$lockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPatternViewBinder$bind$1;->$host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    .line 6
    const/4 p1, 0x3

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    .line 2
    check-cast p2, Landroid/view/View;

    .line 4
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 6
    new-instance p2, Lcom/android/systemui/biometrics/ui/binder/CredentialPatternViewBinder$bind$1;

    .line 8
    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPatternViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    .line 10
    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPatternViewBinder$bind$1;->$lockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPatternViewBinder$bind$1;->$host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    .line 14
    invoke-direct {p2, v0, v1, p0, p3}, Lcom/android/systemui/biometrics/ui/binder/CredentialPatternViewBinder$bind$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Lcom/android/internal/widget/LockPatternView;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lkotlin/coroutines/Continuation;)V

    .line 16
    iput-object p1, p2, Lcom/android/systemui/biometrics/ui/binder/CredentialPatternViewBinder$bind$1;->L$0:Ljava/lang/Object;

    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 21
    invoke-virtual {p2, p0}, Lcom/android/systemui/biometrics/ui/binder/CredentialPatternViewBinder$bind$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 26
    return-object p0
    .line 27
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPatternViewBinder$bind$1;->label:I

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
    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPatternViewBinder$bind$1;->L$0:Ljava/lang/Object;

    .line 26
    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    .line 28
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 30
    new-instance v3, Lcom/android/systemui/biometrics/ui/binder/CredentialPatternViewBinder$bind$1$1;

    .line 32
    iget-object v4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPatternViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    .line 34
    iget-object v5, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPatternViewBinder$bind$1;->$lockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 36
    iget-object v6, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPatternViewBinder$bind$1;->$host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    .line 38
    const/4 v7, 0x0

    .line 40
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/systemui/biometrics/ui/binder/CredentialPatternViewBinder$bind$1$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Lcom/android/internal/widget/LockPatternView;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lkotlin/coroutines/Continuation;)V

    .line 41
    iput v2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPatternViewBinder$bind$1;->label:I

    .line 44
    invoke-static {p1, v1, v3, p0}, Landroidx/lifecycle/RepeatOnLifecycleKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 49
    if-ne p0, v0, :cond_2

    .line 50
    return-object v0

    .line 52
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 53
    return-object p0
    .line 55
.end method
