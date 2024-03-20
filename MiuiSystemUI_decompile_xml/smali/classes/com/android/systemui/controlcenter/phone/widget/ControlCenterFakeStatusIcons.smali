.class public final Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;
.super Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/miui/statusbar/ControlCenterStatusBarView;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public battery:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

.field public iconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

.field public final mAreas:Ljava/util/ArrayList;

.field public mControlPanelWindowManager:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

.field public mDarkColor:I

.field public mDarkIntensity:F

.field public mIsDrip:Z

.field public mIsFullScreen:Z

.field public mKeyguardStatusBarColor:I

.field public mKeyguardStatusBarDark:Z

.field public mKeyguardStatusBarIntensity:F

.field public mLightColor:I

.field public mStatusBarState:I

.field public mUseTint:Z

.field public statusBarInner:Landroid/widget/LinearLayout;

.field public statusIcons:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mAreas:Ljava/util/ArrayList;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 2

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
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 18
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 24
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 26
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 29
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 35
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 37
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 40
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 45
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 46
    iget-object v1, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->iconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    .line 48
    if-nez v1, :cond_0

    .line 50
    const/4 v1, 0x0

    .line 52
    :cond_0
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 53
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->updateHeaderColor()V

    .line 58
    return-void
    .line 61
.end method

.method public final onDarkChanged(Ljava/util/ArrayList;FIIIZ)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mDarkIntensity:F

    .line 2
    iput p4, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mLightColor:I

    .line 4
    iput p5, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mDarkColor:I

    .line 6
    iput-boolean p6, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mUseTint:Z

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->updateHeaderColor()V

    .line 10
    return-void
    .line 13
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
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 18
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 24
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 26
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 29
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 35
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 37
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 40
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 45
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 46
    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->iconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    .line 48
    if-nez p0, :cond_0

    .line 50
    const/4 p0, 0x0

    .line 52
    :cond_0
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 53
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 55
    return-void
    .line 58
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
    iput-object v0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->battery:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    .line 14
    const v0, 0x7f0a08dd    # @id/statusIcons

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/LinearLayout;

    .line 23
    iput-object v0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->statusIcons:Landroid/widget/LinearLayout;

    .line 25
    const v0, 0x7f0a08ee    # @id/status_icons_container

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/LinearLayout;

    .line 34
    iput-object v0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->statusBarInner:Landroid/widget/LinearLayout;

    .line 36
    new-instance v0, Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    .line 38
    iget-object v1, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->statusIcons:Landroid/widget/LinearLayout;

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
    iput-object v0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->iconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    .line 61
    sget-object v1, Lcom/android/systemui/statusbar/phone/MiuiIconManagerUtils;->RIGHT_BLOCK_LIST:Ljava/util/ArrayList;

    .line 63
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 65
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mBlockList:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 70
    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 75
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 78
    if-eqz v1, :cond_2

    .line 80
    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 82
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->refreshIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 84
    :cond_2
    const-class v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 87
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 89
    move-result-object v0

    .line 92
    check-cast v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 93
    iput-object v0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mControlPanelWindowManager:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 95
    return-void
    .line 97
.end method

.method public final onFullscreenStateChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mControlPanelWindowManager:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->isExpand:Z

    .line 6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    return-void

    .line 23
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mIsFullScreen:Z

    .line 24
    if-eq v0, p1, :cond_2

    .line 26
    iput-boolean p1, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mIsFullScreen:Z

    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->updateHeaderColor()V

    .line 30
    return-void
    .line 33
.end method

.method public final onMiuiThemeChanged(ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->updateHeaderColor()V

    .line 2
    return-void
    .line 5
.end method

.method public final setIsDrip(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mIsDrip:Z

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mIsDrip:Z

    .line 6
    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->iconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    .line 8
    if-nez p0, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->setDripEnd(Z)V

    .line 13
    :cond_1
    return-void
    .line 16
.end method

.method public final setKeyguardStatusBarColors(ZIF)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mKeyguardStatusBarDark:Z

    .line 2
    if-ne v0, p1, :cond_1

    .line 4
    iget v0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mKeyguardStatusBarColor:I

    .line 6
    if-ne v0, p2, :cond_1

    .line 8
    iget v0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mKeyguardStatusBarIntensity:F

    .line 10
    cmpg-float v0, v0, p3

    .line 12
    if-nez v0, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-nez v0, :cond_2

    .line 19
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mKeyguardStatusBarDark:Z

    .line 21
    iput p2, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mKeyguardStatusBarColor:I

    .line 23
    iput p3, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mKeyguardStatusBarIntensity:F

    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->updateHeaderColor()V

    .line 27
    :cond_2
    return-void
    .line 30
.end method

.method public setListening(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setStatusBarState(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mStatusBarState:I

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput p1, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mStatusBarState:I

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->updateHeaderColor()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final updateHeaderColor()V
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mStatusBarState:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_7

    .line 6
    iget v0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mDarkIntensity:F

    .line 8
    const/4 v3, 0x0

    .line 10
    cmpl-float v0, v0, v3

    .line 11
    const/4 v4, 0x0

    .line 13
    if-lez v0, :cond_0

    .line 14
    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mIsFullScreen:Z

    .line 16
    if-nez v0, :cond_0

    .line 18
    move v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v4

    .line 22
    :goto_0
    if-eqz v0, :cond_1

    .line 23
    iget v5, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mDarkColor:I

    .line 25
    goto :goto_1

    .line 27
    :cond_1
    iget v5, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mLightColor:I

    .line 28
    :goto_1
    move v11, v5

    .line 30
    iget-boolean v5, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mIsFullScreen:Z

    .line 31
    if-nez v5, :cond_3

    .line 33
    if-nez v0, :cond_2

    .line 35
    goto :goto_2

    .line 37
    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    .line 38
    :cond_3
    :goto_2
    move v8, v3

    .line 40
    iget-boolean v3, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mUseTint:Z

    .line 41
    if-eqz v3, :cond_4

    .line 43
    if-nez v5, :cond_4

    .line 45
    move v12, v2

    .line 47
    goto :goto_3

    .line 48
    :cond_4
    move v12, v4

    .line 49
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->iconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    .line 50
    if-nez v3, :cond_5

    .line 52
    move-object v3, v1

    .line 54
    :cond_5
    xor-int/2addr v0, v2

    .line 55
    invoke-virtual {v3, v11, v0}, Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;->setLight(IZ)V

    .line 56
    iget-object v0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->battery:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    .line 59
    if-nez v0, :cond_6

    .line 61
    move-object v6, v1

    .line 63
    goto :goto_4

    .line 64
    :cond_6
    move-object v6, v0

    .line 65
    :goto_4
    iget-object v7, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mAreas:Ljava/util/ArrayList;

    .line 66
    move v9, v11

    .line 68
    move v10, v11

    .line 69
    invoke-virtual/range {v6 .. v12}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->onDarkChanged(Ljava/util/ArrayList;FIIIZ)V

    .line 70
    goto :goto_6

    .line 73
    :cond_7
    if-ne v0, v2, :cond_a

    .line 74
    iget-object v0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->iconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    .line 76
    if-nez v0, :cond_8

    .line 78
    move-object v0, v1

    .line 80
    :cond_8
    iget-boolean v3, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mKeyguardStatusBarDark:Z

    .line 81
    xor-int/2addr v2, v3

    .line 83
    iget v3, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mKeyguardStatusBarColor:I

    .line 84
    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;->setLight(IZ)V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->battery:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    .line 89
    if-nez v0, :cond_9

    .line 91
    move-object v2, v1

    .line 93
    goto :goto_5

    .line 94
    :cond_9
    move-object v2, v0

    .line 95
    :goto_5
    iget-object v3, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mAreas:Ljava/util/ArrayList;

    .line 96
    iget v4, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mKeyguardStatusBarIntensity:F

    .line 98
    iget v7, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->mKeyguardStatusBarColor:I

    .line 100
    const/4 v8, 0x0

    .line 102
    move v5, v7

    .line 103
    move v6, v7

    .line 104
    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->onDarkChanged(Ljava/util/ArrayList;FIIIZ)V

    .line 105
    :cond_a
    :goto_6
    return-void
    .line 108
.end method
