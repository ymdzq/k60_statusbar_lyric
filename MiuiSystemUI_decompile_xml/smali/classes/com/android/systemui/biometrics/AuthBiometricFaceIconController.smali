.class public final Lcom/android/systemui/biometrics/AuthBiometricFaceIconController;
.super Lcom/android/systemui/biometrics/AuthIconController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public lastPulseLightToDark:Z

.field public state:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthIconController;-><init>(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    move-result-object p1

    .line 8
    const v0, 0x7f0700ef    # @dimen/biometric_dialog_face_icon_size '64.0dp'

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    move-result p1

    .line 15
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    move-result-object v0

    .line 19
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 20
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    move-result-object p2

    .line 25
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 26
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 28
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 30
    const p2, 0x7f080c52    # @drawable/face_dialog_pulse_dark_to_light 'res/drawable/face_dialog_pulse_dark_to_light.xml'

    .line 32
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 35
    move-result-object p0

    .line 38
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    return-void
    .line 42
.end method


# virtual methods
.method public final handleAnimationEnd()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceIconController;->state:I

    .line 2
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    const/4 v1, 0x3

    .line 7
    if-ne v0, v1, :cond_2

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceIconController;->lastPulseLightToDark:Z

    .line 10
    if-eqz v0, :cond_1

    .line 12
    const v0, 0x7f080c52    # @drawable/face_dialog_pulse_dark_to_light 'res/drawable/face_dialog_pulse_dark_to_light.xml'

    .line 14
    goto :goto_0

    .line 17
    :cond_1
    const v0, 0x7f080c53    # @drawable/face_dialog_pulse_light_to_dark 'res/drawable/face_dialog_pulse_light_to_dark.xml'

    .line 18
    :goto_0
    const/4 v1, 0x1

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/biometrics/AuthIconController;->animateIcon(IZ)V

    .line 22
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceIconController;->lastPulseLightToDark:Z

    .line 25
    xor-int/2addr v0, v1

    .line 27
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceIconController;->lastPulseLightToDark:Z

    .line 28
    :cond_2
    return-void
    .line 30
.end method

.method public final updateIcon(II)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x4

    .line 4
    if-eq p1, v2, :cond_1

    .line 5
    const/4 v3, 0x3

    .line 7
    if-ne p1, v3, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    move v3, v1

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    move v3, v0

    .line 13
    :goto_1
    const v4, 0x7f13018c    # @string/biometric_dialog_face_icon_description_authenticating 'Looking for your face'

    .line 14
    const v5, 0x7f080c52    # @drawable/face_dialog_pulse_dark_to_light 'res/drawable/face_dialog_pulse_dark_to_light.xml'

    .line 17
    if-ne p2, v0, :cond_2

    .line 20
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 22
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 24
    invoke-virtual {v0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 33
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 35
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 41
    goto/16 :goto_2

    .line 44
    :cond_2
    const/4 v6, 0x2

    .line 46
    if-ne p2, v6, :cond_3

    .line 47
    iput-boolean v1, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceIconController;->lastPulseLightToDark:Z

    .line 49
    invoke-virtual {p0, v5, v0}, Lcom/android/systemui/biometrics/AuthIconController;->animateIcon(IZ)V

    .line 51
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 54
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 56
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 62
    goto/16 :goto_2

    .line 65
    :cond_3
    const/4 v0, 0x5

    .line 67
    const v4, 0x7f080c4e    # @drawable/face_dialog_dark_to_checkmark 'res/drawable/face_dialog_dark_to_checkmark.xml'

    .line 68
    const/4 v5, 0x6

    .line 71
    if-ne p1, v0, :cond_4

    .line 72
    if-ne p2, v5, :cond_4

    .line 74
    invoke-virtual {p0, v4, v1}, Lcom/android/systemui/biometrics/AuthIconController;->animateIcon(IZ)V

    .line 76
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 81
    const v1, 0x7f13018d    # @string/biometric_dialog_face_icon_description_confirmed 'Confirmed'

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 89
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 90
    goto/16 :goto_2

    .line 93
    :cond_4
    const v7, 0x7f13018e    # @string/biometric_dialog_face_icon_description_idle 'Please try again'

    .line 95
    if-eqz v3, :cond_5

    .line 98
    if-nez p2, :cond_5

    .line 100
    const p1, 0x7f080c50    # @drawable/face_dialog_error_to_idle 'res/drawable/face_dialog_error_to_idle.xml'

    .line 102
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/biometrics/AuthIconController;->animateIcon(IZ)V

    .line 105
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 110
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 115
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 116
    goto/16 :goto_2

    .line 119
    :cond_5
    const v8, 0x7f13018b    # @string/biometric_dialog_face_icon_description_authenticated 'Face authenticated'

    .line 121
    if-eqz v3, :cond_6

    .line 124
    if-ne p2, v5, :cond_6

    .line 126
    invoke-virtual {p0, v4, v1}, Lcom/android/systemui/biometrics/AuthIconController;->animateIcon(IZ)V

    .line 128
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 133
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 138
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 139
    goto :goto_2

    .line 142
    :cond_6
    if-ne p2, v2, :cond_7

    .line 143
    if-eq p1, v2, :cond_7

    .line 145
    const p1, 0x7f080c4f    # @drawable/face_dialog_dark_to_error 'res/drawable/face_dialog_dark_to_error.xml'

    .line 147
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/biometrics/AuthIconController;->animateIcon(IZ)V

    .line 150
    goto :goto_2

    .line 153
    :cond_7
    if-ne p1, v6, :cond_8

    .line 154
    if-ne p2, v5, :cond_8

    .line 156
    invoke-virtual {p0, v4, v1}, Lcom/android/systemui/biometrics/AuthIconController;->animateIcon(IZ)V

    .line 158
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 161
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 163
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 165
    move-result-object v0

    .line 168
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 169
    goto :goto_2

    .line 172
    :cond_8
    if-ne p2, v0, :cond_9

    .line 173
    const p1, 0x7f080c54    # @drawable/face_dialog_wink_from_dark 'res/drawable/face_dialog_wink_from_dark.xml'

    .line 175
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/biometrics/AuthIconController;->animateIcon(IZ)V

    .line 178
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 181
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 183
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 185
    move-result-object v0

    .line 188
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 189
    goto :goto_2

    .line 192
    :cond_9
    if-nez p2, :cond_a

    .line 193
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 195
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 197
    const v1, 0x7f080c51    # @drawable/face_dialog_idle_static 'res/drawable/face_dialog_idle_static.xml'

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 202
    move-result-object v0

    .line 205
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthIconController;->iconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 209
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthIconController;->context:Landroid/content/Context;

    .line 211
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 213
    move-result-object v0

    .line 216
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 217
    goto :goto_2

    .line 220
    :cond_a
    const-string p1, "Unhandled state: "

    .line 221
    const-string v0, "AuthBiometricFaceIconController"

    .line 223
    invoke-static {p1, p2, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 225
    :goto_2
    iput p2, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceIconController;->state:I

    .line 228
    return-void
    .line 230
.end method
