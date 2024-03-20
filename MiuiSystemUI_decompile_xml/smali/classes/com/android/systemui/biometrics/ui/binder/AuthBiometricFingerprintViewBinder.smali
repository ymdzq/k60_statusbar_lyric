.class public abstract Lcom/android/systemui/biometrics/ui/binder/AuthBiometricFingerprintViewBinder;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static final bind(Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->isSfps:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->getIconView()Lcom/airbnb/lottie/LottieAnimationView;

    .line 6
    move-result-object p0

    .line 9
    new-instance v0, Lcom/android/systemui/biometrics/ui/binder/AuthBiometricFingerprintIconViewBinder$bind$1;

    .line 10
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/biometrics/ui/binder/AuthBiometricFingerprintIconViewBinder$bind$1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel;Lkotlin/coroutines/Continuation;)V

    .line 13
    invoke-static {p0, v0}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    .line 16
    :cond_0
    return-void
    .line 19
.end method
