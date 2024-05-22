.class final Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$credentialKind$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.biometrics.domain.interactor.PromptSelectorInteractorImpl$credentialKind$1"
    f = "PromptSelectorInteractor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field synthetic L$0:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$credentialKind$1;->$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

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
    check-cast p1, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;

    .line 2
    check-cast p2, Ljava/lang/Boolean;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result p2

    .line 9
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 10
    new-instance v0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$credentialKind$1;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$credentialKind$1;->$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 14
    invoke-direct {v0, p0, p3}, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$credentialKind$1;-><init>(Lcom/android/internal/widget/LockPatternUtils;Lkotlin/coroutines/Continuation;)V

    .line 16
    iput-object p1, v0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$credentialKind$1;->L$0:Ljava/lang/Object;

    .line 19
    iput-boolean p2, v0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$credentialKind$1;->Z$0:Z

    .line 21
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$credentialKind$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 28
    return-object p0
    .line 29
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$credentialKind$1;->label:I

    .line 2
    if-nez v0, :cond_4

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$credentialKind$1;->L$0:Ljava/lang/Object;

    .line 9
    check-cast p1, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;

    .line 11
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$credentialKind$1;->Z$0:Z

    .line 13
    if-eqz p1, :cond_3

    .line 15
    if-eqz v0, :cond_3

    .line 17
    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$credentialKind$1;->$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 19
    iget-object p1, p1, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;->userInfo:Lcom/android/systemui/biometrics/domain/model/BiometricUserInfo;

    .line 21
    iget p1, p1, Lcom/android/systemui/biometrics/domain/model/BiometricUserInfo;->deviceCredentialOwnerId:I

    .line 23
    invoke-static {p0, p1}, Lcom/android/systemui/biometrics/Utils;->getCredentialType(Lcom/android/internal/widget/LockPatternUtils;I)I

    .line 25
    move-result p0

    .line 28
    const/4 p1, 0x1

    .line 29
    if-eq p0, p1, :cond_2

    .line 30
    const/4 p1, 0x2

    .line 32
    if-eq p0, p1, :cond_1

    .line 33
    const/4 p1, 0x3

    .line 35
    if-eq p0, p1, :cond_0

    .line 36
    new-instance p0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric;

    .line 38
    invoke-direct {p0}, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric;-><init>()V

    .line 40
    goto :goto_0

    .line 43
    :cond_0
    sget-object p0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;->INSTANCE$1:Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    sget-object p0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;->INSTANCE$2:Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;

    .line 47
    goto :goto_0

    .line 49
    :cond_2
    sget-object p0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;->INSTANCE:Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;

    .line 50
    goto :goto_0

    .line 52
    :cond_3
    new-instance p0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric;

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric;-><init>()V

    .line 55
    :goto_0
    return-object p0

    .line 58
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 59
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 61
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p0
    .line 66
.end method
