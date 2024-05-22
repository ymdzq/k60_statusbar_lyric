.class public abstract Lcom/android/systemui/biometrics/AuthBiometricView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mAnimationDurationHideDialog:I

.field mAnimationDurationLong:I

.field mAnimationDurationShort:I

.field public final mBackgroundClickListener:Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;

.field public mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

.field mCancelButton:Landroid/widget/Button;

.field mConfirmButton:Landroid/widget/Button;

.field public final mCustomBpHeight:I

.field public final mCustomBpWidth:I

.field public mDescriptionView:Landroid/widget/TextView;

.field public mDialogSizeAnimating:Z

.field public mEffectiveUserId:I

.field public final mHandler:Landroid/os/Handler;

.field mIconController:Lcom/android/systemui/biometrics/AuthIconController;

.field public mIconHolderView:Landroid/view/View;

.field public mIconOriginalY:F

.field public mIconView:Lcom/airbnb/lottie/LottieAnimationView;

.field public mIconViewOverlay:Lcom/airbnb/lottie/LottieAnimationView;

.field public mIndicatorView:Landroid/widget/TextView;

.field public mJankListener:Landroid/animation/Animator$AnimatorListener;

.field mLayoutParams:Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mNegativeButton:Landroid/widget/Button;

.field public mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

.field public mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field public mRequireConfirmation:Z

.field public final mResetErrorRunnable:Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;

.field public final mResetHelpRunnable:Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;

.field public mSavedState:Landroid/os/Bundle;

.field public mSize:I

.field public mState:I

.field public mSubtitleView:Landroid/widget/TextView;

.field public final mTextColorError:I

.field public final mTextColorHint:I

.field public mTitleView:Landroid/widget/TextView;

.field mTryAgainButton:Landroid/widget/Button;

.field mUseCredentialButton:Landroid/widget/Button;

.field public final mUseCustomBpSize:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    iput p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    const/16 p2, 0x96

    .line 4
    iput p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAnimationDurationShort:I

    const/16 p2, 0x1c2

    .line 5
    iput p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAnimationDurationLong:I

    const/16 p2, 0x7d0

    .line 6
    iput p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAnimationDurationHideDialog:I

    .line 7
    new-instance p2, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;

    const/4 v0, 0x7

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;I)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mBackgroundClickListener:Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;

    .line 8
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f060050    # @color/biometric_dialog_error '#ffd93025'

    .line 11
    invoke-virtual {p2, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTextColorError:I

    .line 12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060051    # @color/biometric_dialog_gray '#ff757575'

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 14
    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTextColorHint:I

    .line 15
    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 16
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 17
    new-instance p1, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;I)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetErrorRunnable:Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;

    .line 18
    new-instance p1, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;I)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetHelpRunnable:Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;

    .line 19
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0500b6    # @bool/use_custom_bp_size 'false'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mUseCustomBpSize:Z

    .line 20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700f5    # @dimen/biometric_dialog_width '240.0dp'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCustomBpWidth:I

    .line 21
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700f2    # @dimen/biometric_dialog_height '240.0dp'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCustomBpHeight:I

    return-void
.end method


# virtual methods
.method public final asView()Landroid/view/View;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public final cancelAnimation()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 6
    return-void
    .line 9
.end method

.method public abstract createIconController()Lcom/android/systemui/biometrics/AuthIconController;
.end method

.method public forceRequireConfirmation(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getConfirmationPrompt()I
    .locals 0

    .line 1
    const p0, 0x7f130199    # @string/biometric_dialog_tap_confirm 'Tap Confirm to complete'

    .line 2
    return p0
    .line 5
.end method

.method public getDelayAfterAuthenticatedDurationMs()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getIconView()Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 2
    return-object p0
    .line 4
.end method

.method public getLegacyIconController()Lcom/android/systemui/biometrics/AuthIconController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconController:Lcom/android/systemui/biometrics/AuthIconController;

    .line 2
    return-object p0
    .line 4
.end method

.method public getSize()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    .line 2
    return p0
    .line 4
.end method

.method public getStateForAfterError()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public handleResetAfterError()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public handleResetAfterHelp()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public ignoreUnsuccessfulEventsFrom(ILjava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public isCoex()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lcom/android/systemui/biometrics/AuthBiometricFingerprintAndFaceView;

    .line 2
    return p0
    .line 4
.end method

.method public onAttachedToWindow()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTitleView:Landroid/widget/TextView;

    .line 5
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 7
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTitleView:Landroid/widget/TextView;

    .line 16
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 19
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 24
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    .line 27
    new-instance v2, Landroid/text/method/ScrollingMovementMethod;

    .line 29
    invoke-direct {v2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    .line 31
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 34
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 37
    invoke-static {v0}, Lcom/android/systemui/biometrics/Utils;->isDeviceCredentialAllowed(Landroid/hardware/biometrics/PromptInfo;)Z

    .line 39
    move-result v0

    .line 42
    const/4 v2, 0x0

    .line 43
    const/16 v3, 0x8

    .line 44
    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 48
    iget v4, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mEffectiveUserId:I

    .line 50
    invoke-static {v0, v4}, Lcom/android/systemui/biometrics/Utils;->getCredentialType(Lcom/android/internal/widget/LockPatternUtils;I)I

    .line 52
    move-result v0

    .line 55
    if-eq v0, v1, :cond_1

    .line 56
    const/4 v4, 0x2

    .line 58
    if-eq v0, v4, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 61
    move-result-object v0

    .line 64
    const v4, 0x7f13019f    # @string/biometric_dialog_use_password 'Use password'

    .line 65
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 73
    move-result-object v0

    .line 76
    const v4, 0x7f1301a0    # @string/biometric_dialog_use_pattern 'Use pattern'

    .line 77
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 85
    move-result-object v0

    .line 88
    const v4, 0x7f1301a1    # @string/biometric_dialog_use_pin 'Use PIN'

    .line 89
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 95
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    .line 96
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mUseCredentialButton:Landroid/widget/Button;

    .line 101
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mUseCredentialButton:Landroid/widget/Button;

    .line 106
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 108
    goto :goto_1

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    .line 112
    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 114
    invoke-virtual {v4}, Landroid/hardware/biometrics/PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    .line 116
    move-result-object v4

    .line 119
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    .line 123
    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 125
    invoke-virtual {v4}, Landroid/hardware/biometrics/PromptInfo;->getSubtitle()Ljava/lang/CharSequence;

    .line 127
    move-result-object v4

    .line 130
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    move-result v5

    .line 134
    if-eqz v5, :cond_3

    .line 135
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    goto :goto_2

    .line 140
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 144
    invoke-static {v0, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    .line 149
    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 151
    invoke-virtual {v4}, Landroid/hardware/biometrics/PromptInfo;->getDescription()Ljava/lang/CharSequence;

    .line 153
    move-result-object v4

    .line 156
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 157
    move-result v5

    .line 160
    if-eqz v5, :cond_4

    .line 161
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    goto :goto_3

    .line 166
    :cond_4
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 170
    invoke-static {v0, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    .line 175
    if-nez v0, :cond_5

    .line 177
    invoke-virtual {p0, v1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    .line 179
    goto :goto_4

    .line 182
    :cond_5
    const-string/jumbo v1, "state"

    .line 183
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 186
    move-result v0

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mConfirmButton:Landroid/widget/Button;

    .line 193
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    .line 195
    const-string v4, "confirm_visibility"

    .line 197
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 199
    move-result v1

    .line 202
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mConfirmButton:Landroid/widget/Button;

    .line 206
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    .line 208
    move-result v0

    .line 211
    if-ne v0, v3, :cond_6

    .line 212
    iput-boolean v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mRequireConfirmation:Z

    .line 214
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    .line 216
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    .line 218
    const-string/jumbo v1, "try_agian_visibility"

    .line 220
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 223
    move-result p0

    .line 226
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setVisibility(I)V

    .line 227
    :goto_4
    return-void
    .line 230
.end method

.method public onAuthenticationFailed(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricView;->ignoreUnsuccessfulEventsFrom(ILjava/lang/String;)Z

    .line 2
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetErrorRunnable:Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricView;->showTemporaryMessage(Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;Ljava/lang/String;)V

    .line 11
    const/4 p1, 0x4

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    .line 15
    return-void
    .line 18
.end method

.method public final onAuthenticationSucceeded(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->removePendingAnimations()V

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mRequireConfirmation:Z

    .line 5
    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->forceRequireConfirmation(I)Z

    .line 9
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x6

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    .line 17
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x5

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    .line 22
    :goto_1
    return-void
    .line 25
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    .line 5
    if-eqz p1, :cond_0

    .line 7
    const-string/jumbo v0, "state"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 12
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconController:Lcom/android/systemui/biometrics/AuthIconController;

    .line 5
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/android/systemui/biometrics/AuthIconController;->deactivated:Z

    .line 8
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    .line 10
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    return-void
    .line 16
.end method

.method public final onDialogAnimatedIn(Z)V
    .locals 0

    .line 1
    const/4 p1, 0x2

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    .line 3
    return-void
    .line 6
.end method

.method public final onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricView;->ignoreUnsuccessfulEventsFrom(ILjava/lang/String;)Z

    .line 2
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetErrorRunnable:Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricView;->showTemporaryMessage(Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;Ljava/lang/String;)V

    .line 11
    const/4 p1, 0x4

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    .line 15
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    .line 18
    new-instance v0, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;

    .line 20
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;I)V

    .line 22
    iget p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAnimationDurationHideDialog:I

    .line 25
    int-to-long p0, p0

    .line 27
    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    return-void
    .line 31
.end method

.method public final onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a09a2    # @id/id_0x7f0a09a2

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTitleView:Landroid/widget/TextView;

    .line 14
    const v0, 0x7f0a08ff    # @id/subtitle

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f0a02a8    # @id/description

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f0a0138    # @id/biometric_icon_overlay

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 44
    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 45
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconViewOverlay:Lcom/airbnb/lottie/LottieAnimationView;

    .line 47
    const v0, 0x7f0a0136    # @id/biometric_icon

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 55
    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 56
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 58
    const v0, 0x7f0a0137    # @id/biometric_icon_frame

    .line 60
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconHolderView:Landroid/view/View;

    .line 67
    const v0, 0x7f0a0439    # @id/indicator

    .line 69
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object v0

    .line 75
    check-cast v0, Landroid/widget/TextView;

    .line 76
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0a01ae    # @id/button_negative

    .line 80
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 83
    move-result-object v0

    .line 86
    check-cast v0, Landroid/widget/Button;

    .line 87
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    .line 89
    const v0, 0x7f0a01aa    # @id/button_cancel

    .line 91
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 94
    move-result-object v0

    .line 97
    check-cast v0, Landroid/widget/Button;

    .line 98
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCancelButton:Landroid/widget/Button;

    .line 100
    const v0, 0x7f0a01b3    # @id/button_use_credential

    .line 102
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 105
    move-result-object v0

    .line 108
    check-cast v0, Landroid/widget/Button;

    .line 109
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mUseCredentialButton:Landroid/widget/Button;

    .line 111
    const v0, 0x7f0a01ab    # @id/button_confirm

    .line 113
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 116
    move-result-object v0

    .line 119
    check-cast v0, Landroid/widget/Button;

    .line 120
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mConfirmButton:Landroid/widget/Button;

    .line 122
    const v0, 0x7f0a01b2    # @id/button_try_again

    .line 124
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 127
    move-result-object v0

    .line 130
    check-cast v0, Landroid/widget/Button;

    .line 131
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    .line 133
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    .line 135
    new-instance v1, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;

    .line 137
    const/4 v2, 0x0

    .line 139
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;I)V

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCancelButton:Landroid/widget/Button;

    .line 146
    new-instance v1, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;

    .line 148
    const/4 v2, 0x1

    .line 150
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;I)V

    .line 151
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mUseCredentialButton:Landroid/widget/Button;

    .line 157
    new-instance v1, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;

    .line 159
    const/4 v2, 0x2

    .line 161
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;I)V

    .line 162
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mConfirmButton:Landroid/widget/Button;

    .line 168
    new-instance v1, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;

    .line 170
    const/4 v2, 0x3

    .line 172
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;I)V

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    .line 179
    new-instance v1, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;

    .line 181
    const/4 v2, 0x4

    .line 183
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;I)V

    .line 184
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->createIconController()Lcom/android/systemui/biometrics/AuthIconController;

    .line 190
    move-result-object v0

    .line 193
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconController:Lcom/android/systemui/biometrics/AuthIconController;

    .line 194
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthIconController;->getActsAsConfirmButton()Z

    .line 196
    move-result v0

    .line 199
    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconViewOverlay:Lcom/airbnb/lottie/LottieAnimationView;

    .line 202
    new-instance v1, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;

    .line 204
    const/4 v2, 0x5

    .line 206
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;I)V

    .line 207
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 213
    new-instance v1, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;

    .line 215
    const/4 v2, 0x6

    .line 217
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;I)V

    .line 218
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    :cond_0
    return-void
    .line 224
.end method

.method public final onHelp(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricView;->ignoreUnsuccessfulEventsFrom(ILjava/lang/String;)Z

    .line 2
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    .line 9
    const/4 v0, 0x2

    .line 11
    const-string v1, "AuthBiometricView"

    .line 12
    if-eq p1, v0, :cond_1

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    const-string p2, "Help received in size: "

    .line 18
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    iget p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 31
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void

    .line 35
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    const-string p0, "Ignoring blank help message"

    .line 42
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void

    .line 47
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetHelpRunnable:Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricView;->showTemporaryMessage(Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;Ljava/lang/String;)V

    .line 50
    const/4 p1, 0x3

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    .line 54
    return-void
    .line 57
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    iget p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconOriginalY:F

    .line 5
    const/4 p2, 0x0

    .line 7
    cmpl-float p1, p1, p2

    .line 8
    if-nez p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconHolderView:Landroid/view/View;

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 14
    move-result p1

    .line 17
    iput p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconOriginalY:F

    .line 18
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    .line 20
    if-nez p1, :cond_1

    .line 22
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mRequireConfirmation:Z

    .line 24
    if-nez p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->supportsSmallDialog()Z

    .line 28
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    const/4 p1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p1, 0x2

    .line 36
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateSize(I)V

    .line 37
    goto :goto_1

    .line 40
    :cond_1
    const-string/jumbo p2, "size"

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 44
    move-result p1

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateSize(I)V

    .line 48
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    .line 51
    const-string p2, "indicator_string"

    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 58
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    .line 59
    const-string p3, "hint_is_temporary"

    .line 61
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 63
    move-result p2

    .line 66
    const/4 p3, 0x0

    .line 67
    if-eqz p2, :cond_2

    .line 68
    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->onHelp(ILjava/lang/String;)V

    .line 70
    goto :goto_1

    .line 73
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    .line 74
    const-string p4, "error_is_temporary"

    .line 76
    invoke-virtual {p2, p4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 78
    move-result p2

    .line 81
    if-eqz p2, :cond_3

    .line 82
    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/biometrics/AuthBiometricView;->onAuthenticationFailed(ILjava/lang/String;)V

    .line 84
    :cond_3
    :goto_1
    return-void
    .line 87
.end method

.method public final onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    move-result p1

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    move-result p2

    .line 9
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mUseCustomBpSize:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCustomBpWidth:I

    .line 14
    iget p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCustomBpHeight:I

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 19
    move-result p1

    .line 22
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricView;->onMeasureInternal(II)Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    .line 23
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mLayoutParams:Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    .line 27
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Lcom/android/systemui/biometrics/Utils;->getNavbarInsets(Landroid/content/Context;)Landroid/graphics/Insets;

    .line 31
    move-result-object p1

    .line 34
    iget p2, p1, Landroid/graphics/Insets;->bottom:I

    .line 35
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    .line 37
    iget v0, v0, Lcom/android/systemui/biometrics/AuthPanelController;->mPosition:I

    .line 39
    const/4 v1, 0x2

    .line 41
    if-ne v0, v1, :cond_1

    .line 42
    iget p1, p1, Landroid/graphics/Insets;->left:I

    .line 44
    goto :goto_1

    .line 46
    :cond_1
    const/4 v1, 0x3

    .line 47
    if-ne v0, v1, :cond_2

    .line 48
    iget p1, p1, Landroid/graphics/Insets;->right:I

    .line 50
    goto :goto_1

    .line 52
    :cond_2
    const/4 p1, 0x0

    .line 53
    :goto_1
    if-nez p1, :cond_3

    .line 54
    if-eqz p2, :cond_4

    .line 56
    :cond_3
    new-instance v0, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    .line 58
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mLayoutParams:Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    .line 60
    iget v2, v1, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;->mMediumWidth:I

    .line 62
    add-int/2addr v2, p1

    .line 64
    iget p1, v1, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;->mMediumHeight:I

    .line 65
    add-int/2addr p1, p2

    .line 67
    invoke-direct {v0, v2, p1}, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;-><init>(II)V

    .line 68
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mLayoutParams:Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    .line 71
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mLayoutParams:Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    .line 73
    iget p2, p1, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;->mMediumWidth:I

    .line 75
    iget p1, p1, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;->mMediumHeight:I

    .line 77
    invoke-virtual {p0, p2, p1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 79
    return-void
    .line 82
.end method

.method public onMeasureInternal(II)Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v1, v0, :cond_5

    .line 8
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 10
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 14
    move-result v4

    .line 17
    const v5, 0x7f0a08ab    # @id/space_above_icon

    .line 18
    const/high16 v6, 0x40000000    # 2.0f

    .line 21
    if-eq v4, v5, :cond_3

    .line 23
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 25
    move-result v4

    .line 28
    const v5, 0x7f0a08ac    # @id/space_below_icon

    .line 29
    if-eq v4, v5, :cond_3

    .line 32
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 34
    move-result v4

    .line 37
    const v5, 0x7f0a01a9    # @id/button_bar

    .line 38
    if-ne v4, v5, :cond_0

    .line 41
    goto :goto_1

    .line 43
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 44
    move-result v4

    .line 47
    const v5, 0x7f0a0137    # @id/biometric_icon_frame

    .line 48
    const v7, 0x7f0a0136    # @id/biometric_icon

    .line 51
    if-ne v4, v5, :cond_1

    .line 54
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object v4

    .line 59
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 60
    move-result-object v5

    .line 63
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 64
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 66
    move-result v5

    .line 69
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 70
    move-result-object v4

    .line 73
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 74
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 76
    move-result v4

    .line 79
    invoke-virtual {v3, v5, v4}, Landroid/view/View;->measure(II)V

    .line 80
    goto :goto_2

    .line 83
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 84
    move-result v4

    .line 87
    const/high16 v5, -0x80000000

    .line 88
    if-ne v4, v7, :cond_2

    .line 90
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 92
    move-result v4

    .line 95
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 96
    move-result v5

    .line 99
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 100
    goto :goto_2

    .line 103
    :cond_2
    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 104
    move-result v4

    .line 107
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 108
    move-result v5

    .line 111
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 112
    goto :goto_2

    .line 115
    :cond_3
    :goto_1
    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 116
    move-result v4

    .line 119
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 120
    move-result-object v5

    .line 123
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 124
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 126
    move-result v5

    .line 129
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 130
    :goto_2
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 133
    move-result v4

    .line 136
    const/16 v5, 0x8

    .line 137
    if-eq v4, v5, :cond_4

    .line 139
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 141
    move-result v3

    .line 144
    add-int/2addr v3, v2

    .line 145
    move v2, v3

    .line 146
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 147
    goto/16 :goto_0

    .line 149
    :cond_5
    new-instance p0, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    .line 151
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;-><init>(II)V

    .line 153
    return-object p0
    .line 156
.end method

.method public final onOrientationChanged()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateSize(I)V

    .line 4
    return-void
    .line 7
.end method

.method public final onSaveState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mConfirmButton:Landroid/widget/Button;

    .line 2
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    .line 4
    move-result v0

    .line 7
    const-string v1, "confirm_visibility"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    .line 13
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    .line 15
    move-result v0

    .line 18
    const-string/jumbo v1, "try_agian_visibility"

    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 22
    const-string/jumbo v0, "state"

    .line 25
    iget v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mState:I

    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    .line 33
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 35
    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    .line 41
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 43
    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const-string v0, ""

    .line 52
    :goto_0
    const-string v1, "indicator_string"

    .line 54
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    .line 59
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetErrorRunnable:Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;

    .line 61
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 63
    move-result v0

    .line 66
    const-string v1, "error_is_temporary"

    .line 67
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    .line 72
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetHelpRunnable:Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;

    .line 74
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 76
    move-result v0

    .line 79
    const-string v1, "hint_is_temporary"

    .line 80
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    const-string/jumbo v0, "size"

    .line 85
    iget p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    .line 88
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    return-void
    .line 93
.end method

.method public final removePendingAnimations()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetHelpRunnable:Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    .line 9
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mResetErrorRunnable:Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;

    .line 11
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    return-void
    .line 16
.end method

.method public final restoreState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSavedState:Landroid/os/Bundle;

    .line 2
    return-void
    .line 4
.end method

.method public final showTemporaryMessage(Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->removePendingAnimations()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    .line 5
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    .line 10
    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTextColorError:I

    .line 12
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    .line 17
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    .line 23
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 25
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 27
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 33
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 35
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    :cond_0
    const/4 v0, 0x1

    .line 41
    :cond_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 42
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    .line 45
    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAnimationDurationHideDialog:I

    .line 47
    int-to-long v0, v0

    .line 49
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 53
    invoke-static {p1, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    .line 55
    return-void
    .line 58
.end method

.method public final startTransitionToCredentialUI()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateSize(I)V

    .line 3
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    .line 6
    const/4 v0, 0x6

    .line 8
    check-cast p0, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;->onAction(I)V

    .line 11
    return-void
    .line 14
.end method

.method public supportsSmallDialog()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lcom/android/systemui/biometrics/AuthBiometricFaceView;

    .line 2
    return p0
    .line 4
.end method

.method public final updateSize(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/biometrics/Utils;->getNavbarInsets(Landroid/content/Context;)Landroid/graphics/Insets;

    .line 4
    move-result-object v0

    .line 7
    const/4 v1, 0x3

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq p1, v1, :cond_2

    .line 11
    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    .line 13
    iget v4, v4, Lcom/android/systemui/biometrics/AuthPanelController;->mPosition:I

    .line 15
    if-ne v4, v3, :cond_0

    .line 17
    iget v0, v0, Landroid/graphics/Insets;->left:I

    .line 19
    invoke-virtual {p0, v0, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    if-ne v4, v1, :cond_1

    .line 25
    iget v0, v0, Landroid/graphics/Insets;->right:I

    .line 27
    invoke-virtual {p0, v2, v2, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 29
    goto :goto_0

    .line 32
    :cond_1
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    .line 33
    invoke-virtual {p0, v2, v2, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 35
    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 39
    :goto_0
    const/4 v0, 0x1

    .line 42
    if-ne p1, v0, :cond_3

    .line 43
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTitleView:Landroid/widget/TextView;

    .line 45
    const/16 v1, 0x8

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSubtitleView:Landroid/widget/TextView;

    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDescriptionView:Landroid/widget/TextView;

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mUseCredentialButton:Landroid/widget/Button;

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 74
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 77
    move-result-object v0

    .line 80
    const v1, 0x7f0700f3    # @dimen/biometric_dialog_icon_padding '16.0dp'

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 84
    move-result v0

    .line 87
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconHolderView:Landroid/view/View;

    .line 88
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 90
    move-result v4

    .line 93
    iget-object v5, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconHolderView:Landroid/view/View;

    .line 94
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 96
    move-result v5

    .line 99
    sub-int/2addr v4, v5

    .line 100
    int-to-float v4, v4

    .line 101
    sub-float/2addr v4, v0

    .line 102
    invoke-virtual {v1, v4}, Landroid/view/View;->setY(F)V

    .line 103
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconHolderView:Landroid/view/View;

    .line 106
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 108
    move-result v1

    .line 111
    float-to-int v0, v0

    .line 112
    mul-int/2addr v0, v3

    .line 113
    add-int/2addr v0, v1

    .line 114
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconHolderView:Landroid/view/View;

    .line 115
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 117
    move-result v1

    .line 120
    sub-int/2addr v0, v1

    .line 121
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconHolderView:Landroid/view/View;

    .line 122
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 124
    move-result v1

    .line 127
    sub-int/2addr v0, v1

    .line 128
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    .line 129
    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mLayoutParams:Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    .line 131
    iget v3, v3, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;->mMediumWidth:I

    .line 133
    invoke-virtual {v1, v3, v0, v2}, Lcom/android/systemui/biometrics/AuthPanelController;->updateForContentDimensions(III)V

    .line 135
    iput p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    .line 138
    goto/16 :goto_1

    .line 140
    :cond_3
    iget v4, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    .line 142
    if-ne v4, v0, :cond_6

    .line 144
    if-ne p1, v3, :cond_6

    .line 146
    iget-boolean v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDialogSizeAnimating:Z

    .line 148
    if-eqz v1, :cond_4

    .line 150
    return-void

    .line 152
    :cond_4
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mDialogSizeAnimating:Z

    .line 153
    new-array v1, v3, [F

    .line 155
    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconHolderView:Landroid/view/View;

    .line 157
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    .line 159
    move-result v4

    .line 162
    aput v4, v1, v2

    .line 163
    iget v4, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconOriginalY:F

    .line 165
    aput v4, v1, v0

    .line 167
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 169
    move-result-object v1

    .line 172
    new-instance v4, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda0;

    .line 173
    invoke-direct {v4, p0, v2}, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;I)V

    .line 175
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 178
    new-array v2, v3, [F

    .line 181
    fill-array-data v2, :array_0

    .line 183
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 186
    move-result-object v2

    .line 189
    new-instance v3, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda0;

    .line 190
    invoke-direct {v3, p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;I)V

    .line 192
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 195
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 198
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 200
    iget v3, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAnimationDurationShort:I

    .line 203
    int-to-long v3, v3

    .line 205
    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 206
    new-instance v3, Lcom/android/systemui/biometrics/AuthBiometricView$1;

    .line 209
    invoke-direct {v3, p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView$1;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;I)V

    .line 211
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 214
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mJankListener:Landroid/animation/Animator$AnimatorListener;

    .line 217
    if-eqz p1, :cond_5

    .line 219
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 221
    :cond_5
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 224
    move-result-object p1

    .line 227
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 228
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 231
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    .line 234
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mLayoutParams:Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    .line 236
    iget v1, v0, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;->mMediumWidth:I

    .line 238
    iget v0, v0, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;->mMediumHeight:I

    .line 240
    const/16 v2, 0x96

    .line 242
    invoke-virtual {p1, v1, v0, v2}, Lcom/android/systemui/biometrics/AuthPanelController;->updateForContentDimensions(III)V

    .line 244
    goto/16 :goto_1

    .line 247
    :cond_6
    if-ne p1, v3, :cond_7

    .line 249
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    .line 251
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mLayoutParams:Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    .line 253
    iget v3, v1, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;->mMediumWidth:I

    .line 255
    iget v1, v1, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;->mMediumHeight:I

    .line 257
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/biometrics/AuthPanelController;->updateForContentDimensions(III)V

    .line 259
    iput p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    .line 262
    goto/16 :goto_1

    .line 264
    :cond_7
    if-ne p1, v1, :cond_9

    .line 266
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 268
    move-result-object v4

    .line 271
    const v5, 0x7f0700f4    # @dimen/biometric_dialog_medium_to_large_translation_offset '100.0dp'

    .line 272
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 275
    move-result v4

    .line 278
    new-array v5, v3, [F

    .line 279
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getY()F

    .line 281
    move-result v6

    .line 284
    aput v6, v5, v2

    .line 285
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getY()F

    .line 287
    move-result v2

    .line 290
    sub-float/2addr v2, v4

    .line 291
    aput v2, v5, v0

    .line 292
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 294
    move-result-object v2

    .line 297
    iget v4, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAnimationDurationLong:I

    .line 298
    int-to-long v4, v4

    .line 300
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 301
    new-instance v4, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda0;

    .line 304
    invoke-direct {v4, p0, v3}, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;I)V

    .line 306
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 309
    new-instance v4, Lcom/android/systemui/biometrics/AuthBiometricView$2;

    .line 312
    invoke-direct {v4, p0, p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricView$2;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;Lcom/android/systemui/biometrics/AuthBiometricView;I)V

    .line 314
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 317
    new-array p1, v3, [F

    .line 320
    fill-array-data p1, :array_1

    .line 322
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 325
    move-result-object p1

    .line 328
    iget v4, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAnimationDurationLong:I

    .line 329
    div-int/2addr v4, v3

    .line 331
    int-to-long v4, v4

    .line 332
    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 333
    new-instance v4, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda0;

    .line 336
    invoke-direct {v4, p0, v1}, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;I)V

    .line 338
    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 341
    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    .line 344
    iput-boolean v0, v4, Lcom/android/systemui/biometrics/AuthPanelController;->mUseFullScreen:Z

    .line 346
    iget v0, v4, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerWidth:I

    .line 348
    iget v5, v4, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerHeight:I

    .line 350
    iget v6, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAnimationDurationLong:I

    .line 352
    invoke-virtual {v4, v0, v5, v6}, Lcom/android/systemui/biometrics/AuthPanelController;->updateForContentDimensions(III)V

    .line 354
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 357
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 359
    new-instance v4, Ljava/util/ArrayList;

    .line 362
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 364
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mJankListener:Landroid/animation/Animator$AnimatorListener;

    .line 373
    if-eqz p1, :cond_8

    .line 375
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 377
    :cond_8
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 380
    iget p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAnimationDurationLong:I

    .line 383
    mul-int/2addr p1, v3

    .line 385
    div-int/2addr p1, v1

    .line 386
    int-to-long v1, p1

    .line 387
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 388
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 391
    goto :goto_1

    .line 394
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 395
    const-string v1, "Unknown transition from: "

    .line 397
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    iget v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 404
    const-string v1, " to: "

    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    move-result-object p1

    .line 418
    const-string v0, "AuthBiometricView"

    .line 419
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 424
    invoke-static {p1, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    .line 426
    return-void

    .line 429
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 430
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 438
.end method

.method public updateState(I)V
    .locals 7

    .line 1
    const-string v0, "newState: "

    .line 2
    const-string v1, "AuthBiometricView"

    .line 4
    invoke-static {v0, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIconController:Lcom/android/systemui/biometrics/AuthIconController;

    .line 9
    iget v2, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mState:I

    .line 11
    iget-boolean v3, v0, Lcom/android/systemui/biometrics/AuthIconController;->deactivated:Z

    .line 13
    if-eqz v3, :cond_0

    .line 15
    const-string v0, "Ignoring updateState when deactivated: "

    .line 17
    const-string v2, "AuthIconController"

    .line 19
    invoke-static {v0, p1, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/biometrics/AuthIconController;->updateIcon(II)V

    .line 25
    :goto_0
    const/4 v0, 0x1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-eq p1, v0, :cond_7

    .line 30
    const/4 v3, 0x2

    .line 32
    if-eq p1, v3, :cond_7

    .line 33
    const/4 v4, 0x4

    .line 35
    if-eq p1, v4, :cond_6

    .line 36
    const/4 v3, 0x5

    .line 38
    const/16 v5, 0x8

    .line 39
    if-eq p1, v3, :cond_4

    .line 41
    const/4 v6, 0x6

    .line 43
    if-eq p1, v6, :cond_1

    .line 44
    const-string v0, "Unhandled state: "

    .line 46
    invoke-static {v0, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 48
    goto/16 :goto_1

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->removePendingAnimations()V

    .line 53
    iget v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    .line 56
    if-eq v1, v0, :cond_2

    .line 58
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mConfirmButton:Landroid/widget/Button;

    .line 60
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 62
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    .line 65
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 67
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mUseCredentialButton:Landroid/widget/Button;

    .line 70
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 72
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCancelButton:Landroid/widget/Button;

    .line 75
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 77
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    .line 80
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 85
    move-result-object v1

    .line 88
    const v4, 0x7f130186    # @string/biometric_dialog_authenticated 'Authenticated'

    .line 89
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 95
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 96
    iget v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mState:I

    .line 99
    if-ne v1, v3, :cond_3

    .line 101
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    .line 103
    new-instance v1, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;

    .line 105
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;I)V

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->getDelayAfterAuthenticatedDurationMs()I

    .line 110
    move-result v2

    .line 113
    int-to-long v2, v2

    .line 114
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    goto :goto_1

    .line 118
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mHandler:Landroid/os/Handler;

    .line 119
    new-instance v2, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;

    .line 121
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/biometrics/AuthBiometricView;I)V

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->getDelayAfterAuthenticatedDurationMs()I

    .line 126
    move-result v0

    .line 129
    int-to-long v3, v0

    .line 130
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    goto :goto_1

    .line 134
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->removePendingAnimations()V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mNegativeButton:Landroid/widget/Button;

    .line 138
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCancelButton:Landroid/widget/Button;

    .line 143
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mUseCredentialButton:Landroid/widget/Button;

    .line 148
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mConfirmButton:Landroid/widget/Button;

    .line 153
    iget-boolean v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mRequireConfirmation:Z

    .line 155
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mConfirmButton:Landroid/widget/Button;

    .line 160
    iget-boolean v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mRequireConfirmation:Z

    .line 162
    if-eqz v1, :cond_5

    .line 164
    move v5, v2

    .line 166
    :cond_5
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    .line 170
    iget v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTextColorHint:I

    .line 172
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->getConfirmationPrompt()I

    .line 179
    move-result v1

    .line 182
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mIndicatorView:Landroid/widget/TextView;

    .line 186
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    goto :goto_1

    .line 191
    :cond_6
    iget v1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    .line 192
    if-ne v1, v0, :cond_8

    .line 194
    invoke-virtual {p0, v3}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateSize(I)V

    .line 196
    goto :goto_1

    .line 199
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->removePendingAnimations()V

    .line 200
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mRequireConfirmation:Z

    .line 203
    if-eqz v0, :cond_8

    .line 205
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mConfirmButton:Landroid/widget/Button;

    .line 207
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mConfirmButton:Landroid/widget/Button;

    .line 212
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 214
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 217
    invoke-static {v0, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    .line 219
    iput p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mState:I

    .line 222
    return-void
    .line 224
.end method
