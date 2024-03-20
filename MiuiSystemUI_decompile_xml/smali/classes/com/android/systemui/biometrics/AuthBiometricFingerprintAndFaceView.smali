.class public final Lcom/android/systemui/biometrics/AuthBiometricFingerprintAndFaceView;
.super Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public isFaceClass3:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintAndFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final createIconController()Lcom/android/systemui/biometrics/AuthIconController;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintAndFaceIconController;

    .line 2
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconViewOverlay:Lcom/airbnb/lottie/LottieAnimationView;

    .line 8
    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintAndFaceIconController;-><init>(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 10
    return-object v0
    .line 13
.end method

.method public final forceRequireConfirmation(I)Z
    .locals 0

    .line 1
    const/16 p0, 0x8

    .line 2
    if-ne p1, p0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public getConfirmationPrompt()I
    .locals 0

    .line 1
    const p0, 0x7f13019a    # @string/biometric_dialog_tap_confirm_with_face 'Unlocked by face'

    .line 2
    return p0
    .line 5
.end method

.method public final ignoreUnsuccessfulEventsFrom(ILjava/lang/String;)Z
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_3

    .line 5
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintAndFaceView;->isFaceClass3:Z

    .line 7
    const/4 v0, 0x1

    .line 9
    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 12
    const/4 v2, 0x7

    .line 14
    invoke-static {p1, v2, v1}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 18
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    move-result p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 25
    const/16 p1, 0x9

    .line 27
    invoke-static {p0, p1, v1}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    move-result p0

    .line 36
    if-eqz p0, :cond_0

    .line 37
    goto :goto_0

    .line 39
    :cond_0
    move p0, v1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    move p0, v0

    .line 42
    :goto_1
    if-nez p0, :cond_3

    .line 43
    :cond_2
    move v1, v0

    .line 45
    :cond_3
    return v1
    .line 46
.end method

.method public final setFaceClass3(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintAndFaceView;->isFaceClass3:Z

    .line 2
    return-void
    .line 4
.end method
