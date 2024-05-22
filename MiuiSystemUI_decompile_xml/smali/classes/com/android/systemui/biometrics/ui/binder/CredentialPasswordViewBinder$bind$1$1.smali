.class final Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.biometrics.ui.binder.CredentialPasswordViewBinder$bind$1$1"
    f = "CredentialPasswordViewBinder.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

.field final synthetic $imeManager:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic $onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

.field final synthetic $passwordField:Landroid/widget/ImeAwareEditText;

.field final synthetic $view:Lcom/android/systemui/biometrics/ui/CredentialPasswordView;

.field final synthetic $viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/CredentialPasswordView;Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Landroid/widget/ImeAwareEditText;Landroid/window/OnBackInvokedCallback;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->$view:Lcom/android/systemui/biometrics/ui/CredentialPasswordView;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->$passwordField:Landroid/widget/ImeAwareEditText;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->$onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    .line 8
    iput-object p5, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->$imeManager:Landroid/view/inputmethod/InputMethodManager;

    .line 10
    iput-object p6, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->$host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    .line 12
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 15
    return-void
    .line 18
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    .line 1
    new-instance v8, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->$view:Lcom/android/systemui/biometrics/ui/CredentialPasswordView;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    .line 6
    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->$passwordField:Landroid/widget/ImeAwareEditText;

    .line 8
    iget-object v4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->$onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    .line 10
    iget-object v5, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->$imeManager:Landroid/view/inputmethod/InputMethodManager;

    .line 12
    iget-object v6, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->$host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    .line 14
    move-object v0, v8

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;-><init>(Lcom/android/systemui/biometrics/ui/CredentialPasswordView;Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Landroid/widget/ImeAwareEditText;Landroid/window/OnBackInvokedCallback;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lkotlin/coroutines/Continuation;)V

    .line 18
    iput-object p1, v8, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->L$0:Ljava/lang/Object;

    .line 21
    return-object v8
    .line 23
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-object p1
    .line 17
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->label:I

    .line 2
    if-nez v0, :cond_1

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->L$0:Ljava/lang/Object;

    .line 9
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 11
    new-instance v0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$1;

    .line 13
    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    .line 15
    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->$passwordField:Landroid/widget/ImeAwareEditText;

    .line 17
    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->$onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    .line 19
    const/4 v4, 0x0

    .line 21
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Landroid/widget/ImeAwareEditText;Landroid/window/OnBackInvokedCallback;Lkotlin/coroutines/Continuation;)V

    .line 22
    const/4 v1, 0x3

    .line 25
    invoke-static {p1, v4, v4, v0, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 26
    new-instance v0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$2;

    .line 29
    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    .line 31
    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->$passwordField:Landroid/widget/ImeAwareEditText;

    .line 33
    invoke-direct {v0, v2, v3, v4}, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$2;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Landroid/widget/ImeAwareEditText;Lkotlin/coroutines/Continuation;)V

    .line 35
    invoke-static {p1, v4, v4, v0, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 38
    new-instance v0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$3;

    .line 41
    iget-object v6, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    .line 43
    iget-object v7, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->$imeManager:Landroid/view/inputmethod/InputMethodManager;

    .line 45
    iget-object v8, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->$view:Lcom/android/systemui/biometrics/ui/CredentialPasswordView;

    .line 47
    iget-object v9, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->$host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    .line 49
    iget-object v10, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->$passwordField:Landroid/widget/ImeAwareEditText;

    .line 51
    const/4 v11, 0x0

    .line 53
    move-object v5, v0

    .line 54
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$3;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/biometrics/ui/CredentialPasswordView;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Landroid/widget/ImeAwareEditText;Lkotlin/coroutines/Continuation;)V

    .line 55
    invoke-static {p1, v4, v4, v0, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->$view:Lcom/android/systemui/biometrics/ui/CredentialPasswordView;

    .line 61
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    .line 63
    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    new-instance v2, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$4;

    .line 69
    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->$onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    .line 71
    invoke-direct {v2, v0, v3, v4}, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$4;-><init>(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;Lkotlin/coroutines/Continuation;)V

    .line 73
    invoke-static {p1, v4, v4, v2, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 76
    move-result-object p1

    .line 79
    new-instance v1, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$5;

    .line 80
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1;->$onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    .line 82
    invoke-direct {v1, v0, p0}, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$5;-><init>(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    .line 84
    invoke-virtual {p1, v1}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 87
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 90
    return-object p0

    .line 92
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 93
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 95
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 97
    throw p0
    .line 100
.end method
