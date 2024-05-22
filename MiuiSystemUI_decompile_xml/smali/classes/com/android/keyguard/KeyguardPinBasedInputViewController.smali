.class public abstract Lcom/android/keyguard/KeyguardPinBasedInputViewController;
.super Lcom/android/keyguard/KeyguardAbsKeyInputViewController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mActionButtonTouchListener:Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda0;

.field public final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

.field public final mOnKeyListener:Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda4;

.field public final mPasswordEntry:Lcom/android/keyguard/PasswordTextView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardPinBasedInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 12

    .line 1
    move-object v11, p0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object/from16 v4, p4

    .line 7
    move-object/from16 v5, p5

    .line 9
    move-object/from16 v6, p6

    .line 11
    move-object/from16 v7, p7

    .line 13
    move-object/from16 v8, p10

    .line 15
    move-object/from16 v9, p9

    .line 17
    move-object/from16 v10, p11

    .line 19
    invoke-direct/range {v0 .. v10}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 21
    new-instance v0, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda4;

    .line 24
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewController;)V

    .line 26
    iput-object v0, v11, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mOnKeyListener:Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda4;

    .line 29
    new-instance v0, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda0;

    .line 31
    const/4 v1, 0x1

    .line 33
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewController;I)V

    .line 34
    iput-object v0, v11, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mActionButtonTouchListener:Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda0;

    .line 37
    move-object/from16 v0, p8

    .line 39
    iput-object v0, v11, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    .line 41
    move-object/from16 v0, p10

    .line 43
    iput-object v0, v11, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 45
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordTextViewId()I

    .line 47
    move-result v0

    .line 50
    move-object v1, p1

    .line 51
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 55
    check-cast v0, Lcom/android/keyguard/PasswordTextView;

    .line 56
    iput-object v0, v11, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 58
    return-void
    .line 60
.end method


# virtual methods
.method public onResume(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 4
    move-result v0

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    .line 8
    move-result-wide v0

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->shouldLockout(J)Z

    .line 12
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->handleAttemptLockout(J)V

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 26
    return-void
    .line 29
.end method

.method public onViewAttached()V
    .locals 10

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onViewAttached()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 5
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 7
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isPinEnhancedPrivacyEnabled(I)Z

    .line 11
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    xor-int/2addr v0, v1

    .line 16
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 17
    invoke-virtual {v2, v0}, Lcom/android/keyguard/PasswordTextView;->setShowPassword(Z)V

    .line 19
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 22
    check-cast v3, Lcom/android/keyguard/KeyguardPinBasedInputView;

    .line 24
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getButtons()[Lcom/android/keyguard/NumPadKey;

    .line 26
    move-result-object v4

    .line 29
    array-length v5, v4

    .line 30
    const/4 v6, 0x0

    .line 31
    move v7, v6

    .line 32
    :goto_0
    if-ge v7, v5, :cond_0

    .line 33
    aget-object v8, v4, v7

    .line 35
    new-instance v9, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda0;

    .line 37
    invoke-direct {v9, p0, v6}, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewController;I)V

    .line 39
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 42
    invoke-virtual {v8, v0}, Lcom/android/keyguard/NumPadKey;->setAnimationEnabled(Z)V

    .line 45
    add-int/lit8 v7, v7, 0x1

    .line 48
    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mOnKeyListener:Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda4;

    .line 51
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 53
    new-instance v0, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda1;

    .line 56
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewController;)V

    .line 58
    invoke-virtual {v2, v0}, Lcom/android/keyguard/PasswordTextView;->setUserActivityListener(Lcom/android/keyguard/PasswordTextView$UserActivityListener;)V

    .line 61
    const v0, 0x7f0a02a3    # @id/delete_button

    .line 64
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object v0

    .line 70
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mActionButtonTouchListener:Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda0;

    .line 71
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 73
    new-instance v4, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda2;

    .line 76
    invoke-direct {v4, p0, v6}, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewController;I)V

    .line 78
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    new-instance v4, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda3;

    .line 84
    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewController;)V

    .line 86
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 89
    const v0, 0x7f0a0464    # @id/key_enter

    .line 92
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 95
    move-result-object v0

    .line 98
    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    new-instance v2, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda2;

    .line 104
    invoke-direct {v2, p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputViewController;I)V

    .line 106
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    .line 112
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 114
    :cond_1
    return-void
    .line 117
.end method

.method public onViewDetached()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast p0, Lcom/android/keyguard/KeyguardPinBasedInputView;

    .line 4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getButtons()[Lcom/android/keyguard/NumPadKey;

    .line 6
    move-result-object p0

    .line 9
    array-length v0, p0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    aget-object v2, p0, v1

    .line 14
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    return-void
    .line 23
.end method

.method public resetState()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast p0, Lcom/android/keyguard/KeyguardPinBasedInputView;

    .line 4
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryEnabled(Z)V

    .line 7
    return-void
    .line 10
.end method

.method public final startErrorAnimation()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
