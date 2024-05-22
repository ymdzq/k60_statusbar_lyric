.class final Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.biometrics.domain.interactor.PromptSelectorInteractorImpl$prompt$1"
    f = "PromptSelectorInteractor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field synthetic L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/hardware/biometrics/PromptInfo;

    .line 2
    check-cast p2, Ljava/lang/Long;

    .line 4
    check-cast p3, Ljava/lang/Integer;

    .line 6
    check-cast p4, Lcom/android/systemui/biometrics/shared/model/PromptKind;

    .line 8
    check-cast p5, Lkotlin/coroutines/Continuation;

    .line 10
    new-instance p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;

    .line 12
    invoke-direct {p0, p5}, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 14
    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;->L$0:Ljava/lang/Object;

    .line 17
    iput-object p2, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;->L$1:Ljava/lang/Object;

    .line 19
    iput-object p3, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;->L$2:Ljava/lang/Object;

    .line 21
    iput-object p4, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;->L$3:Ljava/lang/Object;

    .line 23
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 30
    return-object p0
    .line 31
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;->label:I

    .line 2
    if-nez v0, :cond_2

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;->L$0:Ljava/lang/Object;

    .line 9
    check-cast p1, Landroid/hardware/biometrics/PromptInfo;

    .line 11
    iget-object v0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;->L$1:Ljava/lang/Object;

    .line 13
    check-cast v0, Ljava/lang/Long;

    .line 15
    iget-object v1, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;->L$2:Ljava/lang/Object;

    .line 17
    check-cast v1, Ljava/lang/Integer;

    .line 19
    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl$prompt$1;->L$3:Ljava/lang/Object;

    .line 21
    check-cast p0, Lcom/android/systemui/biometrics/shared/model/PromptKind;

    .line 23
    const/4 v2, 0x0

    .line 25
    if-eqz p1, :cond_1

    .line 26
    if-eqz v1, :cond_1

    .line 28
    if-nez v0, :cond_0

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    instance-of v3, p0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric;

    .line 33
    if-eqz v3, :cond_1

    .line 35
    new-instance v2, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;

    .line 37
    new-instance v3, Lcom/android/systemui/biometrics/domain/model/BiometricUserInfo;

    .line 39
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 41
    move-result v1

    .line 44
    invoke-direct {v3, v1, v1}, Lcom/android/systemui/biometrics/domain/model/BiometricUserInfo;-><init>(II)V

    .line 45
    new-instance v1, Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 50
    move-result-wide v4

    .line 53
    invoke-direct {v1, v4, v5}, Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;-><init>(J)V

    .line 54
    check-cast p0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric;

    .line 57
    iget-object p0, p0, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric;->activeModalities:Lcom/android/systemui/biometrics/domain/model/BiometricModalities;

    .line 59
    invoke-direct {v2, p1, v3, v1, p0}, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Biometric;-><init>(Landroid/hardware/biometrics/PromptInfo;Lcom/android/systemui/biometrics/domain/model/BiometricUserInfo;Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;Lcom/android/systemui/biometrics/domain/model/BiometricModalities;)V

    .line 61
    :cond_1
    :goto_0
    return-object v2

    .line 64
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 65
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 67
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p0
    .line 72
.end method
