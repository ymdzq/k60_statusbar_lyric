.class public abstract Lcom/android/keyguard/KeyguardInputViewController;
.super Lcom/android/systemui/util/ViewController;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# instance fields
.field public final mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field public final mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

.field public final mNullCallback:Lcom/android/keyguard/KeyguardInputViewController$1;

.field public mPaused:Z

.field public final mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public final mTitleMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    new-instance v0, Lcom/android/keyguard/KeyguardInputViewController$1;

    .line 5
    invoke-direct {v0}, Lcom/android/keyguard/KeyguardInputViewController$1;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mNullCallback:Lcom/android/keyguard/KeyguardInputViewController$1;

    .line 10
    iput-object p2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 12
    iput-object p3, p0, Lcom/android/keyguard/KeyguardInputViewController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 14
    if-nez p1, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    const p2, 0x7f0a031b    # @id/emergency_call_button

    .line 19
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p2

    .line 25
    check-cast p2, Lcom/android/keyguard/EmergencyButton;

    .line 26
    :goto_0
    iput-object p4, p0, Lcom/android/keyguard/KeyguardInputViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    .line 28
    iput-object p6, p0, Lcom/android/keyguard/KeyguardInputViewController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 30
    if-eqz p5, :cond_1

    .line 32
    iget-object p2, p5, Lcom/android/keyguard/KeyguardMessageAreaController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 34
    iget-object p3, p5, Lcom/android/keyguard/KeyguardMessageAreaController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 36
    const p4, 0x7f0a0158    # @id/bouncer_message_area

    .line 38
    :try_start_0
    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    .line 41
    move-result-object p4

    .line 44
    check-cast p4, Lcom/android/keyguard/KeyguardMessageArea;

    .line 45
    new-instance p5, Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 47
    invoke-direct {p5, p4, p3, p2}, Lcom/android/keyguard/KeyguardMessageAreaController;-><init>(Lcom/android/keyguard/KeyguardMessageArea;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    .line 49
    iput-object p5, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 52
    invoke-virtual {p5}, Lcom/android/systemui/util/ViewController;->init()V

    .line 54
    move-object p5, p4

    .line 57
    check-cast p5, Lcom/android/keyguard/KeyguardMessageArea;

    .line 58
    const/4 p5, 0x1

    .line 60
    invoke-virtual {p4, p5}, Lcom/android/keyguard/KeyguardMessageArea;->setIsVisible(Z)V

    .line 61
    const p4, 0x7f0a0159    # @id/bouncer_message_area_title

    .line 64
    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    .line 67
    move-result-object p1

    .line 70
    check-cast p1, Lcom/android/keyguard/KeyguardMessageArea;

    .line 71
    if-eqz p1, :cond_1

    .line 73
    new-instance p4, Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 75
    invoke-direct {p4, p1, p3, p2}, Lcom/android/keyguard/KeyguardMessageAreaController;-><init>(Lcom/android/keyguard/KeyguardMessageArea;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    .line 77
    iput-object p4, p0, Lcom/android/keyguard/KeyguardInputViewController;->mTitleMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 80
    invoke-virtual {p4}, Lcom/android/systemui/util/ViewController;->init()V

    .line 82
    move-object p0, p1

    .line 85
    check-cast p0, Lcom/android/keyguard/KeyguardMessageArea;

    .line 86
    invoke-virtual {p1, p5}, Lcom/android/keyguard/KeyguardMessageArea;->setIsVisible(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_1

    .line 91
    :catch_0
    const-string p0, "KeyguardInputViewController"

    .line 92
    const-string p1, "Ensure that a BouncerKeyguardMessageArea is included in the layout"

    .line 94
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_1
    :goto_1
    return-void
    .line 99
.end method


# virtual methods
.method public getKeyguardMessageAreaController()Lcom/android/keyguard/KeyguardMessageAreaController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPaused:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mNullCallback:Lcom/android/keyguard/KeyguardInputViewController$1;

    .line 6
    return-object p0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 9
    return-object p0
    .line 11
.end method

.method public getKeyguardTitleMessageAreaController()Lcom/android/keyguard/KeyguardMessageAreaController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mTitleMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 2
    return-object p0
    .line 4
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume(I)V
.end method

.method public abstract reset()V
.end method

.method public abstract showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V
.end method

.method public abstract showPromptReason(I)V
.end method

.method public startAppearAnimation()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast p0, Lcom/android/keyguard/KeyguardInputView;

    .line 4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputView;->startAppearAnimation()V

    .line 6
    return-void
    .line 9
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast p0, Lcom/android/keyguard/KeyguardInputView;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardInputView;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method
