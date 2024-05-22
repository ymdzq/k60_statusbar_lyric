.class public final Lcom/android/keyguard/KeyguardStatusViewController;
.super Lcom/android/systemui/util/ViewController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;


# instance fields
.field public final mClipBounds:Landroid/graphics/Rect;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardStatusViewController$2;

.field public mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

.field public final mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

.field public final mKeyguardStatusAlignmentTransitionListener:Lcom/android/keyguard/KeyguardStatusViewController$1;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

.field public mStatusViewCentered:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/keyguard/KeyguardConstants;->DEBUG:Z

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 4
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    .line 6
    const-wide/16 v1, 0x168

    .line 9
    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 11
    sput-object v0, Lcom/android/keyguard/KeyguardStatusViewController;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 13
    return-void
    .line 15
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardStatusView;Lcom/android/keyguard/KeyguardSliceViewController;Lcom/android/keyguard/KeyguardClockSwitchController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/logging/KeyguardLogger;Lcom/android/internal/jank/InteractionJankMonitor;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mClipBounds:Landroid/graphics/Rect;

    .line 10
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mStatusViewCentered:Ljava/lang/Boolean;

    .line 14
    new-instance v0, Lcom/android/keyguard/KeyguardStatusViewController$1;

    .line 16
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardStatusViewController$1;-><init>(Lcom/android/keyguard/KeyguardStatusViewController;)V

    .line 18
    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusAlignmentTransitionListener:Lcom/android/keyguard/KeyguardStatusViewController$1;

    .line 21
    new-instance v0, Lcom/android/keyguard/KeyguardStatusViewController$2;

    .line 23
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardStatusViewController$2;-><init>(Lcom/android/keyguard/KeyguardStatusViewController;)V

    .line 25
    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardStatusViewController$2;

    .line 28
    new-instance v0, Lcom/android/keyguard/KeyguardStatusViewController$3;

    .line 30
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardStatusViewController$3;-><init>(Lcom/android/keyguard/KeyguardStatusViewController;)V

    .line 32
    iput-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 35
    iput-object p2, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    .line 37
    iput-object p3, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 39
    iput-object p5, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 41
    iput-object p6, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 43
    new-instance p2, Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 45
    iget-object p3, p7, Lcom/android/keyguard/logging/KeyguardLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 47
    invoke-direct {p2, p1, p4, p3}, Lcom/android/keyguard/KeyguardVisibilityHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/log/LogBuffer;)V

    .line 49
    iput-object p2, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 52
    iput-object p8, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 54
    return-void
    .line 56
.end method


# virtual methods
.method public final dozeTimeTick()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->refreshTime()V

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    const-string v0, "KeyguardSliceViewController#refresh"

    .line 10
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mKeyguardSliceUri:Landroid/net/Uri;

    .line 15
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    const-string v1, "content://com.android.systemui.keyguard/main"

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->sInstance:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    .line 30
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->onBindSlice()Landroidx/slice/Slice;

    .line 34
    move-result-object v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string v0, "KeyguardSliceViewCtrl"

    .line 39
    const-string v2, "Keyguard slice not bound yet?"

    .line 41
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 47
    check-cast v0, Lcom/android/keyguard/KeyguardSliceView;

    .line 49
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v0

    .line 54
    new-instance v2, Landroidx/slice/SliceViewManagerWrapper;

    .line 55
    invoke-direct {v2, v0}, Landroidx/slice/SliceViewManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 57
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mKeyguardSliceUri:Landroid/net/Uri;

    .line 60
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 62
    move-result-object v3

    .line 65
    invoke-virtual {v2, v3}, Landroidx/slice/SliceViewManagerWrapper;->isAuthoritySuspended(Ljava/lang/String;)Z

    .line 66
    move-result v3

    .line 69
    if-eqz v3, :cond_2

    .line 70
    goto :goto_0

    .line 72
    :cond_2
    iget-object v1, v2, Landroidx/slice/SliceViewManagerWrapper;->mSpecs:Landroidx/collection/ArraySet;

    .line 73
    iget-object v3, v2, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    .line 75
    invoke-virtual {v3, v0, v1}, Landroid/app/slice/SliceManager;->bindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;

    .line 77
    move-result-object v0

    .line 80
    iget-object v1, v2, Landroidx/slice/SliceViewManagerBase;->mContext:Landroid/content/Context;

    .line 81
    invoke-static {v0, v1}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/Slice;Landroid/content/Context;)Landroidx/slice/Slice;

    .line 83
    move-result-object v1

    .line 86
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mObserver:Lcom/android/keyguard/KeyguardSliceViewController$2;

    .line 87
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSliceViewController$2;->onChanged(Ljava/lang/Object;)V

    .line 89
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 92
    return-void
    .line 95
.end method

.method public final onInit()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 4
    return-void
    .line 7
.end method

.method public final onViewAttached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 9
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 11
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardStatusViewController$2;

    .line 13
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 15
    return-void
    .line 18
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 9
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 11
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardStatusViewController$2;

    .line 13
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 15
    return-void
    .line 18
.end method

.method public final refreshTime()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->session:Landroid/app/smartspace/SmartspaceSession;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceSession;->requestSmartspaceUpdate()V

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockEventController:Lcom/android/keyguard/ClockEventController;

    .line 15
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/ClockController;

    .line 17
    if-eqz p0, :cond_1

    .line 19
    invoke-interface {p0}, Lcom/android/systemui/plugins/ClockController;->getSmallClock()Lcom/android/systemui/plugins/ClockFaceController;

    .line 21
    move-result-object v0

    .line 24
    invoke-interface {v0}, Lcom/android/systemui/plugins/ClockFaceController;->getEvents()Lcom/android/systemui/plugins/ClockFaceEvents;

    .line 25
    move-result-object v0

    .line 28
    invoke-interface {v0}, Lcom/android/systemui/plugins/ClockFaceEvents;->onTimeTick()V

    .line 29
    invoke-interface {p0}, Lcom/android/systemui/plugins/ClockController;->getLargeClock()Lcom/android/systemui/plugins/ClockFaceController;

    .line 32
    move-result-object p0

    .line 35
    invoke-interface {p0}, Lcom/android/systemui/plugins/ClockFaceController;->getEvents()Lcom/android/systemui/plugins/ClockFaceEvents;

    .line 36
    move-result-object p0

    .line 39
    invoke-interface {p0}, Lcom/android/systemui/plugins/ClockFaceEvents;->onTimeTick()V

    .line 40
    :cond_1
    return-void
    .line 43
.end method

.method public setProperty(Lcom/android/systemui/statusbar/notification/AnimatableProperty;FZ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    .line 4
    sget-object v0, Lcom/android/keyguard/KeyguardStatusViewController;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 6
    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 8
    return-void
    .line 11
.end method

.method public final setSplitShadeEnabled(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->mSplitShadeEnabled:Z

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->smartspaceViews:Ljava/util/Set;

    .line 8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    .line 24
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setSplitShadeEnabled(Z)V

    .line 26
    goto :goto_0

    .line 29
    :cond_0
    return-void
    .line 30
.end method

.method public final updateAlignment(Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;ZZZ)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_0

    .line 4
    if-eqz p3, :cond_0

    .line 6
    move v2, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v2, v1

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 11
    iget-object v4, v3, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 13
    check-cast v4, Lcom/android/keyguard/KeyguardClockSwitch;

    .line 15
    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardClockSwitch;->setSplitShadeCentered(Z)V

    .line 17
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mStatusViewCentered:Ljava/lang/Boolean;

    .line 20
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    move-result v2

    .line 25
    if-ne v2, p3, :cond_1

    .line 26
    return-void

    .line 28
    :cond_1
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    move-result-object v2

    .line 32
    iput-object v2, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mStatusViewCentered:Ljava/lang/Boolean;

    .line 33
    if-nez p1, :cond_2

    .line 35
    return-void

    .line 37
    :cond_2
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 38
    invoke-direct {v2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 40
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 43
    if-eqz p3, :cond_3

    .line 46
    move p3, v1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const p3, 0x7f0a075b    # @id/qs_edge_guideline

    .line 50
    :goto_1
    const v4, 0x7f0a04a3    # @id/keyguard_status_view

    .line 53
    const/4 v5, 0x7

    .line 56
    invoke-virtual {v2, v4, v5, p3, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 57
    if-nez p4, :cond_4

    .line 60
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 62
    return-void

    .line 65
    :cond_4
    iget-object p3, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 66
    iget-object p4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 68
    const/16 v4, 0x46

    .line 70
    invoke-virtual {p3, p4, v4}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    .line 72
    new-instance p3, Landroid/transition/ChangeBounds;

    .line 75
    invoke-direct {p3}, Landroid/transition/ChangeBounds;-><init>()V

    .line 77
    if-eqz p2, :cond_5

    .line 80
    const p2, 0x7f0a08f1    # @id/status_view_media_container

    .line 82
    invoke-virtual {p3, p2, v0}, Landroid/transition/ChangeBounds;->excludeTarget(IZ)Landroid/transition/Transition;

    .line 85
    :cond_5
    sget-object p2, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 88
    invoke-virtual {p3, p2}, Landroid/transition/ChangeBounds;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 90
    const-wide/16 v4, 0x168

    .line 93
    invoke-virtual {p3, v4, v5}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    .line 95
    iget-object p2, v3, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockEventController:Lcom/android/keyguard/ClockEventController;

    .line 98
    iget-object p2, p2, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/ClockController;

    .line 100
    if-eqz p2, :cond_6

    .line 102
    invoke-interface {p2}, Lcom/android/systemui/plugins/ClockController;->getLargeClock()Lcom/android/systemui/plugins/ClockFaceController;

    .line 104
    move-result-object p2

    .line 107
    invoke-interface {p2}, Lcom/android/systemui/plugins/ClockFaceController;->getConfig()Lcom/android/systemui/plugins/ClockFaceConfig;

    .line 108
    move-result-object p2

    .line 111
    invoke-virtual {p2}, Lcom/android/systemui/plugins/ClockFaceConfig;->getHasCustomPositionUpdatedAnimation()Z

    .line 112
    move-result p2

    .line 115
    if-eqz p2, :cond_6

    .line 116
    goto :goto_2

    .line 118
    :cond_6
    move v0, v1

    .line 119
    :goto_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusAlignmentTransitionListener:Lcom/android/keyguard/KeyguardStatusViewController$1;

    .line 120
    if-eqz v0, :cond_9

    .line 122
    check-cast p4, Lcom/android/keyguard/KeyguardStatusView;

    .line 124
    const p2, 0x7f0a052e    # @id/lockscreen_clock_view_large

    .line 126
    invoke-virtual {p4, p2}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    .line 129
    move-result-object p2

    .line 132
    check-cast p2, Landroid/widget/FrameLayout;

    .line 133
    if-eqz p2, :cond_8

    .line 135
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 137
    move-result p4

    .line 140
    if-nez p4, :cond_7

    .line 141
    goto :goto_3

    .line 143
    :cond_7
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 144
    move-result-object p2

    .line 147
    new-instance p4, Landroid/transition/TransitionSet;

    .line 148
    invoke-direct {p4}, Landroid/transition/TransitionSet;-><init>()V

    .line 150
    invoke-virtual {p4, p3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 153
    new-instance p3, Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter;

    .line 156
    invoke-direct {p3, v3}, Lcom/android/keyguard/KeyguardStatusViewController$SplitShadeTransitionAdapter;-><init>(Lcom/android/keyguard/KeyguardClockSwitchController;)V

    .line 158
    sget-object v0, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 161
    invoke-virtual {p3, v0}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 163
    const-wide/16 v0, 0x3e8

    .line 166
    invoke-virtual {p3, v0, v1}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 168
    invoke-virtual {p3, p2}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 171
    invoke-virtual {p4, p3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 174
    invoke-virtual {p4, p0}, Landroid/transition/TransitionSet;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    .line 177
    invoke-static {p1, p4}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 180
    goto :goto_4

    .line 183
    :cond_8
    :goto_3
    invoke-virtual {p3, p0}, Landroid/transition/ChangeBounds;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 184
    invoke-static {p1, p3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 187
    goto :goto_4

    .line 190
    :cond_9
    invoke-virtual {p3, p0}, Landroid/transition/ChangeBounds;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 191
    invoke-static {p1, p3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 194
    :goto_4
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 197
    return-void
    .line 200
.end method

.method public final updatePosition(FIIZ)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 2
    int-to-float p3, p3

    .line 4
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/keyguard/KeyguardStatusViewController;->setProperty(Lcom/android/systemui/statusbar/notification/AnimatableProperty;FZ)V

    .line 5
    iget-object p3, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 8
    iget-object v0, p3, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockEventController:Lcom/android/keyguard/ClockEventController;

    .line 10
    iget-object v0, v0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/ClockController;

    .line 12
    sget-object v1, Lcom/android/keyguard/KeyguardStatusViewController;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 14
    const/high16 v2, 0x3f800000    # 1.0f

    .line 16
    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0}, Lcom/android/systemui/plugins/ClockController;->getConfig()Lcom/android/systemui/plugins/ClockConfig;

    .line 20
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/android/systemui/plugins/ClockConfig;->getUseAlternateSmartspaceAODTransition()Z

    .line 24
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p3, p2, v2, v1, p4}, Lcom/android/keyguard/KeyguardClockSwitchController;->updatePosition(IFLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 30
    sget-object p2, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->SCALE_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 33
    invoke-virtual {p0, p2, p1, p4}, Lcom/android/keyguard/KeyguardStatusViewController;->setProperty(Lcom/android/systemui/statusbar/notification/AnimatableProperty;FZ)V

    .line 35
    sget-object p2, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->SCALE_Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 38
    invoke-virtual {p0, p2, p1, p4}, Lcom/android/keyguard/KeyguardStatusViewController;->setProperty(Lcom/android/systemui/statusbar/notification/AnimatableProperty;FZ)V

    .line 40
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p3, p2, p1, v1, p4}, Lcom/android/keyguard/KeyguardClockSwitchController;->updatePosition(IFLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 44
    sget-object p1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->SCALE_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 47
    invoke-virtual {p0, p1, v2, p4}, Lcom/android/keyguard/KeyguardStatusViewController;->setProperty(Lcom/android/systemui/statusbar/notification/AnimatableProperty;FZ)V

    .line 49
    sget-object p1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->SCALE_Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 52
    invoke-virtual {p0, p1, v2, p4}, Lcom/android/keyguard/KeyguardStatusViewController;->setProperty(Lcom/android/systemui/statusbar/notification/AnimatableProperty;FZ)V

    .line 54
    :goto_0
    return-void
    .line 57
.end method
