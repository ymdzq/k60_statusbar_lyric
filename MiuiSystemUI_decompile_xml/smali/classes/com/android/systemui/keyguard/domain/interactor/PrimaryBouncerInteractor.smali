.class public final Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final bouncerExpansion:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final context:Landroid/content/Context;

.field public final dismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

.field public final falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final isBackButtonEnabled:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

.field public final isInteractable:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$1;

.field public final isShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final keyguardAuthenticated:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

.field public final keyguardPosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final keyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mainHandler:Landroid/os/Handler;

.field public final panelExpansionAmount:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final primaryBouncerCallbackInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;

.field public final primaryBouncerView:Lcom/android/systemui/keyguard/data/BouncerViewImpl;

.field public final repository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

.field public final resourceUpdateRequests:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$1;

.field public final showMessage:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

.field public final showRunnable:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$showRunnable$1;

.field public final sideFpsShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final startingDisappearAnimation:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

.field public final startingToHide:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$1;

.field public final trustRepository:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;Lcom/android/systemui/keyguard/data/BouncerViewImpl;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;Lcom/android/systemui/flags/FeatureFlags;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->primaryBouncerView:Lcom/android/systemui/keyguard/data/BouncerViewImpl;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->mainHandler:Landroid/os/Handler;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->keyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->primaryBouncerCallbackInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 17
    iput-object p8, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->dismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    .line 19
    iput-object p9, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->context:Landroid/content/Context;

    .line 21
    iput-object p10, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 23
    iput-object p11, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->trustRepository:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;

    .line 25
    invoke-virtual {p9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object p2

    .line 30
    const p3, 0x7f0b00f2    # @integer/primary_bouncer_passive_auth_delay '500'

    .line 31
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 34
    new-instance p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$showRunnable$1;

    .line 37
    const/4 p3, 0x0

    .line 39
    invoke-direct {p2, p0, p3}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$showRunnable$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;I)V

    .line 40
    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->showRunnable:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$showRunnable$1;

    .line 43
    check-cast p1, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 45
    iget-object p2, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->keyguardAuthenticated:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 47
    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 49
    invoke-direct {p4, p2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 51
    iput-object p4, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->keyguardAuthenticated:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 54
    iget-object p2, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerShow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 56
    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->isShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 58
    iget-object p4, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerStartingToHide:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 60
    new-instance p5, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$1;

    .line 62
    const/4 p6, 0x1

    .line 64
    invoke-direct {p5, p4, p6}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 65
    new-instance p4, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$1;

    .line 68
    invoke-direct {p4, p5, p3}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 70
    iput-object p4, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->startingToHide:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$1;

    .line 73
    iget-object p3, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->isBackButtonEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 75
    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 77
    invoke-direct {p4, p3}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 79
    iput-object p4, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->isBackButtonEnabled:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 82
    iget-object p3, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->showMessage:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 84
    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 86
    invoke-direct {p4, p3}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 88
    iput-object p4, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->showMessage:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 91
    iget-object p3, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerStartingDisappearAnimation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 93
    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 95
    invoke-direct {p4, p3}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 97
    iput-object p4, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->startingDisappearAnimation:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 100
    iget-object p3, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->resourceUpdateRequests:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 102
    new-instance p4, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$1;

    .line 104
    const/4 p5, 0x2

    .line 106
    invoke-direct {p4, p3, p5}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 107
    iput-object p4, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->resourceUpdateRequests:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$1;

    .line 110
    iget-object p3, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->keyguardPosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 112
    iput-object p3, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->keyguardPosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 114
    iget-object p3, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->panelExpansionAmount:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 116
    iput-object p3, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->panelExpansionAmount:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 118
    new-instance p4, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$bouncerExpansion$1;

    .line 120
    const/4 p5, 0x0

    .line 122
    invoke-direct {p4, p5}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$bouncerExpansion$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 123
    new-instance p5, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 126
    invoke-direct {p5, p3, p2, p4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 128
    iput-object p5, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->bouncerExpansion:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 131
    new-instance p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$1;

    .line 133
    const/4 p3, 0x3

    .line 135
    invoke-direct {p2, p5, p3}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 136
    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->isInteractable:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$1;

    .line 139
    iget-object p1, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->sideFpsShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 141
    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->sideFpsShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 143
    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$keyguardUpdateMonitorCallback$1;

    .line 145
    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$keyguardUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;)V

    .line 147
    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 150
    invoke-virtual {p10, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 152
    sget-object p0, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 155
    return-void
    .line 157
.end method


# virtual methods
.method public final hide()V
    .locals 6

    .line 1
    const-string v0, "KeyguardBouncer#hide"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->isFullyShowing()Z

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    const/16 v0, 0x3f

    .line 14
    const/4 v2, 0x1

    .line 16
    invoke-static {v0, v2}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    .line 17
    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->dismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    .line 20
    iget-object v2, v0, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->mDismissCallbacks:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result v3

    .line 27
    :goto_0
    add-int/lit8 v3, v3, -0x1

    .line 28
    if-ltz v3, :cond_0

    .line 30
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v4

    .line 35
    check-cast v4, Lcom/android/systemui/keyguard/DismissCallbackWrapper;

    .line 36
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v5, Lcom/android/systemui/keyguard/DismissCallbackRegistry$$ExternalSyntheticLambda0;

    .line 41
    invoke-direct {v5, v4, v1}, Lcom/android/systemui/keyguard/DismissCallbackRegistry$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/keyguard/DismissCallbackWrapper;I)V

    .line 43
    iget-object v4, v0, Lcom/android/systemui/keyguard/DismissCallbackRegistry;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    .line 46
    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 48
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 55
    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 57
    iget-object v2, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_primaryBouncerDisappearAnimation:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 59
    const/4 v3, 0x0

    .line 61
    invoke-virtual {v2, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 62
    iget-object v2, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 65
    check-cast v2, Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 67
    iget-boolean v3, v2, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSessionStarted:Z

    .line 69
    if-eqz v3, :cond_2

    .line 71
    iget-object v3, v2, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 73
    iget-object v2, v2, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSensorEventListener:Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda1;

    .line 75
    invoke-interface {v3, v2}, Lcom/android/systemui/util/sensors/ThresholdSensor;->register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    .line 77
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 80
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 82
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mPrimaryBouncerShowing:Z

    .line 84
    if-eqz v3, :cond_3

    .line 86
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mPrimaryBouncerShowing:Z

    .line 88
    new-instance v3, Ljava/util/ArrayList;

    .line 90
    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 92
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    new-instance v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;

    .line 97
    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;-><init>(I)V

    .line 99
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 102
    :cond_3
    sget-boolean v2, Lcom/android/systemui/DejankUtils;->STRICT_MODE_ENABLED:Z

    .line 105
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 107
    sget-object v2, Lcom/android/systemui/DejankUtils;->sPendingRunnables:Ljava/util/ArrayList;

    .line 110
    iget-object v3, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->showRunnable:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$showRunnable$1;

    .line 112
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 114
    sget-object v2, Lcom/android/systemui/DejankUtils;->sHandler:Landroid/os/Handler;

    .line 117
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    iget-object v2, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->mainHandler:Landroid/os/Handler;

    .line 122
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    const/high16 v2, 0x3f800000    # 1.0f

    .line 127
    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->setPanelExpansion(F)V

    .line 129
    iget-object v2, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_primaryBouncerShowingSoon:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 132
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 134
    invoke-virtual {v2, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 136
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_primaryBouncerShow:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 139
    invoke-virtual {v0, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 141
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->primaryBouncerCallbackInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;->expansionCallbacks:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 148
    move-result-object v0

    .line 151
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    move-result v2

    .line 155
    if-eqz v2, :cond_4

    .line 156
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    move-result-object v2

    .line 161
    check-cast v2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor$PrimaryBouncerExpansionCallback;

    .line 162
    invoke-interface {v2, v1}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor$PrimaryBouncerExpansionCallback;->onVisibilityChanged(Z)V

    .line 164
    goto :goto_1

    .line 167
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;->expansionCallbacks:Ljava/util/ArrayList;

    .line 168
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 170
    move-result-object p0

    .line 173
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    move-result v0

    .line 177
    if-eqz v0, :cond_5

    .line 178
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    move-result-object v0

    .line 183
    check-cast v0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor$PrimaryBouncerExpansionCallback;

    .line 184
    invoke-interface {v0}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor$PrimaryBouncerExpansionCallback;->onFullyHidden()V

    .line 186
    goto :goto_2

    .line 189
    :cond_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 190
    return-void
    .line 193
.end method

.method public final isBouncerShowing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 2
    check-cast p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerShow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 6
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/Boolean;

    .line 12
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    move-result p0

    .line 17
    return p0
    .line 18
.end method

.method public final isFullyShowing()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 2
    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerShowingSoon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 6
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Boolean;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->isBouncerShowing()Z

    .line 20
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    :cond_0
    iget-object p0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerStartingDisappearAnimation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 26
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 31
    if-nez p0, :cond_1

    .line 32
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    :goto_0
    return p0
    .line 37
.end method

.method public final isInTransit()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 2
    check-cast p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerShowingSoon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 6
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-nez v0, :cond_3

    .line 19
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->panelExpansionAmount:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 21
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/Number;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 29
    move-result v0

    .line 32
    const/high16 v2, 0x3f800000    # 1.0f

    .line 33
    cmpg-float v0, v0, v2

    .line 35
    const/4 v2, 0x0

    .line 37
    if-nez v0, :cond_0

    .line 38
    move v0, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v0, v2

    .line 42
    :goto_0
    if-nez v0, :cond_2

    .line 43
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->panelExpansionAmount:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 45
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 47
    move-result-object p0

    .line 50
    check-cast p0, Ljava/lang/Number;

    .line 51
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 53
    move-result p0

    .line 56
    const/4 v0, 0x0

    .line 57
    cmpg-float p0, p0, v0

    .line 58
    if-nez p0, :cond_1

    .line 60
    move p0, v1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move p0, v2

    .line 64
    :goto_1
    if-nez p0, :cond_2

    .line 65
    goto :goto_2

    .line 67
    :cond_2
    move v1, v2

    .line 68
    :cond_3
    :goto_2
    return v1
    .line 69
.end method

.method public final setPanelExpansion(F)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 2
    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->panelExpansionAmount:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 6
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Number;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 14
    move-result v1

    .line 17
    cmpg-float v2, v1, p1

    .line 18
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x1

    .line 21
    if-nez v2, :cond_0

    .line 22
    move v2, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v2, v3

    .line 26
    :goto_0
    xor-int/2addr v2, v4

    .line 27
    iget-object v5, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerStartingDisappearAnimation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 28
    invoke-virtual {v5}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 30
    move-result-object v5

    .line 33
    if-nez v5, :cond_1

    .line 34
    iget-object v5, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_panelExpansionAmount:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 36
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 38
    move-result-object v6

    .line 41
    invoke-virtual {v5, v6}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 42
    :cond_1
    const/4 v5, 0x0

    .line 45
    cmpg-float v6, p1, v5

    .line 46
    if-nez v6, :cond_2

    .line 48
    move v7, v4

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move v7, v3

    .line 52
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->primaryBouncerCallbackInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;

    .line 53
    if-eqz v7, :cond_4

    .line 55
    cmpg-float v7, v1, v5

    .line 57
    if-nez v7, :cond_3

    .line 59
    move v7, v4

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    move v7, v3

    .line 63
    :goto_2
    if-nez v7, :cond_4

    .line 64
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 66
    check-cast p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 68
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 70
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSensorEventListener:Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda1;

    .line 72
    invoke-interface {v0, p0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    .line 74
    iget-object p0, v8, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;->expansionCallbacks:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object p0

    .line 82
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v0

    .line 86
    if-eqz v0, :cond_b

    .line 87
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v0

    .line 92
    check-cast v0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor$PrimaryBouncerExpansionCallback;

    .line 93
    invoke-interface {v0}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor$PrimaryBouncerExpansionCallback;->onFullyShown()V

    .line 95
    goto :goto_3

    .line 98
    :cond_4
    const/high16 v7, 0x3f800000    # 1.0f

    .line 99
    cmpg-float v9, p1, v7

    .line 101
    if-nez v9, :cond_5

    .line 103
    move v9, v4

    .line 105
    goto :goto_4

    .line 106
    :cond_5
    move v9, v3

    .line 107
    :goto_4
    if-eqz v9, :cond_7

    .line 108
    cmpg-float v7, v1, v7

    .line 110
    if-nez v7, :cond_6

    .line 112
    move v7, v4

    .line 114
    goto :goto_5

    .line 115
    :cond_6
    move v7, v3

    .line 116
    :goto_5
    if-nez v7, :cond_7

    .line 117
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$showRunnable$1;

    .line 119
    invoke-direct {v0, p0, v4}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$showRunnable$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;I)V

    .line 121
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 124
    iget-object p0, v8, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;->expansionCallbacks:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 129
    move-result-object p0

    .line 132
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    move-result v0

    .line 136
    if-eqz v0, :cond_b

    .line 137
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    move-result-object v0

    .line 142
    check-cast v0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor$PrimaryBouncerExpansionCallback;

    .line 143
    invoke-interface {v0}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor$PrimaryBouncerExpansionCallback;->onFullyHidden()V

    .line 145
    goto :goto_6

    .line 148
    :cond_7
    if-nez v6, :cond_8

    .line 149
    move p0, v4

    .line 151
    goto :goto_7

    .line 152
    :cond_8
    move p0, v3

    .line 153
    :goto_7
    if-nez p0, :cond_b

    .line 154
    cmpg-float p0, v1, v5

    .line 156
    if-nez p0, :cond_9

    .line 158
    move v3, v4

    .line 160
    :cond_9
    if-eqz v3, :cond_b

    .line 161
    iget-object p0, v8, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;->expansionCallbacks:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 165
    move-result-object p0

    .line 168
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    move-result v1

    .line 172
    if-eqz v1, :cond_a

    .line 173
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    move-result-object v1

    .line 178
    check-cast v1, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor$PrimaryBouncerExpansionCallback;

    .line 179
    invoke-interface {v1}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor$PrimaryBouncerExpansionCallback;->onStartingToHide()V

    .line 181
    goto :goto_8

    .line 184
    :cond_a
    iget-object p0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_primaryBouncerStartingToHide:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 185
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 187
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 189
    :cond_b
    if-eqz v2, :cond_c

    .line 192
    iget-object p0, v8, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;->expansionCallbacks:Ljava/util/ArrayList;

    .line 194
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 196
    move-result-object p0

    .line 199
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 200
    move-result v0

    .line 203
    if-eqz v0, :cond_c

    .line 204
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 206
    move-result-object v0

    .line 209
    check-cast v0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor$PrimaryBouncerExpansionCallback;

    .line 210
    invoke-interface {v0, p1}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor$PrimaryBouncerExpansionCallback;->onExpansionChanged(F)V

    .line 212
    goto :goto_9

    .line 215
    :cond_c
    return-void
    .line 216
.end method

.method public final show()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 2
    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_keyguardAuthenticated:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 6
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 9
    iget-object v1, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_primaryBouncerStartingToHide:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 12
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->isBouncerShowing()Z

    .line 19
    move-result v1

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    if-nez v1, :cond_0

    .line 25
    iget-object v1, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerShowingSoon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 27
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/Boolean;

    .line 33
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    move-result v1

    .line 38
    if-eqz v1, :cond_3

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->keyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 41
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 43
    move-result v5

    .line 46
    invoke-virtual {v1, v5}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 47
    move-result-object v1

    .line 50
    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 51
    if-eq v1, v5, :cond_2

    .line 53
    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 55
    if-ne v1, v5, :cond_1

    .line 57
    goto :goto_0

    .line 59
    :cond_1
    move v1, v3

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    :goto_0
    move v1, v4

    .line 62
    :goto_1
    if-eqz v1, :cond_3

    .line 63
    move v1, v4

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    move v1, v3

    .line 67
    :goto_2
    const-string v5, "KeyguardBouncer#show"

    .line 68
    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 70
    iget-object v5, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_primaryBouncerScrimmed:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 73
    invoke-virtual {v5, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 75
    if-eqz v1, :cond_4

    .line 78
    iget-object v1, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_primaryBouncerShow:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 80
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 82
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->primaryBouncerView:Lcom/android/systemui/keyguard/data/BouncerViewImpl;

    .line 85
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/data/BouncerViewImpl;->getDelegate()Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    .line 87
    move-result-object v1

    .line 90
    if-eqz v1, :cond_5

    .line 91
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 93
    move-result v2

    .line 96
    iget-object v1, v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 97
    iget-object v5, v1, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainerController$2;

    .line 99
    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 101
    invoke-virtual {v5, v3, v2, v3, v1}, Lcom/android/keyguard/KeyguardSecurityContainerController$2;->dismiss(ZIZLcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    .line 103
    move-result v1

    .line 106
    if-ne v1, v4, :cond_5

    .line 107
    move v1, v4

    .line 109
    goto :goto_3

    .line 110
    :cond_5
    move v1, v3

    .line 111
    :goto_3
    if-eqz v1, :cond_6

    .line 112
    return-void

    .line 114
    :cond_6
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_primaryBouncerShowingSoon:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 115
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 117
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->showRunnable:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$showRunnable$1;

    .line 122
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 127
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 129
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mPrimaryBouncerShowing:Z

    .line 131
    if-eq v1, v4, :cond_7

    .line 133
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mPrimaryBouncerShowing:Z

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    .line 137
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 139
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 141
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;

    .line 144
    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;-><init>(I)V

    .line 146
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 149
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->primaryBouncerCallbackInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;

    .line 152
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor;->expansionCallbacks:Ljava/util/ArrayList;

    .line 154
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 156
    move-result-object p0

    .line 159
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    move-result v0

    .line 163
    if-eqz v0, :cond_8

    .line 164
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    move-result-object v0

    .line 169
    check-cast v0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor$PrimaryBouncerExpansionCallback;

    .line 170
    invoke-interface {v0}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerCallbackInteractor$PrimaryBouncerExpansionCallback;->onStartingToShow()V

    .line 172
    goto :goto_4

    .line 175
    :cond_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 176
    return-void
    .line 179
.end method

.method public final updateSideFpsVisibility()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->context:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    const v1, 0x7f050060    # @bool/config_show_sidefps_hint_on_bouncer 'true'

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 11
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 15
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    .line 17
    move-result v2

    .line 20
    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 21
    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Landroid/hardware/biometrics/BiometricSourceType;)Z

    .line 23
    move-result v1

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->isBouncerShowing()Z

    .line 27
    move-result v3

    .line 30
    const/4 v4, 0x1

    .line 31
    iget-object v5, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 32
    const/4 v6, 0x0

    .line 34
    if-eqz v3, :cond_1

    .line 35
    if-eqz v0, :cond_1

    .line 37
    if-eqz v2, :cond_1

    .line 39
    if-eqz v1, :cond_1

    .line 41
    move-object v3, v5

    .line 43
    check-cast v3, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 44
    iget-object v3, v3, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerStartingDisappearAnimation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 46
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 48
    move-result-object v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    move v3, v4

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move v3, v6

    .line 56
    :goto_0
    if-nez v3, :cond_1

    .line 57
    move v3, v4

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move v3, v6

    .line 61
    :goto_1
    sget-boolean v7, Lcom/android/keyguard/KeyguardConstants;->DEBUG:Z

    .line 62
    if-eqz v7, :cond_3

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->isBouncerShowing()Z

    .line 66
    move-result p0

    .line 69
    move-object v7, v5

    .line 70
    check-cast v7, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 71
    iget-object v7, v7, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerStartingDisappearAnimation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 73
    invoke-virtual {v7}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 75
    move-result-object v7

    .line 78
    if-eqz v7, :cond_2

    .line 79
    goto :goto_2

    .line 81
    :cond_2
    move v4, v6

    .line 82
    :goto_2
    const-string/jumbo v6, "sideFpsToShow="

    .line 83
    const-string v7, "\nisBouncerShowing="

    .line 86
    const-string v8, "\nconfigEnabled="

    .line 88
    invoke-static {v6, v3, v7, p0, v8}, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    move-result-object p0

    .line 93
    const-string v6, "\nfpsDetectionRunning="

    .line 94
    const-string v7, "\nisUnlockingWithFpAllowed="

    .line 96
    invoke-static {p0, v0, v6, v2, v7}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 98
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    const-string v0, "\nisAnimatingAway="

    .line 104
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p0

    .line 115
    const-string v0, "PrimaryBouncerInteractor"

    .line 116
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_3
    check-cast v5, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 121
    iget-object p0, v5, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_sideFpsShowing:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 123
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 125
    move-result-object v0

    .line 128
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 129
    return-void
    .line 132
.end method

.method public final willRunDismissFromKeyguard()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->primaryBouncerView:Lcom/android/systemui/keyguard/data/BouncerViewImpl;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/data/BouncerViewImpl;->getDelegate()Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    .line 4
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 11
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mWillRunDismissFromKeyguard:Z

    .line 13
    const/4 v1, 0x1

    .line 15
    if-ne p0, v1, :cond_0

    .line 16
    move v0, v1

    .line 18
    :cond_0
    return v0
    .line 19
.end method
