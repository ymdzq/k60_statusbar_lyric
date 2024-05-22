.class public Lcom/android/keyguard/KeyguardPasswordView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAppearAnimating:Z

.field public mBottomSpaceForFod:Landroid/view/View;

.field public mCancelButton:Landroid/view/View;

.field public mDisappearAnimatePending:Z

.field public mDisappearFinishRunnable:Ljava/lang/Runnable;

.field public final mDisappearYTranslation:I

.field public mEmergencyCall:Landroid/view/View;

.field public mEmptySpace:Landroid/widget/Space;

.field public mKeyboardView:Lcom/android/keyguard/widget/MiuiKeyBoardView;

.field public mKeyboardViewLayout:Landroid/view/ViewGroup;

.field public final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public mPasswordEntry:Landroid/widget/TextView;

.field public mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0702ca    # @dimen/disappear_y_translation '-240.0dp'

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/keyguard/KeyguardPasswordView;->mDisappearYTranslation:I

    const p2, 0x10c000e    # @android:interpolator/linear_out_slow_in

    .line 4
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/KeyguardPasswordView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const p0, 0x10c000f    # @android:interpolator/fast_out_linear_in

    .line 5
    invoke-static {p1, p0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public getEnteredCredential()Lcom/android/internal/widget/LockscreenCredential;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPasswordOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method public getPasswordTextViewId()I
    .locals 0

    .line 1
    const p0, 0x7f0a06f1    # @id/passwordEntry

    .line 2
    return p0
    .line 5
.end method

.method public final getPromptReasonStringRes(I)I
    .locals 0

    .line 1
    if-eqz p1, :cond_5

    .line 2
    const/4 p0, 0x1

    .line 4
    if-eq p1, p0, :cond_4

    .line 5
    const/4 p0, 0x3

    .line 7
    if-eq p1, p0, :cond_3

    .line 8
    const/4 p0, 0x4

    .line 10
    if-eq p1, p0, :cond_2

    .line 11
    const/4 p0, 0x6

    .line 13
    if-eq p1, p0, :cond_1

    .line 14
    const/16 p0, 0x10

    .line 16
    if-eq p1, p0, :cond_0

    .line 18
    const p0, 0x7f130632    # @string/kg_prompt_reason_timeout_password 'For additional security, use password instead'

    .line 20
    return p0

    .line 23
    :cond_0
    const p0, 0x7f130624    # @string/kg_prompt_after_update_password 'Device updated. Enter password to continue.'

    .line 24
    return p0

    .line 27
    :cond_1
    const p0, 0x7f130637    # @string/kg_prompt_unattended_update_password 'Enter password to install update later'

    .line 28
    return p0

    .line 31
    :cond_2
    const p0, 0x7f130627    # @string/kg_prompt_after_user_lockdown_password 'Password is required after lockdown'

    .line 32
    return p0

    .line 35
    :cond_3
    const p0, 0x7f13062e    # @string/kg_prompt_reason_device_admin 'Device locked by admin'

    .line 36
    return p0

    .line 39
    :cond_4
    const p0, 0x7f13062f    # @string/kg_prompt_reason_restart_password 'Password is required after device restarts'

    .line 40
    return p0

    .line 43
    :cond_5
    const/4 p0, 0x0

    .line 44
    return p0
    .line 45
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p0

    .line 5
    const v0, 0x10404fd    # @android:string/lockscreen_sim_unlock_progress_dialog_message

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 12
    return-object p0
    .line 13
.end method

.method public getWrongPasswordStringId()I
    .locals 0

    .line 1
    const p0, 0x7f13064a    # @string/kg_wrong_password 'Wrong password'

    .line 2
    return p0
    .line 5
.end method

.method public final handleOrientationChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->updateLayoutParams()V

    .line 2
    return-void
    .line 5
.end method

.method public final handleSmallestWidthDpChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->updateLayoutParams()V

    .line 2
    return-void
    .line 5
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isVisibleToUser()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    .line 16
    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 18
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 21
    move-result-object p0

    .line 24
    return-object p0
    .line 25
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->updatePositionForFod()V

    .line 5
    return-void
    .line 8
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardInputView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->updatePositionForFod()V

    .line 5
    return-void
    .line 8
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getPasswordTextViewId()I

    .line 5
    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 12
    check-cast v0, Landroid/widget/TextView;

    .line 13
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    .line 15
    new-instance v0, Lcom/android/internal/widget/TextViewInputDisabler;

    .line 17
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    .line 19
    invoke-direct {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    .line 21
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 24
    const v0, 0x7f0a0320    # @id/empty_space

    .line 26
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v0

    .line 32
    check-cast v0, Landroid/widget/Space;

    .line 33
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mEmptySpace:Landroid/widget/Space;

    .line 35
    const v0, 0x7f0a05ef    # @id/mixed_password_keyboard_view

    .line 37
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object v1

    .line 43
    check-cast v1, Lcom/android/keyguard/widget/MiuiKeyBoardView;

    .line 44
    iput-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardView:Lcom/android/keyguard/widget/MiuiKeyBoardView;

    .line 46
    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 48
    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 55
    check-cast v0, Landroid/view/ViewGroup;

    .line 56
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardViewLayout:Landroid/view/ViewGroup;

    .line 58
    goto :goto_0

    .line 60
    :cond_0
    const v0, 0x7f0a05f0    # @id/mixed_password_keyboard_view_layout

    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object v0

    .line 67
    check-cast v0, Landroid/view/ViewGroup;

    .line 68
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardViewLayout:Landroid/view/ViewGroup;

    .line 70
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mEmptySpace:Landroid/widget/Space;

    .line 72
    const/16 v1, 0x8

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/Space;->setVisibility(I)V

    .line 76
    :goto_0
    const v0, 0x7f0a031b    # @id/emergency_call_button

    .line 79
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 82
    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mEmergencyCall:Landroid/view/View;

    .line 86
    const v0, 0x7f0a01bf    # @id/cancel_button

    .line 88
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 91
    move-result-object v0

    .line 94
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mCancelButton:Landroid/view/View;

    .line 95
    const v0, 0x7f0a06f2    # @id/password_fod_bottom_distance

    .line 97
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 100
    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mBottomSpaceForFod:Landroid/view/View;

    .line 104
    const v0, 0x7f0a08ad    # @id/space_pattren

    .line 106
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 109
    move-result-object v0

    .line 112
    check-cast v0, Landroid/widget/Space;

    .line 113
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->updatePositionForFod()V

    .line 115
    return-void
    .line 118
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 2
    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isVisibleToUser()Z

    .line 7
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    new-instance p1, Lcom/android/keyguard/KeyguardPasswordView$$ExternalSyntheticLambda0;

    .line 13
    const/4 v0, 0x1

    .line 15
    invoke-direct {p1, p0, v0}, Lcom/android/keyguard/KeyguardPasswordView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardPasswordView;I)V

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Lcom/android/keyguard/KeyguardPasswordView$$ExternalSyntheticLambda0;

    .line 23
    const/4 v0, 0x0

    .line 25
    invoke-direct {p1, p0, v0}, Lcom/android/keyguard/KeyguardPasswordView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardPasswordView;I)V

    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 29
    :cond_1
    :goto_0
    return-void
    .line 32
.end method

.method public final onWrongPassword()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getWrongPasswordStringId()I

    .line 4
    move-result p0

    .line 7
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setHint(I)V

    .line 8
    return-void
    .line 11
.end method

.method public final resetPasswordText(ZZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    .line 2
    const-string p1, ""

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    return-void
    .line 9
.end method

.method public setDisappearAnimationListener(Lcom/android/keyguard/KeyguardPasswordView$DisappearAnimationListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setPasswordEntryEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4
    return-void
    .line 7
.end method

.method public final setPasswordEntryInputEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 4
    return-void
    .line 7
.end method

.method public final startAppearAnimation()V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mAppearAnimating:Z

    .line 3
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mDisappearAnimatePending:Z

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 12
    move-result-object v2

    .line 15
    iget v2, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 16
    const/4 v3, 0x2

    .line 18
    div-int/2addr v2, v3

    .line 19
    int-to-float v2, v2

    .line 20
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 21
    new-instance v2, Lcom/miui/utils/animation/PhysicBasedInterpolator;

    .line 24
    const v4, 0x3f7d70a4    # 0.99f

    .line 26
    const v5, 0x3e99999a    # 0.3f

    .line 29
    invoke-direct {v2, v4, v5}, Lcom/miui/utils/animation/PhysicBasedInterpolator;-><init>(FF)V

    .line 32
    const-wide/16 v4, 0x1f4

    .line 35
    const/4 v6, 0x0

    .line 37
    invoke-static {p0, v4, v5, v6, v2}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JFLandroid/view/animation/Interpolator;)V

    .line 38
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardViewLayout:Landroid/view/ViewGroup;

    .line 41
    invoke-virtual {v2}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    .line 43
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardViewLayout:Landroid/view/ViewGroup;

    .line 49
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    .line 51
    move-result v2

    .line 54
    int-to-float v2, v2

    .line 55
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 56
    new-instance v1, Landroid/view/RenderNodeAnimator;

    .line 59
    invoke-direct {v1, v0, v6}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 61
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardViewLayout:Landroid/view/ViewGroup;

    .line 64
    invoke-virtual {v1, v0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardViewLayout:Landroid/view/ViewGroup;

    .line 69
    const/high16 v2, 0x40000000    # 2.0f

    .line 71
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 73
    new-instance v0, Landroid/view/RenderNodeAnimator;

    .line 76
    const/4 v2, 0x4

    .line 78
    const/high16 v3, 0x3f800000    # 1.0f

    .line 79
    invoke-direct {v0, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 81
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardViewLayout:Landroid/view/ViewGroup;

    .line 84
    invoke-virtual {v0, v2}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 86
    goto :goto_0

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardViewLayout:Landroid/view/ViewGroup;

    .line 90
    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 92
    new-array v8, v3, [F

    .line 94
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    .line 96
    move-result v9

    .line 99
    int-to-float v9, v9

    .line 100
    aput v9, v8, v1

    .line 101
    aput v6, v8, v0

    .line 103
    invoke-static {v2, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 105
    move-result-object v1

    .line 108
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardViewLayout:Landroid/view/ViewGroup;

    .line 109
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 111
    new-array v3, v3, [F

    .line 113
    fill-array-data v3, :array_0

    .line 115
    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 118
    move-result-object v0

    .line 121
    :goto_0
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 122
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 124
    filled-new-array {v1, v0}, [Landroid/animation/Animator;

    .line 127
    move-result-object v0

    .line 130
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 131
    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 134
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 137
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 139
    new-instance v0, Lcom/android/keyguard/KeyguardPasswordView$1;

    .line 142
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPasswordView$1;-><init>(Lcom/android/keyguard/KeyguardPasswordView;)V

    .line 144
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 147
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 150
    return-void

    .line 153
    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
    .end array-data
    .line 154
.end method

.method public final startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mAppearAnimating:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mDisappearAnimatePending:Z

    .line 7
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mDisappearFinishRunnable:Ljava/lang/Runnable;

    .line 9
    return v1

    .line 11
    :cond_0
    sget-object v0, Lcom/miui/utils/BoostHelper;->sInjector:Lcom/miui/utils/BoostHelper;

    .line 12
    const-wide/16 v2, 0x1f4

    .line 14
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/miui/utils/BoostHelper;->boost(IJLandroid/view/View;)V

    .line 16
    invoke-static {}, Lcom/miui/utils/CpuBoostUtil;->getInstance()Lcom/miui/utils/CpuBoostUtil;

    .line 19
    move-result-object v0

    .line 22
    const/16 v2, 0x12c

    .line 23
    invoke-virtual {v0, v2}, Lcom/miui/utils/CpuBoostUtil;->boostCpuToMax(I)V

    .line 25
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardView:Lcom/android/keyguard/widget/MiuiKeyBoardView;

    .line 28
    const/4 v2, 0x2

    .line 30
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 31
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 35
    iget v3, p0, Lcom/android/keyguard/KeyguardPasswordView;->mDisappearYTranslation:I

    .line 38
    int-to-float v3, v3

    .line 40
    new-instance v4, Lmiuix/view/animation/SineEaseInOutInterpolator;

    .line 41
    invoke-direct {v4}, Lmiuix/view/animation/SineEaseInOutInterpolator;-><init>()V

    .line 43
    const-wide/16 v5, 0x15e

    .line 46
    invoke-static {p0, v5, v6, v3, v4}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JFLandroid/view/animation/Interpolator;)V

    .line 48
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardViewLayout:Landroid/view/ViewGroup;

    .line 51
    invoke-virtual {v3}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    .line 53
    move-result v3

    .line 56
    const/4 v4, 0x0

    .line 57
    if-eqz v3, :cond_1

    .line 58
    new-instance v2, Landroid/view/RenderNodeAnimator;

    .line 60
    iget v3, p0, Lcom/android/keyguard/KeyguardPasswordView;->mDisappearYTranslation:I

    .line 62
    div-int/lit8 v3, v3, 0x6

    .line 64
    int-to-float v3, v3

    .line 66
    invoke-direct {v2, v1, v3}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 67
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardViewLayout:Landroid/view/ViewGroup;

    .line 70
    invoke-virtual {v2, v3}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 72
    new-instance v3, Landroid/view/RenderNodeAnimator;

    .line 75
    const/16 v7, 0xb

    .line 77
    invoke-direct {v3, v7, v0}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 79
    invoke-virtual {v3, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 82
    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardViewLayout:Landroid/view/ViewGroup;

    .line 86
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 88
    new-array v7, v2, [F

    .line 90
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    .line 92
    move-result v8

    .line 95
    aput v8, v7, v4

    .line 96
    iget v8, p0, Lcom/android/keyguard/KeyguardPasswordView;->mDisappearYTranslation:I

    .line 98
    div-int/lit8 v8, v8, 0x6

    .line 100
    int-to-float v8, v8

    .line 102
    aput v8, v7, v1

    .line 103
    invoke-static {v0, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 105
    move-result-object v0

    .line 108
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 109
    new-array v2, v2, [F

    .line 111
    fill-array-data v2, :array_0

    .line 113
    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 116
    move-result-object v3

    .line 119
    move-object v2, v0

    .line 120
    :goto_0
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 121
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 123
    filled-new-array {v2, v3}, [Landroid/animation/Animator;

    .line 126
    move-result-object v2

    .line 129
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 130
    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 133
    new-instance v2, Lmiuix/view/animation/SineEaseInOutInterpolator;

    .line 136
    invoke-direct {v2}, Lmiuix/view/animation/SineEaseInOutInterpolator;-><init>()V

    .line 138
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 141
    new-instance v2, Lcom/android/keyguard/KeyguardPasswordView$2;

    .line 144
    invoke-direct {v2, p1}, Lcom/android/keyguard/KeyguardPasswordView$2;-><init>(Ljava/lang/Runnable;)V

    .line 146
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 149
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 152
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mEmergencyCall:Landroid/view/View;

    .line 155
    if-eqz p0, :cond_2

    .line 157
    invoke-virtual {p0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 159
    :cond_2
    return v1

    .line 162
    nop

    .line 163
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 164
.end method

.method public final updateLayoutParams()V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v1

    .line 13
    const v2, 0x7f0708af    # @dimen/miui_keyguard_password_view_password_margin_top '60.0dp'

    .line 14
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 17
    move-result v1

    .line 20
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 21
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object v1

    .line 26
    const v2, 0x7f0708ad    # @dimen/miui_keyguard_password_view_password_entry_width '280.0dp'

    .line 27
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 30
    move-result v1

    .line 33
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 34
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object v1

    .line 39
    const v2, 0x7f0708aa    # @dimen/miui_keyguard_password_view_password_entry_height '46.6dp'

    .line 40
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 43
    move-result v1

    .line 46
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 47
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    .line 49
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardViewLayout:Landroid/view/ViewGroup;

    .line 54
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    move-result-object v0

    .line 59
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 60
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 62
    move-result-object v1

    .line 65
    const v2, 0x7f07089e    # @dimen/miui_keyguard_password_view_layout_height '388.0dp'

    .line 66
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 69
    move-result v1

    .line 72
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 73
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardViewLayout:Landroid/view/ViewGroup;

    .line 75
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 80
    if-eqz v0, :cond_0

    .line 82
    const v0, 0x7f0a0499    # @id/keyguard_selector_fade_container

    .line 84
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 91
    move-result-object v1

    .line 94
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 95
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 97
    move-result-object v2

    .line 100
    const v3, 0x7f0708a0    # @dimen/miui_keyguard_password_view_margin_left '10.0dp'

    .line 101
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 104
    move-result v2

    .line 107
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 108
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 110
    move-result-object v2

    .line 113
    const v3, 0x7f0708a2    # @dimen/miui_keyguard_password_view_margin_right '15.0dp'

    .line 114
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 117
    move-result v2

    .line 120
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardView:Lcom/android/keyguard/widget/MiuiKeyBoardView;

    .line 126
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 128
    move-result-object v0

    .line 131
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 132
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 134
    move-result-object v1

    .line 137
    const v2, 0x7f07089b    # @dimen/miui_keyguard_password_view_key_board_view_height '257.97dp'

    .line 138
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 141
    move-result v1

    .line 144
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 145
    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    .line 147
    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardViewLayout:Landroid/view/ViewGroup;

    .line 151
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 153
    move-result-object v2

    .line 156
    const v3, 0x7f07089f    # @dimen/miui_keyguard_password_view_layout_padingTop '85.0dp'

    .line 157
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 160
    move-result v2

    .line 163
    const/4 v3, 0x0

    .line 164
    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 165
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 168
    move-result-object v1

    .line 171
    const v2, 0x7f07080e    # @dimen/miui_face_unlock_view_top_fold '35.44dp'

    .line 172
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 175
    move-result v2

    .line 178
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 179
    move-result-object v1

    .line 182
    const v3, 0x7f070959    # @dimen/miui_mixed_password_input_text_size_fold '14.0sp'

    .line 183
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 186
    move-result v3

    .line 189
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 190
    move-result-object v1

    .line 193
    const v4, 0x7f07089c    # @dimen/miui_keyguard_password_view_key_board_view_height_fold '252.25dp'

    .line 194
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 197
    move-result v5

    .line 200
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 201
    move-result-object v1

    .line 204
    const v4, 0x7f07042e    # @dimen/keyboard_padding_top_fold '6.0dp'

    .line 205
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 208
    move-result v6

    .line 211
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 212
    move-result-object v1

    .line 215
    const v4, 0x7f070897    # @dimen/miui_keyguard_password_view_eca_margin_top_fold '-10.33dp'

    .line 216
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 219
    move-result v7

    .line 222
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 223
    move-result-object v1

    .line 226
    const v4, 0x7f0708a1    # @dimen/miui_keyguard_password_view_margin_left_fold '10.0dp'

    .line 227
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 230
    move-result v8

    .line 233
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 234
    move-result-object v1

    .line 237
    const v4, 0x7f0708a3    # @dimen/miui_keyguard_password_view_margin_right_fold '15.0dp'

    .line 238
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 241
    move-result v9

    .line 244
    move-object v1, p0

    .line 245
    move-object v4, v0

    .line 246
    invoke-virtual/range {v1 .. v9}, Lcom/android/keyguard/KeyguardPasswordView;->updatePasswordViewLayoutParams(IILandroid/widget/LinearLayout$LayoutParams;IIIII)V

    .line 247
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardView:Lcom/android/keyguard/widget/MiuiKeyBoardView;

    .line 250
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    goto :goto_0

    .line 255
    :catch_0
    move-exception p0

    .line 256
    const-string v0, "KeyguardPasswordView"

    .line 257
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 259
    move-result-object p0

    .line 262
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_1
    :goto_0
    return-void
    .line 266
.end method

.method public final updatePasswordViewLayoutParams(IILandroid/widget/LinearLayout$LayoutParams;IIIII)V
    .locals 2

    .line 1
    const v0, 0x7f0a05d0    # @id/miui_keyguard_face_unlock_view

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object v0

    .line 8
    check-cast v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

    .line 9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    move-result-object v1

    .line 14
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 15
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    const p1, 0x7f0a06f1    # @id/passwordEntry

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object p1

    .line 28
    check-cast p1, Landroid/widget/EditText;

    .line 29
    const/4 v0, 0x0

    .line 31
    int-to-float p2, p2

    .line 32
    invoke-virtual {p1, v0, p2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 33
    iput p4, p3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 36
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardView:Lcom/android/keyguard/widget/MiuiKeyBoardView;

    .line 38
    iput p5, p1, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mPaddingTop:I

    .line 40
    const p1, 0x7f0a0499    # @id/keyguard_selector_fade_container

    .line 42
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 49
    move-result-object p1

    .line 52
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 53
    iput p6, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 55
    iput p7, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 57
    iput p8, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 59
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    return-void
    .line 64
.end method

.method public final updatePositionForFod()V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 2
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->getFodPosition(Landroid/content/Context;)Landroid/graphics/Rect;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v1

    .line 17
    const v2, 0x7f07089e    # @dimen/miui_keyguard_password_view_layout_height '388.0dp'

    .line 18
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 21
    move-result v1

    .line 24
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object v2

    .line 28
    const v3, 0x7f070894    # @dimen/miui_keyguard_password_view_eca_fod_margin_top '34.91dp'

    .line 29
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 32
    move-result v2

    .line 35
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    .line 36
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    move-result-object v3

    .line 41
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 42
    const/4 v4, 0x0

    .line 44
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 45
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 47
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardViewLayout:Landroid/view/ViewGroup;

    .line 49
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 51
    move-result-object v5

    .line 54
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 55
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 57
    move-result-object v6

    .line 60
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 61
    move-result-object v6

    .line 64
    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 65
    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    .line 67
    move-result-object v6

    .line 70
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 71
    move-result v6

    .line 74
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 75
    move-result-object v7

    .line 78
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    move-result-object v7

    .line 82
    const v8, 0x7f070d14    # @dimen/navigation_bar_height '@android:dimen/notification_big_picture_max_height'

    .line 83
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 86
    move-result v7

    .line 89
    sub-int/2addr v6, v7

    .line 90
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 91
    sub-int/2addr v6, v7

    .line 93
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 94
    move-result v4

    .line 97
    iget-object v6, p0, Lcom/android/keyguard/KeyguardPasswordView;->mBottomSpaceForFod:Landroid/view/View;

    .line 98
    if-eqz v6, :cond_0

    .line 100
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 102
    move-result-object v6

    .line 105
    iget v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 106
    if-eq v7, v4, :cond_0

    .line 108
    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 110
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPasswordView;->mBottomSpaceForFod:Landroid/view/View;

    .line 112
    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    .line 117
    const/4 v6, 0x4

    .line 119
    if-eqz v4, :cond_1

    .line 120
    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 122
    if-eq v4, v2, :cond_1

    .line 124
    add-int/2addr v1, v2

    .line 126
    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 127
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 129
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 131
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 133
    sub-int/2addr v1, v0

    .line 135
    div-int/2addr v1, v6

    .line 136
    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 137
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyboardViewLayout:Landroid/view/ViewGroup;

    .line 139
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mEmptySpace:Landroid/widget/Space;

    .line 144
    invoke-virtual {v0, v6}, Landroid/widget/Space;->setVisibility(I)V

    .line 146
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    .line 149
    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    :cond_2
    return-void
    .line 154
.end method
