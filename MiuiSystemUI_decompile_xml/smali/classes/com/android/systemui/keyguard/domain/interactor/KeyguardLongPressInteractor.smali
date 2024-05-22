.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final _isMenuVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _shouldOpenSettings:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final accessibilityManager:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

.field public final appContext:Landroid/content/Context;

.field public delayedHideMenuJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final isLongPressHandlingEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isMenuVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final logger:Lcom/android/internal/logging/UiEventLogger;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final shouldOpenSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->appContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 7
    iput-object p5, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->logger:Lcom/android/internal/logging/UiEventLogger;

    .line 9
    iput-object p6, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 11
    iput-object p8, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->accessibilityManager:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->isFeatureEnabled()Z

    .line 15
    move-result p1

    .line 18
    const/4 p5, 0x0

    .line 19
    if-eqz p1, :cond_0

    .line 20
    iget-object p1, p3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->finishedKeyguardState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 22
    new-instance p3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$special$$inlined$map$1;

    .line 24
    invoke-direct {p3, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/ReadonlyStateFlow;)V

    .line 26
    check-cast p4, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 29
    iget-object p1, p4, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isQuickSettingsVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 31
    new-instance p4, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$isLongPressHandlingEnabled$2;

    .line 33
    invoke-direct {p4, p5}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$isLongPressHandlingEnabled$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 35
    new-instance p6, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 38
    invoke-direct {p6, p3, p1, p4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 40
    goto :goto_0

    .line 43
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 44
    new-instance p6, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    .line 46
    invoke-direct {p6, p1}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    .line 48
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 51
    move-result-object p1

    .line 54
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 55
    invoke-static {p6, p2, p1, p3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 57
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->isLongPressHandlingEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 61
    invoke-static {p3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 63
    move-result-object p4

    .line 66
    iput-object p4, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->_isMenuVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 67
    new-instance p4, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$special$$inlined$flatMapLatest$1;

    .line 69
    invoke-direct {p4, p0, p5}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$special$$inlined$flatMapLatest$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;Lkotlin/coroutines/Continuation;)V

    .line 71
    invoke-static {p1, p4}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 74
    move-result-object p1

    .line 77
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 78
    move-result-object p4

    .line 81
    invoke-static {p1, p2, p4, p3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 82
    move-result-object p1

    .line 85
    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->isMenuVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 86
    invoke-static {p3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 88
    move-result-object p1

    .line 91
    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->_shouldOpenSettings:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 92
    new-instance p3, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 94
    invoke-direct {p3, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 96
    iput-object p3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->shouldOpenSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->isFeatureEnabled()Z

    .line 101
    move-result p1

    .line 104
    if-eqz p1, :cond_1

    .line 105
    new-instance v1, Landroid/content/IntentFilter;

    .line 107
    const-string p1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 109
    invoke-direct {v1, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 111
    const/4 v2, 0x0

    .line 114
    const/4 v3, 0x0

    .line 115
    const/4 v4, 0x0

    .line 116
    const/16 v5, 0xe

    .line 117
    move-object v0, p7

    .line 119
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;ILjava/lang/String;I)Lkotlinx/coroutines/flow/Flow;

    .line 120
    move-result-object p1

    .line 123
    new-instance p3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$1;

    .line 124
    invoke-direct {p3, p0, p5}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;Lkotlin/coroutines/Continuation;)V

    .line 126
    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    .line 129
    invoke-direct {p0, p3, p1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 131
    invoke-static {p0, p2}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)V

    .line 134
    :cond_1
    return-void
    .line 137
.end method


# virtual methods
.method public final hideMenu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->delayedHideMenuJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 7
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->delayedHideMenuJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->_isMenuVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 12
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 16
    return-void
    .line 19
.end method

.method public final isFeatureEnabled()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/flags/Flags;->LOCK_SCREEN_LONG_PRESS_ENABLED:Lcom/android/systemui/flags/ReleasedFlag;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 4
    move-object v2, v1

    .line 6
    check-cast v2, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 7
    invoke-virtual {v2, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    sget-object v0, Lcom/android/systemui/flags/Flags;->REVAMPED_WALLPAPER_UI:Lcom/android/systemui/flags/ReleasedFlag;

    .line 15
    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 17
    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 19
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->appContext:Landroid/content/Context;

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object p0

    .line 30
    const v0, 0x7f050091    # @bool/long_press_keyguard_customize_lockscreen_enabled 'false'

    .line 31
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 34
    move-result p0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    const/4 p0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    :goto_0
    return p0
    .line 43
.end method

.method public final onMenuTouchGestureEnded(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->hideMenu()V

    .line 4
    sget-object p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$LogEvents;->LOCK_SCREEN_LONG_PRESS_POPUP_CLICKED:Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$LogEvents;

    .line 7
    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->logger:Lcom/android/internal/logging/UiEventLogger;

    .line 9
    invoke-interface {v0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 11
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->_shouldOpenSettings:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 14
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->delayedHideMenuJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 22
    const/4 v0, 0x0

    .line 24
    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 27
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->delayedHideMenuJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 30
    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$scheduleAutomaticMenuHiding$1;

    .line 32
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor$scheduleAutomaticMenuHiding$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;Lkotlin/coroutines/Continuation;)V

    .line 34
    const/4 v1, 0x3

    .line 37
    iget-object v2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 38
    invoke-static {v2, v0, v0, p1, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 40
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardLongPressInteractor;->delayedHideMenuJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 44
    :goto_0
    return-void
    .line 46
.end method
