.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final biometricSettingsRepository:Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;

.field public final dockManager:Lcom/android/systemui/dock/DockManager;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final registry:Lcom/android/systemui/keyguard/domain/quickaffordance/KeyguardQuickAffordanceRegistryImpl;

.field public final repository:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/keyguard/domain/quickaffordance/KeyguardQuickAffordanceRegistryImpl;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/flags/FeatureFlags;Ldagger/Lazy;Lcom/android/systemui/animation/DialogLaunchAnimator;Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancesMetricsLoggerImpl;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->registry:Lcom/android/systemui/keyguard/domain/quickaffordance/KeyguardQuickAffordanceRegistryImpl;

    .line 7
    iput-object p6, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 9
    iput-object p7, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 11
    iput-object p8, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->repository:Ldagger/Lazy;

    .line 13
    iput-object p11, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->dockManager:Lcom/android/systemui/dock/DockManager;

    .line 15
    iput-object p12, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->biometricSettingsRepository:Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final combinedConfigs(Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;Ljava/util/List;)Lkotlinx/coroutines/flow/Flow;
    .locals 5

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    sget-object p0, Lcom/android/systemui/keyguard/domain/model/KeyguardQuickAffordanceModel$Hidden;->INSTANCE:Lcom/android/systemui/keyguard/domain/model/KeyguardQuickAffordanceModel$Hidden;

    .line 8
    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    .line 10
    invoke-direct {p1, p0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    .line 12
    return-object p1

    .line 15
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    invoke-static {p2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 18
    move-result v1

    .line 21
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v1

    .line 28
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    .line 39
    invoke-interface {v2}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->getLockScreenState()Lkotlinx/coroutines/flow/Flow;

    .line 41
    move-result-object v2

    .line 44
    new-instance v3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$1$1;

    .line 45
    const/4 v4, 0x0

    .line 47
    invoke-direct {v3, v4}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 48
    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    .line 51
    invoke-direct {v4, v3, v2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 53
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 60
    move-result-object v0

    .line 63
    const/4 v1, 0x0

    .line 64
    new-array v1, v1, [Lkotlinx/coroutines/flow/Flow;

    .line 65
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 67
    move-result-object v0

    .line 70
    check-cast v0, [Lkotlinx/coroutines/flow/Flow;

    .line 71
    new-instance v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1;

    .line 73
    invoke-direct {v1, v0, p2, p0, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Ljava/util/List;Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;)V

    .line 75
    return-object v1
    .line 78
.end method

.method public final quickAffordance(Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$1;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$1;

    .line 7
    iget v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$1;->label:I

    .line 9
    const/high16 v2, -0x80000000

    .line 11
    and-int v3, v1, v2

    .line 13
    if-eqz v3, :cond_0

    .line 15
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$1;->label:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$1;

    .line 21
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;Lkotlin/coroutines/Continuation;)V

    .line 23
    :goto_0
    iget-object p2, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$1;->result:Ljava/lang/Object;

    .line 26
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    iget v2, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$1;->label:I

    .line 30
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    if-ne v2, v3, :cond_1

    .line 35
    iget-object p0, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$1;->L$1:Ljava/lang/Object;

    .line 37
    move-object p1, p0

    .line 39
    check-cast p1, Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    .line 40
    iget-object p0, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$1;->L$0:Ljava/lang/Object;

    .line 42
    check-cast p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    .line 44
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    goto :goto_1

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 50
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p0

    .line 57
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    iput-object p0, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$1;->L$0:Ljava/lang/Object;

    .line 61
    iput-object p1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$1;->L$1:Ljava/lang/Object;

    .line 63
    iput v3, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$1;->label:I

    .line 65
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 67
    if-ne p2, v1, :cond_3

    .line 69
    return-object v1

    .line 71
    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    .line 72
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    move-result p2

    .line 77
    if-eqz p2, :cond_4

    .line 78
    sget-object p0, Lcom/android/systemui/keyguard/domain/model/KeyguardQuickAffordanceModel$Hidden;->INSTANCE:Lcom/android/systemui/keyguard/domain/model/KeyguardQuickAffordanceModel$Hidden;

    .line 80
    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    .line 82
    invoke-direct {p1, p0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    .line 84
    return-object p1

    .line 87
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->quickAffordanceAlwaysVisible(Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;)Lkotlinx/coroutines/flow/Flow;

    .line 88
    move-result-object p1

    .line 91
    iget-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    .line 92
    iget-object v0, p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isDozing:Lkotlinx/coroutines/flow/StateFlow;

    .line 94
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->biometricSettingsRepository:Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;

    .line 96
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl;->isCurrentUserInLockdown:Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$special$$inlined$map$1;

    .line 98
    new-instance v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$2;

    .line 100
    const/4 v2, 0x0

    .line 102
    invoke-direct {v1, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordance$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 103
    iget-object v2, p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardShowing:Lkotlinx/coroutines/flow/Flow;

    .line 106
    iget-object p2, p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isQuickSettingsVisible:Lkotlinx/coroutines/flow/Flow;

    .line 108
    filled-new-array {p1, v0, v2, p2, p0}, [Lkotlinx/coroutines/flow/Flow;

    .line 110
    move-result-object p0

    .line 113
    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    .line 114
    const/4 p2, 0x2

    .line 116
    invoke-direct {p1, p0, v1, p2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lkotlin/Function;I)V

    .line 117
    return-object p1
    .line 120
.end method

.method public final quickAffordanceAlwaysVisible(Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;)Lkotlinx/coroutines/flow/Flow;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/flags/Flags;->CUSTOMIZABLE_LOCK_SCREEN_QUICK_AFFORDANCES:Lcom/android/systemui/flags/ReleasedFlag;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 4
    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 6
    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->repository:Ldagger/Lazy;

    .line 14
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;

    .line 20
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;->selections:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 22
    new-instance v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordanceInternal$$inlined$map$1;

    .line 24
    invoke-direct {v1, v0, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordanceInternal$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/ReadonlyStateFlow;Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;)V

    .line 26
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordanceInternal$$inlined$flatMapLatest$1;

    .line 29
    const/4 v2, 0x0

    .line 31
    invoke-direct {v0, v2, p0, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$quickAffordanceInternal$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;)V

    .line 32
    invoke-static {v1, v0}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 35
    move-result-object p0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->registry:Lcom/android/systemui/keyguard/domain/quickaffordance/KeyguardQuickAffordanceRegistryImpl;

    .line 40
    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/quickaffordance/KeyguardQuickAffordanceRegistryImpl;->configsByPosition:Ljava/util/Map;

    .line 42
    invoke-static {v0, p1}, Lkotlin/collections/MapsKt___MapsJvmKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 47
    check-cast v0, Ljava/util/List;

    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->combinedConfigs(Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;Ljava/util/List;)Lkotlinx/coroutines/flow/Flow;

    .line 50
    move-result-object p0

    .line 53
    :goto_0
    return-object p0
    .line 54
.end method
