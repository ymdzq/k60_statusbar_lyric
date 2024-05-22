.class public Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;
.super Lcom/android/systemui/biometrics/AuthIconController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public iconLayoutParamSize:Lkotlin/Pair;

.field public final iconViewOverlay:Lcom/airbnb/lottie/LottieAnimationView;

.field public final isReverseDefaultRotation:Z

.field public final isSideFps:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthIconController;-><init>(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 2
    iput-object p3, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->iconViewOverlay:Lcom/airbnb/lottie/LottieAnimationView;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object p3

    .line 10
    const v0, 0x11101d3    # @android:bool/config_sensorPrivacyRequiresAuthentication

    .line 11
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 14
    move-result p3

    .line 17
    iput-boolean p3, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->isReverseDefaultRotation:Z

    .line 18
    new-instance p3, Lkotlin/Pair;

    .line 20
    const/4 v0, 0x1

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v1

    .line 26
    invoke-direct {p3, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    iput-object p3, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->iconLayoutParamSize:Lkotlin/Pair;

    .line 30
    new-instance p3, Lkotlin/Pair;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v1

    .line 37
    const v2, 0x7f0700f1    # @dimen/biometric_dialog_fingerprint_icon_width '80.0dp'

    .line 38
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 41
    move-result v1

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v1

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    move-result-object v2

    .line 52
    const v3, 0x7f0700f0    # @dimen/biometric_dialog_fingerprint_icon_height '80.0dp'

    .line 53
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 56
    move-result v2

    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v2

    .line 63
    invoke-direct {p3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p0, p3}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->setIconLayoutParamSize(Lkotlin/Pair;)V

    .line 67
    const-string p3, "fingerprint"

    .line 70
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    move-result-object p3

    .line 75
    check-cast p3, Landroid/hardware/fingerprint/FingerprintManager;

    .line 76
    const/4 v1, 0x0

    .line 78
    if-eqz p3, :cond_2

    .line 79
    invoke-virtual {p3}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    .line 81
    move-result-object p3

    .line 84
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 85
    move-result v2

    .line 88
    if-eqz v2, :cond_0

    .line 89
    goto :goto_0

    .line 91
    :cond_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 92
    move-result-object p3

    .line 95
    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    move-result v2

    .line 99
    if-eqz v2, :cond_2

    .line 100
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    move-result-object v2

    .line 105
    check-cast v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 106
    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnySidefpsType()Z

    .line 108
    move-result v2

    .line 111
    if-eqz v2, :cond_1

    .line 112
    goto :goto_1

    .line 114
    :cond_2
    :goto_0
    move v0, v1

    .line 115
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->isSideFps:Z

    .line 116
    const/4 p3, 0x4

    .line 118
    if-eqz v0, :cond_3

    .line 119
    const/16 v2, 0x12

    .line 121
    new-array v3, v2, [I

    .line 123
    fill-array-data v3, :array_0

    .line 125
    :goto_2
    if-ge v1, v2, :cond_4

    .line 128
    aget v4, v3, v1

    .line 130
    invoke-static {v4, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->rawResCacheKey(ILandroid/content/Context;)Ljava/lang/String;

    .line 132
    move-result-object v5

    .line 135
    invoke-static {p1, v5, v4}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;Ljava/lang/String;I)Lcom/airbnb/lottie/LottieTask;

    .line 136
    add-int/lit8 v1, v1, 0x1

    .line 139
    goto :goto_2

    .line 141
    :cond_3
    const v2, 0x7f120021    # @raw/fingerprint_dialogue_fingerprint_to_error_lottie 'res/raw/fingerprint_dialogue_fingerprint_to_error_lottie.json'

    .line 142
    const v3, 0x7f120022    # @raw/fingerprint_dialogue_fingerprint_to_success_lottie 'res/raw/fingerprint_dialogue_fingerprint_to_success_lottie.json'

    .line 145
    const v4, 0x7f12001e    # @raw/fingerprint_dialogue_error_to_fingerprint_lottie 'res/raw/fingerprint_dialogue_error_to_fingerprint_lottie.json'

    .line 148
    const v5, 0x7f12001f    # @raw/fingerprint_dialogue_error_to_success_lottie 'res/raw/fingerprint_dialogue_error_to_success_lottie.json'

    .line 151
    filled-new-array {v4, v5, v2, v3}, [I

    .line 154
    move-result-object v2

    .line 157
    :goto_3
    if-ge v1, p3, :cond_4

    .line 158
    aget v3, v2, v1

    .line 160
    invoke-static {v3, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->rawResCacheKey(ILandroid/content/Context;)Ljava/lang/String;

    .line 162
    move-result-object v4

    .line 165
    invoke-static {p1, v4, v3}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;Ljava/lang/String;I)Lcom/airbnb/lottie/LottieTask;

    .line 166
    add-int/lit8 v1, v1, 0x1

    .line 169
    goto :goto_3

    .line 171
    :cond_4
    new-instance v1, Landroid/view/DisplayInfo;

    .line 172
    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 177
    move-result-object p1

    .line 180
    if-eqz p1, :cond_5

    .line 181
    invoke-virtual {p1, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 183
    :cond_5
    if-eqz v0, :cond_7

    .line 186
    iget p1, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 188
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->isReverseDefaultRotation:Z

    .line 190
    if-eqz p0, :cond_6

    .line 192
    add-int/lit8 p1, p1, 0x1

    .line 194
    rem-int/2addr p1, p3

    .line 196
    :cond_6
    const/4 p0, 0x2

    .line 197
    if-ne p1, p0, :cond_7

    .line 198
    const/high16 p0, 0x43340000    # 180.0f

    .line 200
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 202
    :cond_7
    return-void

    .line 205
    :array_0
    .array-data 4
        0x7f120001    # @raw/biometricprompt_fingerprint_to_error_landscape 'res/raw/biometricprompt_fingerprint_to_error_landscape.json'
        0x7f120002    # @raw/biometricprompt_folded_base_bottomright 'res/raw/biometricprompt_folded_base_bottomright.json'
        0x7f120003    # @raw/biometricprompt_folded_base_default 'res/raw/biometricprompt_folded_base_default.json'
        0x7f120004    # @raw/biometricprompt_folded_base_topleft 'res/raw/biometricprompt_folded_base_topleft.json'
        0x7f120005    # @raw/biometricprompt_landscape_base 'res/raw/biometricprompt_landscape_base.json'
        0x7f120006    # @raw/biometricprompt_portrait_base_bottomright 'res/raw/biometricprompt_portrait_base_bottomright.json'
        0x7f120007    # @raw/biometricprompt_portrait_base_topleft 'res/raw/biometricprompt_portrait_base_topleft.json'
        0x7f12000b    # @raw/biometricprompt_symbol_error_to_fingerprint_landscape 'res/raw/biometricprompt_symbol_error_to_fingerprint_landscape.json'
        0x7f12000c    # @raw/biometricprompt_symbol_error_to_fingerprint_portrait_bottomright 'res/raw/biometricprompt_symbol_error_to_fingerprint_portrait_bottomright.json'
        0x7f12000d    # @raw/biometricprompt_symbol_error_to_fingerprint_portrait_topleft 'res/raw/biometricprompt_symbol_error_to_fingerprint_portrait_topleft.json'
        0x7f12000e    # @raw/biometricprompt_symbol_error_to_success_landscape 'res/raw/biometricprompt_symbol_error_to_success_landscape.json'
        0x7f12000f    # @raw/biometricprompt_symbol_error_to_success_portrait_bottomright 'res/raw/biometricprompt_symbol_error_to_success_portrait_bottomright.json'
        0x7f120010    # @raw/biometricprompt_symbol_error_to_success_portrait_topleft 'res/raw/biometricprompt_symbol_error_to_success_portrait_topleft.json'
        0x7f120011    # @raw/biometricprompt_symbol_fingerprint_to_error_portrait_bottomright 'res/raw/biometricprompt_symbol_fingerprint_to_error_portrait_bottomright.json'
        0x7f120012    # @raw/biometricprompt_symbol_fingerprint_to_error_portrait_topleft 'res/raw/biometricprompt_symbol_fingerprint_to_error_portrait_topleft.json'
        0x7f120013    # @raw/biometricprompt_symbol_fingerprint_to_success_landscape 'res/raw/biometricprompt_symbol_fingerprint_to_success_landscape.json'
        0x7f120014    # @raw/biometricprompt_symbol_fingerprint_to_success_portrait_bottomright 'res/raw/biometricprompt_symbol_fingerprint_to_success_portrait_bottomright.json'
        0x7f120015    # @raw/biometricprompt_symbol_fingerprint_to_success_portrait_topleft 'res/raw/biometricprompt_symbol_fingerprint_to_success_portrait_topleft.json'
    .end array-data
    .line 206
.end method


# virtual methods
.method public getAnimationForTransition(II)Ljava/lang/Integer;
    .locals 3

    .line 1
    const/4 p0, 0x1

    .line 2
    const v0, 0x7f120021    # @raw/fingerprint_dialogue_fingerprint_to_error_lottie 'res/raw/fingerprint_dialogue_fingerprint_to_error_lottie.json'

    .line 3
    const/4 v1, 0x4

    .line 6
    const/4 v2, 0x3

    .line 7
    if-eq p2, p0, :cond_2

    .line 8
    const/4 p0, 0x2

    .line 10
    if-eq p2, p0, :cond_2

    .line 11
    if-eq p2, v2, :cond_4

    .line 13
    if-eq p2, v1, :cond_4

    .line 15
    const/4 p0, 0x6

    .line 17
    if-eq p2, p0, :cond_0

    .line 18
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_0
    if-eq p1, v2, :cond_1

    .line 22
    if-eq p1, v1, :cond_1

    .line 24
    const v0, 0x7f120022    # @raw/fingerprint_dialogue_fingerprint_to_success_lottie 'res/raw/fingerprint_dialogue_fingerprint_to_success_lottie.json'

    .line 26
    goto :goto_0

    .line 29
    :cond_1
    const v0, 0x7f12001f    # @raw/fingerprint_dialogue_error_to_success_lottie 'res/raw/fingerprint_dialogue_error_to_success_lottie.json'

    .line 30
    goto :goto_0

    .line 33
    :cond_2
    if-eq p1, v2, :cond_3

    .line 34
    if-eq p1, v1, :cond_3

    .line 36
    goto :goto_0

    .line 38
    :cond_3
    const v0, 0x7f12001e    # @raw/fingerprint_dialogue_error_to_fingerprint_lottie 'res/raw/fingerprint_dialogue_error_to_fingerprint_lottie.json'

    .line 39
    :cond_4
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object p0

    .line 45
    return-object p0
    .line 46
.end method

.method public final getIconContentDescription(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 3
    move-object p1, v0

    .line 6
    goto :goto_1

    .line 7
    :pswitch_0
    const p1, 0x7f13019e    # @string/biometric_dialog_try_again 'Try again'

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object p1

    .line 14
    goto :goto_1

    .line 15
    :pswitch_1
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->isSideFps:Z

    .line 16
    if-eqz p1, :cond_0

    .line 18
    const p1, 0x7f130a9e    # @string/security_settings_sfps_enroll_find_sensor_message 'The fingerprint sensor is on the power button. It’s the flat button next to the raised volume button ...'

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    const p1, 0x7f130425    # @string/fingerprint_dialog_touch_sensor 'Touch the fingerprint sensor'

    .line 24
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object p1

    .line 30
    :goto_1
    if-eqz p1, :cond_1

    .line 31
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 33
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 35
    move-result p1

    .line 38
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 42
    :cond_1
    return-object v0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
    .line 44
.end method

.method public final setIconLayoutParamSize(Lkotlin/Pair;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->iconLayoutParamSize:Lkotlin/Pair;

    .line 2
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->iconViewOverlay:Lcom/airbnb/lottie/LottieAnimationView;

    .line 11
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Number;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 23
    move-result v1

    .line 26
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 27
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->iconViewOverlay:Lcom/airbnb/lottie/LottieAnimationView;

    .line 29
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/Number;

    .line 39
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 41
    move-result v1

    .line 44
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 47
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 49
    move-result-object v0

    .line 52
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 56
    check-cast v1, Ljava/lang/Number;

    .line 57
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 59
    move-result v1

    .line 62
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 63
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 65
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 67
    move-result-object v0

    .line 70
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 71
    move-result-object v1

    .line 74
    check-cast v1, Ljava/lang/Number;

    .line 75
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 77
    move-result v1

    .line 80
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 81
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->iconLayoutParamSize:Lkotlin/Pair;

    .line 83
    return-void
    .line 85
.end method

.method public shouldAnimateIconViewForTransition(II)Z
    .locals 4

    .line 1
    const/4 p0, 0x0

    .line 2
    const/4 v0, 0x4

    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq p2, v2, :cond_1

    .line 6
    const/4 v3, 0x2

    .line 8
    if-eq p2, v3, :cond_1

    .line 9
    if-eq p2, v1, :cond_0

    .line 11
    if-eq p2, v0, :cond_0

    .line 13
    const/4 p1, 0x6

    .line 15
    if-eq p2, p1, :cond_0

    .line 16
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    move p0, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    if-eq p1, v0, :cond_0

    .line 21
    if-ne p1, v1, :cond_2

    .line 23
    goto :goto_0

    .line 25
    :cond_2
    :goto_1
    return p0
    .line 26
.end method

.method public updateIcon(II)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->isSideFps:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz v0, :cond_21

    .line 7
    new-instance v0, Landroid/view/DisplayInfo;

    .line 9
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 11
    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 14
    invoke-virtual {v4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 16
    move-result-object v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    invoke-virtual {v4, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 22
    :cond_0
    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 25
    iget-boolean v4, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->isReverseDefaultRotation:Z

    .line 27
    const/4 v5, 0x4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 32
    rem-int/2addr v0, v5

    .line 34
    :cond_1
    const/4 v4, 0x6

    .line 35
    const/4 v6, 0x3

    .line 36
    const v7, 0x7f120011    # @raw/biometricprompt_symbol_fingerprint_to_error_portrait_bottomright 'res/raw/biometricprompt_symbol_fingerprint_to_error_portrait_bottomright.json'

    .line 37
    const v8, 0x7f120012    # @raw/biometricprompt_symbol_fingerprint_to_error_portrait_topleft 'res/raw/biometricprompt_symbol_fingerprint_to_error_portrait_topleft.json'

    .line 40
    const v9, 0x7f120001    # @raw/biometricprompt_fingerprint_to_error_landscape 'res/raw/biometricprompt_fingerprint_to_error_landscape.json'

    .line 43
    if-eq p2, v3, :cond_e

    .line 46
    if-eq p2, v2, :cond_e

    .line 48
    if-eq p2, v6, :cond_a

    .line 50
    if-eq p2, v5, :cond_a

    .line 52
    if-eq p2, v4, :cond_2

    .line 54
    const/4 v0, 0x0

    .line 56
    goto/16 :goto_8

    .line 57
    :cond_2
    if-eq p1, v6, :cond_6

    .line 59
    if-eq p1, v5, :cond_6

    .line 61
    if-eqz v0, :cond_5

    .line 63
    if-eq v0, v3, :cond_4

    .line 65
    if-eq v0, v2, :cond_5

    .line 67
    if-eq v0, v6, :cond_3

    .line 69
    goto :goto_0

    .line 71
    :cond_3
    const v0, 0x7f120014    # @raw/biometricprompt_symbol_fingerprint_to_success_portrait_bottomright 'res/raw/biometricprompt_symbol_fingerprint_to_success_portrait_bottomright.json'

    .line 72
    goto :goto_2

    .line 75
    :cond_4
    const v0, 0x7f120015    # @raw/biometricprompt_symbol_fingerprint_to_success_portrait_topleft 'res/raw/biometricprompt_symbol_fingerprint_to_success_portrait_topleft.json'

    .line 76
    goto :goto_2

    .line 79
    :cond_5
    :goto_0
    const v0, 0x7f120013    # @raw/biometricprompt_symbol_fingerprint_to_success_landscape 'res/raw/biometricprompt_symbol_fingerprint_to_success_landscape.json'

    .line 80
    goto :goto_2

    .line 83
    :cond_6
    if-eqz v0, :cond_9

    .line 84
    if-eq v0, v3, :cond_8

    .line 86
    if-eq v0, v2, :cond_9

    .line 88
    if-eq v0, v6, :cond_7

    .line 90
    goto :goto_1

    .line 92
    :cond_7
    const v0, 0x7f12000f    # @raw/biometricprompt_symbol_error_to_success_portrait_bottomright 'res/raw/biometricprompt_symbol_error_to_success_portrait_bottomright.json'

    .line 93
    goto :goto_2

    .line 96
    :cond_8
    const v0, 0x7f120010    # @raw/biometricprompt_symbol_error_to_success_portrait_topleft 'res/raw/biometricprompt_symbol_error_to_success_portrait_topleft.json'

    .line 97
    goto :goto_2

    .line 100
    :cond_9
    :goto_1
    const v0, 0x7f12000e    # @raw/biometricprompt_symbol_error_to_success_landscape 'res/raw/biometricprompt_symbol_error_to_success_landscape.json'

    .line 101
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    move-result-object v0

    .line 107
    goto :goto_8

    .line 108
    :cond_a
    if-eqz v0, :cond_c

    .line 109
    if-eq v0, v3, :cond_b

    .line 111
    if-eq v0, v2, :cond_c

    .line 113
    if-eq v0, v6, :cond_d

    .line 115
    goto :goto_3

    .line 117
    :cond_b
    move v7, v8

    .line 118
    goto :goto_4

    .line 119
    :cond_c
    :goto_3
    move v7, v9

    .line 120
    :cond_d
    :goto_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    move-result-object v0

    .line 124
    goto :goto_8

    .line 125
    :cond_e
    if-eq p1, v6, :cond_11

    .line 126
    if-eq p1, v5, :cond_11

    .line 128
    if-eqz v0, :cond_10

    .line 130
    if-eq v0, v3, :cond_f

    .line 132
    if-eq v0, v2, :cond_10

    .line 134
    if-eq v0, v6, :cond_15

    .line 136
    goto :goto_5

    .line 138
    :cond_f
    move v7, v8

    .line 139
    goto :goto_7

    .line 140
    :cond_10
    :goto_5
    move v7, v9

    .line 141
    goto :goto_7

    .line 142
    :cond_11
    if-eqz v0, :cond_14

    .line 143
    if-eq v0, v3, :cond_13

    .line 145
    if-eq v0, v2, :cond_14

    .line 147
    if-eq v0, v6, :cond_12

    .line 149
    goto :goto_6

    .line 151
    :cond_12
    const v7, 0x7f12000c    # @raw/biometricprompt_symbol_error_to_fingerprint_portrait_bottomright 'res/raw/biometricprompt_symbol_error_to_fingerprint_portrait_bottomright.json'

    .line 152
    goto :goto_7

    .line 155
    :cond_13
    const v7, 0x7f12000d    # @raw/biometricprompt_symbol_error_to_fingerprint_portrait_topleft 'res/raw/biometricprompt_symbol_error_to_fingerprint_portrait_topleft.json'

    .line 156
    goto :goto_7

    .line 159
    :cond_14
    :goto_6
    const v7, 0x7f12000b    # @raw/biometricprompt_symbol_error_to_fingerprint_landscape 'res/raw/biometricprompt_symbol_error_to_fingerprint_landscape.json'

    .line 160
    :cond_15
    :goto_7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    move-result-object v0

    .line 166
    :goto_8
    if-eqz v0, :cond_27

    .line 167
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 169
    move-result v0

    .line 172
    if-ne p1, v3, :cond_16

    .line 173
    if-eq p2, v2, :cond_17

    .line 175
    :cond_16
    iget-object v7, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->iconViewOverlay:Lcom/airbnb/lottie/LottieAnimationView;

    .line 177
    invoke-virtual {v7, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 179
    :cond_17
    invoke-virtual {p0, p2}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->getIconContentDescription(I)Ljava/lang/CharSequence;

    .line 182
    move-result-object v0

    .line 185
    if-eqz v0, :cond_18

    .line 186
    iget-object v7, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 188
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 190
    :cond_18
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 193
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->iconViewOverlay:Lcom/airbnb/lottie/LottieAnimationView;

    .line 198
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    .line 200
    if-eq p2, v3, :cond_19

    .line 203
    if-eq p2, v2, :cond_19

    .line 205
    if-eq p2, v6, :cond_1b

    .line 207
    if-eq p2, v5, :cond_1b

    .line 209
    if-eq p2, v4, :cond_1b

    .line 211
    goto :goto_9

    .line 213
    :cond_19
    if-eq p1, v5, :cond_1b

    .line 214
    if-eq p1, v6, :cond_1b

    .line 216
    if-nez p1, :cond_1a

    .line 218
    goto :goto_a

    .line 220
    :cond_1a
    :goto_9
    move v0, v1

    .line 221
    goto :goto_b

    .line 222
    :cond_1b
    :goto_a
    move v0, v3

    .line 223
    :goto_b
    if-eqz v0, :cond_1c

    .line 224
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 226
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 228
    :cond_1c
    if-eq p2, v3, :cond_1d

    .line 231
    if-eq p2, v2, :cond_1d

    .line 233
    if-eq p2, v6, :cond_1e

    .line 235
    if-eq p2, v5, :cond_1e

    .line 237
    if-eq p2, v4, :cond_1e

    .line 239
    goto :goto_c

    .line 241
    :cond_1d
    if-eq p1, v5, :cond_1e

    .line 242
    if-ne p1, v6, :cond_1f

    .line 244
    :cond_1e
    move v1, v3

    .line 246
    :cond_1f
    :goto_c
    if-eqz v1, :cond_20

    .line 247
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->iconViewOverlay:Lcom/airbnb/lottie/LottieAnimationView;

    .line 249
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 251
    :cond_20
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 254
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 256
    invoke-static {p1, p2}, Lcom/android/settingslib/widget/LottieColorUtils;->applyDynamicColors(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 258
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 261
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->iconViewOverlay:Lcom/airbnb/lottie/LottieAnimationView;

    .line 263
    invoke-static {p1, p0}, Lcom/android/settingslib/widget/LottieColorUtils;->applyDynamicColors(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 265
    goto :goto_d

    .line 268
    :cond_21
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->iconViewOverlay:Lcom/airbnb/lottie/LottieAnimationView;

    .line 269
    const/16 v4, 0x8

    .line 271
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 276
    if-eqz v0, :cond_22

    .line 278
    goto :goto_d

    .line 280
    :cond_22
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->getAnimationForTransition(II)Ljava/lang/Integer;

    .line 281
    move-result-object v0

    .line 284
    if-eqz v0, :cond_27

    .line 285
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 287
    move-result v0

    .line 290
    if-ne p1, v3, :cond_23

    .line 291
    if-eq p2, v2, :cond_24

    .line 293
    :cond_23
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 295
    invoke-virtual {v2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 297
    :cond_24
    invoke-virtual {p0, p2}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->getIconContentDescription(I)Ljava/lang/CharSequence;

    .line 300
    move-result-object v0

    .line 303
    if-eqz v0, :cond_25

    .line 304
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 306
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 308
    :cond_25
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 311
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    .line 313
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->shouldAnimateIconViewForTransition(II)Z

    .line 316
    move-result p1

    .line 319
    if-eqz p1, :cond_26

    .line 320
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 322
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 324
    :cond_26
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintIconController;->isSideFps:Z

    .line 327
    if-eqz p1, :cond_27

    .line 329
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 331
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 333
    invoke-static {p1, p0}, Lcom/android/settingslib/widget/LottieColorUtils;->applyDynamicColors(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 335
    :cond_27
    :goto_d
    return-void
    .line 338
.end method
