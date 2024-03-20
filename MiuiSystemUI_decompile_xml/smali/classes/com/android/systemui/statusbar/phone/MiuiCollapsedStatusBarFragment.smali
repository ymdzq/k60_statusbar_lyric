.class public final Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;
.super Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/MinimalismModeController$MinimalismModeListener;
.implements Lcom/miui/systemui/controller/RegionController$Callback;
.implements Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$OnWindowChangeListener;
.implements Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifPromptCallback;
.implements Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$HomePrivacyCallback;


# instance fields
.field public mControlPanelExpand:Z

.field public mControlPanelWindowManager:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

.field public mFocusedNotifPromptController:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

.field public mFocusedNotifView:Landroid/view/View;

.field public mHomePrivacyContainer:Landroid/widget/LinearLayout;

.field public mIsFocusedNotifPromptViewShowing:Z

.field public mIsHomePrivacyShowing:Z

.field public mIsHomeToDot:Z

.field public mIsMinimalismModeOn:Z

.field public mIsShowNotifPromptView:Z

.field public mLastIsFocusedNotifPromptViewShowing:Z

.field public mLastIsHomePrivacyShowing:Z

.field public mLastIsHomeToDot:Z

.field public mOriginDisable1:I

.field public mOriginDisable2:I

.field public mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

.field public mRegion:Ljava/lang/String;

.field public mStatusBarPrivacyContainer:Landroid/view/View;

.field public mStatusBarPromptContainer:Landroid/view/View;

.field public final mStringBuilder:Ljava/lang/StringBuilder;

.field public mUseCustomizedAnim:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Factory;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/CollapsedStatusBarViewModel;Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/CollapsedStatusBarViewBinderImpl;Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct/range {p0 .. p19}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;-><init>(Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Factory;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/CollapsedStatusBarViewModel;Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/CollapsedStatusBarViewBinderImpl;Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 3
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mUseCustomizedAnim:Z

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 14
    return-void
    .line 16
.end method


# virtual methods
.method public final animateHide(Landroid/view/View;ZZ)V
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 2
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 9
    const/4 v0, 0x4

    .line 12
    if-nez p2, :cond_1

    .line 13
    const/4 p0, 0x0

    .line 15
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 16
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    goto :goto_0

    .line 25
    :cond_1
    const/4 v3, 0x0

    .line 26
    const-wide/16 v4, 0xa0

    .line 27
    sget-object v6, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 29
    new-instance v7, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda1;

    .line 31
    const/4 p2, 0x2

    .line 33
    invoke-direct {v7, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;II)V

    .line 34
    move-object v1, p0

    .line 37
    move-object v2, p1

    .line 38
    move v8, p3

    .line 39
    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->startAnimation(Landroid/view/View;FJLandroid/animation/TimeInterpolator;Ljava/lang/Runnable;Z)V

    .line 40
    :goto_0
    return-void
    .line 43
.end method

.method public final animateShow(Landroid/view/View;ZZ)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 9
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    if-nez p2, :cond_2

    .line 16
    if-eqz p3, :cond_1

    .line 18
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mUseCustomizedAnim:Z

    .line 20
    if-nez p2, :cond_2

    .line 22
    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 24
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 26
    const/4 p0, 0x0

    .line 29
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 30
    return-void

    .line 33
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    .line 34
    const-wide/16 v3, 0x140

    .line 36
    sget-object v5, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 38
    new-instance v6, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda0;

    .line 40
    const/4 p2, 0x2

    .line 42
    invoke-direct {v6, p2, p1}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 43
    move-object v0, p0

    .line 46
    move-object v1, p1

    .line 47
    move v7, p3

    .line 48
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->startAnimation(Landroid/view/View;FJLandroid/animation/TimeInterpolator;Ljava/lang/Runnable;Z)V

    .line 49
    return-void
    .line 52
.end method

.method public final disable(IIIZ)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOriginDisable1:I

    .line 2
    iput p3, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOriginDisable2:I

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->disable(IIIZ)V

    .line 6
    return-void
    .line 9
.end method

.method public final initOperatorName()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOperatorNameViewController:Lcom/android/systemui/statusbar/OperatorNameViewController;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const v2, 0x7f0a06cf    # @id/operator_name

    .line 11
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Landroid/view/ViewStub;

    .line 18
    const-string v2, "CollapsedStatusBarFragment"

    .line 20
    const-string v3, "initOperatorName: init controller"

    .line 22
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOperatorNameViewControllerFactory:Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;

    .line 27
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 29
    move-result-object v4

    .line 32
    new-instance v0, Lcom/android/systemui/statusbar/OperatorNameViewController;

    .line 33
    iget-object v5, v2, Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;->mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 35
    iget-object v6, v2, Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 37
    iget-object v7, v2, Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 39
    iget-object v8, v2, Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 41
    iget-object v9, v2, Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 43
    move-object v3, v0

    .line 45
    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/statusbar/OperatorNameViewController;-><init>(Landroid/view/View;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/tuner/TunerService;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 46
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOperatorNameViewController:Lcom/android/systemui/statusbar/OperatorNameViewController;

    .line 49
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 54
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 56
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 58
    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOperatorNameViewController:Lcom/android/systemui/statusbar/OperatorNameViewController;

    .line 62
    if-eqz v0, :cond_0

    .line 64
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 66
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateHide(Landroid/view/View;ZZ)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOperatorNameViewController:Lcom/android/systemui/statusbar/OperatorNameViewController;

    .line 71
    if-eqz v0, :cond_3

    .line 73
    const-class v2, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;

    .line 75
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 77
    move-result-object v2

    .line 80
    check-cast v2, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;

    .line 81
    iget-object v2, v2, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mNoMccMncResources:Landroid/content/res/Resources;

    .line 83
    const v3, 0x7f05005a    # @bool/config_showOperatorNameInStatusBar 'false'

    .line 85
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 88
    move-result v2

    .line 91
    if-nez v2, :cond_1

    .line 92
    const-string v2, "SA"

    .line 94
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mRegion:Ljava/lang/String;

    .line 96
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result p0

    .line 101
    if-eqz p0, :cond_2

    .line 102
    :cond_1
    const/4 v1, 0x1

    .line 104
    :cond_2
    iget-boolean p0, v0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mShowOperatorNameOnStatusBar:Z

    .line 105
    if-eq p0, v1, :cond_3

    .line 107
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mShowOperatorNameOnStatusBar:Z

    .line 109
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/OperatorNameViewController;->update()V

    .line 111
    :cond_3
    return-void
    .line 114
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    const-class p1, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 5
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 10
    check-cast p1, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 11
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mControlPanelWindowManager:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 13
    const-class p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 15
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 20
    check-cast p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotifPromptController:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 23
    return-void
    .line 25
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    const p0, 0x7f0d0352    # @layout/status_bar 'res/layout/status_bar.xml'

    .line 2
    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    move-result-object p0

    .line 9
    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    .line 10
    if-eqz p1, :cond_0

    .line 12
    const p1, 0x7f0a06df    # @id/pad_clock

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 20
    check-cast p1, Landroid/view/ViewStub;

    .line 21
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 23
    :cond_0
    return-object p0
    .line 26
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mControlPanelWindowManager:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 5
    iget-object v0, v0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->onWindowChangeListeners:Landroid/util/ArraySet;

    .line 7
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 9
    const-class v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 12
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 18
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mCallbacks:Ljava/util/List;

    .line 20
    check-cast v0, Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 24
    const-class v0, Lcom/android/systemui/statusbar/policy/MinimalismModeController;

    .line 27
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/systemui/statusbar/policy/MinimalismModeController;

    .line 33
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MinimalismModeController;->mListeners:Ljava/util/List;

    .line 35
    check-cast v0, Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 39
    const-class v0, Lcom/miui/systemui/controller/RegionController;

    .line 42
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 47
    check-cast v0, Lcom/miui/systemui/controller/RegionController;

    .line 48
    iget-object v0, v0, Lcom/miui/systemui/controller/RegionController;->mCallbacks:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 52
    const-class v0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;

    .line 55
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    move-result-object v0

    .line 60
    check-cast v0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;

    .line 61
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mCallbacks:Ljava/util/List;

    .line 63
    check-cast v0, Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public final onDozingChanged(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onExpandChange(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mControlPanelExpand:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mControlPanelExpand:Z

    .line 6
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 18
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 24
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 28
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 32
    move-result p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    iget p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOriginDisable1:I

    .line 38
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOriginDisable2:I

    .line 40
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, v1, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->disable(IIIZ)V

    .line 43
    :cond_0
    return-void
    .line 46
.end method

.method public final onFocusedNotifVisibilityChanged(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsFocusedNotifPromptViewShowing:Z

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsFocusedNotifPromptViewShowing:Z

    .line 7
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mUseCustomizedAnim:Z

    .line 10
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 22
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 32
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 36
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOriginDisable1:I

    .line 42
    iget v1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOriginDisable2:I

    .line 44
    const/4 v2, 0x0

    .line 46
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->disable(IIIZ)V

    .line 47
    :cond_1
    return-void
    .line 50
.end method

.method public final onHomePrivacyVisibilityChanged(ZZ)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "setIsHomePrivacyShowing mIsHomePrivacyShowing: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsHomePrivacyShowing:Z

    .line 10
    const-string v2, " isHomePrivacyShowing: "

    .line 12
    const-string v3, " isHomeToDot"

    .line 14
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 16
    const-string v1, "CollapsedStatusBarFragment"

    .line 19
    invoke-static {v0, p2, v1}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 21
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsHomePrivacyShowing:Z

    .line 24
    if-ne v0, p1, :cond_0

    .line 26
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsHomeToDot:Z

    .line 28
    if-ne v0, p2, :cond_0

    .line 30
    return-void

    .line 32
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsHomePrivacyShowing:Z

    .line 33
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsHomeToDot:Z

    .line 35
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 37
    move-result-object p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 43
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 47
    move-result-object p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 53
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 57
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 61
    move-result p1

    .line 64
    if-nez p1, :cond_1

    .line 65
    iget p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOriginDisable1:I

    .line 67
    iget p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOriginDisable2:I

    .line 69
    const/4 v0, 0x1

    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->disable(IIIZ)V

    .line 73
    :cond_1
    return-void
    .line 76
.end method

.method public final onMinimalismModeChanged(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsMinimalismModeOn:Z

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsMinimalismModeOn:Z

    .line 7
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 19
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 25
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 29
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 33
    move-result p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    iget p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOriginDisable1:I

    .line 39
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOriginDisable2:I

    .line 41
    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0, v1, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->disable(IIIZ)V

    .line 44
    :cond_1
    return-void
    .line 47
.end method

.method public final onRegionChanged(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mRegion:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->initOperatorName()V

    .line 4
    return-void
    .line 7
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    .line 5
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastModifiedVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    .line 11
    iget-boolean v5, p2, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showNotifPromptView:Z

    .line 13
    move-object v0, p1

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;-><init>(ZZZZZ)V

    .line 16
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastModifiedVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    .line 19
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotifPromptController:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 21
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIsFocusedNotifPromptShowing:Z

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->onFocusedNotifVisibilityChanged(Z)V

    .line 25
    return-void
    .line 28
.end method

.method public final showClock(Z)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiStatusBarClock;

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiStatusBarClock;

    .line 11
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 21
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 25
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    .line 30
    :cond_0
    if-nez p1, :cond_1

    .line 33
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mUseCustomizedAnim:Z

    .line 35
    if-nez p1, :cond_1

    .line 37
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiStatusBarClock;

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 43
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiStatusBarClock;

    .line 46
    const/4 v1, 0x0

    .line 48
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 49
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 52
    if-eqz p1, :cond_2

    .line 54
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 61
    goto :goto_0

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiStatusBarClock;

    .line 65
    const/high16 v3, 0x3f800000    # 1.0f

    .line 67
    const-wide/16 v4, 0x140

    .line 69
    sget-object v11, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 71
    new-instance v7, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda0;

    .line 73
    invoke-direct {v7, v1, p0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 75
    const/4 v8, 0x1

    .line 78
    move-object v1, p0

    .line 79
    move-object v6, v11

    .line 80
    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->startAnimation(Landroid/view/View;FJLandroid/animation/TimeInterpolator;Ljava/lang/Runnable;Z)V

    .line 81
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 84
    const/high16 v8, 0x3f800000    # 1.0f

    .line 86
    const-wide/16 v9, 0x140

    .line 88
    new-instance v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda0;

    .line 90
    const/4 p1, 0x1

    .line 92
    invoke-direct {v12, p1, p0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 93
    const/4 v13, 0x1

    .line 96
    move-object v6, p0

    .line 97
    invoke-virtual/range {v6 .. v13}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->startAnimation(Landroid/view/View;FJLandroid/animation/TimeInterpolator;Ljava/lang/Runnable;Z)V

    .line 98
    :cond_2
    :goto_0
    return-void
    .line 101
.end method

.method public final startAnimation(Landroid/view/View;FJLandroid/animation/TimeInterpolator;Ljava/lang/Runnable;Z)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {v0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 13
    move-result-object p3

    .line 16
    invoke-virtual {p3, p5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 17
    move-result-object p3

    .line 20
    invoke-virtual {p3, p6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 21
    move-result-object p3

    .line 24
    const/4 p4, 0x0

    .line 25
    invoke-virtual {p3, p4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 26
    move-result-object p3

    .line 29
    iget-boolean p4, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mUseCustomizedAnim:Z

    .line 30
    if-eqz p4, :cond_4

    .line 32
    if-eqz p7, :cond_4

    .line 34
    const/high16 p4, 0x3f800000    # 1.0f

    .line 36
    cmpl-float p2, p2, p4

    .line 38
    const/high16 p4, 0x41c80000    # 25.0f

    .line 40
    const/4 p5, 0x0

    .line 42
    if-nez p2, :cond_1

    .line 43
    move p6, p4

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move p6, p5

    .line 47
    :goto_0
    if-nez p2, :cond_2

    .line 48
    move p4, p5

    .line 50
    :cond_2
    const-wide/16 v0, 0x12c

    .line 51
    if-nez p2, :cond_3

    .line 53
    move-wide v2, v0

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    const-wide/16 v2, 0x0

    .line 57
    :goto_1
    invoke-virtual {p1, p6}, Landroid/view/View;->setTranslationX(F)V

    .line 59
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 62
    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 64
    invoke-virtual {p3, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 67
    invoke-virtual {p3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 70
    invoke-virtual {p3, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 73
    invoke-virtual {p3, p4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 76
    new-instance p1, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$1;

    .line 79
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$1;-><init>(Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;)V

    .line 81
    invoke-virtual {p3, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 84
    :cond_4
    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 87
    return-void
    .line 90
.end method

.method public final updateStatusBarVisibilities(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->updateStatusBarVisibilities(Z)V

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mLastIsHomePrivacyShowing:Z

    .line 5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsHomePrivacyShowing:Z

    .line 7
    const/4 v2, 0x0

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mLastIsHomeToDot:Z

    .line 12
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsHomeToDot:Z

    .line 14
    if-eq v0, v3, :cond_2

    .line 16
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mLastIsHomePrivacyShowing:Z

    .line 18
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsHomeToDot:Z

    .line 20
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mLastIsHomeToDot:Z

    .line 22
    if-nez v1, :cond_1

    .line 24
    if-nez v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mHomePrivacyContainer:Landroid/widget/LinearLayout;

    .line 28
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateHide(Landroid/view/View;ZZ)V

    .line 30
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mHomePrivacyContainer:Landroid/widget/LinearLayout;

    .line 34
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateShow(Landroid/view/View;ZZ)V

    .line 36
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastModifiedVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    .line 39
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showNotifPromptView:Z

    .line 41
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsShowNotifPromptView:Z

    .line 43
    if-ne v0, v1, :cond_3

    .line 45
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsFocusedNotifPromptViewShowing:Z

    .line 47
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mLastIsFocusedNotifPromptViewShowing:Z

    .line 49
    if-eq v1, v3, :cond_5

    .line 51
    :cond_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsShowNotifPromptView:Z

    .line 53
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsFocusedNotifPromptViewShowing:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mLastIsFocusedNotifPromptViewShowing:Z

    .line 57
    if-eqz v1, :cond_4

    .line 59
    if-eqz v0, :cond_4

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotifView:Landroid/view/View;

    .line 63
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateShow(Landroid/view/View;ZZ)V

    .line 65
    goto :goto_1

    .line 68
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotifView:Landroid/view/View;

    .line 69
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateHide(Landroid/view/View;ZZ)V

    .line 71
    :cond_5
    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mUseCustomizedAnim:Z

    .line 74
    return-void
    .line 76
.end method
