.class final Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$errorMessage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.biometrics.ui.viewmodel.CredentialViewModel$errorMessage$1"
    f = "CredentialViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$errorMessage$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    .line 2
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail;

    .line 2
    check-cast p2, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;

    .line 4
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 6
    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$errorMessage$1;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$errorMessage$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    .line 10
    invoke-direct {v0, p0, p3}, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$errorMessage$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Lkotlin/coroutines/Continuation;)V

    .line 12
    iput-object p1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$errorMessage$1;->L$0:Ljava/lang/Object;

    .line 15
    iput-object p2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$errorMessage$1;->L$1:Ljava/lang/Object;

    .line 17
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$errorMessage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 24
    return-object p0
    .line 25
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$errorMessage$1;->label:I

    .line 2
    if-nez v0, :cond_5

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$errorMessage$1;->L$0:Ljava/lang/Object;

    .line 9
    check-cast p1, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail;

    .line 11
    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$errorMessage$1;->L$1:Ljava/lang/Object;

    .line 13
    check-cast v0, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;

    .line 15
    instance-of v1, p1, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Error;

    .line 17
    if-eqz v1, :cond_1

    .line 19
    check-cast p1, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Error;

    .line 21
    iget-object p1, p1, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Error;->error:Ljava/lang/String;

    .line 23
    if-nez p1, :cond_3

    .line 25
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$errorMessage$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    .line 27
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->applicationContext:Landroid/content/Context;

    .line 29
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-class p1, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Password;

    .line 38
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 40
    move-result-object p1

    .line 43
    invoke-static {p0, p1}, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModelKt;->asBadCredentialErrorMessage(Landroid/content/Context;Lkotlin/jvm/internal/ClassReference;)Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    instance-of p0, p1, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Throttled;

    .line 49
    if-eqz p0, :cond_2

    .line 51
    check-cast p1, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Throttled;

    .line 53
    iget-object p1, p1, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Throttled;->error:Ljava/lang/String;

    .line 55
    goto :goto_1

    .line 57
    :cond_2
    if-nez p1, :cond_4

    .line 58
    const-string p1, ""

    .line 60
    :cond_3
    :goto_1
    return-object p1

    .line 62
    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 63
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 65
    throw p0

    .line 68
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 69
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 71
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    throw p0
    .line 76
.end method
