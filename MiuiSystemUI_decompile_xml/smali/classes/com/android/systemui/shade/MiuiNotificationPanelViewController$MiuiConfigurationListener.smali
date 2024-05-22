.class public final Lcom/android/systemui/shade/MiuiNotificationPanelViewController$MiuiConfigurationListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

.field public final synthetic this$0$com$android$systemui$shade$NotificationPanelViewController$ConfigurationListener:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$MiuiConfigurationListener;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$MiuiConfigurationListener;->this$0$com$android$systemui$shade$NotificationPanelViewController$ConfigurationListener:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onDensityOrFontScaleChanged()V
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$MiuiConfigurationListener;->this$0$com$android$systemui$shade$NotificationPanelViewController$ConfigurationListener:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->reInflateViews()V

    return-void
.end method

.method public final onDensityOrFontScaleChanged(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$MiuiConfigurationListener;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 2
    invoke-virtual {p1}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->initScreenSize()V

    .line 3
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 4
    invoke-virtual {p1}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->updateKeyguardSignature()V

    .line 5
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 6
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/keyguard/clock/KeyguardClockContainer;->addClockView()V

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 10
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    if-eqz p0, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/android/keyguard/clock/KeyguardClockContainer;->updateTimeViewByConfigChange()V

    :cond_1
    return-void
.end method

.method public final onLayoutDirectionChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$MiuiConfigurationListener;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/android/keyguard/clock/KeyguardClockContainer;->updateTimeViewByConfigChange()V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public final onLocaleListChanged()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$MiuiConfigurationListener;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->$r8$clinit:I

    .line 9
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->isGxzwLowPosition()Z

    .line 11
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    const-string v1, ""

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 20
    const v2, 0x7f130376    # @string/default_lockscreen_unlock_hint_text 'Swipe up to unlock'

    .line 22
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 28
    :goto_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPersistentUnlockMessage:Ljava/lang/String;

    .line 29
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 31
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPersistentUnlockMessage:Ljava/lang/String;

    .line 37
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDeviceEntryIndication(Z)V

    .line 40
    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updatePowerIndication()V

    .line 43
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 46
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 48
    if-eqz p0, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/android/keyguard/clock/KeyguardClockContainer;->updateTimeViewByConfigChange()V

    .line 52
    :cond_2
    return-void
    .line 55
.end method

.method public final onMaxBoundsChanged(Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$MiuiConfigurationListener;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    const/4 v0, 0x1

    .line 4
    invoke-static {p0, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->access$maybeLockScreenThemeChanged(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Z)V

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateThemeBackgroundDrawable()V

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateThemeBackgroundVisibility()V

    .line 11
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    sget-boolean v2, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    .line 19
    if-eqz v2, :cond_0

    .line 21
    iget-boolean v3, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardShowing:Z

    .line 23
    if-eqz v3, :cond_0

    .line 25
    invoke-virtual {v1}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->updateShowDepthState()V

    .line 27
    :cond_0
    if-eqz v2, :cond_4

    .line 30
    if-nez p1, :cond_4

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->isOnShade()Z

    .line 34
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    const-class p1, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 40
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 45
    check-cast p1, Lcom/android/systemui/statusbar/notification/modal/ModalController;

    .line 46
    sget-object v0, Lcom/miui/systemui/events/ModalExitMode;->OTHER:Lcom/miui/systemui/events/ModalExitMode;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 53
    const-wide/16 v1, 0x32

    .line 54
    invoke-static {p1, v1, v2, v0}, Lcom/android/systemui/statusbar/notification/modal/ModalController;->animExitModal$default(Lcom/android/systemui/statusbar/notification/modal/ModalController;JLjava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 59
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 61
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->collapsePanels()V

    .line 63
    goto :goto_1

    .line 66
    :cond_1
    iget p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mBarState:I

    .line 67
    const/4 v1, 0x2

    .line 69
    if-ne p1, v1, :cond_2

    .line 70
    goto :goto_0

    .line 72
    :cond_2
    const/4 v0, 0x0

    .line 73
    :goto_0
    if-eqz v0, :cond_3

    .line 74
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 76
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 78
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->showKeyguardImpl()V

    .line 80
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updatePanelView()V

    .line 83
    goto :goto_2

    .line 86
    :cond_4
    if-eqz p1, :cond_5

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updatePanelView()V

    .line 89
    :cond_5
    :goto_2
    return-void
    .line 92
.end method

.method public final onMiBlurChanged(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->isDefaultLockScreenTheme()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    sget-boolean v0, Lcom/miui/utils/MiuiThemeUtils;->sDefaultSysUiTheme:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$MiuiConfigurationListener;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->toggleBlurBlend(ZZ)V

    .line 17
    return-void
    .line 20
.end method

.method public final onMiuiThemeChanged(ZZ)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$MiuiConfigurationListener;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    const/4 v0, 0x1

    .line 4
    invoke-static {p0, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->access$maybeLockScreenThemeChanged(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Z)V

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateThemeBackgroundDrawable()V

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateThemeBackgroundVisibility()V

    .line 11
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 14
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isBackgroundBlurOpened(Landroid/content/Context;)Z

    .line 20
    move-result v1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    if-eqz p2, :cond_0

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->toggleBlurBlend(ZZ)V

    .line 30
    return-void
    .line 33
.end method

.method public final onSmallestScreenWidthChanged()V
    .locals 1

    .line 1
    const-string v0, "onSmallestScreenWidthChanged"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$MiuiConfigurationListener;->this$0$com$android$systemui$shade$NotificationPanelViewController$ConfigurationListener:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 12
    return-void
    .line 15
.end method

.method public final onThemeChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$MiuiConfigurationListener;->this$0$com$android$systemui$shade$NotificationPanelViewController$ConfigurationListener:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->reInflateViews()V

    .line 7
    return-void
    .line 10
.end method
