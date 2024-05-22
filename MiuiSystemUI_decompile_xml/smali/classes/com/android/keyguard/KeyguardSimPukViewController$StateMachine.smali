.class public final Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mState:I

.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPukViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final reset()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 2
    const-string v1, ""

    .line 4
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPinText:Ljava/lang/String;

    .line 6
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPukText:Ljava/lang/String;

    .line 8
    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 11
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 13
    const/4 v2, 0x3

    .line 15
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    .line 16
    move-result p0

    .line 19
    iget v2, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    .line 20
    if-eq p0, v2, :cond_3

    .line 22
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 24
    move-result v2

    .line 27
    if-eqz v2, :cond_3

    .line 28
    iput p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    .line 30
    const/4 v2, 0x1

    .line 32
    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mShowDefaultMessage:Z

    .line 33
    const/4 v3, -0x1

    .line 35
    iput v3, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mRemainingAttempts:I

    .line 36
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 38
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    .line 40
    move-result v3

    .line 43
    const/4 v4, 0x2

    .line 44
    iget-object v5, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimImageView:Landroid/widget/ImageView;

    .line 45
    if-ge v3, v4, :cond_0

    .line 47
    const/16 p0, 0x8

    .line 49
    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    .line 58
    move-result p0

    .line 61
    if-ne p0, v2, :cond_2

    .line 62
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 64
    move-result-object p0

    .line 67
    const-string/jumbo v1, "telephony_subscription_service"

    .line 68
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    move-result-object p0

    .line 74
    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 75
    invoke-virtual {p0, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    .line 77
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    .line 81
    move-result p0

    .line 84
    if-eqz p0, :cond_1

    .line 85
    const p0, 0x7f0812f8    # @drawable/miui_keyguard_unlock_esim 'res/drawable-xhdpi/miui_keyguard_unlock_esim.webp'

    .line 87
    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukViewController;->showForgetPasswordTextview()V

    .line 93
    goto :goto_0

    .line 96
    :cond_1
    const p0, 0x7f0812fa    # @drawable/miui_keyguard_unlock_sim_2 'res/drawable-xhdpi/miui_keyguard_unlock_sim_2.webp'

    .line 97
    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    goto :goto_0

    .line 103
    :cond_2
    const p0, 0x7f0812f9    # @drawable/miui_keyguard_unlock_sim_1 'res/drawable-xhdpi/miui_keyguard_unlock_sim_1.webp'

    .line 104
    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    :cond_3
    :goto_0
    iget-boolean p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mShowDefaultMessage:Z

    .line 110
    if-eqz p0, :cond_4

    .line 112
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukViewController;->showDefaultMessage()V

    .line 114
    :cond_4
    iget-object p0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 117
    move-object v1, p0

    .line 119
    check-cast v1, Lcom/android/keyguard/KeyguardSimPukView;

    .line 120
    check-cast p0, Lcom/android/keyguard/KeyguardSimPukView;

    .line 122
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 124
    move-result-object p0

    .line 127
    iget v2, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    .line 128
    invoke-static {v2, p0}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(ILandroid/content/Context;)Z

    .line 130
    move-result p0

    .line 133
    iget v2, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    .line 134
    invoke-virtual {v1, p0, v2}, Lcom/android/keyguard/KeyguardSimInputView;->setESimLocked(ZI)V

    .line 136
    iget-object p0, v0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 139
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 141
    return-void
    .line 144
.end method
