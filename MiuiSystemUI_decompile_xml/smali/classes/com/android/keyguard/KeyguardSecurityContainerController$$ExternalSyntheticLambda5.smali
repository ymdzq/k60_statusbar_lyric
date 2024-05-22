.class public final synthetic Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

.field public final synthetic f$1:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainerController;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda5;->f$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 5
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda5;->f$1:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onViewInflated(Lcom/android/keyguard/KeyguardInputViewController;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda5;->f$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v1, 0x2

    .line 7
    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardInputViewController;->onResume(I)V

    .line 8
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    .line 11
    iget-object v2, v2, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 13
    check-cast v2, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 15
    iget-object v3, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 17
    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->indexOfChild(Landroid/view/View;)I

    .line 19
    move-result v3

    .line 22
    const/4 v4, -0x1

    .line 23
    if-eq v3, v4, :cond_0

    .line 24
    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 26
    :cond_0
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->configureMode()V

    .line 29
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    .line 32
    move-result p1

    .line 35
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainerController$2;

    .line 36
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainerController$2;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 38
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 40
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    .line 42
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 44
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 46
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 51
    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    .line 52
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 54
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 56
    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 58
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 60
    iput-boolean p1, v2, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardNeedsInput:Z

    .line 62
    invoke-virtual {v0, v2}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 64
    sget-boolean p1, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 67
    if-eqz p1, :cond_7

    .line 69
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 71
    move-result-object p1

    .line 74
    sget-object v0, Lmiui/stub/MiuiProxy;->sKeyguardMonitorCallbackMap:Ljava/util/Map;

    .line 75
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda5;->f$1:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 77
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 79
    move-result p0

    .line 82
    if-eqz p0, :cond_6

    .line 83
    if-eq p0, v1, :cond_5

    .line 85
    const/4 v0, 0x3

    .line 87
    if-eq p0, v0, :cond_4

    .line 88
    const/4 v0, 0x4

    .line 90
    if-eq p0, v0, :cond_3

    .line 91
    const/4 v0, 0x5

    .line 93
    if-eq p0, v0, :cond_2

    .line 94
    const/4 v0, 0x6

    .line 96
    if-eq p0, v0, :cond_1

    .line 97
    sget-object p0, Lcom/miui/sysuiinterfaces/assist/ISecurityMode;->None:Lcom/miui/sysuiinterfaces/assist/ISecurityMode;

    .line 99
    goto :goto_0

    .line 101
    :cond_1
    sget-object p0, Lcom/miui/sysuiinterfaces/assist/ISecurityMode;->SimPuk:Lcom/miui/sysuiinterfaces/assist/ISecurityMode;

    .line 102
    goto :goto_0

    .line 104
    :cond_2
    sget-object p0, Lcom/miui/sysuiinterfaces/assist/ISecurityMode;->SimPin:Lcom/miui/sysuiinterfaces/assist/ISecurityMode;

    .line 105
    goto :goto_0

    .line 107
    :cond_3
    sget-object p0, Lcom/miui/sysuiinterfaces/assist/ISecurityMode;->PIN:Lcom/miui/sysuiinterfaces/assist/ISecurityMode;

    .line 108
    goto :goto_0

    .line 110
    :cond_4
    sget-object p0, Lcom/miui/sysuiinterfaces/assist/ISecurityMode;->Password:Lcom/miui/sysuiinterfaces/assist/ISecurityMode;

    .line 111
    goto :goto_0

    .line 113
    :cond_5
    sget-object p0, Lcom/miui/sysuiinterfaces/assist/ISecurityMode;->Pattern:Lcom/miui/sysuiinterfaces/assist/ISecurityMode;

    .line 114
    goto :goto_0

    .line 116
    :cond_6
    sget-object p0, Lcom/miui/sysuiinterfaces/assist/ISecurityMode;->Invalid:Lcom/miui/sysuiinterfaces/assist/ISecurityMode;

    .line 117
    :goto_0
    invoke-interface {p1, p0}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->setSecurityMode(Lcom/miui/sysuiinterfaces/assist/ISecurityMode;)V

    .line 119
    :cond_7
    return-void
    .line 122
.end method
