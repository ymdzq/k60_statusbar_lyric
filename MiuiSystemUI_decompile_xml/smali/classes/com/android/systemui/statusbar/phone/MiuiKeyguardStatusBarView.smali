.class public Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;
.super Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/systemui/controller/ForceBlackObserver$Callback;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public mDisable2:I

.field public mFakeStatusBarViewController:Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;

.field public mForceBlack:Z

.field public mKeyguardLeftSide:Landroid/view/View;

.field public final mKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

.field public mLightLockScreenWallpaper:Z

.field public mStatusBarPrivacyArea:Landroid/widget/LinearLayout;

.field public mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

.field public mStatusBarPromptContainer:Landroid/widget/FrameLayout;

.field public mTintedIconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mLightLockScreenWallpaper:Z

    .line 6
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mForceBlack:Z

    .line 8
    new-instance p1, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$1;

    .line 10
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;)V

    .line 12
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final disable(IIIZ)V
    .locals 0

    .line 1
    if-nez p1, :cond_3

    .line 2
    iget p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDisable2:I

    .line 4
    if-eq p1, p3, :cond_3

    .line 6
    iput p3, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mDisable2:I

    .line 8
    and-int/lit8 p1, p3, 0x2

    .line 10
    if-nez p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    .line 14
    const/4 p2, 0x0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardLeftSide:Landroid/view/View;

    .line 22
    if-eqz p0, :cond_3

    .line 24
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    .line 30
    const/4 p2, 0x4

    .line 32
    if-eqz p1, :cond_2

    .line 33
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 35
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardLeftSide:Landroid/view/View;

    .line 38
    if-eqz p0, :cond_3

    .line 40
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    :cond_3
    :goto_0
    return-void
    .line 45
.end method

.method public final miuiOnAttachedToWindow()V
    .locals 4

    .line 1
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 8
    invoke-interface {v0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getLightModeIconColorSingleTone()I

    .line 10
    move-result v0

    .line 13
    const-class v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 14
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 20
    iget-boolean v1, v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mStatusBarIsDeep:Z

    .line 22
    xor-int/lit8 v1, v1, 0x1

    .line 24
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mLightLockScreenWallpaper:Z

    .line 26
    new-instance v1, Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    .line 28
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconContainer:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    .line 30
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mLightLockScreenWallpaper:Z

    .line 32
    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;-><init>(Landroid/view/ViewGroup;ZI)V

    .line 34
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    .line 37
    sget-object v0, Lcom/android/systemui/statusbar/phone/MiuiIconManagerUtils;->RIGHT_BLOCK_LIST:Ljava/util/ArrayList;

    .line 39
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 41
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mBlockList:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 46
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    :cond_0
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 54
    if-eqz v0, :cond_1

    .line 56
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 58
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->refreshIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 60
    :cond_1
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 63
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    move-result-object v0

    .line 68
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 69
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    .line 71
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 73
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 75
    const-class v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 78
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 83
    check-cast v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 84
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    .line 86
    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->addPromptContainer(Landroid/widget/LinearLayout;I)V

    .line 89
    return-void
    .line 92
.end method

.method public final onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 2
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 11
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 13
    const-class v0, Lcom/miui/systemui/controller/ForceBlackObserver;

    .line 16
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Lcom/miui/systemui/controller/ForceBlackObserver;

    .line 22
    invoke-virtual {v1, p0}, Lcom/miui/systemui/controller/ForceBlackObserver;->addCallback(Lcom/miui/systemui/controller/ForceBlackObserver$Callback;)V

    .line 24
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 30
    check-cast v0, Lcom/miui/systemui/controller/ForceBlackObserver;

    .line 31
    iget-boolean v0, v0, Lcom/miui/systemui/controller/ForceBlackObserver;->mForceBlack:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mForceBlack:Z

    .line 35
    const-class v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 37
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 43
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->registerCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 47
    const-class v0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;

    .line 50
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 55
    check-cast v0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;

    .line 56
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mFakeStatusBarViewController:Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;

    .line 58
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Landroid/view/View;

    .line 60
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->keyguardStatusIcons:Landroid/view/View;

    .line 62
    if-ne v2, v1, :cond_0

    .line 64
    goto :goto_0

    .line 66
    :cond_0
    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->keyguardStatusIcons:Landroid/view/View;

    .line 67
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->adjustRealStatusIcons()V

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mFakeStatusBarViewController:Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;

    .line 72
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    .line 74
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->keyguardPromptIcon:Landroid/view/View;

    .line 76
    if-ne v1, p0, :cond_1

    .line 78
    goto :goto_1

    .line 80
    :cond_1
    iput-object p0, v0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->keyguardPromptIcon:Landroid/view/View;

    .line 81
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->adjustRealPromptIcon()V

    .line 83
    :goto_1
    return-void
    .line 86
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->loadDimens()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->updateViewStatusBarPaddingTop(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardLeftSide:Landroid/view/View;

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->updateViewStatusBarPaddingTop(Landroid/view/View;)V

    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mStatusBarPrivacyArea:Landroid/widget/LinearLayout;

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->updateViewStatusBarPaddingTop(Landroid/view/View;)V

    .line 17
    return-void
    .line 20
.end method

.method public final onDetachedFromWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    const-class v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 11
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->removeCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 15
    const-class v0, Lcom/miui/systemui/controller/ForceBlackObserver;

    .line 18
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Lcom/miui/systemui/controller/ForceBlackObserver;

    .line 24
    iget-object v1, v0, Lcom/miui/systemui/controller/ForceBlackObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 26
    monitor-enter v1

    .line 28
    :try_start_0
    iget-object v2, v0, Lcom/miui/systemui/controller/ForceBlackObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result v2

    .line 34
    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 35
    if-ltz v2, :cond_1

    .line 37
    iget-object v3, v0, Lcom/miui/systemui/controller/ForceBlackObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 44
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 45
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 50
    if-ne v3, p0, :cond_0

    .line 51
    iget-object v3, v0, Lcom/miui/systemui/controller/ForceBlackObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 55
    goto :goto_0

    .line 58
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 60
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    move-result-object v0

    .line 65
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 66
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    .line 68
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 70
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 72
    const-class v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 75
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 77
    move-result-object v0

    .line 80
    check-cast v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    .line 81
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    .line 83
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->removePromptContainer(Landroid/widget/LinearLayout;)V

    .line 85
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 88
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 90
    move-result-object v0

    .line 93
    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 94
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 96
    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mFakeStatusBarViewController:Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;

    .line 100
    return-void

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    throw p0
    .line 105
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0734    # @id/privacy_container

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/LinearLayout;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mStatusBarPrivacyContainer:Landroid/widget/LinearLayout;

    .line 14
    const v0, 0x7f0a0731    # @id/privacy_area

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/LinearLayout;

    .line 23
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mStatusBarPrivacyArea:Landroid/widget/LinearLayout;

    .line 25
    const v0, 0x7f0a0747    # @id/prompt_container

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/FrameLayout;

    .line 34
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mStatusBarPromptContainer:Landroid/widget/FrameLayout;

    .line 36
    const v0, 0x7f0a04a2    # @id/keyguard_status_bar_left_side

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardLeftSide:Landroid/view/View;

    .line 45
    const-class v0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;

    .line 47
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 52
    check-cast v0, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;

    .line 53
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mFakeStatusBarViewController:Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;

    .line 55
    return-void
    .line 57
.end method

.method public final onForceBlackChange(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mForceBlack:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->updateIconsAndTextColors()V

    .line 4
    return-void
    .line 7
.end method

.method public final onMiuiThemeChanged(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 6
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 12
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    .line 14
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 18
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 24
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 25
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    .line 27
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 29
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->updateIconsAndTextColors()V

    .line 34
    return-void
    .line 37
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    const-class v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 8
    invoke-virtual {v0}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->isExpandable()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    const-class v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 16
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 22
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    .line 24
    move-result v1

    .line 27
    int-to-float v1, v1

    .line 28
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->dispatchToControlPanel(Landroid/view/MotionEvent;F)Z

    .line 29
    move-result v1

    .line 32
    const/4 v2, 0x0

    .line 33
    if-nez v1, :cond_0

    .line 34
    iput-boolean v2, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->transToControlPanel:Z

    .line 36
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 38
    move-result p0

    .line 41
    return p0

    .line 42
    :cond_0
    const/4 p0, 0x1

    .line 43
    iput-boolean p0, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->transToControlPanel:Z

    .line 44
    return v2

    .line 46
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 47
    move-result p0

    .line 50
    return p0
    .line 51
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

.method public final updateIconsAndTextColors()V
    .locals 11

    .line 1
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 8
    invoke-interface {v0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getLightModeIconColorSingleTone()I

    .line 10
    move-result v8

    .line 13
    invoke-interface {v0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getDarkModeIconColorSingleTone()I

    .line 14
    move-result v0

    .line 17
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->isDefaultLockScreenTheme()Z

    .line 18
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mForceBlack:Z

    .line 24
    if-nez v1, :cond_0

    .line 26
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mLightLockScreenWallpaper:Z

    .line 28
    if-eqz v1, :cond_0

    .line 30
    const/4 v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mLightLockScreenWallpaper:Z

    .line 36
    :goto_0
    if-eqz v1, :cond_2

    .line 38
    move v9, v0

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move v9, v8

    .line 42
    :goto_1
    if-eqz v1, :cond_3

    .line 43
    const/high16 v2, 0x3f800000    # 1.0f

    .line 45
    goto :goto_2

    .line 47
    :cond_3
    const/4 v2, 0x0

    .line 48
    :goto_2
    move v10, v2

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    const-string/jumbo v3, "updateIconsAndTextColors: dark = "

    .line 52
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    const-string v3, ", iconColor = "

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v3, ", intensity = "

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 80
    const-string v3, "MiuiKeyguardStatusBarView"

    .line 81
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    .line 86
    if-eqz v2, :cond_4

    .line 88
    xor-int/lit8 v3, v1, 0x1

    .line 90
    invoke-virtual {v2, v9, v3}, Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;->setLight(IZ)V

    .line 92
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mFakeStatusBarViewController:Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;

    .line 95
    if-eqz v2, :cond_5

    .line 97
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->getFakeStatusIcons()Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;

    .line 99
    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->fakeStatusIcons:Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;

    .line 102
    if-eqz v2, :cond_5

    .line 104
    invoke-virtual {v2, v1, v9, v10}, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->setKeyguardStatusBarColors(ZIF)V

    .line 106
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmptyTintRect:Ljava/util/ArrayList;

    .line 109
    const v1, 0x7f0a0120    # @id/battery

    .line 111
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 114
    move-result-object v1

    .line 117
    instance-of v3, v1, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    .line 118
    if-eqz v3, :cond_6

    .line 120
    check-cast v1, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    .line 122
    const/4 v7, 0x0

    .line 124
    move v3, v10

    .line 125
    move v4, v9

    .line 126
    move v5, v8

    .line 127
    move v6, v0

    .line 128
    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Ljava/util/ArrayList;FIIIZ)V

    .line 129
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mEmptyTintRect:Ljava/util/ArrayList;

    .line 132
    const v1, 0x7f0a01fb    # @id/clock

    .line 134
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 137
    move-result-object p0

    .line 140
    instance-of v1, p0, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    .line 141
    if-eqz v1, :cond_7

    .line 143
    move-object v1, p0

    .line 145
    check-cast v1, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;

    .line 146
    const/4 v7, 0x0

    .line 148
    move v3, v10

    .line 149
    move v4, v9

    .line 150
    move v5, v8

    .line 151
    move v6, v0

    .line 152
    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Ljava/util/ArrayList;FIIIZ)V

    .line 153
    :cond_7
    return-void
    .line 156
.end method

.method public final updateKeyguardStatusBarHeight()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/util/Utils;->getStatusBarHeaderHeightKeyguard(Landroid/content/Context;)I

    .line 4
    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object v1

    .line 11
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 12
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 14
    if-eq v2, v0, :cond_0

    .line 16
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 18
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    :cond_0
    return-void
    .line 23
.end method

.method public final updateLayoutParamsForCutout()Z
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateLayoutParamsForCutout()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    .line 8
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->setDripEnd(Z)V

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardLeftSide:Landroid/view/View;

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    move-result-object p0

    .line 19
    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 20
    const/16 v1, 0x10

    .line 22
    const v2, 0x7f0a0280    # @id/cutout_space_view

    .line 24
    invoke-virtual {p0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 27
    :cond_0
    return v0
    .line 30
.end method

.method public final updateLayoutParamsNoCutout()Z
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateLayoutParamsNoCutout()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    .line 8
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->setDripEnd(Z)V

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView;->mKeyguardLeftSide:Landroid/view/View;

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    move-result-object p0

    .line 19
    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 20
    const/16 v1, 0x10

    .line 22
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 24
    :cond_0
    return v0
    .line 27
.end method

.method public final updateViewStatusBarPaddingTop(Landroid/view/View;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object p0

    .line 11
    const v1, 0x7f0710f1    # @dimen/status_bar_padding_top '0.0dp'

    .line 12
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    move-result p0

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 19
    move-result v1

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 23
    move-result v2

    .line 26
    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 27
    :cond_0
    return-void
    .line 30
.end method
