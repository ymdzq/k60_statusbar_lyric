.class public final Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final airplaneModeInteractor:Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;

.field public final constants:Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;

.field public final firstMobileSubShowingNetworkTypeIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final firstMobileSubViewModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final interactor:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractor;

.field public final mobileIconSubIdCache:Ljava/util/Map;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final subscriptionIdsFlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;Lcom/android/systemui/statusbar/pipeline/mobile/ui/VerboseMobileViewLogger;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractor;Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->interactor:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractor;

    .line 5
    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->airplaneModeInteractor:Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;

    .line 7
    iput-object p5, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->constants:Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;

    .line 9
    iput-object p6, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 11
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 13
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->mobileIconSubIdCache:Ljava/util/Map;

    .line 18
    check-cast p3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;

    .line 20
    iget-object p1, p3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->filteredSubscriptions:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 22
    new-instance p2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel$subscriptionIdsFlow$1;

    .line 24
    const/4 p3, 0x0

    .line 26
    invoke-direct {p2, p3}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel$subscriptionIdsFlow$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 27
    invoke-static {p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 30
    move-result-object p1

    .line 33
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 34
    move-result-object p2

    .line 37
    sget-object p4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 38
    invoke-static {p1, p6, p2, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 40
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->subscriptionIdsFlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 44
    new-instance p2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel$special$$inlined$map$1;

    .line 46
    invoke-direct {p2, p1, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/ReadonlyStateFlow;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;)V

    .line 48
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 51
    move-result-object p1

    .line 54
    invoke-static {p2, p6, p1, p3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 55
    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->firstMobileSubViewModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 59
    new-instance p2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel$special$$inlined$flatMapLatest$1;

    .line 61
    invoke-direct {p2, p3}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 63
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 66
    move-result-object p1

    .line 69
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 70
    move-result-object p2

    .line 73
    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 74
    invoke-static {p1, p6, p2, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 76
    move-result-object p1

    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->firstMobileSubShowingNetworkTypeIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 80
    new-instance p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel$1;

    .line 82
    invoke-direct {p1, p0, p3}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;Lkotlin/coroutines/Continuation;)V

    .line 84
    const/4 p0, 0x3

    .line 87
    invoke-static {p6, p3, p3, p1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 88
    return-void
    .line 91
.end method

.method public static synthetic getMobileIconSubIdCache$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public final commonViewModelForSub(I)Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->mobileIconSubIdCache:Ljava/util/Map;

    .line 4
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v2

    .line 9
    move-object v3, v1

    .line 10
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 11
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;

    .line 17
    if-eqz v2, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;

    .line 22
    iget-object v3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->interactor:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractor;

    .line 24
    check-cast v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;

    .line 26
    new-instance v16, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;

    .line 28
    iget-object v5, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 30
    iget-object v6, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->activeDataConnectionHasDataEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 32
    iget-object v7, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->alwaysShowDataRatIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 34
    iget-object v8, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->alwaysUseCdmaLevel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 36
    iget-object v9, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->mobileIsDefault:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 38
    iget-object v10, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->defaultMobileIconMapping:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 40
    iget-object v11, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->defaultMobileIconGroup:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 42
    iget-object v12, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->isDefaultConnectionFailed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 44
    iget-object v13, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->isForceHidden:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 46
    iget-object v4, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->mobileConnectionsRepo:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;

    .line 48
    move/from16 v15, p1

    .line 50
    invoke-interface {v4, v15}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;->getRepoForSubId(I)Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;

    .line 52
    move-result-object v14

    .line 55
    iget-object v3, v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->context:Landroid/content/Context;

    .line 56
    move-object/from16 v4, v16

    .line 58
    move-object v15, v3

    .line 60
    invoke-direct/range {v4 .. v15}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/ReadonlyStateFlow;Lkotlinx/coroutines/flow/ReadonlyStateFlow;Lkotlinx/coroutines/flow/ReadonlyStateFlow;Lkotlinx/coroutines/flow/ReadonlyStateFlow;Lkotlinx/coroutines/flow/ReadonlyStateFlow;Lkotlinx/coroutines/flow/ReadonlyStateFlow;Lkotlinx/coroutines/flow/ReadonlyStateFlow;Lkotlinx/coroutines/flow/ReadonlyStateFlow;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;Landroid/content/Context;)V

    .line 61
    iget-object v6, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->airplaneModeInteractor:Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;

    .line 64
    iget-object v7, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->constants:Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;

    .line 66
    iget-object v8, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 68
    move-object v3, v2

    .line 70
    move/from16 v4, p1

    .line 71
    move-object/from16 v5, v16

    .line 73
    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;-><init>(ILcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractorImpl;Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;Lkotlinx/coroutines/CoroutineScope;)V

    .line 75
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object v0

    .line 81
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :goto_0
    return-object v2
    .line 85
.end method
