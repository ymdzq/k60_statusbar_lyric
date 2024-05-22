.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/dreams/dagger/DreamOverlayComponent;


# instance fields
.field public builderProvider:Ljavax/inject/Provider;

.field public final complicationHostViewController:Lcom/android/systemui/complication/ComplicationHostViewController;

.field public final dreamOverlayComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;

.field public dreamOverlayContainerViewControllerProvider:Ljavax/inject/Provider;

.field public dreamOverlayStatusBarViewControllerProvider:Ljavax/inject/Provider;

.field public final dreamTouchHandlers:Ljava/util/Set;

.field public final lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field public providesDreamInComplicationsTranslationYDurationProvider:Ljavax/inject/Provider;

.field public providesDreamInComplicationsTranslationYProvider:Ljavax/inject/Provider;

.field public providesDreamOverlayContainerViewProvider:Ljavax/inject/Provider;

.field public providesDreamOverlayContentViewProvider:Ljavax/inject/Provider;

.field public providesDreamOverlayStatusBarViewProvider:Ljavax/inject/Provider;

.field public providesLifecycleProvider:Ljavax/inject/Provider;

.field public providesMaxBurnInOffsetProvider:Ljavax/inject/Provider;

.field public final touchInsetManager:Lcom/android/systemui/touch/TouchInsetManager;

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/complication/ComplicationHostViewController;Lcom/android/systemui/touch/TouchInsetManager;Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;

    .line 5
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 7
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->complicationHostViewController:Lcom/android/systemui/complication/ComplicationHostViewController;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->touchInsetManager:Lcom/android/systemui/touch/TouchInsetManager;

    .line 13
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 15
    iput-object p6, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->dreamTouchHandlers:Ljava/util/Set;

    .line 17
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->initialize(Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/complication/ComplicationHostViewController;Lcom/android/systemui/touch/TouchInsetManager;Ljava/util/Set;)V

    .line 19
    return-void
    .line 22
.end method


# virtual methods
.method public final bouncerSwipeTouchHandler()Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;
    .locals 11

    .line 1
    new-instance v10, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->scrimManager()Lcom/android/systemui/dreams/touch/scrim/ScrimManager;

    .line 4
    move-result-object v1

    .line 7
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 8
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->optionalOfCentralSurfacesProvider:Ljavax/inject/Provider;

    .line 10
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    move-object v2, v0

    .line 16
    check-cast v2, Ljava/util/Optional;

    .line 17
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 19
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationShadeWindowControllerImplProvider:Ljavax/inject/Provider;

    .line 21
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 26
    move-object v3, v0

    .line 27
    check-cast v3, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 28
    new-instance v4, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    .line 30
    invoke-direct {v4}, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;-><init>()V

    .line 32
    new-instance v5, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    .line 35
    invoke-direct {v5}, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;-><init>()V

    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->namedFlingAnimationUtils()Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 40
    move-result-object v6

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->namedFlingAnimationUtils2()Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 44
    move-result-object v7

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->namedFloat()F

    .line 48
    move-result v8

    .line 51
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 52
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 54
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 56
    move-result-object p0

    .line 59
    move-object v9, p0

    .line 60
    check-cast v9, Lcom/android/internal/logging/UiEventLogger;

    .line 61
    move-object v0, v10

    .line 63
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;-><init>(Lcom/android/systemui/dreams/touch/scrim/ScrimManager;Ljava/util/Optional;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;Lcom/android/wm/shell/animation/FlingAnimationUtils;Lcom/android/wm/shell/animation/FlingAnimationUtils;FLcom/android/internal/logging/UiEventLogger;)V

    .line 64
    return-object v10
    .line 67
.end method

.method public final displayHelper()Lcom/android/systemui/util/display/DisplayHelper;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/util/display/DisplayHelper;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideDisplayManagerProvider:Ljavax/inject/Provider;

    .line 8
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 14
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/util/display/DisplayHelper;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;)V

    .line 16
    return-object v0
    .line 19
.end method

.method public final dreamLogger()Lcom/android/systemui/dreams/DreamLogger;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/dreams/DreamLogger;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideDreamLogBufferProvider:Ljavax/inject/Provider;

    .line 6
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/log/LogBuffer;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/dreams/DreamLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    .line 14
    return-object v0
    .line 17
.end method

.method public final dreamOverlayAnimationsController()Lcom/android/systemui/dreams/DreamOverlayAnimationsController;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    new-instance v16, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 6
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->blurUtilsProvider:Ljavax/inject/Provider;

    .line 8
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/systemui/statusbar/BlurUtils;

    .line 14
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->complicationHostViewController:Lcom/android/systemui/complication/ComplicationHostViewController;

    .line 16
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayStatusBarViewControllerProvider:Ljavax/inject/Provider;

    .line 18
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 23
    check-cast v3, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;

    .line 24
    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 26
    iget-object v4, v4, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dreamOverlayStateControllerProvider:Ljavax/inject/Provider;

    .line 28
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 30
    move-result-object v4

    .line 33
    check-cast v4, Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->namedInteger()I

    .line 36
    move-result v5

    .line 39
    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 40
    iget-object v6, v6, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dreamingToLockscreenTransitionViewModelProvider:Ljavax/inject/Provider;

    .line 42
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 44
    move-result-object v6

    .line 47
    check-cast v6, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;

    .line 48
    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 50
    iget-object v7, v7, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    .line 52
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 54
    move-result-object v7

    .line 57
    check-cast v7, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->namedLong3()J

    .line 60
    move-result-wide v8

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->namedLong4()J

    .line 64
    move-result-wide v10

    .line 67
    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->providesDreamInComplicationsTranslationYProvider:Ljavax/inject/Provider;

    .line 68
    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 70
    move-result-object v12

    .line 73
    check-cast v12, Ljava/lang/Integer;

    .line 74
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 76
    move-result v12

    .line 79
    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->providesDreamInComplicationsTranslationYDurationProvider:Ljavax/inject/Provider;

    .line 80
    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 82
    move-result-object v13

    .line 85
    check-cast v13, Ljava/lang/Long;

    .line 86
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 88
    move-result-wide v13

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->dreamLogger()Lcom/android/systemui/dreams/DreamLogger;

    .line 92
    move-result-object v15

    .line 95
    move-object/from16 v0, v16

    .line 96
    invoke-direct/range {v0 .. v15}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;-><init>(Lcom/android/systemui/statusbar/BlurUtils;Lcom/android/systemui/complication/ComplicationHostViewController;Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;Lcom/android/systemui/dreams/DreamOverlayStateController;ILcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;Lcom/android/systemui/statusbar/policy/ConfigurationController;JJIJLcom/android/systemui/dreams/DreamLogger;)V

    .line 98
    return-object v16
    .line 101
.end method

.method public final getDreamOverlayContainerViewController()Lcom/android/systemui/dreams/DreamOverlayContainerViewController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayContainerViewControllerProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getDreamOverlayTouchMonitor()Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 4
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    .line 6
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Ljava/util/concurrent/Executor;

    .line 13
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->providesLifecycleProvider:Ljavax/inject/Provider;

    .line 15
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    move-object v2, v0

    .line 21
    check-cast v2, Landroidx/lifecycle/Lifecycle;

    .line 22
    new-instance v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$InputSessionComponentFactory;

    .line 24
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 26
    iget-object v4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 28
    iget-object v5, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;

    .line 30
    invoke-direct {v3, v0, v4, v5}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$InputSessionComponentFactory;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->displayHelper()Lcom/android/systemui/util/display/DisplayHelper;

    .line 35
    move-result-object v4

    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->setOfDreamTouchHandler()Ljava/util/Set;

    .line 39
    move-result-object v5

    .line 42
    move-object v0, v6

    .line 43
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;-><init>(Ljava/util/concurrent/Executor;Landroidx/lifecycle/Lifecycle;Lcom/android/systemui/dreams/touch/dagger/InputSessionComponent$Factory;Lcom/android/systemui/util/display/DisplayHelper;Ljava/util/Set;)V

    .line 44
    return-object v6
    .line 47
.end method

.method public final initialize(Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/complication/ComplicationHostViewController;Lcom/android/systemui/touch/TouchInsetManager;Ljava/util/Set;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;

    .line 2
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 4
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 6
    iget-object p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;

    .line 8
    const/4 v0, 0x1

    .line 10
    invoke-direct {p1, p2, p3, p4, v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;I)V

    .line 11
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 14
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->providesDreamOverlayContainerViewProvider:Ljavax/inject/Provider;

    .line 18
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;

    .line 20
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 22
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 24
    iget-object p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;

    .line 26
    const/4 v0, 0x2

    .line 28
    invoke-direct {p1, p2, p3, p4, v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;I)V

    .line 29
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 32
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->providesDreamOverlayContentViewProvider:Ljavax/inject/Provider;

    .line 36
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;

    .line 38
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 40
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 42
    iget-object p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;

    .line 44
    const/4 v0, 0x4

    .line 46
    invoke-direct {p1, p2, p3, p4, v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;I)V

    .line 47
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 50
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->providesDreamOverlayStatusBarViewProvider:Ljavax/inject/Provider;

    .line 54
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;

    .line 56
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 58
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 60
    iget-object p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;

    .line 62
    const/4 v0, 0x3

    .line 64
    invoke-direct {p1, p2, p3, p4, v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;I)V

    .line 65
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 68
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayStatusBarViewControllerProvider:Ljavax/inject/Provider;

    .line 72
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;

    .line 74
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 76
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 78
    iget-object p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;

    .line 80
    const/4 v0, 0x5

    .line 82
    invoke-direct {p1, p2, p3, p4, v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;I)V

    .line 83
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 86
    move-result-object p1

    .line 89
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->providesMaxBurnInOffsetProvider:Ljavax/inject/Provider;

    .line 90
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;

    .line 92
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 94
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 96
    iget-object p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;

    .line 98
    const/4 v0, 0x6

    .line 100
    invoke-direct {p1, p2, p3, p4, v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;I)V

    .line 101
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 104
    move-result-object p1

    .line 107
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->providesDreamInComplicationsTranslationYProvider:Ljavax/inject/Provider;

    .line 108
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;

    .line 110
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 112
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 114
    iget-object p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;

    .line 116
    const/4 v0, 0x7

    .line 118
    invoke-direct {p1, p2, p3, p4, v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;I)V

    .line 119
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 122
    move-result-object p1

    .line 125
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->providesDreamInComplicationsTranslationYDurationProvider:Ljavax/inject/Provider;

    .line 126
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;

    .line 128
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 130
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 132
    iget-object p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;

    .line 134
    const/4 v0, 0x0

    .line 136
    invoke-direct {p1, p2, p3, p4, v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;I)V

    .line 137
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 140
    move-result-object p1

    .line 143
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayContainerViewControllerProvider:Ljavax/inject/Provider;

    .line 144
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;

    .line 146
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 148
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 150
    iget-object p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;

    .line 152
    const/16 v0, 0x8

    .line 154
    invoke-direct {p1, p2, p3, p4, v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;I)V

    .line 156
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    .line 159
    move-result-object p1

    .line 162
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->providesLifecycleProvider:Ljavax/inject/Provider;

    .line 163
    new-instance p1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;

    .line 165
    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 167
    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 169
    iget-object p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;

    .line 171
    const/16 v0, 0x9

    .line 173
    invoke-direct {p1, p2, p3, p4, v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;I)V

    .line 175
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->builderProvider:Ljavax/inject/Provider;

    .line 178
    return-void
    .line 180
.end method

.method public final namedFlingAnimationUtils()Lcom/android/wm/shell/animation/FlingAnimationUtils;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->builderProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->reset()V

    .line 10
    const v0, 0x3f19999a    # 0.6f

    .line 13
    iput v0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mMaxLengthSeconds:F

    .line 16
    iput v0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mSpeedUpFactor:F

    .line 18
    invoke-virtual {p0}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->build()Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 20
    move-result-object p0

    .line 23
    return-object p0
    .line 24
.end method

.method public final namedFlingAnimationUtils2()Lcom/android/wm/shell/animation/FlingAnimationUtils;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->builderProvider:Ljavax/inject/Provider;

    .line 2
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->reset()V

    .line 10
    const v0, 0x3f19999a    # 0.6f

    .line 13
    iput v0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mMaxLengthSeconds:F

    .line 16
    iput v0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mSpeedUpFactor:F

    .line 18
    invoke-virtual {p0}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->build()Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 20
    move-result-object p0

    .line 23
    return-object p0
    .line 24
.end method

.method public final namedFloat()F
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2
    sget-object v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p0

    .line 9
    new-instance v0, Landroid/util/TypedValue;

    .line 10
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 12
    const v1, 0x7f070302    # @dimen/dream_overlay_bouncer_start_region_screen_percentage '0.2'

    .line 15
    const/4 v2, 0x1

    .line 18
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 19
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    .line 22
    move-result p0

    .line 25
    return p0
    .line 26
.end method

.method public final namedInteger()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2
    sget-object v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p0

    .line 9
    const v0, 0x7f0702f4    # @dimen/dream_overlay_anim_blur_radius '50.0dp'

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 13
    move-result p0

    .line 16
    return p0
    .line 17
.end method

.method public final namedInteger2()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2
    sget-object v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p0

    .line 9
    const v0, 0x7f070324    # @dimen/dream_overlay_status_bar_height '60.0dp'

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 13
    move-result p0

    .line 16
    return p0
    .line 17
.end method

.method public final namedLong()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2
    sget-object v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p0

    .line 9
    const v0, 0x7f0b0033    # @integer/config_dreamOverlayBurnInProtectionUpdateIntervalMillis '1000'

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 13
    move-result p0

    .line 16
    int-to-long v0, p0

    .line 17
    return-wide v0
    .line 18
.end method

.method public final namedLong2()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2
    sget-object v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p0

    .line 9
    const v0, 0x7f0b0037    # @integer/config_dreamOverlayMillisUntilFullJitter '240000'

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 13
    move-result p0

    .line 16
    int-to-long v0, p0

    .line 17
    return-wide v0
    .line 18
.end method

.method public final namedLong3()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2
    sget-object v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p0

    .line 9
    const v0, 0x7f0b0034    # @integer/config_dreamOverlayInBlurDurationMs '250'

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 13
    move-result p0

    .line 16
    int-to-long v0, p0

    .line 17
    return-wide v0
    .line 18
.end method

.method public final namedLong4()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2
    sget-object v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->mainResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p0

    .line 9
    const v0, 0x7f0b0035    # @integer/config_dreamOverlayInComplicationsDurationMs '250'

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 13
    move-result p0

    .line 16
    int-to-long v0, p0

    .line 17
    return-wide v0
    .line 18
.end method

.method public final providesBouncerSwipeTouchHandler()Lcom/android/systemui/dreams/touch/DreamTouchHandler;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->bouncerSwipeTouchHandler()Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 6
    return-object p0
    .line 9
.end method

.method public final providesDreamTouchHandlers()Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->dreamTouchHandlers:Ljava/util/Set;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/util/HashSet;

    .line 7
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 9
    :goto_0
    return-object p0
    .line 12
.end method

.method public final providesNotificationShadeTouchHandler()Lcom/android/systemui/dreams/touch/DreamTouchHandler;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->shadeTouchHandler()Lcom/android/systemui/dreams/touch/ShadeTouchHandler;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 6
    return-object p0
    .line 9
.end method

.method public final scrimManager()Lcom/android/systemui/dreams/touch/scrim/ScrimManager;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainExecutorProvider:Ljavax/inject/Provider;

    .line 4
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 10
    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 12
    invoke-virtual {v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->namedScrimController()Lcom/android/systemui/dreams/touch/scrim/ScrimController;

    .line 14
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 18
    invoke-virtual {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->namedScrimController2()Lcom/android/systemui/dreams/touch/scrim/ScrimController;

    .line 20
    move-result-object v2

    .line 23
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 24
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    .line 26
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 31
    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 32
    new-instance v3, Lcom/android/systemui/dreams/touch/scrim/ScrimManager;

    .line 34
    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/systemui/dreams/touch/scrim/ScrimManager;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/dreams/touch/scrim/ScrimController;Lcom/android/systemui/dreams/touch/scrim/ScrimController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V

    .line 36
    return-object v3
    .line 39
.end method

.method public final setOfDreamTouchHandler()Ljava/util/Set;
    .locals 2

    .line 1
    new-instance v0, Ldagger/internal/SetBuilder;

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Ldagger/internal/SetBuilder;-><init>(I)V

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->providesBouncerSwipeTouchHandler()Lcom/android/systemui/dreams/touch/DreamTouchHandler;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ldagger/internal/SetBuilder;->add(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->providesNotificationShadeTouchHandler()Lcom/android/systemui/dreams/touch/DreamTouchHandler;

    .line 15
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ldagger/internal/SetBuilder;->add(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->providesDreamTouchHandlers()Ljava/util/Set;

    .line 22
    move-result-object p0

    .line 25
    invoke-virtual {v0, p0}, Ldagger/internal/SetBuilder;->addAll(Ljava/util/Collection;)V

    .line 26
    invoke-virtual {v0}, Ldagger/internal/SetBuilder;->build()Ljava/util/Set;

    .line 29
    move-result-object p0

    .line 32
    return-object p0
    .line 33
.end method

.method public final shadeTouchHandler()Lcom/android/systemui/dreams/touch/ShadeTouchHandler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->optionalOfCentralSurfacesProvider:Ljavax/inject/Provider;

    .line 4
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/Optional;

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->namedInteger2()I

    .line 12
    move-result p0

    .line 15
    new-instance v1, Lcom/android/systemui/dreams/touch/ShadeTouchHandler;

    .line 16
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/dreams/touch/ShadeTouchHandler;-><init>(ILjava/util/Optional;)V

    .line 18
    return-object v1
    .line 21
.end method

.method public final touchInsetSession()Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$DreamOverlayComponentImpl;->touchInsetManager:Lcom/android/systemui/touch/TouchInsetManager;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/touch/TouchInsetManager;->createSession()Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method
