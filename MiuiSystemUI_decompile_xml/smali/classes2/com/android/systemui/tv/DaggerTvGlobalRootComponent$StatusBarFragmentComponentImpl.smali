.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;


# instance fields
.field public final centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

.field public final collapsedStatusBarFragment:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;

.field public endSideContentProvider:Ljavax/inject/Provider;

.field public headsUpAppearanceControllerProvider:Ljavax/inject/Provider;

.field public provideClockProvider:Ljavax/inject/Provider;

.field public provideOperatorFrameNameViewProvider:Ljavax/inject/Provider;

.field public provideOperatorNameViewProvider:Ljavax/inject/Provider;

.field public providePhoneStatusBarTransitionsProvider:Ljavax/inject/Provider;

.field public providePhoneStatusBarViewControllerProvider:Ljavax/inject/Provider;

.field public providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

.field public providesHeasdUpStatusBarViewProvider:Ljavax/inject/Provider;

.field public startSideContentProvider:Ljavax/inject/Provider;

.field public statusBarBoundsProvider:Ljavax/inject/Provider;

.field public statusBarDemoModeProvider:Ljavax/inject/Provider;

.field public final statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 5
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 7
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 9
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 11
    iput-object p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->collapsedStatusBarFragment:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;

    .line 13
    invoke-virtual {p0, p4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->initialize(Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;)V

    .line 15
    return-void
    .line 18
.end method


# virtual methods
.method public final getBatteryMeterViewController()Lcom/android/systemui/battery/BatteryMeterViewController;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/battery/BatteryMeterViewController;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 4
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    .line 6
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 11
    check-cast v1, Lcom/android/systemui/settings/UserTracker;

    .line 12
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 14
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    .line 16
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 22
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 24
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 26
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 31
    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    .line 32
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 34
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 36
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 41
    check-cast v1, Landroid/os/Handler;

    .line 42
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 44
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideContentResolverProvider:Ljavax/inject/Provider;

    .line 46
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 51
    check-cast v1, Landroid/content/ContentResolver;

    .line 52
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 54
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    .line 56
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 61
    check-cast v1, Lcom/android/systemui/flags/FeatureFlags;

    .line 62
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 64
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    .line 66
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 68
    move-result-object p0

    .line 71
    check-cast p0, Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 72
    invoke-direct {v0}, Lcom/android/systemui/battery/BatteryMeterViewController;-><init>()V

    .line 74
    return-object v0
    .line 77
.end method

.method public final getBoundsProvider()Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->statusBarBoundsProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getHeadsUpAppearanceController()Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->headsUpAppearanceControllerProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getLightsOutNotifController()Lcom/android/systemui/statusbar/phone/LightsOutNotifController;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightsOutNotifController;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method

.method public final getPhoneStatusBarTransitions()Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->providePhoneStatusBarTransitionsProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getPhoneStatusBarViewController()Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->providePhoneStatusBarViewControllerProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getStartables()Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->statusBarBoundsProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    .line 8
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 10
    move-result-object p0

    .line 13
    return-object p0
    .line 14
.end method

.method public final getStatusBarDemoMode()Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->statusBarDemoModeProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;

    .line 8
    return-object p0
    .line 10
.end method

.method public final bridge synthetic init()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->init()V

    .line 2
    return-void
    .line 5
.end method

.method public final initialize(Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;)V
    .locals 6

    .line 1
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 6
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 8
    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 10
    const/4 v5, 0x0

    .line 12
    move-object v0, p1

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;I)V

    .line 14
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 17
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->providePhoneStatusBarViewProvider:Ljavax/inject/Provider;

    .line 21
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;

    .line 23
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 25
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 27
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 29
    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 31
    const/4 v5, 0x1

    .line 33
    move-object v0, p1

    .line 34
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;I)V

    .line 35
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 38
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->providePhoneStatusBarViewControllerProvider:Ljavax/inject/Provider;

    .line 42
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;

    .line 44
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 46
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 48
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 50
    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 52
    const/4 v5, 0x3

    .line 54
    move-object v0, p1

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;I)V

    .line 56
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 59
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->providesHeasdUpStatusBarViewProvider:Ljavax/inject/Provider;

    .line 63
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;

    .line 65
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 67
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 69
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 71
    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 73
    const/4 v5, 0x4

    .line 75
    move-object v0, p1

    .line 76
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;I)V

    .line 77
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 80
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->provideOperatorFrameNameViewProvider:Ljavax/inject/Provider;

    .line 84
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;

    .line 86
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 88
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 90
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 92
    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 94
    const/4 v5, 0x2

    .line 96
    move-object v0, p1

    .line 97
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;I)V

    .line 98
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 101
    move-result-object p1

    .line 104
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->headsUpAppearanceControllerProvider:Ljavax/inject/Provider;

    .line 105
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;

    .line 107
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 109
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 111
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 113
    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 115
    const/4 v5, 0x6

    .line 117
    move-object v0, p1

    .line 118
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;I)V

    .line 119
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 122
    move-result-object p1

    .line 125
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->provideClockProvider:Ljavax/inject/Provider;

    .line 126
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;

    .line 128
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 130
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 132
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 134
    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 136
    const/4 v5, 0x7

    .line 138
    move-object v0, p1

    .line 139
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;I)V

    .line 140
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 143
    move-result-object p1

    .line 146
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->provideOperatorNameViewProvider:Ljavax/inject/Provider;

    .line 147
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;

    .line 149
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 151
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 153
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 155
    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 157
    const/16 v5, 0x8

    .line 159
    move-object v0, p1

    .line 161
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;I)V

    .line 162
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 165
    move-result-object p1

    .line 168
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->providePhoneStatusBarTransitionsProvider:Ljavax/inject/Provider;

    .line 169
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;

    .line 171
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 173
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 175
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 177
    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 179
    const/4 v5, 0x5

    .line 181
    move-object v0, p1

    .line 182
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;I)V

    .line 183
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 186
    move-result-object p1

    .line 189
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->statusBarDemoModeProvider:Ljavax/inject/Provider;

    .line 190
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;

    .line 192
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 194
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 196
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 198
    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 200
    const/16 v5, 0xa

    .line 202
    move-object v0, p1

    .line 204
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;I)V

    .line 205
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 208
    move-result-object p1

    .line 211
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->startSideContentProvider:Ljavax/inject/Provider;

    .line 212
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;

    .line 214
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 216
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 218
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 220
    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 222
    const/16 v5, 0xb

    .line 224
    move-object v0, p1

    .line 226
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;I)V

    .line 227
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 230
    move-result-object p1

    .line 233
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->endSideContentProvider:Ljavax/inject/Provider;

    .line 234
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;

    .line 236
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 238
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 240
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 242
    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->statusBarFragmentComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;

    .line 244
    const/16 v5, 0x9

    .line 246
    move-object v0, p1

    .line 248
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;I)V

    .line 249
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 252
    move-result-object p1

    .line 255
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->statusBarBoundsProvider:Ljavax/inject/Provider;

    .line 256
    return-void
    .line 258
.end method

.method public final phoneStatusBarViewControllerFactory()Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;
    .locals 11

    .line 1
    new-instance v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 4
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSysUIUnfoldComponentProvider:Ljavax/inject/Provider;

    .line 6
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Ljava/util/Optional;

    .line 13
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 15
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideStatusBarScopedTransitionProvider:Ljavax/inject/Provider;

    .line 17
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    move-object v2, v0

    .line 23
    check-cast v2, Ljava/util/Optional;

    .line 24
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 26
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    .line 28
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    move-object v3, v0

    .line 34
    check-cast v3, Lcom/android/systemui/flags/FeatureFlags;

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->statusBarUserChipViewModel()Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;

    .line 37
    move-result-object v4

    .line 40
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 41
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->centralSurfacesImplProvider:Ljavax/inject/Provider;

    .line 43
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 48
    move-object v5, v0

    .line 49
    check-cast v5, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 52
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeControllerImplProvider:Ljavax/inject/Provider;

    .line 54
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 59
    move-object v6, v0

    .line 60
    check-cast v6, Lcom/android/systemui/shade/ShadeController;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 63
    invoke-virtual {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeLogger()Lcom/android/systemui/shade/ShadeLogger;

    .line 65
    move-result-object v7

    .line 68
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 69
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->viewUtilProvider:Ljavax/inject/Provider;

    .line 71
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 76
    move-object v8, v0

    .line 77
    check-cast v8, Lcom/android/systemui/util/view/ViewUtil;

    .line 78
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 80
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    .line 82
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 84
    move-result-object p0

    .line 87
    move-object v9, p0

    .line 88
    check-cast v9, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 89
    move-object v0, v10

    .line 91
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;-><init>(Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/util/view/ViewUtil;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    .line 92
    return-object v10
    .line 95
.end method

.method public final setOfBoundsChangeListener()Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->systemBarAttributesListenerProvider:Ljavax/inject/Provider;

    .line 4
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesListener;

    .line 10
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 12
    move-result-object p0

    .line 15
    return-object p0
    .line 16
.end method

.method public final statusBarUserChipViewModel()Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 4
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideApplicationContextProvider:Ljavax/inject/Provider;

    .line 6
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 11
    check-cast v1, Landroid/content/Context;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->userInteractorProvider:Ljavax/inject/Provider;

    .line 16
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 22
    invoke-direct {v0, p0}, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;)V

    .line 24
    return-object v0
    .line 27
.end method
