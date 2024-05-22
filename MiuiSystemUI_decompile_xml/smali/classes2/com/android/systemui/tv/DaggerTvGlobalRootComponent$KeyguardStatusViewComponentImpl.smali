.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/keyguard/dagger/KeyguardStatusViewComponent;


# instance fields
.field public keyguardSliceViewControllerProvider:Ljavax/inject/Provider;

.field public final keyguardStatusViewComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;

.field public final presentation:Lcom/android/keyguard/KeyguardStatusView;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->keyguardStatusViewComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;

    .line 5
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 7
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 9
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->presentation:Lcom/android/keyguard/KeyguardStatusView;

    .line 11
    invoke-virtual {p0, p3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->initialize(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 13
    return-void
    .line 16
.end method


# virtual methods
.method public final clockEventController()Lcom/android/keyguard/ClockEventController;
    .locals 14

    .line 1
    new-instance v13, Lcom/android/keyguard/ClockEventController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 4
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardInteractorProvider:Ljavax/inject/Provider;

    .line 6
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    .line 13
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 15
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardTransitionInteractorProvider:Ljavax/inject/Provider;

    .line 17
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    move-object v2, v0

    .line 23
    check-cast v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    .line 24
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 26
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 28
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    move-object v3, v0

    .line 34
    check-cast v3, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 35
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 37
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBatteryControllerProvider:Ljavax/inject/Provider;

    .line 39
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 44
    move-object v4, v0

    .line 45
    check-cast v4, Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 46
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 48
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 50
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 55
    move-object v5, v0

    .line 56
    check-cast v5, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 59
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    .line 61
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 66
    move-object v6, v0

    .line 67
    check-cast v6, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 68
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 70
    sget-object v7, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    .line 72
    invoke-virtual {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    .line 74
    move-result-object v7

    .line 77
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 78
    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 80
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 82
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 84
    move-result-object v0

    .line 87
    move-object v9, v0

    .line 88
    check-cast v9, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 89
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 91
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBackgroundExecutorProvider:Ljavax/inject/Provider;

    .line 93
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 95
    move-result-object v0

    .line 98
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 99
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 101
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideKeyguardSmallClockLogProvider:Ljavax/inject/Provider;

    .line 103
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 105
    move-result-object v0

    .line 108
    move-object v10, v0

    .line 109
    check-cast v10, Lcom/android/systemui/log/LogBuffer;

    .line 110
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 112
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideKeyguardLargeClockLogProvider:Ljavax/inject/Provider;

    .line 114
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 116
    move-result-object v0

    .line 119
    move-object v11, v0

    .line 120
    check-cast v11, Lcom/android/systemui/log/LogBuffer;

    .line 121
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 123
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    .line 125
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 127
    move-result-object p0

    .line 130
    move-object v12, p0

    .line 131
    check-cast v12, Lcom/android/systemui/flags/FeatureFlags;

    .line 132
    move-object v0, v13

    .line 134
    invoke-direct/range {v0 .. v12}, Lcom/android/keyguard/ClockEventController;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/content/res/Resources;Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 135
    return-object v13
    .line 138
.end method

.method public final getKeyguardClockSwitchController()Lcom/android/keyguard/KeyguardClockSwitchController;
    .locals 14

    .line 1
    new-instance v13, Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->keyguardClockSwitch()Lcom/android/keyguard/KeyguardClockSwitch;

    .line 4
    move-result-object v1

    .line 7
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 8
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 10
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    move-object v2, v0

    .line 16
    check-cast v2, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 17
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 19
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->getClockRegistryProvider:Ljavax/inject/Provider;

    .line 21
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 26
    move-object v3, v0

    .line 27
    check-cast v3, Lcom/android/systemui/shared/clocks/ClockRegistry;

    .line 28
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->keyguardSliceViewControllerProvider:Ljavax/inject/Provider;

    .line 30
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 35
    move-object v4, v0

    .line 36
    check-cast v4, Lcom/android/keyguard/KeyguardSliceViewController;

    .line 37
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 39
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationIconAreaControllerProvider:Ljavax/inject/Provider;

    .line 41
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 46
    move-object v5, v0

    .line 47
    check-cast v5, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 48
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 50
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->lockscreenSmartspaceControllerProvider:Ljavax/inject/Provider;

    .line 52
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 57
    move-object v6, v0

    .line 58
    check-cast v6, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    .line 59
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 61
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUnlockAnimationControllerProvider:Ljavax/inject/Provider;

    .line 63
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 65
    move-result-object v0

    .line 68
    move-object v7, v0

    .line 69
    check-cast v7, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 70
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 72
    invoke-virtual {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->secureSettingsImpl()Ljava/lang/Object;

    .line 74
    move-result-object v0

    .line 77
    move-object v8, v0

    .line 78
    check-cast v8, Lcom/android/systemui/util/settings/SecureSettings;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 81
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 83
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 85
    move-result-object v0

    .line 88
    move-object v9, v0

    .line 89
    check-cast v9, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 90
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 92
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 94
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 96
    move-result-object v0

    .line 99
    move-object v10, v0

    .line 100
    check-cast v10, Lcom/android/systemui/dump/DumpManager;

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->clockEventController()Lcom/android/keyguard/ClockEventController;

    .line 103
    move-result-object v11

    .line 106
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 107
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideKeyguardClockLogProvider:Ljavax/inject/Provider;

    .line 109
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 111
    move-result-object p0

    .line 114
    move-object v12, p0

    .line 115
    check-cast v12, Lcom/android/systemui/log/LogBuffer;

    .line 116
    move-object v0, v13

    .line 118
    invoke-direct/range {v0 .. v12}, Lcom/android/keyguard/KeyguardClockSwitchController;-><init>(Lcom/android/keyguard/KeyguardClockSwitch;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/shared/clocks/ClockRegistry;Lcom/android/keyguard/KeyguardSliceViewController;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/dump/DumpManager;Lcom/android/keyguard/ClockEventController;Lcom/android/systemui/log/LogBuffer;)V

    .line 119
    return-object v13
    .line 122
.end method

.method public final getKeyguardStatusViewController()Lcom/android/keyguard/KeyguardStatusViewController;
    .locals 10

    .line 1
    new-instance v9, Lcom/android/keyguard/KeyguardStatusViewController;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->presentation:Lcom/android/keyguard/KeyguardStatusView;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->keyguardSliceViewControllerProvider:Ljavax/inject/Provider;

    .line 6
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    move-object v2, v0

    .line 12
    check-cast v2, Lcom/android/keyguard/KeyguardSliceViewController;

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->getKeyguardClockSwitchController()Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 15
    move-result-object v3

    .line 18
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 19
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    .line 21
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 26
    move-object v4, v0

    .line 27
    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 28
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 30
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 32
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 37
    move-object v5, v0

    .line 38
    check-cast v5, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 41
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    .line 43
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 48
    move-object v6, v0

    .line 49
    check-cast v6, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 52
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 54
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 59
    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 62
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->screenOffAnimationControllerProvider:Ljavax/inject/Provider;

    .line 64
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 69
    check-cast v0, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    .line 70
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 72
    invoke-virtual {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardLogger()Lcom/android/keyguard/logging/KeyguardLogger;

    .line 74
    move-result-object v7

    .line 77
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 78
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    .line 80
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 85
    check-cast v0, Lcom/android/systemui/flags/FeatureFlags;

    .line 86
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 88
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideInteractionJankMonitorProvider:Ljavax/inject/Provider;

    .line 90
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 92
    move-result-object p0

    .line 95
    move-object v8, p0

    .line 96
    check-cast v8, Lcom/android/internal/jank/InteractionJankMonitor;

    .line 97
    move-object v0, v9

    .line 99
    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/KeyguardStatusViewController;-><init>(Lcom/android/keyguard/KeyguardStatusView;Lcom/android/keyguard/KeyguardSliceViewController;Lcom/android/keyguard/KeyguardClockSwitchController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/logging/KeyguardLogger;Lcom/android/internal/jank/InteractionJankMonitor;)V

    .line 100
    return-object v9
    .line 103
.end method

.method public final initialize(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 4

    .line 1
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl$SwitchingProvider;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 6
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->keyguardStatusViewComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;

    .line 8
    const/4 v3, 0x0

    .line 10
    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;I)V

    .line 11
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 14
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->keyguardSliceViewControllerProvider:Ljavax/inject/Provider;

    .line 18
    return-void
    .line 20
.end method

.method public final keyguardClockSwitch()Lcom/android/keyguard/KeyguardClockSwitch;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->presentation:Lcom/android/keyguard/KeyguardStatusView;

    .line 2
    const v0, 0x7f0a0476    # @id/keyguard_clock_container

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitch;

    .line 11
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 13
    return-object p0
    .line 16
.end method

.method public final keyguardSliceView()Lcom/android/keyguard/KeyguardSliceView;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$KeyguardStatusViewComponentImpl;->keyguardClockSwitch()Lcom/android/keyguard/KeyguardClockSwitch;

    .line 2
    move-result-object p0

    .line 5
    const v0, 0x7f0a049f    # @id/keyguard_slice_view

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/keyguard/KeyguardSliceView;

    .line 13
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 15
    return-object p0
    .line 18
.end method
