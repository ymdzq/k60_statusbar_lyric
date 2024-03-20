.class public final Lcom/android/systemui/controlcenter/phone/widget/ControlCenterStatusBarIcon;
.super Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/miui/statusbar/ControlCenterStatusBarView;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public battery:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

.field public iconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

.field public statusBarArea:Landroid/widget/LinearLayout;

.field public statusIcons:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

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
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 18
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 24
    iget-object v1, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterStatusBarIcon;->iconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    .line 26
    const/4 v2, 0x0

    .line 28
    if-nez v1, :cond_0

    .line 29
    move-object v1, v2

    .line 31
    :cond_0
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 32
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 34
    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterStatusBarIcon;->statusIcons:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    .line 37
    if-nez p0, :cond_1

    .line 39
    goto :goto_0

    .line 41
    :cond_1
    move-object v2, p0

    .line 42
    :goto_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/MiuiIconManagerUtils;->CONTROL_CENTER_BLOCK_LIST:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->setIgnoredSlots(Ljava/util/List;)V

    .line 45
    return-void
    .line 48
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterStatusBarIcon;->statusBarArea:Landroid/widget/LinearLayout;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    move-object v0, v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 12
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v3

    .line 19
    const v4, 0x7f0710de    # @dimen/status_bar_icon_height '20.3636dp'

    .line 20
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    move-result v3

    .line 26
    if-eq v2, v3, :cond_2

    .line 27
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 29
    move-result-object v2

    .line 32
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    move-result v2

    .line 36
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 37
    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterStatusBarIcon;->statusBarArea:Landroid/widget/LinearLayout;

    .line 39
    if-nez p0, :cond_1

    .line 41
    goto :goto_0

    .line 43
    :cond_1
    move-object v1, p0

    .line 44
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    :cond_2
    return-void
    .line 48
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

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
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 15
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 18
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 24
    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterStatusBarIcon;->iconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    .line 26
    if-nez p0, :cond_0

    .line 28
    const/4 p0, 0x0

    .line 30
    :cond_0
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 31
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 33
    return-void
    .line 36
.end method

.method public final onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0120    # @id/battery

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterStatusBarIcon;->battery:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    .line 14
    const v0, 0x7f0a08dd    # @id/statusIcons

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    .line 23
    iput-object v0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterStatusBarIcon;->statusIcons:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    .line 25
    const v0, 0x7f0a08df    # @id/status_bar_area

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/LinearLayout;

    .line 34
    iput-object v0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterStatusBarIcon;->statusBarArea:Landroid/widget/LinearLayout;

    .line 36
    new-instance v0, Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    .line 38
    iget-object v1, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterStatusBarIcon;->statusIcons:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    .line 40
    if-nez v1, :cond_0

    .line 42
    const/4 v1, 0x0

    .line 44
    :cond_0
    const-class v2, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 45
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 50
    check-cast v2, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 51
    invoke-interface {v2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getLightModeIconColorSingleTone()I

    .line 53
    move-result v2

    .line 56
    const/4 v3, 0x1

    .line 57
    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;-><init>(Landroid/view/ViewGroup;ZI)V

    .line 58
    iput-object v0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterStatusBarIcon;->iconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterStatusBarIcon;->updateHeaderColor()V

    .line 63
    return-void
    .line 66
.end method

.method public final onMiuiThemeChanged(ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterStatusBarIcon;->updateHeaderColor()V

    .line 2
    return-void
    .line 5
.end method

.method public setListening(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final updateHeaderColor()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

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
    iget-object v1, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterStatusBarIcon;->iconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    .line 46
    const/4 v7, 0x0

    .line 48
    if-nez v1, :cond_2

    .line 49
    move-object v1, v7

    .line 51
    :cond_2
    xor-int/lit8 v0, v0, 0x1

    .line 52
    invoke-virtual {v1, v4, v0}, Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;->setLight(IZ)V

    .line 54
    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterStatusBarIcon;->battery:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    .line 57
    if-nez p0, :cond_3

    .line 59
    move-object v1, v7

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    move-object v1, p0

    .line 63
    :goto_2
    const/4 v7, 0x0

    .line 64
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->onDarkChanged(Ljava/util/ArrayList;FIIIZ)V

    .line 65
    return-void
    .line 68
.end method
