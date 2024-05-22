.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/dagger/CentralSurfacesComponent;


# instance fields
.field public builderProvider:Ljavax/inject/Provider;

.field public centralSurfacesCommandQueueCallbacksProvider:Ljavax/inject/Provider;

.field public final centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

.field public getNotificationsQuickSettingsContainerProvider:Ljavax/inject/Provider;

.field public keyguardBottomAreaViewControllerProvider:Ljavax/inject/Provider;

.field public miuiStatusBarNotificationActivityStarterProvider:Ljavax/inject/Provider;

.field public notificationLaunchAnimatorControllerProvider:Ljavax/inject/Provider;

.field public notificationShadeWindowViewControllerProvider:Ljavax/inject/Provider;

.field public notificationShelfInteractorProvider:Ljavax/inject/Provider;

.field public notificationShelfViewBinderWrapperControllerImplProvider:Ljavax/inject/Provider;

.field public notificationShelfViewModelProvider:Ljavax/inject/Provider;

.field public notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;

.field public provideListContainerProvider:Ljavax/inject/Provider;

.field public provideNotificationPanelViewControllerProvider:Ljavax/inject/Provider;

.field public providesNotificationShelfProvider:Ljavax/inject/Provider;

.field public providesStatusBarWindowViewProvider:Ljavax/inject/Provider;

.field public pulsingGestureListenerProvider:Ljavax/inject/Provider;

.field public quickSettingsControllerProvider:Ljavax/inject/Provider;

.field public statusBarHeadsUpChangeListenerProvider:Ljavax/inject/Provider;

.field public statusBarNotificationPresenterProvider:Ljavax/inject/Provider;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 5
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 7
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->initialize()V

    .line 11
    return-void
    .line 14
.end method


# virtual methods
.method public final activatableNotificationViewModel()Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ActivatableNotificationViewModel;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->accessibilityInteractorProvider:Ljavax/inject/Provider;

    .line 4
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/accessibility/domain/interactor/AccessibilityInteractor;

    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ActivatableNotificationViewModelImpl;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ActivatableNotificationViewModelImpl;-><init>(Lcom/android/systemui/accessibility/domain/interactor/AccessibilityInteractor;)V

    .line 14
    return-object v0
    .line 17
.end method

.method public final collapsedStatusBarFragmentLogger()Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 4
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCollapsedSbFragmentLogBufferProvider:Ljavax/inject/Provider;

    .line 6
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 11
    check-cast v1, Lcom/android/systemui/log/LogBuffer;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->disableFlagsLoggerProvider:Ljavax/inject/Provider;

    .line 16
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;

    .line 22
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;-><init>(Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;)V

    .line 24
    return-object v0
    .line 27
.end method

.method public final createCollapsedStatusBarFragment()Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    new-instance v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentFactory;

    .line 4
    move-object v1, v2

    .line 6
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 7
    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 9
    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 11
    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$StatusBarFragmentComponentFactory;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;)V

    .line 13
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 16
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideOngoingCallControllerProvider:Ljavax/inject/Provider;

    .line 18
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    .line 24
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 26
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSystemStatusAnimationSchedulerProvider:Ljavax/inject/Provider;

    .line 28
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 33
    check-cast v3, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    .line 34
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 36
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarLocationPublisherProvider:Ljavax/inject/Provider;

    .line 38
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 43
    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;

    .line 44
    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 46
    iget-object v4, v4, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationIconAreaControllerProvider:Ljavax/inject/Provider;

    .line 48
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 50
    move-result-object v4

    .line 53
    check-cast v4, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 54
    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 56
    iget-object v5, v5, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeExpansionStateManagerProvider:Ljavax/inject/Provider;

    .line 58
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 60
    move-result-object v5

    .line 63
    check-cast v5, Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 64
    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 66
    iget-object v6, v6, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    .line 68
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 70
    move-result-object v6

    .line 73
    check-cast v6, Lcom/android/systemui/flags/FeatureFlags;

    .line 74
    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 76
    iget-object v6, v6, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    .line 78
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 80
    move-result-object v6

    .line 83
    check-cast v6, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 84
    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 86
    iget-object v6, v6, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->factoryProvider18:Ljavax/inject/Provider;

    .line 88
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 90
    move-result-object v6

    .line 93
    check-cast v6, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager$Factory;

    .line 94
    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 96
    iget-object v6, v6, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->collapsedStatusBarViewModelImplProvider:Ljavax/inject/Provider;

    .line 98
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 100
    move-result-object v6

    .line 103
    check-cast v6, Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/CollapsedStatusBarViewModel;

    .line 104
    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 106
    iget-object v7, v7, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->collapsedStatusBarViewBinderImplProvider:Ljavax/inject/Provider;

    .line 108
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 110
    move-result-object v7

    .line 113
    check-cast v7, Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/CollapsedStatusBarViewBinderImpl;

    .line 114
    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 116
    iget-object v8, v8, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarHideIconsForBouncerManagerProvider:Ljavax/inject/Provider;

    .line 118
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 120
    move-result-object v8

    .line 123
    check-cast v8, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

    .line 124
    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 126
    iget-object v9, v9, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    .line 128
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 130
    move-result-object v9

    .line 133
    check-cast v9, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 134
    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->provideNotificationPanelViewControllerProvider:Ljavax/inject/Provider;

    .line 136
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 138
    move-result-object v10

    .line 141
    check-cast v10, Lcom/android/systemui/shade/ShadeViewController;

    .line 142
    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 144
    iget-object v11, v11, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 146
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 148
    move-result-object v11

    .line 151
    check-cast v11, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 152
    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 154
    iget-object v12, v12, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideCommandQueueProvider:Ljavax/inject/Provider;

    .line 156
    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 158
    move-result-object v12

    .line 161
    check-cast v12, Lcom/android/systemui/statusbar/CommandQueue;

    .line 162
    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 164
    iget-object v13, v13, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->carrierConfigTrackerProvider:Ljavax/inject/Provider;

    .line 166
    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 168
    move-result-object v13

    .line 171
    check-cast v13, Lcom/android/systemui/util/CarrierConfigTracker;

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->collapsedStatusBarFragmentLogger()Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;

    .line 174
    move-result-object v14

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->operatorNameViewControllerFactory()Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;

    .line 178
    move-result-object v15

    .line 181
    move-object/from16 v20, v1

    .line 182
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 184
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->secureSettingsImpl()Ljava/lang/Object;

    .line 186
    move-result-object v1

    .line 189
    move-object/from16 v16, v1

    .line 190
    check-cast v16, Lcom/android/systemui/util/settings/SecureSettings;

    .line 192
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 194
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    .line 196
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 198
    move-result-object v1

    .line 201
    check-cast v1, Ljava/util/concurrent/Executor;

    .line 202
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 204
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 206
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 208
    move-result-object v1

    .line 211
    move-object/from16 v17, v1

    .line 212
    check-cast v17, Lcom/android/systemui/dump/DumpManager;

    .line 214
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 216
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarWindowStateControllerProvider:Ljavax/inject/Provider;

    .line 218
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 220
    move-result-object v1

    .line 223
    move-object/from16 v18, v1

    .line 224
    check-cast v18, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    .line 226
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 228
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 230
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 232
    move-result-object v1

    .line 235
    move-object/from16 v19, v1

    .line 236
    check-cast v19, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 238
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 240
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMultiTaskStatusBarDotsAreaControllerFactoryProvider:Ljavax/inject/Provider;

    .line 242
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 244
    move-result-object v0

    .line 247
    check-cast v0, Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;

    .line 248
    move-object/from16 v1, v20

    .line 250
    invoke-static/range {v1 .. v19}, Lcom/android/systemui/statusbar/phone/dagger/StatusBarViewModule_CreateCollapsedStatusBarFragmentFactory;->createCollapsedStatusBarFragment(Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Factory;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/CollapsedStatusBarViewModel;Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/CollapsedStatusBarViewBinderImpl;Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;

    .line 252
    move-result-object v0

    .line 255
    return-object v0
    .line 256
.end method

.method public final getBindRowCallback()Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$BindRowCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->statusBarNotificationPresenterProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$BindRowCallback;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getCentralSurfacesCommandQueueCallbacks()Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->centralSurfacesCommandQueueCallbacksProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getLargeScreenShadeHeaderController()Lcom/android/systemui/shade/ShadeHeaderController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeHeaderControllerProvider:Ljavax/inject/Provider;

    .line 4
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/shade/ShadeHeaderController;

    .line 10
    return-object p0
    .line 12
.end method

.method public final getNotificationActivityStarter()Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->miuiStatusBarNotificationActivityStarterProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getNotificationListContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->provideListContainerProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getNotificationPanelViewController()Lcom/android/systemui/shade/NotificationPanelViewController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->provideNotificationPanelViewControllerProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getNotificationPresenter()Lcom/android/systemui/statusbar/NotificationPresenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->statusBarNotificationPresenterProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getNotificationShadeWindowView()Lcom/android/systemui/shade/NotificationShadeWindowView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesNotificationShadeWindowViewProvider:Ljavax/inject/Provider;

    .line 4
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 10
    return-object p0
    .line 12
.end method

.method public final getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->notificationShadeWindowViewControllerProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getNotificationShelfController()Lcom/android/systemui/statusbar/NotificationShelfController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->providesStatusBarWindowViewProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/NotificationShelfController;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getNotificationStackScrollLayoutController()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getQuickSettingsController()Lcom/android/systemui/shade/QuickSettingsController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->quickSettingsControllerProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/shade/QuickSettingsController;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getStatusBarHeadsUpChangeListener()Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->statusBarHeadsUpChangeListenerProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarHeadsUpChangeListener;

    .line 8
    return-object p0
    .line 10
.end method

.method public final initialize()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 6
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 8
    const/4 v4, 0x1

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;I)V

    .line 11
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 14
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->notificationShelfViewBinderWrapperControllerImplProvider:Ljavax/inject/Provider;

    .line 18
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;

    .line 20
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 22
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 24
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 26
    const/4 v4, 0x2

    .line 28
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;I)V

    .line 29
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 32
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->providesNotificationShelfProvider:Ljavax/inject/Provider;

    .line 36
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;

    .line 38
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 40
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 42
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 44
    const/4 v4, 0x0

    .line 46
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;I)V

    .line 47
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 50
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->providesStatusBarWindowViewProvider:Ljavax/inject/Provider;

    .line 54
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;

    .line 56
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 58
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 60
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 62
    const/4 v4, 0x5

    .line 64
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;I)V

    .line 65
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 68
    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->notificationShelfInteractorProvider:Ljavax/inject/Provider;

    .line 72
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;

    .line 74
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 76
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 78
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 80
    const/4 v4, 0x4

    .line 82
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;I)V

    .line 83
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 86
    move-result-object v0

    .line 89
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->notificationShelfViewModelProvider:Ljavax/inject/Provider;

    .line 90
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;

    .line 92
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 94
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 96
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 98
    const/4 v4, 0x3

    .line 100
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;I)V

    .line 101
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 104
    move-result-object v0

    .line 107
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->notificationStackScrollLayoutControllerProvider:Ljavax/inject/Provider;

    .line 108
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;

    .line 110
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 112
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 114
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 116
    const/16 v4, 0x8

    .line 118
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;I)V

    .line 120
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->builderProvider:Ljavax/inject/Provider;

    .line 123
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;

    .line 125
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 127
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 129
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 131
    const/16 v4, 0x9

    .line 133
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;I)V

    .line 135
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 138
    move-result-object v0

    .line 141
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->getNotificationsQuickSettingsContainerProvider:Ljavax/inject/Provider;

    .line 142
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;

    .line 144
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 146
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 148
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 150
    const/16 v4, 0xa

    .line 152
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;I)V

    .line 154
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 157
    move-result-object v0

    .line 160
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->quickSettingsControllerProvider:Ljavax/inject/Provider;

    .line 161
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;

    .line 163
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 165
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 167
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 169
    const/16 v4, 0xb

    .line 171
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;I)V

    .line 173
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->keyguardBottomAreaViewControllerProvider:Ljavax/inject/Provider;

    .line 176
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;

    .line 178
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 180
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 182
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 184
    const/16 v4, 0xc

    .line 186
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;I)V

    .line 188
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 191
    move-result-object v0

    .line 194
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->provideListContainerProvider:Ljavax/inject/Provider;

    .line 195
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;

    .line 197
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 199
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 201
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 203
    const/4 v4, 0x7

    .line 205
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;I)V

    .line 206
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 209
    move-result-object v0

    .line 212
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->provideNotificationPanelViewControllerProvider:Ljavax/inject/Provider;

    .line 213
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;

    .line 215
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 217
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 219
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 221
    const/16 v4, 0xd

    .line 223
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;I)V

    .line 225
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 228
    move-result-object v0

    .line 231
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->pulsingGestureListenerProvider:Ljavax/inject/Provider;

    .line 232
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;

    .line 234
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 236
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 238
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 240
    const/4 v4, 0x6

    .line 242
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;I)V

    .line 243
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 246
    move-result-object v0

    .line 249
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->notificationShadeWindowViewControllerProvider:Ljavax/inject/Provider;

    .line 250
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;

    .line 252
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 254
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 256
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 258
    const/16 v4, 0xe

    .line 260
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;I)V

    .line 262
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 265
    move-result-object v0

    .line 268
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->statusBarHeadsUpChangeListenerProvider:Ljavax/inject/Provider;

    .line 269
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;

    .line 271
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 273
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 275
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 277
    const/16 v4, 0xf

    .line 279
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;I)V

    .line 281
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 284
    move-result-object v0

    .line 287
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->centralSurfacesCommandQueueCallbacksProvider:Ljavax/inject/Provider;

    .line 288
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;

    .line 290
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 292
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 294
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 296
    const/16 v4, 0x11

    .line 298
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;I)V

    .line 300
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 303
    move-result-object v0

    .line 306
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->statusBarNotificationPresenterProvider:Ljavax/inject/Provider;

    .line 307
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;

    .line 309
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 311
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 313
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 315
    const/16 v4, 0x12

    .line 317
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;I)V

    .line 319
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 322
    move-result-object v0

    .line 325
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->notificationLaunchAnimatorControllerProvider:Ljavax/inject/Provider;

    .line 326
    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;

    .line 328
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 330
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 332
    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->centralSurfacesComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;

    .line 334
    const/16 v4, 0x10

    .line 336
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;I)V

    .line 338
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 341
    move-result-object v0

    .line 344
    iput-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->miuiStatusBarNotificationActivityStarterProvider:Ljavax/inject/Provider;

    .line 345
    return-void
    .line 347
.end method

.method public final injectNotificationStackScrollLayoutController(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaTimeoutListenerProvider:Ljavax/inject/Provider;

    .line 4
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 10
    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMediaTimeoutListener:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 12
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 14
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaDataFilterProvider:Ljavax/inject/Provider;

    .line 16
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;

    .line 22
    iput-object v0, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMediaDataFilter:Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;

    .line 24
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 26
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->zenModeViewControllerProvider:Ljavax/inject/Provider;

    .line 28
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 33
    check-cast p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;

    .line 34
    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mZenModeViewController:Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;

    .line 36
    return-object p1
    .line 38
.end method

.method public final keyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesNotificationPanelViewProvider:Ljavax/inject/Provider;

    .line 4
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelView;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    .line 14
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 19
    check-cast p0, Landroid/view/LayoutInflater;

    .line 20
    const v1, 0x7f0d00fa    # @layout/keyguard_bottom_area 'res/layout/keyguard_bottom_area.xml'

    .line 22
    const/4 v2, 0x0

    .line 25
    invoke-virtual {p0, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    move-result-object p0

    .line 29
    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 30
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 32
    return-object p0
    .line 35
.end method

.method public final keyguardBottomAreaViewModel()Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;
    .locals 8

    .line 1
    new-instance v7, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

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
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 15
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardQuickAffordanceInteractorProvider:Ljavax/inject/Provider;

    .line 17
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    move-object v2, v0

    .line 23
    check-cast v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    .line 24
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 26
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardBottomAreaInteractorProvider:Ljavax/inject/Provider;

    .line 28
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    move-object v3, v0

    .line 34
    check-cast v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;

    .line 35
    new-instance v4, Lcom/android/systemui/doze/util/BurnInHelperWrapper;

    .line 37
    invoke-direct {v4}, Lcom/android/systemui/doze/util/BurnInHelperWrapper;-><init>()V

    .line 39
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 42
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardLongPressViewModelProvider:Ljavax/inject/Provider;

    .line 44
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 49
    move-object v5, v0

    .line 50
    check-cast v5, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardLongPressViewModel;

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->keyguardSettingsMenuViewModel()Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSettingsMenuViewModel;

    .line 53
    move-result-object v6

    .line 56
    move-object v0, v7

    .line 57
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;Lcom/android/systemui/doze/util/BurnInHelperWrapper;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardLongPressViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSettingsMenuViewModel;)V

    .line 58
    return-object v7
    .line 61
.end method

.method public final keyguardBouncerViewModel()Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 4
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bouncerViewImplProvider:Ljavax/inject/Provider;

    .line 6
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 11
    check-cast v1, Lcom/android/systemui/keyguard/data/BouncerViewImpl;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->primaryBouncerInteractorProvider:Ljavax/inject/Provider;

    .line 16
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 22
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;-><init>(Lcom/android/systemui/keyguard/data/BouncerViewImpl;Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;)V

    .line 24
    return-object v0
    .line 27
.end method

.method public final keyguardSettingsMenuViewModel()Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSettingsMenuViewModel;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSettingsMenuViewModel;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardLongPressInteractorProvider:Ljavax/inject/Provider;

    .line 6
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSettingsMenuViewModel;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;)V

    .line 14
    return-object v0
    .line 17
.end method

.method public final notificationStackScrollLogger()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationHeadsUpLogBufferProvider:Ljavax/inject/Provider;

    .line 6
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/log/LogBuffer;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    .line 14
    return-object v0
    .line 17
.end method

.method public final notificationSwipeHelperBuilder()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2
    sget-object v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v3

    .line 9
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 10
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideViewConfigurationProvider:Ljavax/inject/Provider;

    .line 12
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    move-object v4, v0

    .line 18
    check-cast v4, Landroid/view/ViewConfiguration;

    .line 19
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 21
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 23
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 28
    move-object v5, v0

    .line 29
    check-cast v5, Lcom/android/systemui/dump/DumpManager;

    .line 30
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 32
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    .line 34
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 39
    move-object v6, v0

    .line 40
    check-cast v6, Lcom/android/systemui/plugins/FalsingManager;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 43
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    .line 45
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 50
    move-object v7, v0

    .line 51
    check-cast v7, Lcom/android/systemui/flags/FeatureFlags;

    .line 52
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 54
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationRoundnessManagerProvider:Ljavax/inject/Provider;

    .line 56
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 58
    move-result-object p0

    .line 61
    move-object v8, p0

    .line 62
    check-cast v8, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    .line 63
    new-instance p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;

    .line 65
    move-object v2, p0

    .line 67
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;-><init>(Landroid/content/res/Resources;Landroid/view/ViewConfiguration;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;)V

    .line 68
    return-object p0
    .line 71
.end method

.method public final notificationsQSContainerController()Lcom/android/systemui/shade/NotificationsQSContainerController;
    .locals 9

    .line 1
    new-instance v8, Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->getNotificationsQuickSettingsContainerProvider:Ljavax/inject/Provider;

    .line 4
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 11
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 13
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->navigationModeControllerProvider:Ljavax/inject/Provider;

    .line 15
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    move-object v2, v0

    .line 21
    check-cast v2, Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 22
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 24
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    .line 26
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 31
    move-object v3, v0

    .line 32
    check-cast v3, Lcom/android/systemui/recents/OverviewProxyService;

    .line 33
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 35
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeHeaderControllerProvider:Ljavax/inject/Provider;

    .line 37
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 42
    move-object v4, v0

    .line 43
    check-cast v4, Lcom/android/systemui/shade/ShadeHeaderController;

    .line 44
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 46
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeExpansionStateManagerProvider:Ljavax/inject/Provider;

    .line 48
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 53
    move-object v5, v0

    .line 54
    check-cast v5, Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 57
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->fragmentServiceProvider:Ljavax/inject/Provider;

    .line 59
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 61
    move-result-object v0

    .line 64
    move-object v6, v0

    .line 65
    check-cast v6, Lcom/android/systemui/fragments/FragmentService;

    .line 66
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 68
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 70
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 72
    move-result-object p0

    .line 75
    move-object v7, p0

    .line 76
    check-cast v7, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 77
    move-object v0, v8

    .line 79
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/shade/NotificationsQSContainerController;-><init>(Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/fragments/FragmentService;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    .line 80
    return-object v8
    .line 83
.end method

.method public final operatorNameViewControllerFactory()Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;
    .locals 8

    .line 1
    new-instance v7, Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 4
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    .line 6
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 13
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 15
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->networkControllerImplProvider:Ljavax/inject/Provider;

    .line 17
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    move-object v2, v0

    .line 23
    check-cast v2, Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 24
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 26
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 28
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    move-object v3, v0

    .line 34
    check-cast v3, Lcom/android/systemui/tuner/TunerService;

    .line 35
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 37
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideTelephonyManagerProvider:Ljavax/inject/Provider;

    .line 39
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 44
    move-object v4, v0

    .line 45
    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 46
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

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
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 59
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->carrierConfigTrackerProvider:Ljavax/inject/Provider;

    .line 61
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 63
    move-result-object p0

    .line 66
    move-object v6, p0

    .line 67
    check-cast v6, Lcom/android/systemui/util/CarrierConfigTracker;

    .line 68
    move-object v0, v7

    .line 70
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;-><init>(Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/tuner/TunerService;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/CarrierConfigTracker;)V

    .line 71
    return-object v7
    .line 74
.end method

.method public final optionalOfNotificationListViewModel()Ljava/util/Optional;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->featureFlagsReleaseProvider:Ljavax/inject/Provider;

    .line 4
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/flags/FeatureFlags;

    .line 10
    sget-object p0, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 12
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final stackStateLogger()Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationHeadsUpLogBufferProvider:Ljavax/inject/Provider;

    .line 6
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/log/LogBuffer;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    .line 14
    return-object v0
    .line 17
.end method

.method public final statusBarNotificationActivityStarterLogger()Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CentralSurfacesComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotifInteractionLogBufferProvider:Ljavax/inject/Provider;

    .line 6
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/log/LogBuffer;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    .line 14
    return-object v0
    .line 17
.end method
