.class final Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel$iconAsset$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.biometrics.ui.viewmodel.AuthBiometricFingerprintViewModel$iconAsset$1"
    f = "AuthBiometricFingerprintViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic Z$0:Z

.field synthetic Z$1:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel$iconAsset$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel;

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
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p1

    .line 7
    check-cast p2, Ljava/lang/Boolean;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result p2

    .line 13
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 14
    new-instance v0, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel$iconAsset$1;

    .line 16
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel$iconAsset$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel;

    .line 18
    invoke-direct {v0, p0, p3}, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel$iconAsset$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel;Lkotlin/coroutines/Continuation;)V

    .line 20
    iput-boolean p1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel$iconAsset$1;->Z$0:Z

    .line 23
    iput-boolean p2, v0, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel$iconAsset$1;->Z$1:Z

    .line 25
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27
    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel$iconAsset$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 32
    return-object p0
    .line 33
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel$iconAsset$1;->label:I

    .line 2
    if-nez v0, :cond_8

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel$iconAsset$1;->Z$0:Z

    .line 9
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel$iconAsset$1;->Z$1:Z

    .line 11
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel$iconAsset$1;->this$0:Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel;

    .line 13
    iget p0, p0, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel;->rotation:I

    .line 15
    const/4 v1, 0x1

    .line 17
    if-eq p0, v1, :cond_5

    .line 18
    const/4 v1, 0x3

    .line 20
    if-eq p0, v1, :cond_2

    .line 21
    if-eqz v0, :cond_0

    .line 23
    const p0, 0x7f120008    # @raw/biometricprompt_rear_landscape_base 'res/raw/biometricprompt_rear_landscape_base.json'

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    if-eqz p1, :cond_1

    .line 29
    const p0, 0x7f120003    # @raw/biometricprompt_folded_base_default 'res/raw/biometricprompt_folded_base_default.json'

    .line 31
    goto :goto_0

    .line 34
    :cond_1
    const p0, 0x7f120005    # @raw/biometricprompt_landscape_base 'res/raw/biometricprompt_landscape_base.json'

    .line 35
    goto :goto_0

    .line 38
    :cond_2
    if-eqz v0, :cond_3

    .line 39
    const p0, 0x7f120009    # @raw/biometricprompt_rear_portrait_base 'res/raw/biometricprompt_rear_portrait_base.json'

    .line 41
    goto :goto_0

    .line 44
    :cond_3
    if-eqz p1, :cond_4

    .line 45
    const p0, 0x7f120002    # @raw/biometricprompt_folded_base_bottomright 'res/raw/biometricprompt_folded_base_bottomright.json'

    .line 47
    goto :goto_0

    .line 50
    :cond_4
    const p0, 0x7f120006    # @raw/biometricprompt_portrait_base_bottomright 'res/raw/biometricprompt_portrait_base_bottomright.json'

    .line 51
    goto :goto_0

    .line 54
    :cond_5
    if-eqz v0, :cond_6

    .line 55
    const p0, 0x7f12000a    # @raw/biometricprompt_rear_portrait_reverse_base 'res/raw/biometricprompt_rear_portrait_reverse_base.json'

    .line 57
    goto :goto_0

    .line 60
    :cond_6
    if-eqz p1, :cond_7

    .line 61
    const p0, 0x7f120004    # @raw/biometricprompt_folded_base_topleft 'res/raw/biometricprompt_folded_base_topleft.json'

    .line 63
    goto :goto_0

    .line 66
    :cond_7
    const p0, 0x7f120007    # @raw/biometricprompt_portrait_base_topleft 'res/raw/biometricprompt_portrait_base_topleft.json'

    .line 67
    :goto_0
    new-instance p1, Ljava/lang/Integer;

    .line 70
    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 72
    return-object p1

    .line 75
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 76
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 78
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    throw p0
    .line 83
.end method
