.class public final Lcom/android/keyguard/KeyguardSecurityContainerController;
.super Lcom/android/systemui/util/ViewController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAdminSecondaryLockScreenController:Lcom/android/keyguard/AdminSecondaryLockScreenController;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mBgHandler:Landroid/os/Handler;

.field public final mBgImageView:Landroid/widget/ImageView;

.field public mBouncerIsOrWillBeShowing:Z

.field public mCancelAction:Ljava/lang/Runnable;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardSecurityContainerController$4;

.field public mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

.field public final mEditorModeBgImageView:Landroid/widget/ImageView;

.field public mEditorModeBgShow:Z

.field public final mEditorStateListener:Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda3;

.field public mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

.field public final mEmergencyButtonControllerFactory:Lcom/android/keyguard/EmergencyButtonController$Factory;

.field public mEmergencyCallButton:Lcom/android/keyguard/EmergencyButton;

.field public final mFalsingA11yDelegate:Lcom/android/systemui/classifier/FalsingA11yDelegate;

.field public final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public mFingerprintAuthUserId:I

.field public final mForegroundDrawable:Landroid/graphics/drawable/Drawable;

.field public mForgetPasswordButton:Landroid/widget/Button;

.field public mForgetPasswordContent:Landroid/widget/TextView;

.field public mForgetPasswordMethod:Landroid/view/View;

.field public mForgetPasswordMethodBack:Landroid/widget/TextView;

.field public mForgetPasswordMethodBtnLayout:Landroid/view/View;

.field public mForgetPasswordMethodNext:Landroid/widget/TextView;

.field public mForgetPasswordMethodTitle:Landroid/widget/TextView;

.field public mForgetPasswordSuggestion:Landroid/view/View;

.field public mForgetPasswordSuggestionOk:Landroid/widget/TextView;

.field public mForgetPasswordSuggestionOne:Landroid/widget/TextView;

.field public mForgetPasswordSuggestionTitle:Landroid/widget/TextView;

.field public mForgetPasswordSuggestionTwo:Landroid/widget/TextView;

.field public mFpiState:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

.field public final mGetBackgroundPreviewRunnable:Lcom/android/keyguard/KeyguardSecurityContainerController$9;

.field public final mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field final mGlobalTouchListener:Lcom/android/systemui/Gefingerpoken;

.field public final mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

.field public final mKeyguardFaceAuthInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;

.field public final mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainerController$2;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mKeyguardWallpaperBlurPreviewChangeListener:Lcom/android/keyguard/KeyguardSecurityContainerController$8;

.field public mLastFpiState:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

.field public mLastOrientation:I

.field public mLastSmallestScreenWidthDp:I

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockoutView:Landroid/view/View;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

.field public final mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

.field public mOccluded:Z

.field public final mOnKeyListener:Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda1;

.field public mPhoneLockedTextView:Landroid/widget/TextView;

.field public final mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field public final mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

.field public final mSessionTracker:Lcom/android/systemui/log/SessionTracker;

.field public final mSideFpsController:Ljava/util/Optional;

.field public final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mTranslationY:I

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mUserSwitchCallback:Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda2;

.field public final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field public final mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field public mWillRunDismissFromKeyguard:Z


# direct methods
.method public static -$$Nest$mhandleFaceUnlockBouncerMessage(Lcom/android/keyguard/KeyguardSecurityContainerController;Ljava/lang/String;Lcom/android/keyguard/KeyguardInputViewController;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 5
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 9
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    .line 11
    move-result v0

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprint(Z)Z

    .line 19
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    iget-boolean v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockedOut:Z

    .line 25
    if-nez v0, :cond_0

    .line 27
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->userNeedsStrongAuth()Z

    .line 29
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    move v2, v3

    .line 35
    :cond_0
    if-eqz v2, :cond_1

    .line 36
    const/16 v0, 0x65

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getTitleWithFingerprint(I)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getTitleMessage()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 48
    :goto_0
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    .line 49
    move-result v1

    .line 52
    if-nez v1, :cond_3

    .line 53
    const-class v1, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 55
    invoke-static {v1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    move-result-object v2

    .line 60
    check-cast v2, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 61
    check-cast v2, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 63
    iget-boolean v2, v2, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mFaceLockedOut:Z

    .line 65
    if-eqz v2, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 69
    move-result-object p0

    .line 72
    const p1, 0x7f130402    # @string/face_unlock_locked 'Can't use Face unlock now'

    .line 73
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    invoke-static {v1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 81
    move-result-object v1

    .line 84
    check-cast v1, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 85
    check-cast v1, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 87
    invoke-virtual {v1}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->shouldShowFaceUnlockRetryMessageInBouncer()Z

    .line 89
    move-result v1

    .line 92
    if-eqz v1, :cond_3

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 95
    move-result-object p0

    .line 98
    const p1, 0x7f130401    # @string/face_unlock_fail_retry_global 'Tap above to use Face unlock'

    .line 99
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 105
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardTitleMessageAreaController()Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 106
    move-result-object p0

    .line 109
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardMessageAreaController()Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 110
    move-result-object p2

    .line 113
    if-eqz p0, :cond_4

    .line 114
    invoke-virtual {p0, v0, v3}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 116
    :cond_4
    if-eqz p2, :cond_5

    .line 119
    invoke-virtual {p2, p1, v3}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 121
    :cond_5
    return-void
    .line 124
.end method

.method public static -$$Nest$mhandleFingerprintStateChanged(Lcom/android/keyguard/KeyguardSecurityContainerController;Lcom/android/keyguard/KeyguardInputViewController;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 9
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isBiometricAllowedForUser(ZI)Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_9

    .line 18
    const-class v1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 20
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-static {}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->shouldListenForFingerprintWhenUnlocked()Z

    .line 31
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    goto/16 :goto_1

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFpiState:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 39
    sget-object v2, Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->FAILED:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 41
    if-ne v1, v2, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v0

    .line 48
    const v1, 0x7f130437    # @string/fingerprint_try_again_text 'Try again'

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 56
    move-result-object v1

    .line 59
    const v2, 0x7f130436    # @string/fingerprint_try_again_msg 'Couldn't verify fingerprint, try again.'

    .line 60
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 66
    goto/16 :goto_0

    .line 67
    :cond_1
    sget-object v2, Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->ERROR:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 69
    if-ne v1, v2, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getTitleMessage()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 76
    const/16 v1, 0x66

    .line 77
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getTitleWithFingerprint(I)Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    sget-object v4, Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->SUCCEEDED:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 84
    const-string v5, ""

    .line 86
    if-ne v1, v4, :cond_4

    .line 88
    iget v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFingerprintAuthUserId:I

    .line 90
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 92
    move-result v2

    .line 95
    if-eq v1, v2, :cond_5

    .line 96
    const-class v1, Lcom/miui/systemui/MultiUserController;

    .line 98
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 100
    move-result-object v1

    .line 103
    check-cast v1, Lcom/miui/systemui/MultiUserController;

    .line 104
    iget v2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFingerprintAuthUserId:I

    .line 106
    invoke-virtual {v1, v2}, Lcom/miui/systemui/MultiUserController;->allowUnlock(I)Lcom/miui/systemui/MultiUserController$UserSwitchableResult;

    .line 108
    move-result-object v1

    .line 111
    iget-boolean v2, v1, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;->canSwitch:Z

    .line 112
    if-nez v2, :cond_3

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 116
    move-result-object v0

    .line 119
    iget v1, v1, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;->tipsResId:I

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 122
    move-result-object v0

    .line 125
    move-object v1, v5

    .line 126
    goto :goto_0

    .line 127
    :cond_3
    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 128
    iget v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFingerprintAuthUserId:I

    .line 130
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitorExtKt;->hasUserAuthenticatedSinceBoot(Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;I)Z

    .line 132
    move-result v0

    .line 135
    if-nez v0, :cond_5

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 138
    move-result-object v0

    .line 141
    const v1, 0x7f130429    # @string/fingerprint_enter_second_psw_title 'Enter Second space password'

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 149
    move-result-object v1

    .line 152
    const v2, 0x7f13055e    # @string/input_second_pattern_after_restart_msg 'Confirm Second space password to continue'

    .line 153
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 156
    move-result-object v1

    .line 159
    goto :goto_0

    .line 160
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLastFpiState:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 161
    if-ne v0, v2, :cond_5

    .line 163
    sget-object v0, Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->RESET:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 165
    if-ne v1, v0, :cond_5

    .line 167
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getTitleMessage()Ljava/lang/String;

    .line 169
    move-result-object v0

    .line 172
    const/16 v1, 0x67

    .line 173
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getTitleWithFingerprint(I)Ljava/lang/String;

    .line 175
    move-result-object v1

    .line 178
    goto :goto_0

    .line 179
    :cond_5
    move-object v0, v5

    .line 180
    move-object v1, v0

    .line 181
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 182
    move-result v2

    .line 185
    if-eqz v2, :cond_6

    .line 186
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 188
    move-result v2

    .line 191
    if-nez v2, :cond_8

    .line 192
    :cond_6
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardTitleMessageAreaController()Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 194
    move-result-object v2

    .line 197
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardMessageAreaController()Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 198
    move-result-object p1

    .line 201
    if-eqz v2, :cond_7

    .line 202
    invoke-virtual {v2, v0, v3}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 204
    :cond_7
    if-eqz p1, :cond_8

    .line 207
    invoke-virtual {p1, v1, v3}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 209
    :cond_8
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFpiState:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 212
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLastFpiState:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 214
    goto :goto_2

    .line 216
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFpiState:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 217
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLastFpiState:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 219
    :goto_2
    return-void
    .line 221
.end method

.method public static -$$Nest$msetLockoutViewVisible(Lcom/android/keyguard/KeyguardSecurityContainerController;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockoutView:Landroid/view/View;

    .line 2
    const v1, 0x7f0a06ff    # @id/phone_locked_textview

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockoutView:Landroid/view/View;

    .line 14
    const v1, 0x7f0a0700    # @id/phone_locked_timeout_id

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockoutView:Landroid/view/View;

    .line 26
    const v1, 0x7f0a0379    # @id/foget_password

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 34
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    if-nez p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    .line 40
    invoke-virtual {p1}, Lcom/android/keyguard/EmergencyButtonController;->updateEmergencyCallButton()V

    .line 42
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockoutView:Landroid/view/View;

    .line 46
    const v1, 0x7f0a031a    # @id/emergencyCallButton

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object v0

    .line 54
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->reLayoutEmCallButton()V

    .line 58
    return-void
    .line 61
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/keyguard/KeyguardConstants;->DEBUG:Z

    .line 2
    sput-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->DEBUG:Z

    .line 4
    return-void
    .line 6
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardSecurityViewFlipperController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/log/SessionTracker;Ljava/util/Optional;Lcom/android/systemui/classifier/FalsingA11yDelegate;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/ViewMediatorCallback;Landroid/media/AudioManager;Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/EmergencyButtonController$Factory;Lcom/android/keyguard/KeyguardEditorHelper;)V
    .locals 8

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 5
    new-instance v3, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda1;

    .line 8
    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V

    .line 10
    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mOnKeyListener:Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda1;

    .line 13
    const/4 v3, 0x0

    .line 15
    iput v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLastOrientation:I

    .line 16
    iput v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLastSmallestScreenWidthDp:I

    .line 18
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 20
    iput-object v4, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 22
    new-instance v4, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda2;

    .line 24
    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V

    .line 26
    iput-object v4, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUserSwitchCallback:Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda2;

    .line 29
    new-instance v4, Lcom/android/keyguard/KeyguardSecurityContainerController$1;

    .line 31
    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$1;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V

    .line 33
    iput-object v4, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mGlobalTouchListener:Lcom/android/systemui/Gefingerpoken;

    .line 36
    new-instance v4, Lcom/android/keyguard/KeyguardSecurityContainerController$2;

    .line 38
    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$2;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V

    .line 40
    iput-object v4, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainerController$2;

    .line 43
    new-instance v5, Lcom/android/keyguard/KeyguardSecurityContainerController$4;

    .line 45
    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$4;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V

    .line 47
    iput-object v5, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecurityContainerController$4;

    .line 50
    new-instance v5, Lcom/android/keyguard/KeyguardSecurityContainerController$5;

    .line 52
    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$5;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V

    .line 54
    iput-object v5, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 57
    new-instance v5, Lcom/android/keyguard/KeyguardSecurityContainerController$8;

    .line 59
    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$8;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V

    .line 61
    iput-object v5, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardWallpaperBlurPreviewChangeListener:Lcom/android/keyguard/KeyguardSecurityContainerController$8;

    .line 64
    new-instance v5, Lcom/android/keyguard/KeyguardSecurityContainerController$9;

    .line 66
    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$9;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V

    .line 68
    iput-object v5, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mGetBackgroundPreviewRunnable:Lcom/android/keyguard/KeyguardSecurityContainerController$9;

    .line 71
    new-instance v5, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda3;

    .line 73
    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V

    .line 75
    iput-object v5, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mEditorStateListener:Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda3;

    .line 78
    iput-boolean v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mOccluded:Z

    .line 80
    new-instance v3, Lcom/android/keyguard/KeyguardSecurityContainerController$11;

    .line 82
    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$11;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V

    .line 84
    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 87
    move-object v3, p3

    .line 89
    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 90
    move-object v3, p4

    .line 92
    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 93
    move-object v3, p5

    .line 95
    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 96
    move-object v3, p6

    .line 98
    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 99
    move-object v3, p7

    .line 101
    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 102
    move-object/from16 v3, p8

    .line 104
    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 106
    move-object/from16 v3, p9

    .line 108
    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    .line 110
    new-instance v3, Lcom/android/keyguard/AdminSecondaryLockScreenController;

    .line 112
    iget-object v5, v2, Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;->mContext:Landroid/content/Context;

    .line 114
    iget-object v6, v2, Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;->mParent:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 116
    iget-object v7, v2, Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 118
    iget-object v2, v2, Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;->mHandler:Landroid/os/Handler;

    .line 120
    move-object p2, v3

    .line 122
    move-object p3, v5

    .line 123
    move-object p4, v6

    .line 124
    move-object p5, v7

    .line 125
    move-object p6, v4

    .line 126
    move-object p7, v2

    .line 127
    invoke-direct/range {p2 .. p7}, Lcom/android/keyguard/AdminSecondaryLockScreenController;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityContainerController$2;Landroid/os/Handler;)V

    .line 128
    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mAdminSecondaryLockScreenController:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    .line 131
    move-object/from16 v2, p10

    .line 133
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 137
    move-result-object v2

    .line 140
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 141
    move-result-object v2

    .line 144
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 145
    iput v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLastOrientation:I

    .line 147
    move-object/from16 v2, p11

    .line 149
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 151
    move-object/from16 v2, p12

    .line 153
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 155
    move-object/from16 v2, p13

    .line 157
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 159
    move-object/from16 v2, p14

    .line 161
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 163
    move-object/from16 v2, p15

    .line 165
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    .line 167
    move-object/from16 v2, p16

    .line 169
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSideFpsController:Ljava/util/Optional;

    .line 171
    move-object/from16 v2, p17

    .line 173
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFalsingA11yDelegate:Lcom/android/systemui/classifier/FalsingA11yDelegate;

    .line 175
    move-object/from16 v2, p18

    .line 177
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 179
    move-object/from16 v2, p19

    .line 181
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 183
    move-object/from16 v2, p20

    .line 185
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mAudioManager:Landroid/media/AudioManager;

    .line 187
    move-object/from16 v2, p21

    .line 189
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardFaceAuthInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardFaceAuthInteractor;

    .line 191
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 193
    move-result-object v2

    .line 196
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 197
    move-result-object v2

    .line 200
    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 201
    iput v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLastSmallestScreenWidthDp:I

    .line 203
    move-object/from16 v2, p22

    .line 205
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 207
    move-object/from16 v2, p23

    .line 209
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mBgHandler:Landroid/os/Handler;

    .line 211
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 213
    move-result-object v2

    .line 216
    const v3, 0x7f060052    # @color/blur_background_mask '#4d000000'

    .line 217
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 220
    move-result v2

    .line 223
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 224
    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 226
    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 229
    const v2, 0x7f0a0472    # @id/keyguard_bouncer_bg

    .line 231
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 234
    move-result-object v2

    .line 237
    check-cast v2, Landroid/widget/ImageView;

    .line 238
    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mBgImageView:Landroid/widget/ImageView;

    .line 240
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 242
    move-result-object v3

    .line 245
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 246
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 248
    move-result-object v4

    .line 251
    const v5, 0x7f070d14    # @dimen/navigation_bar_height '@android:dimen/notification_big_picture_max_height'

    .line 252
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 255
    move-result v4

    .line 258
    mul-int/lit8 v4, v4, -0x1

    .line 259
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 261
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    const v2, 0x7f0a0315    # @id/editormode_keyguard_bouncer_bg

    .line 266
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 269
    move-result-object v1

    .line 272
    check-cast v1, Landroid/widget/ImageView;

    .line 273
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mEditorModeBgImageView:Landroid/widget/ImageView;

    .line 275
    move-object/from16 v1, p24

    .line 277
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 279
    move-object/from16 v1, p25

    .line 281
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mEmergencyButtonControllerFactory:Lcom/android/keyguard/EmergencyButtonController$Factory;

    .line 283
    move-object/from16 v1, p26

    .line 285
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 287
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->updateWallpaperPreview()V

    .line 289
    return-void
    .line 292
.end method


# virtual methods
.method public final configureMode()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 2
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 4
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 10
    if-eq v0, v1, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->isFoldLargeScreenAndNotPad(Landroid/content/Context;)Z

    .line 21
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 27
    if-eqz v1, :cond_2

    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 35
    move-result-object v0

    .line 38
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 39
    const/4 v1, 0x2

    .line 41
    if-ne v0, v1, :cond_2

    .line 42
    :cond_1
    move v3, v2

    .line 44
    :cond_2
    if-eqz v3, :cond_3

    .line 45
    move v3, v2

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 49
    move-result-object v0

    .line 52
    const v1, 0x7f05000d    # @bool/can_use_one_handed_bouncer 'false'

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 56
    move-result v3

    .line 59
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 60
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 62
    iget v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentMode:I

    .line 64
    if-ne v1, v3, :cond_4

    .line 66
    goto :goto_2

    .line 68
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    const-string v4, "Switching mode from "

    .line 71
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    iget v4, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentMode:I

    .line 76
    invoke-static {v4}, Lcom/android/keyguard/KeyguardSecurityContainer;->modeToString(I)Ljava/lang/String;

    .line 78
    move-result-object v4

    .line 81
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v4, " to "

    .line 85
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-static {v3}, Lcom/android/keyguard/KeyguardSecurityContainer;->modeToString(I)Ljava/lang/String;

    .line 90
    move-result-object v4

    .line 93
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 100
    const-string v4, "KeyguardSecurityView"

    .line 101
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iput v3, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentMode:I

    .line 106
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    if-eq v3, v2, :cond_5

    .line 113
    new-instance v1, Lcom/android/keyguard/KeyguardSecurityContainer$DefaultViewMode;

    .line 115
    invoke-direct {v1}, Lcom/android/keyguard/KeyguardSecurityContainer$DefaultViewMode;-><init>()V

    .line 117
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    .line 120
    goto :goto_1

    .line 122
    :cond_5
    new-instance v1, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;

    .line 123
    invoke-direct {v1}, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;-><init>()V

    .line 125
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    .line 128
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 130
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 132
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 134
    if-eqz v2, :cond_7

    .line 136
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 138
    if-eqz v3, :cond_7

    .line 140
    if-eqz v1, :cond_7

    .line 142
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 144
    if-nez p0, :cond_6

    .line 146
    goto :goto_2

    .line 148
    :cond_6
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    .line 149
    invoke-interface {p0, v0, v2}, Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;->init(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardSecurityViewFlipper;)V

    .line 151
    :cond_7
    :goto_2
    return-void
    .line 154
.end method

.method public final getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainerController$2;

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    .line 6
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    .line 8
    return-void
    .line 11
.end method

.method public final getTitleMessage()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 2
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 4
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 12
    move-result v0

    .line 15
    const/4 v1, 0x2

    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    const/4 v1, 0x3

    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    const/4 v1, 0x4

    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 25
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    move-result-object p0

    .line 32
    const v0, 0x7f130555    # @string/input_password_hint_text 'Enter password'

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 41
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    move-result-object p0

    .line 48
    const v0, 0x7f13054c    # @string/input_lockscreen_pin_hint_text 'Enter PIN'

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 57
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    move-result-object p0

    .line 64
    const v0, 0x7f13054a    # @string/input_lockscreen_password_hint_text 'Enter password'

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 73
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 77
    move-result-object p0

    .line 80
    const v0, 0x7f13054b    # @string/input_lockscreen_pattern_hint_text 'Draw pattern'

    .line 81
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 87
    :goto_0
    return-object p0
    .line 88
.end method

.method public final getTitleWithFingerprint(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 2
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 4
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 12
    move-result v0

    .line 15
    const/4 v1, 0x2

    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    const/4 v1, 0x3

    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    const/4 v1, 0x4

    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v0

    .line 28
    const v1, 0x7f130407    # @string/face_unlock_passwork_and_fingerprint 'Use password or fingerprint'

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v1

    .line 39
    const v2, 0x7f13042a    # @string/fingerprint_not_identified_msg 'Too many unsuccessful attempts. Enter your screen lock now or try using the fingerprint in a few sec ...'

    .line 40
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 47
    move-result-object p0

    .line 50
    const v2, 0x7f130421    # @string/fingerprint_again_identified_msg 'Your fingerprint is active now. Use it to unlock the device, or enter password.'

    .line 51
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 59
    move-result-object v0

    .line 62
    const v1, 0x7f130409    # @string/face_unlock_pin_and_fingerprint 'Enter PIN or use fingerprint to unlock'

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 70
    move-result-object v1

    .line 73
    const v2, 0x7f13042e    # @string/fingerprint_not_identified_msg_pin 'Too many unsuccessful attempts.\nEnter your PIN to unlock.'

    .line 74
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 81
    move-result-object p0

    .line 84
    const v2, 0x7f130424    # @string/fingerprint_again_identified_msg_pin 'Your fingerprint is active now.\nUse it to unlock the device, or enter your PIN.'

    .line 85
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    move-result-object p0

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 93
    move-result-object v0

    .line 96
    const v1, 0x7f130405    # @string/face_unlock_password_and_fingerprint 'Enter password or use fingerprint to unlock'

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 104
    move-result-object v1

    .line 107
    const v2, 0x7f13042c    # @string/fingerprint_not_identified_msg_password 'Too many unsuccessful attempts.\nEnter your password to unlock.'

    .line 108
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 115
    move-result-object p0

    .line 118
    const v2, 0x7f130422    # @string/fingerprint_again_identified_msg_password 'Your fingerprint is active now.\nUse it to unlock the device, or enter your password.'

    .line 119
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 122
    move-result-object p0

    .line 125
    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 127
    move-result-object v0

    .line 130
    const v1, 0x7f130408    # @string/face_unlock_pattern_and_fingerprint 'Draw pattern or use fingerprint to unlock'

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 138
    move-result-object v1

    .line 141
    const v2, 0x7f13042d    # @string/fingerprint_not_identified_msg_pattern 'Too many unsuccessful attempts.\nDraw your pattern to unlock.'

    .line 142
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 145
    move-result-object v1

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 149
    move-result-object p0

    .line 152
    const v2, 0x7f130423    # @string/fingerprint_again_identified_msg_pattern 'Your fingerprint is active now.\nUse it to unlock the device, or draw your pattern.'

    .line 153
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 156
    move-result-object p0

    .line 159
    :goto_0
    const/16 v2, 0x65

    .line 160
    if-ne p1, v2, :cond_3

    .line 162
    return-object v0

    .line 164
    :cond_3
    const/16 v0, 0x66

    .line 165
    if-ne p1, v0, :cond_4

    .line 167
    return-object v1

    .line 169
    :cond_4
    const/16 v0, 0x67

    .line 170
    if-ne p1, v0, :cond_5

    .line 172
    return-object p0

    .line 174
    :cond_5
    const-string p0, ""

    .line 175
    return-object p0
    .line 177
.end method

.method public final handleShowBouncerMessage(Lcom/android/keyguard/KeyguardInputViewController;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 4
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->getBouncerPromptReason()I

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x4

    .line 12
    const/4 v2, 0x3

    .line 13
    const/4 v3, 0x2

    .line 14
    const/16 v4, 0x66

    .line 15
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x1

    .line 18
    if-nez v0, :cond_c

    .line 19
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 21
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 23
    move-result v7

    .line 26
    invoke-virtual {v0, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    .line 27
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 33
    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprint(Z)Z

    .line 35
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 41
    iget-boolean v7, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockedOut:Z

    .line 43
    if-nez v7, :cond_0

    .line 45
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->userNeedsStrongAuth()Z

    .line 47
    move-result v0

    .line 50
    if-nez v0, :cond_0

    .line 51
    move v5, v6

    .line 53
    :cond_0
    if-eqz v5, :cond_1

    .line 54
    const/16 v0, 0x65

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getTitleWithFingerprint(I)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getTitleMessage()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 66
    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 67
    iget-boolean v7, v5, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockedOut:Z

    .line 69
    const-string v8, ""

    .line 71
    if-eqz v7, :cond_2

    .line 73
    iget-boolean v5, v5, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockedOutPermanent:Z

    .line 75
    if-nez v5, :cond_8

    .line 77
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getTitleWithFingerprint(I)Ljava/lang/String;

    .line 79
    move-result-object v4

    .line 82
    goto/16 :goto_2

    .line 83
    :cond_2
    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    .line 85
    move-result v5

    .line 88
    if-nez v5, :cond_8

    .line 89
    const-class v5, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 91
    invoke-static {v5}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    move-result-object v7

    .line 96
    check-cast v7, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 97
    check-cast v7, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 99
    iget-boolean v7, v7, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->mFaceLockedOut:Z

    .line 101
    if-eqz v7, :cond_3

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 105
    move-result-object v4

    .line 108
    const v5, 0x7f130402    # @string/face_unlock_locked 'Can't use Face unlock now'

    .line 109
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 112
    move-result-object v4

    .line 115
    goto/16 :goto_2

    .line 116
    :cond_3
    invoke-static {v5}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 118
    move-result-object v5

    .line 121
    check-cast v5, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 122
    check-cast v5, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 124
    invoke-virtual {v5}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->shouldShowFaceUnlockRetryMessageInBouncer()Z

    .line 126
    move-result v5

    .line 129
    if-eqz v5, :cond_4

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 132
    move-result-object v4

    .line 135
    const v5, 0x7f130401    # @string/face_unlock_fail_retry_global 'Tap above to use Face unlock'

    .line 136
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 139
    move-result-object v4

    .line 142
    goto/16 :goto_2

    .line 143
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 145
    const-string v7, "handleShowBouncerMessage mFpiState="

    .line 147
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFpiState:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 152
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    move-result-object v5

    .line 160
    const-string v7, "KeyguardSecurityView"

    .line 161
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFpiState:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 166
    sget-object v7, Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->ERROR:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 168
    if-ne v5, v7, :cond_5

    .line 170
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getTitleMessage()Ljava/lang/String;

    .line 172
    move-result-object v0

    .line 175
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getTitleWithFingerprint(I)Ljava/lang/String;

    .line 176
    move-result-object v4

    .line 179
    goto :goto_2

    .line 180
    :cond_5
    sget-object v4, Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->SUCCEEDED:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 181
    if-ne v5, v4, :cond_7

    .line 183
    iget v4, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFingerprintAuthUserId:I

    .line 185
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 187
    move-result v5

    .line 190
    if-eq v4, v5, :cond_8

    .line 191
    const-class v4, Lcom/miui/systemui/MultiUserController;

    .line 193
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 195
    move-result-object v4

    .line 198
    check-cast v4, Lcom/miui/systemui/MultiUserController;

    .line 199
    iget v5, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFingerprintAuthUserId:I

    .line 201
    invoke-virtual {v4, v5}, Lcom/miui/systemui/MultiUserController;->allowUnlock(I)Lcom/miui/systemui/MultiUserController$UserSwitchableResult;

    .line 203
    move-result-object v4

    .line 206
    iget-boolean v5, v4, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;->canSwitch:Z

    .line 207
    if-nez v5, :cond_6

    .line 209
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 211
    move-result-object v0

    .line 214
    iget v4, v4, Lcom/miui/systemui/MultiUserController$UserSwitchableResult;->tipsResId:I

    .line 215
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 217
    move-result-object v0

    .line 220
    goto :goto_1

    .line 221
    :cond_6
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 222
    iget-object v4, v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 224
    iget v5, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFingerprintAuthUserId:I

    .line 226
    invoke-static {v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitorExtKt;->hasUserAuthenticatedSinceBoot(Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;I)Z

    .line 228
    move-result v4

    .line 231
    if-nez v4, :cond_8

    .line 232
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 234
    move-result-object v0

    .line 237
    const v4, 0x7f130429    # @string/fingerprint_enter_second_psw_title 'Enter Second space password'

    .line 238
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 241
    move-result-object v0

    .line 244
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 245
    move-result-object v4

    .line 248
    const v5, 0x7f13055e    # @string/input_second_pattern_after_restart_msg 'Confirm Second space password to continue'

    .line 249
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 252
    move-result-object v4

    .line 255
    goto :goto_2

    .line 256
    :cond_7
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLastFpiState:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 257
    if-ne v4, v7, :cond_8

    .line 259
    sget-object v4, Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->RESET:Lcom/miui/keyguard/biometrics/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    .line 261
    if-ne v5, v4, :cond_8

    .line 263
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getTitleMessage()Ljava/lang/String;

    .line 265
    move-result-object v0

    .line 268
    const/16 v4, 0x67

    .line 269
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getTitleWithFingerprint(I)Ljava/lang/String;

    .line 271
    move-result-object v4

    .line 274
    goto :goto_2

    .line 275
    :cond_8
    :goto_1
    move-object v4, v8

    .line 276
    :goto_2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 277
    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    .line 279
    move-result v5

    .line 282
    if-eqz v5, :cond_a

    .line 283
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 285
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 287
    move-result v5

    .line 290
    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 291
    move-result-object v4

    .line 294
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 295
    move-result v4

    .line 298
    if-eq v4, v3, :cond_9

    .line 299
    if-eq v4, v2, :cond_9

    .line 301
    if-eq v4, v1, :cond_9

    .line 303
    goto :goto_3

    .line 305
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 306
    move-result-object p0

    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 310
    move-result-object p0

    .line 313
    const v1, 0x7f130ae8    # @string/sim_lock_bouncer_hint_msg 'SIM card is locked. Replace it or enter password to unlock.'

    .line 314
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 317
    move-result-object v8

    .line 320
    :goto_3
    move-object v4, v8

    .line 321
    :cond_a
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardTitleMessageAreaController()Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 322
    move-result-object p0

    .line 325
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardMessageAreaController()Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 326
    move-result-object p1

    .line 329
    if-eqz p0, :cond_b

    .line 330
    invoke-virtual {p0, v0, v6}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 332
    :cond_b
    if-eqz p1, :cond_20

    .line 335
    invoke-virtual {p1, v4, v6}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 337
    goto/16 :goto_7

    .line 340
    :cond_c
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 342
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 344
    move-result-object v8

    .line 347
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 348
    move-result-object v8

    .line 351
    sget-object v9, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 352
    sget-object v10, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 354
    if-eq v0, v6, :cond_19

    .line 356
    const/4 v11, 0x0

    .line 358
    if-eq v0, v3, :cond_18

    .line 359
    if-eq v0, v2, :cond_13

    .line 361
    if-eq v0, v1, :cond_12

    .line 363
    const/4 v1, 0x5

    .line 365
    const v2, 0x7f130633    # @string/kg_prompt_reason_timeout_pattern 'For additional security, use pattern instead'

    .line 366
    const v3, 0x7f130632    # @string/kg_prompt_reason_timeout_password 'For additional security, use password instead'

    .line 369
    if-eq v0, v1, :cond_f

    .line 372
    const/4 v1, 0x7

    .line 374
    if-eq v0, v1, :cond_e

    .line 375
    if-ne v7, v10, :cond_d

    .line 377
    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 379
    move-result-object v0

    .line 382
    goto/16 :goto_5

    .line 383
    :cond_d
    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 385
    move-result-object v0

    .line 388
    goto/16 :goto_5

    .line 389
    :cond_e
    const v0, 0x7f130557    # @string/input_pattern_after_face_not_allowed 'Enter your password at least once every %d hours to keep this device secure'

    .line 391
    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 394
    move-result-object v0

    .line 397
    const/16 v1, 0x18

    .line 398
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 400
    move-result-object v1

    .line 403
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 404
    move-result-object v1

    .line 407
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 408
    move-result-object v0

    .line 411
    goto/16 :goto_5

    .line 412
    :cond_f
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 414
    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockedOut:Z

    .line 416
    if-eqz v1, :cond_10

    .line 418
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockedOutPermanent:Z

    .line 420
    if-nez v0, :cond_10

    .line 422
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getTitleWithFingerprint(I)Ljava/lang/String;

    .line 424
    move-result-object v0

    .line 427
    goto/16 :goto_5

    .line 428
    :cond_10
    if-ne v7, v10, :cond_11

    .line 430
    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 432
    move-result-object v0

    .line 435
    goto/16 :goto_5

    .line 436
    :cond_11
    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 438
    move-result-object v0

    .line 441
    goto/16 :goto_5

    .line 442
    :cond_12
    const v0, 0x7f130635    # @string/kg_prompt_reason_user_request 'Device was locked manually'

    .line 444
    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 447
    move-result-object v0

    .line 450
    goto/16 :goto_5

    .line 451
    :cond_13
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 453
    move-result-object v0

    .line 456
    const-class v1, Lmiui/stub/MiuiStub$3;

    .line 457
    invoke-static {v1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 459
    move-result-object v2

    .line 462
    check-cast v2, Lmiui/stub/MiuiStub$3;

    .line 463
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 465
    move-result v3

    .line 468
    iget-object v2, v2, Lmiui/stub/MiuiStub$3;->this$0:Lmiui/stub/MiuiStub;

    .line 469
    iget-object v2, v2, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 471
    iget-object v2, v2, Lmiui/stub/MiuiStub$SysUIProvider;->mKeyguardUpdateMonitor:Ldagger/Lazy;

    .line 473
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 475
    move-result-object v2

    .line 478
    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 479
    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    .line 481
    move-result v2

    .line 484
    invoke-static {v1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 485
    move-result-object v1

    .line 488
    check-cast v1, Lmiui/stub/MiuiStub$3;

    .line 489
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 491
    move-result v3

    .line 494
    invoke-virtual {v1, v3}, Lmiui/stub/MiuiStub$3;->isUnlockWithFingerprintPossible(I)Z

    .line 495
    move-result v1

    .line 498
    if-eqz v1, :cond_14

    .line 499
    const-class v1, Lmiui/stub/MiuiStub$15;

    .line 501
    invoke-static {v1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 503
    move-result-object v1

    .line 506
    check-cast v1, Lmiui/stub/MiuiStub$15;

    .line 507
    iget-object v1, v1, Lmiui/stub/MiuiStub$15;->this$0:Lmiui/stub/MiuiStub;

    .line 509
    iget-object v1, v1, Lmiui/stub/MiuiStub;->mMiuiModuleProvider:Lmiui/stub/MiuiStub$MiuiModuleProvider;

    .line 511
    iget-object v1, v1, Lmiui/stub/MiuiStub$MiuiModuleProvider;->mKeyguardCommonSettingObserver:Ldagger/Lazy;

    .line 513
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 515
    move-result-object v1

    .line 518
    check-cast v1, Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 519
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardCommonSettingObserver;->fingerApplyForKeyguard:Z

    .line 521
    if-eqz v1, :cond_14

    .line 523
    move v5, v6

    .line 525
    :cond_14
    if-eqz v2, :cond_15

    .line 526
    if-eqz v5, :cond_15

    .line 528
    const v1, 0x7f130387    # @string/device_locked_without_biometric 'Can't unlock this device with fingerprints or face data when you're using a third party screen lock'

    .line 530
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 533
    move-result-object v11

    .line 536
    goto :goto_4

    .line 537
    :cond_15
    if-eqz v2, :cond_16

    .line 538
    const v1, 0x7f130388    # @string/device_locked_without_biometric_face 'Can't unlock this device with face data when you're using a third party screen lock'

    .line 540
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 543
    move-result-object v11

    .line 546
    goto :goto_4

    .line 547
    :cond_16
    if-eqz v5, :cond_17

    .line 548
    const v1, 0x7f130389    # @string/device_locked_without_biometric_finger 'Can't unlock this device with fingerprints when you're using a third party screen lock'

    .line 550
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 553
    move-result-object v11

    .line 556
    :cond_17
    :goto_4
    move-object v0, v11

    .line 557
    goto :goto_5

    .line 558
    :cond_18
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 559
    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 561
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 563
    move-result v1

    .line 566
    invoke-virtual {v0, v11, v1}, Landroid/app/admin/DevicePolicyManager;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;I)J

    .line 567
    move-result-wide v0

    .line 570
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 571
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    .line 573
    move-result-wide v3

    .line 576
    long-to-int v3, v3

    .line 577
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    .line 578
    move-result-wide v0

    .line 581
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 582
    move-result-object v0

    .line 585
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 586
    move-result-object v0

    .line 589
    const v1, 0x7f110021    # @plurals/input_pattern_after_timeout_msg

    .line 590
    invoke-virtual {v8, v1, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 593
    move-result-object v0

    .line 596
    goto :goto_5

    .line 597
    :cond_19
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 598
    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 600
    invoke-static {v0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitorExtKt;->hasUserAuthenticatedSinceBoot(Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;I)Z

    .line 602
    move-result v0

    .line 605
    if-nez v0, :cond_1c

    .line 606
    if-ne v7, v10, :cond_1a

    .line 608
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 610
    move-result-object v0

    .line 613
    const v1, 0x7f130556    # @string/input_pattern_after_boot_msg 'Drawing your pattern is required when the device reboots'

    .line 614
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 617
    move-result-object v0

    .line 620
    goto :goto_5

    .line 621
    :cond_1a
    if-ne v7, v9, :cond_1b

    .line 622
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 624
    move-result-object v0

    .line 627
    const v1, 0x7f13055b    # @string/input_pin_after_boot_msg 'Entering your PIN is required when the device reboots'

    .line 628
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 631
    move-result-object v0

    .line 634
    goto :goto_5

    .line 635
    :cond_1b
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 636
    move-result-object v0

    .line 639
    const v1, 0x7f13054d    # @string/input_password_after_boot_msg 'Entering your password is required when the device reboots'

    .line 640
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 643
    move-result-object v0

    .line 646
    goto :goto_5

    .line 647
    :cond_1c
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 648
    move-result-object v0

    .line 651
    const v1, 0x7f130558    # @string/input_pattern_after_restart_msg 'Confirm your screen lock to continue'

    .line 652
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 655
    move-result-object v0

    .line 658
    :goto_5
    if-ne v7, v10, :cond_1d

    .line 659
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 661
    move-result-object p0

    .line 664
    const v1, 0x7f13054b    # @string/input_lockscreen_pattern_hint_text 'Draw pattern'

    .line 665
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 668
    move-result-object p0

    .line 671
    goto :goto_6

    .line 672
    :cond_1d
    if-ne v7, v9, :cond_1e

    .line 673
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 675
    move-result-object p0

    .line 678
    const v1, 0x7f13054c    # @string/input_lockscreen_pin_hint_text 'Enter PIN'

    .line 679
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 682
    move-result-object p0

    .line 685
    goto :goto_6

    .line 686
    :cond_1e
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 687
    move-result-object p0

    .line 690
    const v1, 0x7f13054a    # @string/input_lockscreen_password_hint_text 'Enter password'

    .line 691
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 694
    move-result-object p0

    .line 697
    :goto_6
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardTitleMessageAreaController()Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 698
    move-result-object v1

    .line 701
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardMessageAreaController()Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 702
    move-result-object p1

    .line 705
    if-eqz v1, :cond_1f

    .line 706
    invoke-virtual {v1, p0, v6}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 708
    :cond_1f
    if-eqz p1, :cond_20

    .line 711
    invoke-virtual {p1, v0, v6}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 713
    :cond_20
    :goto_7
    return-void
    .line 716
.end method

.method public final interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 6
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mAudioManager:Landroid/media/AudioManager;

    .line 10
    const/4 v3, 0x0

    .line 12
    const/16 v4, 0x7f

    .line 13
    const/16 v5, 0x7e

    .line 15
    const/16 v6, 0xde

    .line 17
    const/16 v7, 0x82

    .line 19
    const/16 v8, 0x4f

    .line 21
    const/4 v9, 0x1

    .line 23
    if-nez v1, :cond_3

    .line 24
    if-eq v0, v8, :cond_2

    .line 26
    if-eq v0, v7, :cond_2

    .line 28
    if-eq v0, v6, :cond_2

    .line 30
    if-eq v0, v5, :cond_0

    .line 32
    if-eq v0, v4, :cond_0

    .line 34
    packed-switch v0, :pswitch_data_0

    .line 36
    goto :goto_0

    .line 39
    :cond_0
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 40
    if-eqz p0, :cond_1

    .line 42
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    .line 44
    move-result p0

    .line 47
    if-eqz p0, :cond_1

    .line 48
    return v9

    .line 50
    :cond_1
    return v3

    .line 51
    :cond_2
    :pswitch_1
    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 52
    return v9

    .line 55
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 56
    move-result p0

    .line 59
    if-ne p0, v9, :cond_5

    .line 60
    if-eq v0, v8, :cond_4

    .line 62
    if-eq v0, v7, :cond_4

    .line 64
    if-eq v0, v6, :cond_4

    .line 66
    if-eq v0, v5, :cond_4

    .line 68
    if-eq v0, v4, :cond_4

    .line 70
    packed-switch v0, :pswitch_data_1

    .line 72
    goto :goto_0

    .line 75
    :cond_4
    :pswitch_2
    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 76
    return v9

    .line 79
    :cond_5
    :goto_0
    return v3

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 82
    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
    .line 100
.end method

.method public final needsInput()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onInit()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->updateResources()V

    .line 7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->configureMode()V

    .line 10
    return-void
    .line 13
.end method

.method public final onPause()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v1

    .line 17
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    move-result-object v1

    .line 21
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    const-string/jumbo v1, "screen off, instance %s at %s"

    .line 26
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 32
    const-string v1, "KeyguardSecurityView"

    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showPrimarySecurityScreen()V

    .line 38
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mAdminSecondaryLockScreenController:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    .line 41
    invoke-virtual {v0}, Lcom/android/keyguard/AdminSecondaryLockScreenController;->hide()V

    .line 43
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 46
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 48
    if-eq v0, v1, :cond_1

    .line 50
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda4;

    .line 52
    const/4 v1, 0x3

    .line 54
    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda4;-><init>(I)V

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    .line 58
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 61
    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    .line 65
    const/4 v1, 0x0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 70
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 77
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    .line 85
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;->resetAlign()V

    .line 87
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 90
    return-void
    .line 93
.end method

.method public final onResume(I)V
    .locals 6

    .line 1
    sget-boolean p1, Lcom/android/keyguard/KeyguardSecurityContainerController;->DEBUG:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v0, "screen on, instance "

    .line 8
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 14
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 28
    const-string v0, "KeyguardSecurityView"

    .line 29
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 34
    check-cast p1, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 38
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 41
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 43
    const/4 v2, 0x1

    .line 45
    const/4 v3, 0x0

    .line 46
    if-eq v0, v1, :cond_2

    .line 47
    iget-object v0, p1, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    .line 49
    instance-of v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;

    .line 51
    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityAlignSideLogStateForShow()I

    .line 55
    move-result v0

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 v0, 0x2

    .line 60
    :goto_0
    const/16 v4, 0x3f

    .line 61
    invoke-static {v4, v0}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    .line 63
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda6;

    .line 66
    invoke-direct {v0, v2, v3}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda6;-><init>(II)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 74
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 76
    move-result v4

    .line 79
    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 80
    move-result-object v0

    .line 83
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 84
    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 86
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFaceAuthEnabled:Z

    .line 88
    iget-object v4, p1, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 90
    iget-object v5, p1, Lcom/android/keyguard/KeyguardSecurityContainer;->mWindowInsetsAnimationCallback:Lcom/android/keyguard/KeyguardSecurityContainer$1;

    .line 92
    invoke-virtual {v4, v5}, Landroid/widget/ViewFlipper;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 94
    if-eqz p0, :cond_3

    .line 97
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 99
    if-eq v0, p0, :cond_3

    .line 101
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 103
    if-eq v0, p0, :cond_3

    .line 105
    if-eq v0, v1, :cond_3

    .line 107
    goto :goto_1

    .line 109
    :cond_3
    move v2, v3

    .line 110
    :goto_1
    iput-boolean v2, p1, Lcom/android/keyguard/KeyguardSecurityContainer;->mSwipeUpToRetry:Z

    .line 111
    return-void
    .line 113
.end method

.method public final onStartingToHide()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 2
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 4
    if-eq v0, v1, :cond_0

    .line 6
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda4;

    .line 8
    const/4 v1, 0x2

    .line 10
    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda4;-><init>(I)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    .line 14
    :cond_0
    return-void
    .line 17
.end method

.method public final onViewAttached()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 6
    const-class v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 9
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 15
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->registerCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 19
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 22
    iget-object v0, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardWallpaperBlurPreviewChangeListeners:Ljava/util/ArrayList;

    .line 24
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardWallpaperBlurPreviewChangeListener:Lcom/android/keyguard/KeyguardSecurityContainerController$8;

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mEditorStateListener:Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda3;

    .line 31
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 33
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardEditorHelper;->addEditorStateListener(Lcom/android/keyguard/KeyguardEditorHelper$EditorStateListener;)V

    .line 35
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 38
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mGlobalTouchListener:Lcom/android/systemui/Gefingerpoken;

    .line 45
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mMotionEventListeners:Ljava/util/List;

    .line 47
    check-cast v2, Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 54
    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 56
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecurityContainerController$4;

    .line 58
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 60
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    new-instance v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$addAdapter$1;

    .line 68
    const/4 v3, 0x1

    .line 70
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUserSwitchCallback:Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda2;

    .line 71
    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$addAdapter$1;-><init>(ILjava/lang/Object;)V

    .line 73
    iget-object v3, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->callbackCompatMap:Ljava/util/Map;

    .line 76
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUserInteractor()Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 81
    move-result-object v1

    .line 84
    invoke-virtual {v1, v2}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->addCallback(Lcom/android/systemui/statusbar/policy/UserSwitcherController$addAdapter$1;)V

    .line 85
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 88
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V

    .line 90
    check-cast v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    .line 93
    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 95
    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 97
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 99
    move-result-object v1

    .line 102
    check-cast v1, Lcom/android/keyguard/KeyguardViewController;

    .line 103
    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 105
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 107
    check-cast v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 109
    iget-object v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 111
    const/4 v3, 0x0

    .line 113
    iput-boolean v3, v2, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardNeedsInput:Z

    .line 114
    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 116
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mOnKeyListener:Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda1;

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showPrimarySecurityScreen()V

    .line 124
    return-void
    .line 127
.end method

.method public final onViewDetached()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 6
    const-class v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 9
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 15
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->removeCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 19
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 22
    iget-object v0, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardWallpaperBlurPreviewChangeListeners:Ljava/util/ArrayList;

    .line 24
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardWallpaperBlurPreviewChangeListener:Lcom/android/keyguard/KeyguardSecurityContainerController$8;

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mGetBackgroundPreviewRunnable:Lcom/android/keyguard/KeyguardSecurityContainerController$9;

    .line 31
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mBgHandler:Landroid/os/Handler;

    .line 33
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 35
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    const-string/jumbo v2, "removeEditorStateListener, listener="

    .line 45
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mEditorStateListener:Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda3;

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 59
    sget-object v3, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 60
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, v0, Lcom/android/keyguard/KeyguardEditorHelper;->listeners:Ljava/util/List;

    .line 65
    check-cast v0, Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 69
    move-result v1

    .line 72
    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 78
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 80
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecurityContainerController$4;

    .line 82
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 87
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 89
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mGlobalTouchListener:Lcom/android/systemui/Gefingerpoken;

    .line 91
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mMotionEventListeners:Ljava/util/List;

    .line 93
    check-cast v0, Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 100
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->callbackCompatMap:Ljava/util/Map;

    .line 102
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUserSwitchCallback:Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda2;

    .line 104
    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    move-result-object p0

    .line 109
    check-cast p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$UserCallback;

    .line 110
    if-eqz p0, :cond_1

    .line 112
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUserInteractor()Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 114
    move-result-object v0

    .line 117
    invoke-virtual {v0, p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->removeCallback(Lcom/android/systemui/user/domain/interactor/UserInteractor$UserCallback;)V

    .line 118
    :cond_1
    return-void
    .line 121
.end method

.method public final reLayoutEmCallButton()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 2
    const v1, 0x7f0709c6    # @dimen/miui_unlock_lockout_emergency_btn_margin_bottom '45.0dp'

    .line 4
    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordButton:Landroid/widget/Button;

    .line 9
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    .line 11
    move-result v0

    .line 14
    const/4 v2, 0x4

    .line 15
    const/16 v3, 0xe

    .line 16
    const/16 v4, 0x14

    .line 18
    if-ne v0, v2, :cond_0

    .line 20
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mEmergencyCallButton:Lcom/android/keyguard/EmergencyButton;

    .line 22
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 25
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mEmergencyCallButton:Lcom/android/keyguard/EmergencyButton;

    .line 28
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 34
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 36
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object v1

    .line 45
    const v2, 0x7f0709c7    # @dimen/miui_unlock_lockout_emergency_btn_margin_bottom_sec '30.22dp'

    .line 46
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 49
    move-result v1

    .line 52
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 53
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mEmergencyCallButton:Lcom/android/keyguard/EmergencyButton;

    .line 55
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordButton:Landroid/widget/Button;

    .line 61
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    .line 63
    move-result v0

    .line 66
    if-nez v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mEmergencyCallButton:Lcom/android/keyguard/EmergencyButton;

    .line 69
    const v2, 0x7f081325    # @drawable/miui_unlockscreen_lockout_btn 'res/drawable/miui_unlockscreen_lockout_btn.xml'

    .line 71
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 74
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mEmergencyCallButton:Lcom/android/keyguard/EmergencyButton;

    .line 77
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 79
    move-result-object v0

    .line 82
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 83
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 85
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 91
    move-result-object v2

    .line 94
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 95
    move-result v1

    .line 98
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 101
    move-result-object v1

    .line 104
    const v2, 0x7f0709c8    # @dimen/miui_unlock_lockout_emergency_btn_margin_start '359.11dp'

    .line 105
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 108
    move-result v1

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 112
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mEmergencyCallButton:Lcom/android/keyguard/EmergencyButton;

    .line 115
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mEmergencyCallButton:Lcom/android/keyguard/EmergencyButton;

    .line 121
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 123
    move-result-object v0

    .line 126
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 129
    move-result-object v2

    .line 132
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 133
    move-result v1

    .line 136
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 137
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mEmergencyCallButton:Lcom/android/keyguard/EmergencyButton;

    .line 139
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    :cond_2
    :goto_0
    return-void
    .line 144
.end method

.method public final reinflateViewFlipper(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    check-cast v1, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 6
    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 8
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mChildren:Ljava/util/List;

    .line 11
    check-cast v1, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 15
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 18
    new-instance v2, Lcom/android/keyguard/KeyguardSecurityContainerController$7;

    .line 20
    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController$7;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    .line 22
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainerController$2;

    .line 25
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->asynchronouslyInflateView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    .line 27
    return-void
    .line 30
.end method

.method public final reloadForLayoutDirection(Z)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 2
    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordMethodBack:Landroid/widget/TextView;

    .line 6
    if-eqz v0, :cond_2

    .line 8
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordMethodNext:Landroid/widget/TextView;

    .line 10
    if-eqz v1, :cond_2

    .line 12
    const v1, 0x7f0812f2    # @drawable/miui_keyguard_forget_password_suggestion_right 'res/drawable/miui_keyguard_forget_password_suggestion_right.xml'

    .line 14
    const v2, 0x7f0812f1    # @drawable/miui_keyguard_forget_password_suggestion_left 'res/drawable/miui_keyguard_forget_password_suggestion_left.xml'

    .line 17
    if-eqz p1, :cond_0

    .line 20
    move v3, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v3, v2

    .line 24
    :goto_0
    if-eqz p1, :cond_1

    .line 25
    move v1, v2

    .line 27
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 28
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordMethodNext:Landroid/widget/TextView;

    .line 31
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 33
    :cond_2
    return-void
    .line 36
.end method

.method public final reloadText()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordButton:Landroid/widget/Button;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const v1, 0x7f1308d1    # @string/phone_locked_foget_password 'Forgot password?'

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordMethodTitle:Landroid/widget/TextView;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    const v1, 0x7f1308d3    # @string/phone_locked_foget_password_method 'Forgot password?'

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordMethodBack:Landroid/widget/TextView;

    .line 22
    if-eqz v0, :cond_2

    .line 24
    const v1, 0x7f1308d2    # @string/phone_locked_foget_password_mehod_back 'Back'

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordMethodNext:Landroid/widget/TextView;

    .line 32
    if-eqz v0, :cond_3

    .line 34
    const v1, 0x7f1308d5    # @string/phone_locked_foget_password_method_next 'Next'

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 39
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestionTitle:Landroid/widget/TextView;

    .line 42
    if-eqz v0, :cond_4

    .line 44
    const v1, 0x7f1308d9    # @string/phone_locked_forget_password_suggesstions_title 'How to erase data?'

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 49
    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestionOk:Landroid/widget/TextView;

    .line 52
    if-eqz p0, :cond_5

    .line 54
    const v0, 0x7f1308d6    # @string/phone_locked_foget_password_ok 'Got it'

    .line 56
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    .line 59
    :cond_5
    return-void
    .line 62
.end method

.method public final reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 4
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    .line 11
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mChildren:Ljava/util/List;

    .line 13
    check-cast p0, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 30
    check-cast v0, Lcom/android/keyguard/KeyguardInputViewController;

    .line 31
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardInputViewController;->reset()V

    .line 33
    goto :goto_0

    .line 36
    :cond_0
    return-void
    .line 37
.end method

.method public final showLockoutView(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockoutView:Landroid/view/View;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 8
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 10
    const v3, 0x7f0a05d8    # @id/miui_unlockscreen_lockout

    .line 12
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object v3

    .line 18
    iput-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockoutView:Landroid/view/View;

    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v4

    .line 24
    const v5, 0x7f06043d    # @color/miuix_appcompat_black '#ff000000'

    .line 25
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 28
    move-result v4

    .line 31
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 32
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockoutView:Landroid/view/View;

    .line 35
    const v4, 0x7f0a06ff    # @id/phone_locked_textview

    .line 37
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object v3

    .line 43
    check-cast v3, Landroid/widget/TextView;

    .line 44
    iput-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mPhoneLockedTextView:Landroid/widget/TextView;

    .line 46
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockoutView:Landroid/view/View;

    .line 48
    const v4, 0x7f0a031a    # @id/emergencyCallButton

    .line 50
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v3

    .line 56
    check-cast v3, Lcom/android/keyguard/EmergencyButton;

    .line 57
    iput-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mEmergencyCallButton:Lcom/android/keyguard/EmergencyButton;

    .line 59
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mEmergencyButtonControllerFactory:Lcom/android/keyguard/EmergencyButtonController$Factory;

    .line 61
    invoke-virtual {v4, v3}, Lcom/android/keyguard/EmergencyButtonController$Factory;->create(Lcom/android/keyguard/EmergencyButton;)Lcom/android/keyguard/EmergencyButtonController;

    .line 63
    move-result-object v3

    .line 66
    iput-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    .line 67
    invoke-virtual {v3}, Lcom/android/systemui/util/ViewController;->init()V

    .line 69
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockoutView:Landroid/view/View;

    .line 72
    const v4, 0x7f0a0379    # @id/foget_password

    .line 74
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object v3

    .line 80
    check-cast v3, Landroid/widget/Button;

    .line 81
    iput-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordButton:Landroid/widget/Button;

    .line 83
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockoutView:Landroid/view/View;

    .line 85
    const v4, 0x7f0a0385    # @id/forget_password_hint_container

    .line 87
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object v3

    .line 93
    iput-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordMethod:Landroid/view/View;

    .line 94
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockoutView:Landroid/view/View;

    .line 96
    const v4, 0x7f0a0388    # @id/forget_password_method_content

    .line 98
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    move-result-object v3

    .line 104
    check-cast v3, Landroid/widget/TextView;

    .line 105
    iput-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordContent:Landroid/widget/TextView;

    .line 107
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockoutView:Landroid/view/View;

    .line 109
    const v4, 0x7f0a038a    # @id/forget_password_method_title

    .line 111
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    move-result-object v3

    .line 117
    check-cast v3, Landroid/widget/TextView;

    .line 118
    iput-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordMethodTitle:Landroid/widget/TextView;

    .line 120
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockoutView:Landroid/view/View;

    .line 122
    const v4, 0x7f0a0387    # @id/forget_password_method_btn_layout

    .line 124
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    move-result-object v3

    .line 130
    iput-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordMethodBtnLayout:Landroid/view/View;

    .line 131
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordMethod:Landroid/view/View;

    .line 133
    const v4, 0x7f0a0386    # @id/forget_password_method_back

    .line 135
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 138
    move-result-object v3

    .line 141
    check-cast v3, Landroid/widget/TextView;

    .line 142
    iput-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordMethodBack:Landroid/widget/TextView;

    .line 144
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordMethod:Landroid/view/View;

    .line 146
    const v4, 0x7f0a0389    # @id/forget_password_method_next

    .line 148
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 151
    move-result-object v3

    .line 154
    check-cast v3, Landroid/widget/TextView;

    .line 155
    iput-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordMethodNext:Landroid/widget/TextView;

    .line 157
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockoutView:Landroid/view/View;

    .line 159
    const v4, 0x7f0a038b    # @id/forget_password_suggesstion

    .line 161
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 164
    move-result-object v3

    .line 167
    iput-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestion:Landroid/view/View;

    .line 168
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockoutView:Landroid/view/View;

    .line 170
    const v4, 0x7f0a038e    # @id/forget_password_suggesstion_title

    .line 172
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    move-result-object v3

    .line 178
    check-cast v3, Landroid/widget/TextView;

    .line 179
    iput-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestionTitle:Landroid/widget/TextView;

    .line 181
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestion:Landroid/view/View;

    .line 183
    const v4, 0x7f0a038d    # @id/forget_password_suggesstion_one

    .line 185
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 188
    move-result-object v3

    .line 191
    check-cast v3, Landroid/widget/TextView;

    .line 192
    iput-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestionOne:Landroid/widget/TextView;

    .line 194
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestion:Landroid/view/View;

    .line 196
    const v4, 0x7f0a038f    # @id/forget_password_suggesstion_two

    .line 198
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 201
    move-result-object v3

    .line 204
    check-cast v3, Landroid/widget/TextView;

    .line 205
    iput-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestionTwo:Landroid/widget/TextView;

    .line 207
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestion:Landroid/view/View;

    .line 209
    const v4, 0x7f0a038c    # @id/forget_password_suggesstion_ok

    .line 211
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 214
    move-result-object v3

    .line 217
    check-cast v3, Landroid/widget/TextView;

    .line 218
    iput-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestionOk:Landroid/widget/TextView;

    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 222
    move-result-object v3

    .line 225
    invoke-static {v3}, Lcom/miui/systemui/util/ShutDownPasswordUtils;->isShutDownPasswordEnabled(Landroid/content/Context;)Z

    .line 226
    move-result v3

    .line 229
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordButton:Landroid/widget/Button;

    .line 230
    new-instance v5, Lcom/android/keyguard/KeyguardSecurityContainerController$14;

    .line 232
    invoke-direct {v5, p0, v2}, Lcom/android/keyguard/KeyguardSecurityContainerController$14;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;I)V

    .line 234
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockoutView:Landroid/view/View;

    .line 240
    new-instance v5, Lcom/android/keyguard/KeyguardSecurityContainerController$15;

    .line 242
    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$15;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V

    .line 244
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 247
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordMethodNext:Landroid/widget/TextView;

    .line 250
    new-instance v5, Lcom/android/keyguard/KeyguardSecurityContainerController$16;

    .line 252
    invoke-direct {v5, p0, v3}, Lcom/android/keyguard/KeyguardSecurityContainerController$16;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;Z)V

    .line 254
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordMethodBack:Landroid/widget/TextView;

    .line 260
    new-instance v4, Lcom/android/keyguard/KeyguardSecurityContainerController$14;

    .line 262
    invoke-direct {v4, p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainerController$14;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;I)V

    .line 264
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestionOk:Landroid/widget/TextView;

    .line 270
    new-instance v4, Lcom/android/keyguard/KeyguardSecurityContainerController$14;

    .line 272
    const/4 v5, 0x2

    .line 274
    invoke-direct {v4, p0, v5}, Lcom/android/keyguard/KeyguardSecurityContainerController$14;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;I)V

    .line 275
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->reloadText()V

    .line 281
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    .line 284
    move-result v0

    .line 287
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->reloadForLayoutDirection(Z)V

    .line 288
    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 292
    move-result v0

    .line 295
    if-nez v0, :cond_1

    .line 296
    return-void

    .line 298
    :cond_1
    :goto_0
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 299
    move-result-object v0

    .line 302
    invoke-interface {v0, v1}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->setShowLockoutView(Z)V

    .line 303
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockoutView:Landroid/view/View;

    .line 306
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockoutView:Landroid/view/View;

    .line 311
    const v1, 0x7f0a0700    # @id/phone_locked_timeout_id

    .line 313
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 316
    move-result-object v0

    .line 319
    check-cast v0, Landroid/widget/TextView;

    .line 320
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mPhoneLockedTextView:Landroid/widget/TextView;

    .line 322
    const v2, 0x7f1308da    # @string/phone_locked_string 'This device is locked'

    .line 324
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 327
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    .line 330
    const/4 v2, 0x0

    .line 332
    const/high16 v3, 0x3f800000    # 1.0f

    .line 333
    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 335
    const-wide/16 v2, 0x1f4

    .line 338
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 340
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockoutView:Landroid/view/View;

    .line 343
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 345
    long-to-double p1, p1

    .line 348
    const-wide v1, 0x408f400000000000L    # 1000.0

    .line 349
    div-double/2addr p1, v1

    .line 354
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 355
    move-result-wide p1

    .line 358
    double-to-long p1, p1

    .line 359
    new-instance v1, Lcom/android/keyguard/KeyguardSecurityContainerController$12;

    .line 360
    const-wide/16 v2, 0x3e8

    .line 362
    mul-long/2addr p1, v2

    .line 364
    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController$12;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;JLandroid/widget/TextView;)V

    .line 365
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 368
    return-void
    .line 371
.end method

.method public final showPrimarySecurityScreen()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-string v0, "KeyguardSecurityView"

    .line 6
    const-string/jumbo v1, "show()"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda0;

    .line 14
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V

    .line 16
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 25
    return-void
    .line 28
.end method

.method public showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "showSecurityScreen("

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ")"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 25
    const-string v1, "KeyguardSecurityView"

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 31
    if-eq p1, v0, :cond_2

    .line 33
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 35
    if-ne p1, v0, :cond_1

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda4;

    .line 40
    const/4 v1, 0x0

    .line 42
    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda4;-><init>(I)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    .line 46
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 49
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda5;

    .line 51
    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda5;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    .line 56
    :cond_2
    :goto_0
    return-void
    .line 59
.end method

.method public final updateResources()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object v1

    .line 10
    const v2, 0x7f05000d    # @bool/can_use_one_handed_bouncer 'false'

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 14
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    const v2, 0x7f0b0072    # @integer/keyguard_host_view_one_handed_gravity '0x00000051'

    .line 20
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 23
    move-result v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const v2, 0x7f0b0071    # @integer/keyguard_host_view_gravity '0x00000051'

    .line 28
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 31
    move-result v2

    .line 34
    :goto_0
    const v3, 0x7f07047e    # @dimen/keyguard_host_view_translation_y '80.0dp'

    .line 35
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 38
    move-result v1

    .line 41
    iput v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mTranslationY:I

    .line 42
    move-object v1, v0

    .line 44
    check-cast v1, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 45
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 47
    move-result-object v1

    .line 50
    instance-of v1, v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 51
    if-eqz v1, :cond_1

    .line 53
    move-object v1, v0

    .line 55
    check-cast v1, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 56
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 58
    move-result-object v1

    .line 61
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 62
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 64
    if-eq v3, v2, :cond_1

    .line 66
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 68
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 75
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 79
    move-result-object v0

    .line 82
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 85
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 89
    move-result-object v1

    .line 92
    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 93
    sget-boolean v2, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    .line 95
    if-eqz v2, :cond_2

    .line 97
    iget v2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLastSmallestScreenWidthDp:I

    .line 99
    if-eq v2, v1, :cond_2

    .line 101
    const/4 v2, 0x1

    .line 103
    goto :goto_1

    .line 104
    :cond_2
    const/4 v2, 0x0

    .line 105
    :goto_1
    iget v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLastOrientation:I

    .line 106
    if-ne v0, v3, :cond_3

    .line 108
    if-eqz v2, :cond_4

    .line 110
    :cond_3
    iput v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLastOrientation:I

    .line 112
    iput v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLastSmallestScreenWidthDp:I

    .line 114
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->configureMode()V

    .line 116
    :cond_4
    return-void
    .line 119
.end method

.method public final updateWallpaperPreview()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mBgImageView:Landroid/widget/ImageView;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mOccluded:Z

    .line 7
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->isDefaultLockScreenTheme()Z

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 18
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardEditorHelper;->isInEnterEditorMode()Z

    .line 20
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    move v0, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/16 v0, 0x8

    .line 28
    :goto_0
    if-nez v0, :cond_7

    .line 30
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mBgImageView:Landroid/widget/ImageView;

    .line 32
    if-nez v2, :cond_3

    .line 34
    goto :goto_1

    .line 36
    :cond_3
    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLowEndDevice()Z

    .line 37
    move-result v2

    .line 40
    xor-int/lit8 v2, v2, 0x1

    .line 41
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mBgImageView:Landroid/widget/ImageView;

    .line 43
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 45
    move-result-object v3

    .line 48
    if-nez v3, :cond_7

    .line 49
    if-nez v2, :cond_4

    .line 51
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mBgHandler:Landroid/os/Handler;

    .line 53
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mGetBackgroundPreviewRunnable:Lcom/android/keyguard/KeyguardSecurityContainerController$9;

    .line 55
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 57
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mBgHandler:Landroid/os/Handler;

    .line 60
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mGetBackgroundPreviewRunnable:Lcom/android/keyguard/KeyguardSecurityContainerController$9;

    .line 62
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    goto :goto_1

    .line 67
    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 68
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardWallpaperBlurPreviewChangeListener:Lcom/android/keyguard/KeyguardSecurityContainerController$8;

    .line 70
    iget-object v4, v2, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardWallpaperBlurPreview:Landroid/graphics/drawable/Drawable;

    .line 72
    if-eqz v4, :cond_5

    .line 74
    iget-object v4, v2, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardWallpaperBlurPreview:Landroid/graphics/drawable/Drawable;

    .line 76
    iget-object v3, v3, Lcom/android/keyguard/KeyguardSecurityContainerController$8;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 78
    iget-object v5, v3, Lcom/android/keyguard/KeyguardSecurityContainerController;->mBgImageView:Landroid/widget/ImageView;

    .line 80
    if-eqz v5, :cond_5

    .line 82
    const/4 v6, 0x0

    .line 84
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v3, v3, Lcom/android/keyguard/KeyguardSecurityContainerController;->mBgImageView:Landroid/widget/ImageView;

    .line 88
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    :cond_5
    iget-boolean v3, v2, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mNeedUpdateKeyguardWallpaperBlurPreview:Z

    .line 93
    if-nez v3, :cond_6

    .line 95
    goto :goto_1

    .line 97
    :cond_6
    iput-boolean v1, v2, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mNeedUpdateKeyguardWallpaperBlurPreview:Z

    .line 98
    iget-object v1, v2, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 100
    new-instance v3, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$5;

    .line 102
    invoke-direct {v3, v2}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$5;-><init>(Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;)V

    .line 104
    invoke-virtual {v1, v3}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)V

    .line 107
    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mBgImageView:Landroid/widget/ImageView;

    .line 110
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    return-void
    .line 115
.end method
