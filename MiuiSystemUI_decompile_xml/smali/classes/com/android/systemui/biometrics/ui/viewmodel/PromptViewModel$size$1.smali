.class final Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$size$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function6;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.biometrics.ui.viewmodel.PromptViewModel$size$1"
    f = "PromptViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic Z$0:Z

.field synthetic Z$1:Z

.field synthetic Z$2:Z

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p0

    .line 7
    check-cast p2, Ljava/lang/Boolean;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result p1

    .line 13
    check-cast p3, Lcom/android/systemui/biometrics/domain/model/BiometricModalities;

    .line 14
    check-cast p4, Ljava/lang/Boolean;

    .line 16
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    move-result p2

    .line 21
    check-cast p5, Lcom/android/systemui/biometrics/ui/viewmodel/FingerprintStartMode;

    .line 22
    check-cast p6, Lkotlin/coroutines/Continuation;

    .line 24
    new-instance p4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$size$1;

    .line 26
    invoke-direct {p4, p6}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$size$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 28
    iput-boolean p0, p4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$size$1;->Z$0:Z

    .line 31
    iput-boolean p1, p4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$size$1;->Z$1:Z

    .line 33
    iput-object p3, p4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$size$1;->L$0:Ljava/lang/Object;

    .line 35
    iput-boolean p2, p4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$size$1;->Z$2:Z

    .line 37
    iput-object p5, p4, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$size$1;->L$1:Ljava/lang/Object;

    .line 39
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 41
    invoke-virtual {p4, p0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$size$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object p0

    .line 46
    return-object p0
    .line 47
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$size$1;->label:I

    .line 2
    if-nez v0, :cond_7

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$size$1;->Z$0:Z

    .line 9
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$size$1;->Z$1:Z

    .line 11
    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$size$1;->L$0:Ljava/lang/Object;

    .line 13
    check-cast v1, Lcom/android/systemui/biometrics/domain/model/BiometricModalities;

    .line 15
    iget-boolean v2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$size$1;->Z$2:Z

    .line 17
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel$size$1;->L$1:Ljava/lang/Object;

    .line 19
    check-cast p0, Lcom/android/systemui/biometrics/ui/viewmodel/FingerprintStartMode;

    .line 21
    if-eqz p1, :cond_0

    .line 23
    sget-object p0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;->LARGE:Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;

    .line 25
    goto :goto_5

    .line 27
    :cond_0
    sget-object p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;->MEDIUM:Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;

    .line 28
    if-eqz v0, :cond_1

    .line 30
    goto :goto_4

    .line 32
    :cond_1
    iget-object v0, v1, Lcom/android/systemui/biometrics/domain/model/BiometricModalities;->faceProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 33
    const/4 v3, 0x1

    .line 35
    const/4 v4, 0x0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    move v0, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move v0, v4

    .line 41
    :goto_0
    if-eqz v0, :cond_4

    .line 42
    iget-object v0, v1, Lcom/android/systemui/biometrics/domain/model/BiometricModalities;->fingerprintProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 44
    if-eqz v0, :cond_3

    .line 46
    move v0, v3

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    move v0, v4

    .line 50
    :goto_1
    if-nez v0, :cond_4

    .line 51
    goto :goto_2

    .line 53
    :cond_4
    move v3, v4

    .line 54
    :goto_2
    sget-object v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;->SMALL:Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;

    .line 55
    if-eqz v3, :cond_5

    .line 57
    if-nez v2, :cond_5

    .line 59
    goto :goto_3

    .line 61
    :cond_5
    invoke-virtual {v1}, Lcom/android/systemui/biometrics/domain/model/BiometricModalities;->getHasFaceAndFingerprint()Z

    .line 62
    move-result v1

    .line 65
    if-eqz v1, :cond_6

    .line 66
    if-nez v2, :cond_6

    .line 68
    sget-object v1, Lcom/android/systemui/biometrics/ui/viewmodel/FingerprintStartMode;->Pending:Lcom/android/systemui/biometrics/ui/viewmodel/FingerprintStartMode;

    .line 70
    if-ne p0, v1, :cond_6

    .line 72
    :goto_3
    move-object p0, v0

    .line 74
    goto :goto_5

    .line 75
    :cond_6
    :goto_4
    move-object p0, p1

    .line 76
    :goto_5
    return-object p0

    .line 77
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 78
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 80
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    throw p0
    .line 85
.end method
