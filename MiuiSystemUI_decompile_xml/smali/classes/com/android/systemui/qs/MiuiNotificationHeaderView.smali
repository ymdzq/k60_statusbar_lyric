.class public Lcom/android/systemui/qs/MiuiNotificationHeaderView;
.super Lcom/android/systemui/qs/MiuiHeaderView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public mBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

.field public mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public mDisable2:I

.field public mLandClock:Lcom/android/systemui/statusbar/views/MiuiClock;

.field public mMiuiOptimization:Z

.field public final mMiuiOptimizationListener:Lcom/android/systemui/qs/MiuiNotificationHeaderView$1;

.field public mNotificationHeaderClockContainer:Landroid/view/View;

.field public mOrientation:I

.field public mScreenLayout:I

.field public mShortCut:Landroid/widget/ImageView;

.field public mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/MiuiHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    const-class p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 5
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object p1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mOrientation:I

    .line 7
    iput p1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mScreenLayout:I

    .line 8
    new-instance p1, Lcom/android/systemui/qs/MiuiNotificationHeaderView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView$1;-><init>(Lcom/android/systemui/qs/MiuiNotificationHeaderView;)V

    iput-object p1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mMiuiOptimizationListener:Lcom/android/systemui/qs/MiuiNotificationHeaderView$1;

    return-void
.end method


# virtual methods
.method public final disable(IIIZ)V
    .locals 0

    .line 1
    if-nez p1, :cond_1

    .line 2
    iget p1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDisable2:I

    .line 4
    if-eq p1, p3, :cond_1

    .line 6
    iput p3, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDisable2:I

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateShortCutVisibility()V

    .line 10
    iget p1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDisable2:I

    .line 13
    and-int/lit8 p1, p1, 0x1

    .line 15
    if-nez p1, :cond_0

    .line 17
    const/4 p1, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x4

    .line 21
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    :cond_1
    return-void
    .line 25
.end method

.method public final onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 11
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 13
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 15
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 18
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 24
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 26
    const-class v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 29
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 35
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    .line 37
    const/4 v2, 0x2

    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->addPromptContainer(Landroid/widget/LinearLayout;I)V

    .line 40
    const-class v0, Lcom/miui/systemui/SettingsManager;

    .line 43
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 48
    check-cast v0, Lcom/miui/systemui/SettingsManager;

    .line 49
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mMiuiOptimizationListener:Lcom/android/systemui/qs/MiuiNotificationHeaderView$1;

    .line 51
    invoke-virtual {v0, v1}, Lcom/miui/systemui/SettingsManager;->registerMiuiOptimizationListener(Lcom/miui/systemui/modulesettings/DeveloperSettings$MiuiOptimizationListener;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateLayout()V

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->themeChanged()V

    .line 59
    return-void
    .line 62
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isVisibleToUser()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    if-eqz p1, :cond_3

    .line 8
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 10
    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 12
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isDeviceProvisioned()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 20
    if-eq p1, v0, :cond_2

    .line 22
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mLandClock:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 24
    if-ne p1, v0, :cond_0

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 29
    if-ne p1, v0, :cond_1

    .line 31
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 33
    move-result-object p0

    .line 36
    invoke-static {p0}, Lcom/miui/systemui/util/CommonUtil;->startCalendarApp(Landroid/content/Context;)V

    .line 37
    goto :goto_1

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mShortCut:Landroid/widget/ImageView;

    .line 41
    if-ne p1, v0, :cond_3

    .line 43
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 45
    move-result-object p0

    .line 48
    sget-boolean p1, Lcom/miui/systemui/util/CommonUtil;->OWNER_USER_PROCESS:Z

    .line 49
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 51
    invoke-static {p1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    move-result-object p1

    .line 56
    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 57
    invoke-static {p0}, Lcom/miui/systemui/util/CommonUtil;->getNotificationManagerIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 59
    move-result-object p0

    .line 62
    const/4 v0, 0x1

    .line 63
    invoke-interface {p1, p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 64
    goto :goto_1

    .line 67
    :cond_2
    :goto_0
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->startClockApp()V

    .line 68
    :cond_3
    :goto_1
    return-void
    .line 71
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateLayout()V

    .line 2
    return-void
    .line 5
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateLayout()V

    .line 5
    return-void
    .line 8
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 11
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 13
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 16
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 22
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 24
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 26
    const-class v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 29
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 35
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    .line 37
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->removePromptContainer(Landroid/widget/LinearLayout;)V

    .line 39
    const-class v0, Lcom/miui/systemui/SettingsManager;

    .line 42
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 47
    check-cast v0, Lcom/miui/systemui/SettingsManager;

    .line 48
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mMiuiOptimizationListener:Lcom/android/systemui/qs/MiuiNotificationHeaderView$1;

    .line 50
    iget-object v0, v0, Lcom/miui/systemui/SettingsManager;->miuiOptimizationListeners:Ljava/util/List;

    .line 52
    check-cast v0, Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 56
    return-void
    .line 59
.end method

.method public final onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0293    # @id/date_time

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 14
    const v0, 0x7f0a0135    # @id/big_time

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 23
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 25
    const-class v0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 27
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 33
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 35
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->setNsBigTime(Lcom/android/systemui/statusbar/views/MiuiClock;)V

    .line 37
    const v0, 0x7f0a06ab    # @id/notification_header_clock_container

    .line 40
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mNotificationHeaderClockContainer:Landroid/view/View;

    .line 47
    const v0, 0x7f0a0407    # @id/horizontal_time

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 55
    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 56
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mLandClock:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 58
    const v0, 0x7f0a06b4    # @id/notification_shade_shortcut

    .line 60
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/ImageView;

    .line 67
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mShortCut:Landroid/widget/ImageView;

    .line 69
    const v0, 0x7f0a0734    # @id/privacy_container

    .line 71
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object v0

    .line 77
    check-cast v0, Landroid/widget/LinearLayout;

    .line 78
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mShortCut:Landroid/widget/ImageView;

    .line 82
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mShortCut:Landroid/widget/ImageView;

    .line 89
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 91
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 95
    move-result-object v1

    .line 98
    const v2, 0x7f1300ef    # @string/accessibility_settings 'Settings'

    .line 99
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 109
    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 116
    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mLandClock:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 123
    if-eqz v0, :cond_3

    .line 125
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    :cond_3
    const-class v0, Lcom/miui/systemui/SettingsManager;

    .line 130
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 132
    move-result-object v0

    .line 135
    check-cast v0, Lcom/miui/systemui/SettingsManager;

    .line 136
    iget-boolean v0, v0, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    .line 138
    iput-boolean v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mMiuiOptimization:Z

    .line 140
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    .line 142
    if-eqz p0, :cond_5

    .line 144
    if-eqz v0, :cond_4

    .line 146
    const/16 v0, 0x8

    .line 148
    goto :goto_0

    .line 150
    :cond_4
    const/4 v0, 0x0

    .line 151
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 152
    :cond_5
    return-void
    .line 155
.end method

.method public final onMaxBoundsChanged(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateLayout()V

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mShortCut:Landroid/widget/ImageView;

    .line 19
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 25
    const v1, 0x7f070f2f    # @dimen/qs_control_header_button_size '24.7273dp'

    .line 27
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 30
    move-result v2

    .line 33
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 34
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 36
    move-result v1

    .line 39
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 40
    const v1, 0x7f070f2e    # @dimen/qs_control_header_button_margin_start '6.0dp'

    .line 42
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 45
    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 49
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mShortCut:Landroid/widget/ImageView;

    .line 52
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 57
    const v1, 0x7f070f30    # @dimen/qs_control_header_clock_size '54.0dp'

    .line 59
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 62
    move-result v1

    .line 65
    int-to-float v1, v1

    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 71
    const v1, 0x7f070f31    # @dimen/qs_control_header_date_size '15.0dp'

    .line 73
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 76
    move-result v1

    .line 79
    int-to-float v1, v1

    .line 80
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 84
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 86
    move-result-object v0

    .line 89
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 90
    const v1, 0x7f070f33    # @dimen/qs_control_header_tiles_margin_bottom '2.91dp'

    .line 92
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 95
    move-result p1

    .line 98
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 99
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 101
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    :cond_0
    return-void
    .line 106
.end method

.method public final onMiuiThemeChanged(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->themeChanged()V

    .line 2
    return-void
    .line 5
.end method

.method public final onUiModeChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateResources()V

    .line 2
    return-void
    .line 5
.end method

.method public bridge synthetic setBiometricContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic setNavigationBarLumaSamplingEnabled(IZ)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic setStatus(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic setTopAppHidesStatusBar(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic setWindowState(III)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final themeChanged()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f05007d    # @bool/expanded_status_bar_darkmode 'false'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 17
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 23
    invoke-interface {v0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getLightModeIconColorSingleTone()I

    .line 25
    invoke-interface {v0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getDarkModeIconColorSingleTone()I

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateResources()V

    .line 31
    return-void
    .line 34
.end method

.method public final updateLayout()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    iget v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mOrientation:I

    .line 12
    if-ne v0, v1, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 20
    move-result-object v0

    .line 23
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 24
    iget v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mScreenLayout:I

    .line 26
    if-ne v0, v1, :cond_0

    .line 28
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 35
    move-result-object v0

    .line 38
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 39
    iput v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mOrientation:I

    .line 41
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 43
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 47
    move-result-object v0

    .line 50
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 51
    iput v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mScreenLayout:I

    .line 53
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 55
    move-result-object v0

    .line 58
    const v1, 0x7f070e0f    # @dimen/ns_notification_header_padding '26.0dp'

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 62
    move-result v0

    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 67
    iget v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mOrientation:I

    .line 70
    const/4 v2, 0x1

    .line 72
    const-class v3, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 73
    const/16 v4, 0x8

    .line 75
    if-eq v0, v2, :cond_5

    .line 77
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 79
    move-result-object v0

    .line 82
    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->isPadOrFoldLargeScreen(Landroid/content/Context;)Z

    .line 83
    move-result v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    goto/16 :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mNotificationHeaderClockContainer:Landroid/view/View;

    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 93
    move-result-object v0

    .line 96
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 97
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 99
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 101
    move-result-object v5

    .line 104
    const v6, 0x7f070ef6    # @dimen/qs_control_center_horizontal_margin_start '12.0dp'

    .line 105
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 108
    move-result v5

    .line 111
    const v7, 0x7f070ef4    # @dimen/qs_control_center_header_horizontal_margin_End '4.0dp'

    .line 112
    if-ne v2, v5, :cond_2

    .line 115
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 117
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 119
    move-result-object v5

    .line 122
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 123
    move-result v5

    .line 126
    if-eq v2, v5, :cond_3

    .line 127
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 129
    move-result-object v2

    .line 132
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 133
    move-result v2

    .line 136
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 137
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 139
    move-result-object v2

    .line 142
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 143
    move-result v2

    .line 146
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 147
    iget-object v2, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mNotificationHeaderClockContainer:Landroid/view/View;

    .line 149
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 154
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 159
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mLandClock:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 164
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mLandClock:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 169
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 171
    move-result-object v0

    .line 174
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 175
    invoke-virtual {v0}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    .line 177
    move-result v1

    .line 180
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 181
    move-result-object v2

    .line 184
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 185
    move-result v2

    .line 188
    if-eq v1, v2, :cond_4

    .line 189
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 191
    move-result-object v1

    .line 194
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 195
    move-result v1

    .line 198
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 199
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mLandClock:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 202
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    :cond_4
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 207
    move-result-object v0

    .line 210
    check-cast v0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 211
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mLandClock:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 213
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->setNsBigTime(Lcom/android/systemui/statusbar/views/MiuiClock;)V

    .line 215
    goto :goto_1

    .line 218
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mNotificationHeaderClockContainer:Landroid/view/View;

    .line 219
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 221
    move-result-object v0

    .line 224
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 225
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 227
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 229
    move-result-object v5

    .line 232
    const v6, 0x7f070ef5    # @dimen/qs_control_center_header_paddingTop '52.0dp'

    .line 233
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 236
    move-result v5

    .line 239
    if-ne v2, v5, :cond_6

    .line 240
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 242
    if-eqz v2, :cond_7

    .line 244
    :cond_6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 246
    move-result-object v2

    .line 249
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 250
    move-result v2

    .line 253
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 254
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 256
    iget-object v2, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mNotificationHeaderClockContainer:Landroid/view/View;

    .line 258
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 263
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 268
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mLandClock:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 273
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    .line 275
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 278
    move-result-object v0

    .line 281
    check-cast v0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 282
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 284
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->setNsBigTime(Lcom/android/systemui/statusbar/views/MiuiClock;)V

    .line 286
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->updateShortCutVisibility()V

    .line 289
    return-void
    .line 292
.end method

.method public final updateResources()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mShortCut:Landroid/widget/ImageView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 9
    const v2, 0x7f0816b3    # @drawable/notification_panel_manage_icon 'res/drawable/notification_panel_manage_icon.xml'

    .line 10
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 20
    if-eqz v0, :cond_1

    .line 22
    const v1, 0x7f140460    # @style/TextAppearance.QSControl.Clock

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 27
    sget-object v0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->EXPAND_FRACTION_EASE:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 30
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 32
    filled-new-array {v0}, [Landroid/widget/TextView;

    .line 34
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$Companion;->setHeaderClockTypeface([Landroid/widget/TextView;)Z

    .line 38
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 41
    if-eqz p0, :cond_2

    .line 43
    const v0, 0x7f140465    # @style/TextAppearance.QSControl.Date

    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 48
    :cond_2
    return-void
    .line 51
.end method

.method public final updateShortCutVisibility()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mShortCut:Landroid/widget/ImageView;

    .line 2
    if-eqz v0, :cond_2

    .line 4
    iget v1, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mOrientation:I

    .line 6
    const/4 v2, 0x1

    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/miui/utils/configs/MiuiConfigs;->isPadOrFoldLargeScreen(Landroid/content/Context;)Z

    .line 15
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    :cond_0
    iget p0, p0, Lcom/android/systemui/qs/MiuiNotificationHeaderView;->mDisable2:I

    .line 21
    and-int/2addr p0, v2

    .line 23
    if-nez p0, :cond_1

    .line 24
    const/4 p0, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/16 p0, 0x8

    .line 28
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    :cond_2
    return-void
    .line 33
.end method
