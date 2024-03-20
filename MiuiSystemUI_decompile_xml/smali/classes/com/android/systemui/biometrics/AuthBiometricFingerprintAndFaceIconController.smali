.class public Lcom/android/systemui/biometrics/AuthBiometricFingerprintAndFaceIconController;
.super Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final actsAsConfirmButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;-><init>(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 2
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintAndFaceIconController;->actsAsConfirmButton:Z

    .line 6
    return-void
    .line 8
.end method


# virtual methods
.method public final getActsAsConfirmButton()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintAndFaceIconController;->actsAsConfirmButton:Z

    .line 2
    return p0
    .line 4
.end method

.method public final getAnimationForTransition(II)Ljava/lang/Integer;
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    if-eq p2, v0, :cond_2

    .line 3
    const/4 v1, 0x6

    .line 5
    if-eq p2, v1, :cond_0

    .line 6
    invoke-super {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->getAnimationForTransition(II)Ljava/lang/Integer;

    .line 8
    move-result-object p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    if-ne p1, v0, :cond_1

    .line 13
    const p0, 0x7f120024    # @raw/fingerprint_dialogue_unlocked_to_checkmark_success_lottie 'res/raw/fingerprint_dialogue_unlocked_to_checkmark_success_lottie.json'

    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object p0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->getAnimationForTransition(II)Ljava/lang/Integer;

    .line 23
    move-result-object p0

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    const/4 p0, 0x3

    .line 28
    if-eq p1, p0, :cond_3

    .line 29
    const/4 p0, 0x4

    .line 31
    if-eq p1, p0, :cond_3

    .line 32
    const p0, 0x7f120023    # @raw/fingerprint_dialogue_fingerprint_to_unlock_lottie 'res/raw/fingerprint_dialogue_fingerprint_to_unlock_lottie.json'

    .line 34
    goto :goto_0

    .line 37
    :cond_3
    const p0, 0x7f120020    # @raw/fingerprint_dialogue_error_to_unlock_lottie 'res/raw/fingerprint_dialogue_error_to_unlock_lottie.json'

    .line 38
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object p0

    .line 44
    :goto_1
    return-object p0
    .line 45
.end method

.method public final shouldAnimateIconViewForTransition(II)Z
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    const/4 p0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->shouldAnimateIconViewForTransition(II)Z

    .line 7
    move-result p0

    .line 10
    :goto_0
    return p0
    .line 11
.end method
