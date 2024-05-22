.class public final Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final iconAsset:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final interactor:Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractor;

.field public rotation:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractor;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel;->interactor:Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractor;

    .line 5
    check-cast p1, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;

    .line 7
    iget-object v0, p1, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->isFolded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 9
    iget-object p1, p1, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->isInRearDisplayMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 11
    new-instance v1, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel$iconAsset$1;

    .line 13
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel$iconAsset$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel;Lkotlin/coroutines/Continuation;)V

    .line 16
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 19
    invoke-direct {v2, v0, p1, v1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 21
    iput-object v2, p0, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel;->iconAsset:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 24
    return-void
    .line 26
.end method
