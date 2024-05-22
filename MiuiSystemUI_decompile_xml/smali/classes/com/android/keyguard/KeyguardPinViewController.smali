.class public final Lcom/android/keyguard/KeyguardPinViewController;
.super Lcom/android/keyguard/KeyguardPinBasedInputViewController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mBackButton:Landroid/view/View;

.field public final mBackspaceKey:Landroid/view/View;

.field public mDeleteButton:Landroid/view/View;

.field public mDisabledAutoConfirmation:Z

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mOkButton:Landroid/view/View;

.field public mPasswordLength:I

.field public final mPinLength:J

.field public final mPostureCallback:Lcom/android/keyguard/KeyguardPinViewController$$ExternalSyntheticLambda2;

.field public final mPostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardPINView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 15

    .line 1
    move-object v12, p0

    .line 2
    move-object/from16 v13, p1

    .line 3
    move-object/from16 v14, p4

    .line 5
    move-object v0, p0

    .line 7
    move-object/from16 v1, p1

    .line 8
    move-object/from16 v2, p2

    .line 10
    move-object/from16 v3, p3

    .line 12
    move-object/from16 v4, p4

    .line 14
    move-object/from16 v5, p5

    .line 16
    move-object/from16 v6, p6

    .line 18
    move-object/from16 v7, p7

    .line 20
    move-object/from16 v8, p8

    .line 22
    move-object/from16 v9, p9

    .line 24
    move-object/from16 v10, p10

    .line 26
    move-object/from16 v11, p12

    .line 28
    invoke-direct/range {v0 .. v11}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 30
    new-instance v0, Lcom/android/keyguard/KeyguardPinViewController$$ExternalSyntheticLambda2;

    .line 33
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPinViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardPinViewController;)V

    .line 35
    iput-object v0, v12, Lcom/android/keyguard/KeyguardPinViewController;->mPostureCallback:Lcom/android/keyguard/KeyguardPinViewController$$ExternalSyntheticLambda2;

    .line 38
    const v0, 0x7f0a0464    # @id/key_enter

    .line 40
    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 46
    iput-object v0, v12, Lcom/android/keyguard/KeyguardPinViewController;->mOkButton:Landroid/view/View;

    .line 47
    move-object/from16 v0, p2

    .line 49
    iput-object v0, v12, Lcom/android/keyguard/KeyguardPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 51
    move-object/from16 v0, p11

    .line 53
    iput-object v0, v12, Lcom/android/keyguard/KeyguardPinViewController;->mPostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 55
    iput-object v14, v12, Lcom/android/keyguard/KeyguardPinViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 57
    move-object/from16 v0, p12

    .line 59
    iput-object v0, v12, Lcom/android/keyguard/KeyguardPinViewController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 61
    const v0, 0x7f0a02a3    # @id/delete_button

    .line 63
    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object v0

    .line 69
    iput-object v0, v12, Lcom/android/keyguard/KeyguardPinViewController;->mBackspaceKey:Landroid/view/View;

    .line 70
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 72
    move-result v0

    .line 75
    invoke-virtual {v14, v0}, Lcom/android/internal/widget/LockPatternUtils;->getPinLength(I)I

    .line 76
    move-result v0

    .line 79
    int-to-long v0, v0

    .line 80
    iput-wide v0, v12, Lcom/android/keyguard/KeyguardPinViewController;->mPinLength:J

    .line 81
    return-void
    .line 83
.end method


# virtual methods
.method public final handleAttemptLockout(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->handleAttemptLockout(J)V

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinViewController;->updateAutoConfirmationState()V

    .line 5
    return-void
    .line 8
.end method

.method public final onTextChanged(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardPinViewController;->mPasswordLength:I

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->verifyPasswordAndUnlock()V

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 9
    const/16 v1, 0x8

    .line 10
    if-nez p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinViewController;->mBackButton:Landroid/view/View;

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinViewController;->mDeleteButton:Landroid/view/View;

    .line 19
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    goto :goto_0

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinViewController;->mBackButton:Landroid/view/View;

    .line 25
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinViewController;->mDeleteButton:Landroid/view/View;

    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    :goto_0
    return-void
    .line 35
.end method

.method public final onUserInput()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onUserInput()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 5
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 7
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isAutoPinConfirmEnabled(I)Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinViewController;->updateAutoConfirmationState()V

    .line 17
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 20
    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 26
    move-result v0

    .line 29
    int-to-long v0, v0

    .line 30
    iget-wide v2, p0, Lcom/android/keyguard/KeyguardPinViewController;->mPinLength:J

    .line 31
    cmp-long v0, v0, v2

    .line 33
    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinViewController;->mOkButton:Landroid/view/View;

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 39
    move-result v0

    .line 42
    const/4 v1, 0x4

    .line 43
    if-ne v0, v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->verifyPasswordAndUnlock()V

    .line 46
    :cond_0
    return-void
    .line 49
.end method

.method public final onViewAttached()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->onViewAttached()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 5
    check-cast v0, Lcom/android/keyguard/KeyguardPINView;

    .line 7
    const v1, 0x7f0a01bf    # @id/cancel_button

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    new-instance v3, Lcom/android/keyguard/KeyguardPinViewController$$ExternalSyntheticLambda0;

    .line 18
    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardPinViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardPinViewController;)V

    .line 20
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    :cond_0
    new-instance v2, Lcom/android/keyguard/KeyguardPinViewController$$ExternalSyntheticLambda1;

    .line 26
    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPinViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardPinViewController;)V

    .line 28
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 31
    invoke-virtual {v3, v2}, Lcom/android/keyguard/PasswordTextView;->setUserActivityListener(Lcom/android/keyguard/PasswordTextView$UserActivityListener;)V

    .line 33
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinViewController;->mPostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 36
    check-cast v2, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    .line 38
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPinViewController;->mPostureCallback:Lcom/android/keyguard/KeyguardPinViewController$$ExternalSyntheticLambda2;

    .line 40
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 42
    new-instance v2, Landroid/security/MiuiLockPatternUtils;

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v4

    .line 50
    invoke-direct {v2, v4}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 54
    move-result v4

    .line 57
    invoke-virtual {v2, v4}, Landroid/security/MiuiLockPatternUtils;->getLockPasswordLength(I)J

    .line 58
    move-result-wide v4

    .line 61
    long-to-int v2, v4

    .line 62
    iput v2, p0, Lcom/android/keyguard/KeyguardPinViewController;->mPasswordLength:I

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v1

    .line 68
    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinViewController;->mBackButton:Landroid/view/View;

    .line 69
    const v1, 0x7f0a02a3    # @id/delete_button

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinViewController;->mDeleteButton:Landroid/view/View;

    .line 78
    iput-object p0, v3, Lcom/android/keyguard/PasswordTextView;->mTextChangeListener:Lcom/android/keyguard/KeyguardPinViewController;

    .line 80
    iget-object v0, v3, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 84
    move-result v0

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinViewController;->onTextChanged(I)V

    .line 88
    return-void
    .line 91
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->onViewDetached()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinViewController;->mPostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 5
    check-cast v0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    .line 7
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinViewController;->mPostureCallback:Lcom/android/keyguard/KeyguardPinViewController$$ExternalSyntheticLambda2;

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 11
    const/4 v0, 0x0

    .line 14
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 15
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChangeListener:Lcom/android/keyguard/KeyguardPinViewController;

    .line 17
    return-void
    .line 19
.end method

.method public final startAppearAnimation()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/flags/Flags;->AUTO_PIN_CONFIRMATION:Lcom/android/systemui/flags/ReleasedFlag;

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinViewController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 4
    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 6
    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 14
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setUsePinShapes(Z)V

    .line 17
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinViewController;->updateAutoConfirmationState()V

    .line 20
    :cond_0
    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->startAppearAnimation()V

    .line 23
    return-void
    .line 26
.end method

.method public final startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast v0, Lcom/android/keyguard/KeyguardPINView;

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 6
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    .line 8
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardPINView;->startDisappearAnimation(Ljava/lang/Runnable;)V

    .line 10
    const/4 p0, 0x1

    .line 13
    return p0
    .line 14
.end method

.method public final updateAutoConfirmationState()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 6
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    .line 8
    move-result v0

    .line 11
    const/4 v2, 0x5

    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    if-lt v0, v2, :cond_0

    .line 15
    move v0, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v4

    .line 19
    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPinViewController;->mDisabledAutoConfirmation:Z

    .line 20
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 22
    move-result v0

    .line 25
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isAutoPinConfirmEnabled(I)Z

    .line 26
    move-result v0

    .line 29
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 30
    if-eqz v0, :cond_3

    .line 32
    invoke-virtual {v2}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 38
    move-result v0

    .line 41
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPinViewController;->mBackspaceKey:Landroid/view/View;

    .line 42
    if-gtz v0, :cond_2

    .line 44
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinViewController;->mDisabledAutoConfirmation:Z

    .line 46
    if-eqz v0, :cond_1

    .line 48
    goto :goto_1

    .line 50
    :cond_1
    const/4 v0, 0x4

    .line 51
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 52
    goto :goto_2

    .line 55
    :cond_2
    :goto_1
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 59
    move-result v0

    .line 62
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isAutoPinConfirmEnabled(I)Z

    .line 63
    move-result v0

    .line 66
    if-eqz v0, :cond_5

    .line 67
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 69
    move-result v0

    .line 72
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getPinLength(I)I

    .line 73
    move-result v0

    .line 76
    const/4 v1, 0x6

    .line 77
    if-ne v0, v1, :cond_4

    .line 78
    move v0, v3

    .line 80
    goto :goto_3

    .line 81
    :cond_4
    move v0, v4

    .line 82
    :goto_3
    if-eqz v0, :cond_5

    .line 83
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardPinViewController;->mDisabledAutoConfirmation:Z

    .line 85
    if-nez p0, :cond_5

    .line 87
    goto :goto_4

    .line 89
    :cond_5
    move v3, v4

    .line 90
    :goto_4
    invoke-virtual {v2, v3}, Lcom/android/keyguard/PasswordTextView;->setIsPinHinting(Z)V

    .line 91
    return-void
    .line 94
.end method
