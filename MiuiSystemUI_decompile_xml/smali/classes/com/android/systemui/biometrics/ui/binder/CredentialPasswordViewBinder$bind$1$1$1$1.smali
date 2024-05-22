.class public final Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $$this$launch:Ljava/lang/Object;

.field public final synthetic $onBackInvokedCallback:Ljava/lang/Object;

.field public final synthetic $passwordField:Landroid/widget/ImeAwareEditText;

.field public final synthetic $r8$classId:I

.field public final synthetic $viewModel:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/biometrics/ui/CredentialPasswordView;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Landroid/widget/ImeAwareEditText;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$1$1;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$1$1;->$onBackInvokedCallback:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$1$1;->$$this$launch:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$1$1;->$viewModel:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$1$1;->$passwordField:Landroid/widget/ImeAwareEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImeAwareEditText;Landroid/window/OnBackInvokedCallback;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$1$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$1$1;->$passwordField:Landroid/widget/ImeAwareEditText;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$1$1;->$onBackInvokedCallback:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$1$1;->$$this$launch:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$1$1;->$viewModel:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    iget v0, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$1$1;->$r8$classId:I

    .line 4
    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$1$1;->$onBackInvokedCallback:Ljava/lang/Object;

    .line 6
    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$1$1;->$viewModel:Ljava/lang/Object;

    .line 8
    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$1$1;->$$this$launch:Ljava/lang/Object;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$1$1;->$passwordField:Landroid/widget/ImeAwareEditText;

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 14
    goto :goto_0

    .line 17
    :pswitch_0
    check-cast p1, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialHeaderViewModel;

    .line 18
    move-object v0, p1

    .line 20
    check-cast v0, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;

    .line 21
    iget-object v0, v0, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->user:Landroid/os/UserHandle;

    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/ImeAwareEditText;->setTextOperationUser(Landroid/os/UserHandle;)V

    .line 25
    new-instance v0, Lcom/android/systemui/biometrics/ui/binder/OnImeSubmitListener;

    .line 28
    new-instance v4, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$1$1$1;

    .line 30
    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 32
    check-cast v2, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    .line 34
    invoke-direct {v4, v3, v2, p1}, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$1$1$1$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Lcom/android/systemui/biometrics/ui/viewmodel/CredentialHeaderViewModel;)V

    .line 36
    invoke-direct {v0, v4}, Lcom/android/systemui/biometrics/ui/binder/OnImeSubmitListener;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/ImeAwareEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 42
    new-instance p1, Lcom/android/systemui/biometrics/ui/binder/OnBackButtonListener;

    .line 45
    check-cast v1, Landroid/window/OnBackInvokedCallback;

    .line 47
    invoke-direct {p1, v1}, Lcom/android/systemui/biometrics/ui/binder/OnBackButtonListener;-><init>(Landroid/window/OnBackInvokedCallback;)V

    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/ImeAwareEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 52
    return-object p2

    .line 55
    :goto_0
    check-cast p1, [B

    .line 56
    if-eqz p1, :cond_0

    .line 58
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 60
    check-cast v3, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;

    .line 62
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    .line 64
    move-result-object p0

    .line 67
    const/4 v0, 0x0

    .line 68
    invoke-virtual {v1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 69
    check-cast v2, Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    .line 72
    check-cast v2, Lcom/android/systemui/biometrics/AuthContainerView;

    .line 74
    iput-object p1, v2, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialAttestation:[B

    .line 76
    const/4 p0, 0x1

    .line 78
    const/4 p1, 0x7

    .line 79
    invoke-virtual {v2, p1, p0}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(IZ)V

    .line 80
    goto :goto_1

    .line 83
    :cond_0
    const-string p1, ""

    .line 84
    invoke-virtual {p0, p1}, Landroid/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :goto_1
    return-object p2

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 90
.end method
