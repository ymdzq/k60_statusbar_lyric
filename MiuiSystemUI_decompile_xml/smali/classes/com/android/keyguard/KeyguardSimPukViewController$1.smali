.class public final Lcom/android/keyguard/KeyguardSimPukViewController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPukViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$1;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onSimStateChanged(III)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$1;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 2
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubIdForSimStateChanged:I

    .line 4
    const/4 p1, 0x5

    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p3, p1, :cond_0

    .line 8
    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mRemainingAttempts:I

    .line 11
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mShowDefaultMessage:Z

    .line 13
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 15
    move-result-object p1

    .line 18
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 19
    move-result v1

    .line 22
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 23
    invoke-interface {p1, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukViewController;->resetState()V

    .line 29
    :goto_0
    const/4 p1, 0x7

    .line 32
    if-ne p3, p1, :cond_1

    .line 33
    if-ne p2, v0, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 37
    move-result-object p1

    .line 40
    const-string/jumbo p2, "telephony_subscription_service"

    .line 41
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 47
    check-cast p1, Landroid/telephony/SubscriptionManager;

    .line 48
    invoke-virtual {p1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    .line 50
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    .line 54
    move-result p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    const/4 p1, 0x0

    .line 60
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimImageView:Landroid/widget/ImageView;

    .line 61
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    const p1, 0x7f0812f8    # @drawable/miui_keyguard_unlock_esim 'res/drawable-xhdpi/miui_keyguard_unlock_esim.webp'

    .line 66
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukViewController;->showForgetPasswordTextview()V

    .line 72
    :cond_1
    return-void
    .line 75
.end method
