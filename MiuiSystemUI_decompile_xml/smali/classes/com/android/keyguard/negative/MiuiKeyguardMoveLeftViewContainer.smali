.class public Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/keyguard/negative/MiuiUWBController$UseUWBCallback;


# instance fields
.field public mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

.field public final mMiuiUWBController:Lcom/android/keyguard/negative/MiuiUWBController;

.field public mUseUWB:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    const-class p1, Lcom/android/keyguard/negative/MiuiUWBController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/negative/MiuiUWBController;

    iput-object p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mMiuiUWBController:Lcom/android/keyguard/negative/MiuiUWBController;

    return-void
.end method


# virtual methods
.method public final inflateLeftView()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

    .line 7
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 12
    iput-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

    .line 15
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mUseUWB:Z

    .line 17
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 26
    move-result-object v0

    .line 29
    const v3, 0x7f0d01b9    # @layout/miui_keyguard_left_view_uwb_layout 'res/layout/miui_keyguard_left_view_uwb_layout.xml'

    .line 30
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftUWBView;

    .line 37
    iput-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

    .line 39
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 41
    goto :goto_0

    .line 44
    :cond_2
    const-class v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 45
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 50
    check-cast v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 51
    iget-boolean v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    .line 53
    if-eqz v0, :cond_3

    .line 55
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 57
    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 61
    move-result-object v0

    .line 64
    const v3, 0x7f0d01b8    # @layout/miui_keyguard_left_view_lock_screen_magazine_layout 'res/layout/miui_keyguard_left_view_lock_screen_magazine_layout.xml'

    .line 65
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 68
    move-result-object v0

    .line 71
    check-cast v0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftLockScreenMagazineView;

    .line 72
    iput-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

    .line 74
    const/4 v1, 0x4

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 77
    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 81
    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 85
    move-result-object v0

    .line 88
    const v3, 0x7f0d01b7    # @layout/miui_keyguard_left_view_control_center_layout 'res/layout/miui_keyguard_left_view_control_center_layout.xml'

    .line 89
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 92
    move-result-object v0

    .line 95
    check-cast v0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 96
    iput-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

    .line 98
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 100
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->setCustomBackground()V

    .line 103
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

    .line 106
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 108
    return-void
    .line 111
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mMiuiUWBController:Lcom/android/keyguard/negative/MiuiUWBController;

    .line 5
    iget-object v0, v0, Lcom/android/keyguard/negative/MiuiUWBController;->mCallbacks:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    const-class p0, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;

    .line 12
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    const-class v0, Lcom/miui/systemui/controller/RegionController;

    .line 23
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 28
    check-cast v0, Lcom/miui/systemui/controller/RegionController;

    .line 29
    invoke-virtual {v0, p0}, Lcom/miui/systemui/controller/RegionController;->addCallback(Lcom/miui/systemui/controller/RegionController$Callback;)V

    .line 31
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 34
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 39
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 40
    iget-object v1, p0, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;->mUpdateMonitorCallback:Lcom/android/keyguard/negative/KeyguardNegative1PageInjector$mUpdateMonitorCallback$1;

    .line 42
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 44
    const-class v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 47
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 52
    check-cast v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 53
    iget-object p0, p0, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;->mMiuiUpdateMonitorCallback:Lcom/android/keyguard/negative/KeyguardNegative1PageInjector$mMiuiUpdateMonitorCallback$1;

    .line 55
    invoke-virtual {v0, p0}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->registerCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 57
    return-void
    .line 60
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mMiuiUWBController:Lcom/android/keyguard/negative/MiuiUWBController;

    .line 5
    iget-object v0, v0, Lcom/android/keyguard/negative/MiuiUWBController;->mCallbacks:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    const-class p0, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;

    .line 12
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    const-class v0, Lcom/miui/systemui/controller/RegionController;

    .line 23
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 28
    check-cast v0, Lcom/miui/systemui/controller/RegionController;

    .line 29
    iget-object v0, v0, Lcom/miui/systemui/controller/RegionController;->mCallbacks:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 33
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 36
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 42
    iget-object v1, p0, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;->mUpdateMonitorCallback:Lcom/android/keyguard/negative/KeyguardNegative1PageInjector$mUpdateMonitorCallback$1;

    .line 44
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 46
    const-class v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 49
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 54
    check-cast v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 55
    iget-object p0, p0, Lcom/android/keyguard/negative/KeyguardNegative1PageInjector;->mMiuiUpdateMonitorCallback:Lcom/android/keyguard/negative/KeyguardNegative1PageInjector$mMiuiUpdateMonitorCallback$1;

    .line 57
    invoke-virtual {v0, p0}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->removeCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 59
    return-void
    .line 62
.end method

.method public setCustomBackground()V
    .locals 1

    .line 3
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCustomBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
