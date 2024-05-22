.class public Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;
.super Lcom/android/systemui/biometrics/AuthBiometricView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public isSfps:Z

.field public isUdfps:Z

.field public scaleFactorProvider:Lcom/android/systemui/biometrics/AuthController$ScaleFactorProvider;

.field public udfpsAdapter:Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public createIconController()Lcom/android/systemui/biometrics/AuthIconController;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;

    .line 2
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconViewOverlay:Lcom/airbnb/lottie/LottieAnimationView;

    .line 8
    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;-><init>(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 10
    return-object v0
    .line 13
.end method

.method public getDelayAfterAuthenticatedDurationMs()I
    .locals 0

    .line 1
    const/16 p0, 0x1f4

    .line 2
    return p0
    .line 4
.end method

.method public getStateForAfterError()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
    .line 3
.end method

.method public final handleResetAfterError()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    .line 2
    const v1, 0x7f130425    # @string/fingerprint_dialog_touch_sensor 'Touch the fingerprint sensor'

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    .line 10
    iget p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTextColorHint:I

    .line 12
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    return-void
    .line 17
.end method

.method public final handleResetAfterHelp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    .line 2
    const v1, 0x7f130425    # @string/fingerprint_dialog_touch_sensor 'Touch the fingerprint sensor'

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    .line 10
    iget p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTextColorHint:I

    .line 12
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    return-void
    .line 17
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    .line 5
    const v1, 0x7f130425    # @string/fingerprint_dialog_touch_sensor 'Touch the fingerprint sensor'

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 10
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    .line 13
    iget p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTextColorHint:I

    .line 15
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    return-void
    .line 20
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/biometrics/AuthBiometricView;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->udfpsAdapter:Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;

    .line 5
    if-eqz p1, :cond_1

    .line 7
    iget p1, p1, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->mBottomSpacerHeight:I

    .line 9
    const-string p2, "bottomSpacerHeight: "

    .line 11
    const-string p3, "AuthBiometricFingerprintView"

    .line 13
    invoke-static {p2, p1, p3}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 15
    if-gez p1, :cond_1

    .line 18
    const p2, 0x7f0a0137    # @id/biometric_icon_frame

    .line 20
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object p2

    .line 26
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    check-cast p2, Landroid/widget/FrameLayout;

    .line 30
    int-to-float p1, p1

    .line 32
    neg-float p1, p1

    .line 33
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 34
    const p2, 0x7f0a0439    # @id/indicator

    .line 37
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object p0

    .line 43
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    check-cast p0, Landroid/widget/TextView;

    .line 47
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->isGxzwLowPosition()Z

    .line 49
    move-result p2

    .line 52
    if-eqz p2, :cond_0

    .line 53
    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 56
    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 60
    :cond_1
    :goto_0
    return-void
    .line 63
.end method

.method public final onMeasureInternal(II)Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricView;->onMeasureInternal(II)Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->scaleFactorProvider:Lcom/android/systemui/biometrics/AuthController$ScaleFactorProvider;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-interface {v1}, Lcom/android/systemui/biometrics/AuthController$ScaleFactorProvider;->provide()F

    .line 10
    move-result v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->udfpsAdapter:Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;

    .line 17
    if-eqz p0, :cond_1

    .line 19
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->onMeasureInternal(IILcom/android/systemui/biometrics/AuthDialog$LayoutParams;F)Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    .line 21
    move-result-object p0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    :goto_1
    if-nez p0, :cond_2

    .line 27
    goto :goto_2

    .line 29
    :cond_2
    move-object v0, p0

    .line 30
    :goto_2
    return-object v0
    .line 31
.end method

.method public final setScaleFactorProvider(Lcom/android/systemui/biometrics/AuthController$ScaleFactorProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->scaleFactorProvider:Lcom/android/systemui/biometrics/AuthController$ScaleFactorProvider;

    .line 2
    return-void
    .line 4
.end method

.method public final setSensorProperties(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnySidefpsType()Z

    .line 2
    move-result v0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->isSfps:Z

    .line 6
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    .line 8
    move-result v0

    .line 11
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->isUdfps:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;

    .line 16
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;-><init>(Landroid/view/ViewGroup;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->udfpsAdapter:Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;

    .line 23
    return-void
    .line 25
.end method

.method public final supportsSmallDialog()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final updateOverrideIconLayoutParamsSize()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->udfpsAdapter:Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;

    .line 2
    if-eqz v0, :cond_3

    .line 4
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->scaleFactorProvider:Lcom/android/systemui/biometrics/AuthController$ScaleFactorProvider;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-interface {v1}, Lcom/android/systemui/biometrics/AuthController$ScaleFactorProvider;->provide()F

    .line 10
    move-result v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/UdfpsDialogMeasureAdapter;->getSensorDiameter(F)I

    .line 17
    move-result v0

    .line 20
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconController:Lcom/android/systemui/biometrics/AuthIconController;

    .line 21
    instance-of v1, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;

    .line 23
    if-eqz v1, :cond_1

    .line 25
    check-cast p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;

    .line 27
    goto :goto_1

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    :goto_1
    if-nez p0, :cond_2

    .line 31
    goto :goto_2

    .line 33
    :cond_2
    new-instance v1, Lkotlin/Pair;

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v2

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v0

    .line 43
    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0, v1}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->setIconLayoutParamSize(Lkotlin/Pair;)V

    .line 47
    :cond_3
    :goto_2
    return-void
    .line 50
.end method
