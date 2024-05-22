.class final Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isTryAgainButtonVisible$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.biometrics.ui.viewmodel.PromptViewModel$isTryAgainButtonVisible$1"
    f = "PromptViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p0

    .line 7
    check-cast p2, Lcom/android/systemui/biometrics/domain/model/BiometricModalities;

    .line 8
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 10
    new-instance p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isTryAgainButtonVisible$1;

    .line 12
    invoke-direct {p1, p3}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isTryAgainButtonVisible$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 14
    iput-boolean p0, p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isTryAgainButtonVisible$1;->Z$0:Z

    .line 17
    iput-object p2, p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isTryAgainButtonVisible$1;->L$0:Ljava/lang/Object;

    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 21
    invoke-virtual {p1, p0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isTryAgainButtonVisible$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 26
    return-object p0
    .line 27
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isTryAgainButtonVisible$1;->label:I

    .line 2
    if-nez v0, :cond_4

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isTryAgainButtonVisible$1;->Z$0:Z

    .line 9
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$isTryAgainButtonVisible$1;->L$0:Ljava/lang/Object;

    .line 11
    check-cast p0, Lcom/android/systemui/biometrics/domain/model/BiometricModalities;

    .line 13
    const/4 v0, 0x0

    .line 15
    if-eqz p1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/android/systemui/biometrics/domain/model/BiometricModalities;->faceProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 18
    const/4 v1, 0x1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    move p1, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p1, v0

    .line 25
    :goto_0
    if-eqz p1, :cond_2

    .line 26
    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/model/BiometricModalities;->fingerprintProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 28
    if-eqz p0, :cond_1

    .line 30
    move p0, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move p0, v0

    .line 34
    :goto_1
    if-nez p0, :cond_2

    .line 35
    move p0, v1

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move p0, v0

    .line 39
    :goto_2
    if-eqz p0, :cond_3

    .line 40
    move v0, v1

    .line 42
    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 48
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p0
    .line 55
.end method
