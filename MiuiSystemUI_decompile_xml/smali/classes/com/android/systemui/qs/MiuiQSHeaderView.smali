.class public Lcom/android/systemui/qs/MiuiQSHeaderView;
.super Lcom/android/systemui/qs/MiuiHeaderView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/systemui/controller/RegionController$Callback;
.implements Lcom/miui/systemui/controller/SuperSaveModeController$SuperSaveModeChangeListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPrivacyCallback;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public mBattery:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

.field public mBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

.field public mCarrierText:Lcom/android/keyguard/CarrierText;

.field public mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

.field public mDisable2:I

.field public mHorizontalDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

.field public mIconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

.field public mIsPrivacyPromptShowing:Z

.field public mOrientation:I

.field public mRegion:Ljava/lang/String;

.field public mShortCut:Landroid/widget/ImageView;

.field public mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

.field public mSuperSave:Z

.field public mVerticalInfo:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/MiuiQSHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/MiuiQSHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/MiuiHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mOrientation:I

    return-void
.end method


# virtual methods
.method public final disable(IIIZ)V
    .locals 0

    .line 1
    if-nez p1, :cond_1

    .line 2
    iget p1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mDisable2:I

    .line 4
    if-eq p1, p3, :cond_1

    .line 6
    iput p3, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mDisable2:I

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->updateShortCutVisibility()V

    .line 10
    iget p1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mDisable2:I

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
    const-class v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 11
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->addPrivacyCallback(Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPrivacyCallback;)V

    .line 13
    const-class v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 16
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 22
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    .line 24
    const/4 v2, 0x2

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->addPromptContainer(Landroid/widget/LinearLayout;I)V

    .line 27
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 30
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 36
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mIconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    .line 38
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 40
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 42
    const-class v0, Lcom/miui/systemui/controller/RegionController;

    .line 45
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 50
    check-cast v0, Lcom/miui/systemui/controller/RegionController;

    .line 51
    invoke-virtual {v0, p0}, Lcom/miui/systemui/controller/RegionController;->addCallback(Lcom/miui/systemui/controller/RegionController$Callback;)V

    .line 53
    const-class v0, Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 56
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 61
    check-cast v0, Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 62
    invoke-virtual {v0, p0}, Lcom/miui/systemui/controller/SuperSaveModeController;->addCallback(Lcom/miui/systemui/controller/SuperSaveModeController$SuperSaveModeChangeListener;)V

    .line 64
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 67
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    move-result-object v0

    .line 72
    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 73
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 75
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 77
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 80
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 85
    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 86
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->updateLayout()V

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->themeChanged()V

    .line 94
    return-void
    .line 97
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 10
    if-ne p1, v0, :cond_0

    .line 12
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->startClockApp()V

    .line 14
    goto :goto_1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 18
    if-eq p1, v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mHorizontalDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 22
    if-ne p1, v0, :cond_1

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mShortCut:Landroid/widget/ImageView;

    .line 27
    if-ne p1, p0, :cond_3

    .line 29
    sget-boolean p0, Lcom/miui/systemui/util/CommonUtil;->OWNER_USER_PROCESS:Z

    .line 31
    new-instance p0, Landroid/content/Intent;

    .line 33
    const-string p1, "android.settings.SETTINGS"

    .line 35
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    const/high16 p1, 0x10000000

    .line 40
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 42
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 45
    invoke-static {p1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 50
    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 51
    const/4 v0, 0x1

    .line 53
    invoke-interface {p1, p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 54
    goto :goto_1

    .line 57
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 58
    move-result-object p0

    .line 61
    invoke-static {p0}, Lcom/miui/systemui/util/CommonUtil;->startCalendarApp(Landroid/content/Context;)V

    .line 62
    :cond_3
    :goto_1
    return-void
    .line 65
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->updateLayout()V

    .line 2
    return-void
    .line 5
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->updateLayout()V

    .line 5
    return-void
    .line 8
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    .line 2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 8
    invoke-virtual {v0}, Landroid/widget/LinearLayout$LayoutParams;->getMarginEnd()I

    .line 10
    move-result v1

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v2

    .line 17
    const v3, 0x7f070fa7    # @dimen/qs_header_privacy_margin_end '12.0dp'

    .line 18
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 21
    move-result v2

    .line 24
    if-eq v1, v2, :cond_0

    .line 25
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object v1

    .line 30
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 35
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    :cond_0
    return-void
    .line 43
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
    const-class v0, Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 29
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 34
    check-cast v0, Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 35
    iget-object v0, v0, Lcom/miui/systemui/controller/SuperSaveModeController;->mListeners:Ljava/util/List;

    .line 37
    check-cast v0, Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 41
    const-class v0, Lcom/miui/systemui/controller/RegionController;

    .line 44
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 49
    check-cast v0, Lcom/miui/systemui/controller/RegionController;

    .line 50
    iget-object v0, v0, Lcom/miui/systemui/controller/RegionController;->mCallbacks:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 54
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 57
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 62
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 63
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mIconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    .line 65
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 67
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 69
    const-class v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 72
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    move-result-object v0

    .line 77
    check-cast v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 78
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->removePrivacyCallback(Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPrivacyCallback;)V

    .line 80
    const-class v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 83
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 85
    move-result-object v0

    .line 88
    check-cast v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 89
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    .line 91
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->removePromptContainer(Landroid/widget/LinearLayout;)V

    .line 93
    return-void
    .line 96
.end method

.method public final onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0135    # @id/big_time

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 14
    const v0, 0x7f0a0293    # @id/date_time

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 23
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 25
    const v0, 0x7f0a0764    # @id/qs_header_vertical_info

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mVerticalInfo:Landroid/view/View;

    .line 34
    const v0, 0x7f0a0405    # @id/horizontal_date_time

    .line 36
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 43
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mHorizontalDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 45
    const v0, 0x7f0a06b3    # @id/notification_shade_carrier

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 53
    check-cast v0, Lcom/android/keyguard/CarrierText;

    .line 54
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    .line 56
    const v0, 0x7f0a0120    # @id/battery

    .line 58
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v0

    .line 64
    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    .line 65
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mBattery:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    .line 67
    const v0, 0x7f0a06b4    # @id/notification_shade_shortcut

    .line 69
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object v0

    .line 75
    check-cast v0, Landroid/widget/ImageView;

    .line 76
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mShortCut:Landroid/widget/ImageView;

    .line 78
    const v0, 0x7f0a0734    # @id/privacy_container

    .line 80
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 83
    move-result-object v0

    .line 86
    check-cast v0, Landroid/widget/LinearLayout;

    .line 87
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mShortCut:Landroid/widget/ImageView;

    .line 91
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mShortCut:Landroid/widget/ImageView;

    .line 96
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 98
    move-result-object v1

    .line 101
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 102
    move-result-object v1

    .line 105
    const v2, 0x7f1300ef    # @string/accessibility_settings 'Settings'

    .line 106
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 109
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 116
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 121
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mHorizontalDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 126
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    new-instance v0, Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    .line 131
    const v1, 0x7f0a08dd    # @id/statusIcons

    .line 133
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 136
    move-result-object v1

    .line 139
    check-cast v1, Landroid/view/ViewGroup;

    .line 140
    const-class v2, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 142
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 144
    move-result-object v2

    .line 147
    check-cast v2, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 148
    invoke-interface {v2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getLightModeIconColorSingleTone()I

    .line 150
    move-result v2

    .line 153
    const/4 v3, 0x1

    .line 154
    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;-><init>(Landroid/view/ViewGroup;ZI)V

    .line 155
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mIconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    .line 158
    return-void
    .line 160
.end method

.method public final onMiuiThemeChanged(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->themeChanged()V

    .line 2
    return-void
    .line 5
.end method

.method public final onPromptInfoChanged(Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPromptInfo;Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$AndroidPromptInfo;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mIsPrivacyPromptShowing:Z

    .line 7
    if-eq p2, p1, :cond_1

    .line 9
    iput-boolean p1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mIsPrivacyPromptShowing:Z

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->updateCarrierVisibility()V

    .line 13
    :cond_1
    return-void
    .line 16
.end method

.method public final onRegionChanged(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mRegion:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->updateCarrierVisibility()V

    .line 4
    return-void
    .line 7
.end method

.method public final onSuperSaveModeChange(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mSuperSave:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mSuperSave:Z

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->updateShortCutVisibility()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final onUiModeChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->updateResources()V

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
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f05007d    # @bool/expanded_status_bar_darkmode 'false'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 9
    move-result v0

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    if-eqz v0, :cond_0

    .line 18
    const/high16 v1, 0x3f800000    # 1.0f

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    move v3, v1

    .line 24
    const-class v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 25
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 30
    check-cast v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 31
    invoke-interface {v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getLightModeIconColorSingleTone()I

    .line 33
    move-result v5

    .line 36
    invoke-interface {v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getDarkModeIconColorSingleTone()I

    .line 37
    move-result v6

    .line 40
    if-eqz v0, :cond_1

    .line 41
    move v4, v6

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v4, v5

    .line 45
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    .line 46
    if-eqz v1, :cond_2

    .line 48
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mIconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    .line 53
    if-eqz v1, :cond_3

    .line 55
    xor-int/lit8 v0, v0, 0x1

    .line 57
    invoke-virtual {v1, v4, v0}, Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;->setLight(IZ)V

    .line 59
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mBattery:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    .line 62
    if-eqz v1, :cond_4

    .line 64
    const/4 v7, 0x0

    .line 66
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->onDarkChanged(Ljava/util/ArrayList;FIIIZ)V

    .line 67
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->updateResources()V

    .line 70
    return-void
    .line 73
.end method

.method public final updateCarrierVisibility()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mOrientation:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_2

    .line 6
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->CN_CUSTOMIZATION_TEST:Z

    .line 8
    if-nez v0, :cond_1

    .line 10
    const-string v0, "TW"

    .line 12
    iget-object v3, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mRegion:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 22
    if-eqz v0, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    move v0, v1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    move v0, v2

    .line 29
    :goto_1
    if-eqz v0, :cond_2

    .line 30
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mIsPrivacyPromptShowing:Z

    .line 32
    if-nez v0, :cond_2

    .line 34
    goto :goto_2

    .line 36
    :cond_2
    move v2, v1

    .line 37
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    .line 38
    const/16 v3, 0x8

    .line 40
    if-eqz v0, :cond_4

    .line 42
    if-eqz v2, :cond_3

    .line 44
    move v4, v1

    .line 46
    goto :goto_3

    .line 47
    :cond_3
    move v4, v3

    .line 48
    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 52
    if-eqz v0, :cond_6

    .line 54
    if-eqz v2, :cond_5

    .line 56
    move v4, v1

    .line 58
    goto :goto_4

    .line 59
    :cond_5
    move v4, v3

    .line 60
    :goto_4
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    .line 61
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mHorizontalDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 64
    if-eqz p0, :cond_8

    .line 66
    if-eqz v2, :cond_7

    .line 68
    move v1, v3

    .line 70
    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    .line 71
    :cond_8
    return-void
    .line 74
.end method

.method public final updateLayout()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mOrientation:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object v1

    .line 11
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 12
    if-ne v0, v1, :cond_0

    .line 14
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    move-result-object v1

    .line 28
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 29
    iput v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mOrientation:I

    .line 31
    const/4 v2, 0x1

    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mVerticalInfo:Landroid/view/View;

    .line 36
    const/4 v3, 0x0

    .line 38
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 39
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    .line 42
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 44
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mHorizontalDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 47
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/views/MiuiClock;->setClockMode(I)V

    .line 49
    goto :goto_0

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mVerticalInfo:Landroid/view/View;

    .line 53
    const/16 v2, 0x8

    .line 55
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    .line 60
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 62
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mHorizontalDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 65
    const/4 v2, 0x2

    .line 67
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/views/MiuiClock;->setClockMode(I)V

    .line 68
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->updateCarrierVisibility()V

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSHeaderView;->updateShortCutVisibility()V

    .line 74
    const v1, 0x7f070dfa    # @dimen/notification_side_paddings '14.0dp'

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 80
    move-result v1

    .line 83
    const v2, 0x7f070fab    # @dimen/qs_header_top_padding '12.0dp'

    .line 84
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 87
    move-result v2

    .line 90
    const v3, 0x7f07033b    # @dimen/expanded_notification_header_bottom '9.45dp'

    .line 91
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 94
    move-result v0

    .line 97
    invoke-virtual {p0, v1, v2, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 98
    return-void
    .line 101
.end method

.method public final updateResources()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mShortCut:Landroid/widget/ImageView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 9
    const v2, 0x7f081697    # @drawable/notch_settings 'res/drawable/notch_settings.xml'

    .line 10
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 20
    if-eqz v0, :cond_1

    .line 22
    const v1, 0x7f140482    # @style/TextAppearance.StatusBar.Expanded.Clock.QuickSettingTime

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 30
    const v1, 0x7f140481    # @style/TextAppearance.StatusBar.Expanded.Clock.QuickSettingDate

    .line 32
    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mHorizontalDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 40
    if-eqz v0, :cond_3

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 44
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    move-result-object v0

    .line 54
    const v1, 0x7f050085    # @bool/header_big_time_use_system_font 'false'

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 58
    move-result v0

    .line 61
    if-nez v0, :cond_4

    .line 62
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 64
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 68
    move-result-object v0

    .line 71
    const-string v1, "fonts/MiClock-Light.otf"

    .line 72
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 74
    move-result-object v0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mBigTime:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 78
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_0

    .line 83
    :catch_0
    move-exception p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    :cond_4
    :goto_0
    return-void
    .line 88
.end method

.method public final updateShortCutVisibility()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mShortCut:Landroid/widget/ImageView;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mOrientation:I

    .line 6
    const/4 v2, 0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mSuperSave:Z

    .line 11
    if-nez v1, :cond_0

    .line 13
    iget p0, p0, Lcom/android/systemui/qs/MiuiQSHeaderView;->mDisable2:I

    .line 15
    and-int/2addr p0, v2

    .line 17
    if-nez p0, :cond_0

    .line 18
    const/4 p0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 p0, 0x8

    .line 22
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    :cond_1
    return-void
    .line 27
.end method
