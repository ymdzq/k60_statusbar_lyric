.class public final Lcom/android/keyguard/KeyguardSimPukViewController;
.super Lcom/android/keyguard/KeyguardPinBasedInputViewController;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

.field public mForgetPasswordDialog:Landroid/app/AlertDialog;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mPinText:Ljava/lang/String;

.field public mPukText:Ljava/lang/String;

.field public mRemainingAttempts:I

.field public mRemainingAttemptsDialog:Landroid/app/AlertDialog;

.field public mShowDefaultMessage:Z

.field public final mSimImageView:Landroid/widget/ImageView;

.field public mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field public final mStateMachine:Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;

.field public mSubId:I

.field public mSubIdForSimStateChanged:I

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardSimPukViewController$1;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 13

    .line 1
    move-object v12, p0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object/from16 v3, p3

    .line 6
    move-object/from16 v4, p4

    .line 8
    move-object/from16 v5, p5

    .line 10
    move-object/from16 v6, p6

    .line 12
    move-object/from16 v7, p7

    .line 14
    move-object/from16 v8, p8

    .line 16
    move-object/from16 v9, p11

    .line 18
    move-object/from16 v10, p10

    .line 20
    move-object/from16 v11, p12

    .line 22
    invoke-direct/range {v0 .. v11}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 24
    new-instance v0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;

    .line 27
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;-><init>(Lcom/android/keyguard/KeyguardSimPukViewController;)V

    .line 29
    iput-object v0, v12, Lcom/android/keyguard/KeyguardSimPukViewController;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;

    .line 32
    const/4 v0, -0x1

    .line 34
    iput v0, v12, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    .line 35
    iput v0, v12, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubIdForSimStateChanged:I

    .line 37
    new-instance v0, Lcom/android/keyguard/KeyguardSimPukViewController$1;

    .line 39
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSimPukViewController$1;-><init>(Lcom/android/keyguard/KeyguardSimPukViewController;)V

    .line 41
    iput-object v0, v12, Lcom/android/keyguard/KeyguardSimPukViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardSimPukViewController$1;

    .line 44
    move-object v0, p2

    .line 46
    iput-object v0, v12, Lcom/android/keyguard/KeyguardSimPukViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 47
    move-object/from16 v0, p9

    .line 49
    iput-object v0, v12, Lcom/android/keyguard/KeyguardSimPukViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 51
    const v0, 0x7f0a049c    # @id/keyguard_sim

    .line 53
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object v0

    .line 59
    check-cast v0, Landroid/widget/ImageView;

    .line 60
    iput-object v0, v12, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimImageView:Landroid/widget/ImageView;

    .line 62
    return-void
    .line 64
.end method


# virtual methods
.method public final getKeyguardMessageAreaController()Lcom/android/keyguard/KeyguardMessageAreaController;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final getKeyguardTitleMessageAreaController()Lcom/android/keyguard/KeyguardMessageAreaController;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 7
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mForgetPasswordDialog:Landroid/app/AlertDialog;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 16
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mForgetPasswordDialog:Landroid/app/AlertDialog;

    .line 19
    :cond_1
    return-void
    .line 21
.end method

.method public final onResume(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->onResume(I)V

    .line 2
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mShowDefaultMessage:Z

    .line 5
    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukViewController;->showDefaultMessage()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final onViewAttached()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->onViewAttached()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardSimPukViewController$1;

    .line 5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 7
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 9
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 12
    check-cast p0, Lcom/android/keyguard/KeyguardSimPukView;

    .line 14
    const v0, 0x7f0a01bf    # @id/cancel_button

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    const/16 v1, 0x8

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    const v0, 0x7f0a02a3    # @id/delete_button

    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p0

    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 36
    return-void
    .line 39
.end method

.method public final onViewDetached()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->onViewDetached()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardSimPukViewController$1;

    .line 5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 9
    return-void
    .line 12
.end method

.method public final resetState()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->resetState()V

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;

    .line 5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->reset()V

    .line 7
    return-void
    .line 10
.end method

.method public final shouldLockout(J)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final showDefaultMessage()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mRemainingAttempts:I

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 4
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 7
    if-ltz v0, :cond_0

    .line 9
    move-object v4, v3

    .line 11
    check-cast v4, Lcom/android/keyguard/KeyguardSimPukView;

    .line 12
    check-cast v3, Lcom/android/keyguard/KeyguardSimPukView;

    .line 14
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v3

    .line 19
    iget p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    .line 20
    invoke-static {p0, v3}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(ILandroid/content/Context;)Z

    .line 22
    move-result p0

    .line 25
    invoke-virtual {v4, v0, v2, p0}, Lcom/android/keyguard/KeyguardSimPukView;->getPukPasswordErrorMessage(IZZ)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 29
    invoke-virtual {v1, p0, v2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 30
    return-void

    .line 33
    :cond_0
    move-object v0, v3

    .line 34
    check-cast v0, Lcom/android/keyguard/KeyguardSimPukView;

    .line 35
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v0

    .line 40
    iget v4, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    .line 41
    invoke-static {v4, v0}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(ILandroid/content/Context;)Z

    .line 43
    move-result v0

    .line 46
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 47
    if-eqz v4, :cond_1

    .line 49
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    .line 51
    move-result v4

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move v4, v2

    .line 56
    :goto_0
    move-object v5, v3

    .line 57
    check-cast v5, Lcom/android/keyguard/KeyguardSimPukView;

    .line 58
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 60
    move-result-object v5

    .line 63
    check-cast v3, Lcom/android/keyguard/KeyguardSimPukView;

    .line 64
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v3

    .line 69
    const v6, 0x1010098    # @android:attr/textColor

    .line 70
    filled-new-array {v6}, [I

    .line 73
    move-result-object v6

    .line 76
    invoke-virtual {v3, v6}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 77
    move-result-object v3

    .line 80
    const/4 v6, 0x0

    .line 81
    const/4 v7, -0x1

    .line 82
    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 83
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    const/4 v3, 0x2

    .line 89
    if-ge v4, v3, :cond_2

    .line 90
    const v3, 0x7f13063b    # @string/kg_puk_enter_puk_hint 'SIM is now disabled. Enter PUK code to continue. Contact carrier for details.'

    .line 92
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 95
    move-result-object v3

    .line 98
    goto :goto_2

    .line 99
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 100
    iget v4, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    .line 102
    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    .line 104
    move-result-object v3

    .line 107
    if-eqz v3, :cond_3

    .line 108
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    .line 110
    move-result-object v4

    .line 113
    goto :goto_1

    .line 114
    :cond_3
    const-string v4, ""

    .line 115
    :goto_1
    const v6, 0x7f13063c    # @string/kg_puk_enter_puk_hint_multi 'SIM "%1$s" is now disabled. Enter PUK code to continue. Contact carrier for details.'

    .line 117
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 120
    move-result-object v4

    .line 123
    invoke-virtual {v5, v6, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 124
    move-result-object v4

    .line 127
    if-eqz v3, :cond_4

    .line 128
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    .line 130
    :cond_4
    move-object v3, v4

    .line 133
    :goto_2
    if-eqz v0, :cond_5

    .line 134
    const v0, 0x7f13063d    # @string/kg_sim_lock_esim_instructions '%1$s Disable eSIM to use device without mobile service.'

    .line 136
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 139
    move-result-object v3

    .line 142
    invoke-virtual {v5, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    move-result-object v3

    .line 146
    :cond_5
    invoke-virtual {v1, v3, v2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 147
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubIdForSimStateChanged:I

    .line 150
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    .line 152
    if-eq v0, v1, :cond_6

    .line 154
    return-void

    .line 156
    :cond_6
    new-instance v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;

    .line 157
    const-string v4, ""

    .line 159
    const-string v5, ""

    .line 161
    iget v6, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    .line 163
    const/4 v7, 0x0

    .line 165
    move-object v2, v0

    .line 166
    move-object v3, p0

    .line 167
    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/KeyguardSimPukViewController$2;-><init>(Lcom/android/keyguard/KeyguardSimPukViewController;Ljava/lang/String;Ljava/lang/String;II)V

    .line 168
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 171
    return-void
    .line 174
.end method

.method public final showForgetPasswordTextview()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/keyguard/KeyguardSimPukView;

    .line 5
    const v2, 0x7f0a0220    # @id/container

    .line 7
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v1

    .line 13
    check-cast v1, Landroid/view/ViewGroup;

    .line 14
    move-object v2, v0

    .line 16
    check-cast v2, Lcom/android/keyguard/KeyguardSimPukView;

    .line 17
    const v3, 0x7f0a07d6    # @id/row0

    .line 19
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v2

    .line 25
    check-cast v2, Landroid/view/ViewGroup;

    .line 26
    check-cast v0, Lcom/android/keyguard/KeyguardSimPukView;

    .line 28
    const v3, 0x7f0a0390    # @id/forget_password_tv

    .line 30
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/TextView;

    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 39
    move-result-object v3

    .line 42
    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    move-result-object v4

    .line 48
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 49
    const v5, 0x7f07088e    # @dimen/miui_keyguard_esim_pin_view_layout_height '552.0dp'

    .line 51
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 54
    move-result v5

    .line 57
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 58
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    :cond_0
    if-eqz v2, :cond_1

    .line 63
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 65
    move-result-object v1

    .line 68
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 69
    const v4, 0x7f07088f    # @dimen/miui_keyguard_esim_pin_view_row0_margin_bottom '18.0dp'

    .line 71
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 74
    move-result v3

    .line 77
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 78
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    :cond_1
    if-eqz v0, :cond_2

    .line 83
    const/4 v1, 0x0

    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    new-instance v1, Lcom/android/keyguard/KeyguardSimPukViewController$4;

    .line 89
    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSimPukViewController$4;-><init>(Lcom/android/keyguard/KeyguardSimPukViewController;)V

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :cond_2
    return-void
    .line 97
.end method

.method public final verifyPasswordAndUnlock()V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;

    .line 2
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 4
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x8

    .line 7
    const/4 v3, 0x1

    .line 9
    iget-object v10, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 10
    if-nez v0, :cond_2

    .line 12
    iget-object v0, v10, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 14
    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    .line 16
    move-result-object v4

    .line 19
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 20
    move-result v4

    .line 23
    if-ne v4, v2, :cond_0

    .line 24
    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 29
    iput-object v0, v10, Lcom/android/keyguard/KeyguardSimPukViewController;->mPukText:Ljava/lang/String;

    .line 30
    move v1, v3

    .line 32
    :cond_0
    if-eqz v1, :cond_1

    .line 33
    iput v3, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 35
    invoke-virtual {v10}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object p0

    .line 40
    const v0, 0x7f13063a    # @string/kg_puk_enter_pin_hint 'Enter desired PIN code'

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 47
    goto/16 :goto_0

    .line 48
    :cond_1
    invoke-virtual {v10}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object p0

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v0

    .line 57
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 61
    const v1, 0x7f130617    # @string/kg_invalid_sim_puk_hint 'PUK code should be 8 numbers or more.'

    .line 62
    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 68
    goto/16 :goto_0

    .line 69
    :cond_2
    const/4 v4, 0x2

    .line 71
    if-ne v0, v3, :cond_5

    .line 72
    iget-object v0, v10, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 74
    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    .line 76
    move-result-object v5

    .line 79
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 80
    move-result v5

    .line 83
    const/4 v6, 0x4

    .line 84
    if-lt v5, v6, :cond_3

    .line 85
    if-gt v5, v2, :cond_3

    .line 87
    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 92
    iput-object v0, v10, Lcom/android/keyguard/KeyguardSimPukViewController;->mPinText:Ljava/lang/String;

    .line 93
    move v1, v3

    .line 95
    :cond_3
    if-eqz v1, :cond_4

    .line 96
    iput v4, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 98
    invoke-virtual {v10}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 100
    move-result-object p0

    .line 103
    const v0, 0x7f130608    # @string/kg_enter_confirm_pin_hint 'Confirm desired PIN code'

    .line 104
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 107
    move-result-object p0

    .line 110
    goto/16 :goto_0

    .line 111
    :cond_4
    invoke-virtual {v10}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 113
    move-result-object p0

    .line 116
    const v0, 0x7f130616    # @string/kg_invalid_sim_pin_hint 'Type a PIN that is 4 to 8 numbers.'

    .line 117
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 120
    move-result-object p0

    .line 123
    goto/16 :goto_0

    .line 124
    :cond_5
    if-ne v0, v4, :cond_8

    .line 126
    iget-object v0, v10, Lcom/android/keyguard/KeyguardSimPukViewController;->mPinText:Ljava/lang/String;

    .line 128
    iget-object v2, v10, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 130
    invoke-virtual {v2}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    .line 132
    move-result-object v2

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    move-result v0

    .line 139
    if-eqz v0, :cond_7

    .line 140
    const/4 v0, 0x3

    .line 142
    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 143
    invoke-virtual {v10}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 145
    move-result-object p0

    .line 148
    const v0, 0x7f1305f6    # @string/keyguard_sim_unlock_progress_dialog_message 'Unlocking SIM…'

    .line 149
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 152
    move-result-object p0

    .line 155
    iget-object v0, v10, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 156
    if-nez v0, :cond_6

    .line 158
    new-instance v0, Landroid/app/ProgressDialog;

    .line 160
    iget-object v2, v10, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 162
    check-cast v2, Lcom/android/keyguard/KeyguardSimPukView;

    .line 164
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 166
    move-result-object v4

    .line 169
    invoke-direct {v0, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 170
    iput-object v0, v10, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 173
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 175
    move-result-object v4

    .line 178
    const v5, 0x7f130640    # @string/kg_sim_unlock_progress_dialog_message 'Unlocking SIM…'

    .line 179
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 182
    move-result-object v4

    .line 185
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, v10, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 189
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 191
    iget-object v0, v10, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 194
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 196
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 199
    move-result-object v0

    .line 202
    instance-of v0, v0, Landroid/app/Activity;

    .line 203
    if-nez v0, :cond_6

    .line 205
    iget-object v0, v10, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 207
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    .line 209
    move-result-object v0

    .line 212
    const/16 v1, 0x7d9

    .line 213
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 215
    :cond_6
    iget-object v0, v10, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 218
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 220
    iget-object v0, v10, Lcom/android/keyguard/KeyguardSimPukViewController;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

    .line 223
    if-nez v0, :cond_9

    .line 225
    new-instance v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;

    .line 227
    iget-object v6, v10, Lcom/android/keyguard/KeyguardSimPukViewController;->mPukText:Ljava/lang/String;

    .line 229
    iget-object v7, v10, Lcom/android/keyguard/KeyguardSimPukViewController;->mPinText:Ljava/lang/String;

    .line 231
    iget v8, v10, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    .line 233
    const/4 v9, 0x1

    .line 235
    move-object v4, v0

    .line 236
    move-object v5, v10

    .line 237
    invoke-direct/range {v4 .. v9}, Lcom/android/keyguard/KeyguardSimPukViewController$2;-><init>(Lcom/android/keyguard/KeyguardSimPukViewController;Ljava/lang/String;Ljava/lang/String;II)V

    .line 238
    iput-object v0, v10, Lcom/android/keyguard/KeyguardSimPukViewController;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

    .line 241
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 243
    goto :goto_0

    .line 246
    :cond_7
    iput v3, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 247
    invoke-virtual {v10}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 249
    move-result-object p0

    .line 252
    const v0, 0x7f130615    # @string/kg_invalid_confirm_pin_hint 'PIN codes does not match'

    .line 253
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 256
    move-result-object p0

    .line 259
    goto :goto_0

    .line 260
    :cond_8
    const-string p0, ""

    .line 261
    :cond_9
    :goto_0
    iget-object v0, v10, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 263
    check-cast v0, Lcom/android/keyguard/KeyguardSimPukView;

    .line 265
    invoke-virtual {v0, v3, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 267
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 270
    move-result v0

    .line 273
    if-nez v0, :cond_a

    .line 274
    iget-object v0, v10, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 276
    invoke-virtual {v0, p0, v3}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 278
    :cond_a
    return-void
    .line 281
.end method
