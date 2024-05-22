.class public final Lcom/android/keyguard/KeyguardSimPinViewController;
.super Lcom/android/keyguard/KeyguardPinBasedInputViewController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mRemainingAttempts:I

.field public mShowDefaultMessage:Z

.field public final mSimImageView:Landroid/widget/ImageView;

.field public mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field public mSubId:I

.field public mSubIdForSimStateChanged:I

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardSimPinViewController$1;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPinView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;)V
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
    const/4 v0, -0x1

    .line 27
    iput v0, v12, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    .line 28
    iput v0, v12, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubIdForSimStateChanged:I

    .line 30
    new-instance v0, Lcom/android/keyguard/KeyguardSimPinViewController$1;

    .line 32
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSimPinViewController$1;-><init>(Lcom/android/keyguard/KeyguardSimPinViewController;)V

    .line 34
    iput-object v0, v12, Lcom/android/keyguard/KeyguardSimPinViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardSimPinViewController$1;

    .line 37
    move-object v0, p2

    .line 39
    iput-object v0, v12, Lcom/android/keyguard/KeyguardSimPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 40
    move-object/from16 v0, p9

    .line 42
    iput-object v0, v12, Lcom/android/keyguard/KeyguardSimPinViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 44
    const v0, 0x7f0a049c    # @id/keyguard_sim

    .line 46
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/ImageView;

    .line 53
    iput-object v0, v12, Lcom/android/keyguard/KeyguardSimPinViewController;->mSimImageView:Landroid/widget/ImageView;

    .line 55
    return-void
    .line 57
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

.method public final getPinPasswordErrorMessage(IZ)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    if-nez p1, :cond_0

    .line 4
    move-object p2, v0

    .line 6
    check-cast p2, Lcom/android/keyguard/KeyguardSimPinView;

    .line 7
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object p2

    .line 12
    const v1, 0x7f13061d    # @string/kg_password_wrong_pin_code_pukked 'Incorrect SIM PIN code you must now contact your carrier to unlock your device.'

    .line 13
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    if-lez p1, :cond_2

    .line 21
    if-eqz p2, :cond_1

    .line 23
    const p2, 0x7f130618    # @string/kg_password_default_pin_message '{count, plural, =1 {Enter SIM PIN. You have # remaining attempt before you must contact your carrier ...'

    .line 25
    goto :goto_0

    .line 28
    :cond_1
    const p2, 0x7f13061c    # @string/kg_password_wrong_pin_code '{count, plural, =1 {Incorrect SIM PIN code, you have # remaining attempt before you must contact you ...'

    .line 29
    :goto_0
    move-object v1, v0

    .line 32
    check-cast v1, Lcom/android/keyguard/KeyguardSimPinView;

    .line 33
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object v1

    .line 38
    invoke-static {v1, p2, p1}, Lcom/android/systemui/util/PluralMessageFormaterKt;->icuMessageFormat(Landroid/content/res/Resources;II)Ljava/lang/String;

    .line 39
    move-result-object p2

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    if-eqz p2, :cond_3

    .line 44
    const p2, 0x7f13063e    # @string/kg_sim_pin_instructions 'Enter SIM PIN.'

    .line 46
    goto :goto_1

    .line 49
    :cond_3
    const p2, 0x7f13061a    # @string/kg_password_pin_failed 'SIM PIN operation failed!'

    .line 50
    :goto_1
    move-object v1, v0

    .line 53
    check-cast v1, Lcom/android/keyguard/KeyguardSimPinView;

    .line 54
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 56
    move-result-object v1

    .line 59
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 60
    move-result-object p2

    .line 63
    :goto_2
    move-object v1, v0

    .line 64
    check-cast v1, Lcom/android/keyguard/KeyguardSimPinView;

    .line 65
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 67
    move-result-object v1

    .line 70
    iget p0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    .line 71
    invoke-static {p0, v1}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(ILandroid/content/Context;)Z

    .line 73
    move-result p0

    .line 76
    if-eqz p0, :cond_4

    .line 77
    check-cast v0, Lcom/android/keyguard/KeyguardSimPinView;

    .line 79
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 81
    move-result-object p0

    .line 84
    const v0, 0x7f13063d    # @string/kg_sim_lock_esim_instructions '%1$s Disable eSIM to use device without mobile service.'

    .line 85
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 88
    move-result-object p2

    .line 91
    invoke-virtual {p0, v0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    move-result-object p2

    .line 95
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 96
    const-string v0, "getPinPasswordErrorMessage: attemptsRemaining="

    .line 98
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    const-string p1, " displayMessage="

    .line 106
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object p0

    .line 117
    const-string p1, "KeyguardSimPinView"

    .line 118
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-object p2
    .line 123
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 9
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 13
    :cond_0
    return-void
    .line 15
.end method

.method public final onResume(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->onResume(I)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 5
    check-cast p0, Lcom/android/keyguard/KeyguardSimPinView;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    return-void
    .line 12
.end method

.method public final onViewAttached()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->onViewAttached()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 5
    check-cast v0, Lcom/android/keyguard/KeyguardSimPinView;

    .line 7
    const v1, 0x7f0a01bf    # @id/cancel_button

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v1

    .line 15
    const/16 v2, 0x8

    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    const v1, 0x7f0a02a3    # @id/delete_button

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardSimPinViewController$1;

    .line 32
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 36
    return-void
    .line 39
.end method

.method public final onViewDetached()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->onViewDetached()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardSimPinViewController$1;

    .line 5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 9
    return-void
    .line 12
.end method

.method public final resetState()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->resetState()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    .line 8
    move-result v0

    .line 11
    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    .line 12
    const/4 v3, 0x1

    .line 14
    if-eq v0, v2, :cond_4

    .line 15
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 17
    move-result v2

    .line 20
    if-eqz v2, :cond_4

    .line 21
    iput v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    .line 23
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mShowDefaultMessage:Z

    .line 25
    const/4 v2, -0x1

    .line 27
    iput v2, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mRemainingAttempts:I

    .line 28
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 30
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    .line 32
    move-result v2

    .line 35
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSimImageView:Landroid/widget/ImageView;

    .line 36
    if-ge v2, v1, :cond_0

    .line 38
    const/16 v0, 0x8

    .line 40
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    goto :goto_0

    .line 45
    :cond_0
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    .line 50
    move-result v0

    .line 53
    if-ne v0, v3, :cond_3

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 56
    move-result-object v0

    .line 59
    const-string/jumbo v1, "telephony_subscription_service"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 66
    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 67
    const v1, 0x7f0812fa    # @drawable/miui_keyguard_unlock_sim_2 'res/drawable-xhdpi/miui_keyguard_unlock_sim_2.webp'

    .line 69
    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {v0, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    .line 74
    move-result-object v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    .line 80
    move-result v0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    const v0, 0x7f0812f8    # @drawable/miui_keyguard_unlock_esim 'res/drawable-xhdpi/miui_keyguard_unlock_esim.webp'

    .line 86
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    goto :goto_0

    .line 100
    :cond_3
    const v0, 0x7f0812f9    # @drawable/miui_keyguard_unlock_sim_1 'res/drawable-xhdpi/miui_keyguard_unlock_sim_1.webp'

    .line 101
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 107
    const-string v1, ""

    .line 109
    invoke-virtual {v0, v1, v3}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 111
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mShowDefaultMessage:Z

    .line 114
    if-eqz v2, :cond_7

    .line 116
    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mRemainingAttempts:I

    .line 118
    if-ltz v2, :cond_5

    .line 120
    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/KeyguardSimPinViewController;->getPinPasswordErrorMessage(IZ)Ljava/lang/String;

    .line 122
    move-result-object v1

    .line 125
    invoke-virtual {v0, v1, v3}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 126
    goto :goto_1

    .line 129
    :cond_5
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubIdForSimStateChanged:I

    .line 130
    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    .line 132
    if-eq v0, v2, :cond_6

    .line 134
    goto :goto_1

    .line 136
    :cond_6
    new-instance v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;

    .line 137
    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    .line 139
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/keyguard/KeyguardSimPinViewController$2;-><init>(Lcom/android/keyguard/KeyguardSimPinViewController;Ljava/lang/String;II)V

    .line 141
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 144
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 147
    move-object v1, v0

    .line 149
    check-cast v1, Lcom/android/keyguard/KeyguardSimPinView;

    .line 150
    check-cast v0, Lcom/android/keyguard/KeyguardSimPinView;

    .line 152
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 154
    move-result-object v0

    .line 157
    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    .line 158
    invoke-static {v2, v0}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(ILandroid/content/Context;)Z

    .line 160
    move-result v0

    .line 163
    iget p0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    .line 164
    invoke-virtual {v1, v0, p0}, Lcom/android/keyguard/KeyguardSimInputView;->setESimLocked(ZI)V

    .line 166
    return-void
    .line 169
.end method

.method public final startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final verifyPasswordAndUnlock()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 2
    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 8
    move-result v2

    .line 11
    const/4 v3, 0x4

    .line 12
    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 13
    const/4 v5, 0x1

    .line 15
    if-lt v2, v3, :cond_3

    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 18
    move-result v1

    .line 21
    const/16 v2, 0x8

    .line 22
    if-le v1, v2, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 27
    const/4 v2, 0x0

    .line 29
    if-nez v1, :cond_1

    .line 30
    new-instance v1, Landroid/app/ProgressDialog;

    .line 32
    check-cast v4, Lcom/android/keyguard/KeyguardSimPinView;

    .line 34
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v3

    .line 39
    invoke-direct {v1, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 43
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 45
    move-result-object v3

    .line 48
    const v4, 0x7f130640    # @string/kg_sim_unlock_progress_dialog_message 'Unlocking SIM…'

    .line 49
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 55
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 59
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 61
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 64
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 66
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 69
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    .line 71
    move-result-object v1

    .line 74
    const/16 v3, 0x7d9

    .line 75
    invoke-virtual {v1, v3}, Landroid/view/Window;->setType(I)V

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 80
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 82
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;

    .line 85
    if-nez v1, :cond_2

    .line 87
    new-instance v1, Lcom/android/keyguard/KeyguardSimPinViewController$2;

    .line 89
    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 94
    iget v3, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mSubId:I

    .line 95
    invoke-direct {v1, p0, v0, v3, v2}, Lcom/android/keyguard/KeyguardSimPinViewController$2;-><init>(Lcom/android/keyguard/KeyguardSimPinViewController;Ljava/lang/String;II)V

    .line 97
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;

    .line 100
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 102
    :cond_2
    return-void

    .line 105
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 106
    const v1, 0x7f130616    # @string/kg_invalid_sim_pin_hint 'Type a PIN that is 4 to 8 numbers.'

    .line 108
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(I)V

    .line 111
    check-cast v4, Lcom/android/keyguard/KeyguardSimPinView;

    .line 114
    invoke-virtual {v4, v5, v5}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 116
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 119
    move-result-object p0

    .line 122
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 123
    return-void
    .line 126
.end method
