.class public final Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/ProtoDumpable;


# instance fields
.field public final _currentSpecsAndTiles:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _userContext:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final currentTiles:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final currentUser:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final customTileAddedRepository:Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;

.field public final customTileStatePersister:Lcom/android/systemui/qs/external/CustomTileStatePersister;

.field public final installedPackagesWithTiles:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final installedTilesComponentRepository:Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepository;

.field public final logger:Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;

.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final specsToTiles:Ljava/util/Map;

.field public final tileFactory:Lcom/android/systemui/plugins/qs/QSFactory;

.field public final tileLifecycleManagerFactory:Lcom/android/systemui/qs/external/TileLifecycleManager$Factory;

.field public final tileSpecRepository:Lcom/android/systemui/qs/pipeline/data/repository/TileSpecRepository;

.field public final userAndTiles:Lkotlinx/coroutines/flow/Flow;

.field public final userContext:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final userId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/pipeline/data/repository/TileSpecRepository;Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepository;Lcom/android/systemui/user/data/repository/UserRepository;Lcom/android/systemui/qs/external/CustomTileStatePersister;Lcom/android/systemui/plugins/qs/QSFactory;Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;Lcom/android/systemui/qs/external/TileLifecycleManager$Factory;Lcom/android/systemui/settings/UserTracker;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->tileSpecRepository:Lcom/android/systemui/qs/pipeline/data/repository/TileSpecRepository;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->installedTilesComponentRepository:Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepository;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->customTileStatePersister:Lcom/android/systemui/qs/external/CustomTileStatePersister;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->tileFactory:Lcom/android/systemui/plugins/qs/QSFactory;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->customTileAddedRepository:Lcom/android/systemui/qs/pipeline/data/repository/CustomTileAddedRepository;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->tileLifecycleManagerFactory:Lcom/android/systemui/qs/external/TileLifecycleManager$Factory;

    .line 17
    iput-object p8, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 19
    iput-object p9, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 21
    iput-object p10, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 23
    iput-object p12, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->logger:Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;

    .line 25
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 27
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 29
    move-result-object p2

    .line 32
    iput-object p2, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->_currentSpecsAndTiles:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 33
    new-instance p3, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 35
    invoke-direct {p3, p2}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 37
    iput-object p3, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->currentTiles:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 40
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 42
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->specsToTiles:Ljava/util/Map;

    .line 47
    check-cast p8, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 49
    invoke-virtual {p8}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 51
    move-result p2

    .line 54
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object p2

    .line 58
    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 59
    move-result-object p2

    .line 62
    iput-object p2, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->currentUser:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 63
    new-instance p3, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 65
    invoke-direct {p3, p2}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 67
    iput-object p3, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->userId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 70
    invoke-virtual {p8}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    .line 72
    move-result-object p3

    .line 75
    invoke-static {p3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 76
    move-result-object p3

    .line 79
    iput-object p3, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->_userContext:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 80
    new-instance p4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 82
    invoke-direct {p4, p3}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 84
    iput-object p4, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->userContext:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 87
    new-instance p3, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$special$$inlined$flatMapLatest$1;

    .line 89
    const/4 p4, 0x0

    .line 91
    invoke-direct {p3, p0, p4}, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$special$$inlined$flatMapLatest$1;-><init>(Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;Lkotlin/coroutines/Continuation;)V

    .line 92
    invoke-static {p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 95
    move-result-object p3

    .line 98
    invoke-static {p3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 99
    move-result-object p3

    .line 102
    new-instance p5, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$UserAndTiles;

    .line 103
    const/4 p6, -0x1

    .line 105
    invoke-direct {p5, p6, p1}, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$UserAndTiles;-><init>(ILjava/util/List;)V

    .line 106
    invoke-static {p3, p5}, Lcom/android/systemui/util/kotlin/FlowKt;->pairwise(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$UserAndTiles;)Lkotlinx/coroutines/flow/SafeFlow;

    .line 109
    move-result-object p1

    .line 112
    invoke-static {p1, p10}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    .line 113
    move-result-object p1

    .line 116
    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->userAndTiles:Lkotlinx/coroutines/flow/Flow;

    .line 117
    new-instance p1, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$special$$inlined$flatMapLatest$2;

    .line 119
    invoke-direct {p1, p0, p4}, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$special$$inlined$flatMapLatest$2;-><init>(Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;Lkotlin/coroutines/Continuation;)V

    .line 121
    invoke-static {p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 124
    move-result-object p1

    .line 127
    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->installedPackagesWithTiles:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 128
    sget-object p0, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 130
    return-void
    .line 132
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "CurrentTileInteractorImpl:"

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->userId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 7
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    const-string v2, "User: "

    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 27
    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->currentTiles:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 30
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 35
    check-cast p0, Ljava/lang/Iterable;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 40
    move-result v1

    .line 43
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object p0

    .line 50
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 60
    check-cast v1, Lcom/android/systemui/qs/pipeline/domain/model/TileModel;

    .line 61
    iget-object v1, v1, Lcom/android/systemui/qs/pipeline/domain/model/TileModel;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    goto :goto_0

    .line 68
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 69
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object v0

    .line 77
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v1

    .line 81
    if-eqz v1, :cond_2

    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object v1

    .line 87
    instance-of v2, v1, Lcom/android/systemui/Dumpable;

    .line 88
    if-eqz v2, :cond_1

    .line 90
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 96
    move-result-object p0

    .line 99
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    move-result v0

    .line 103
    if-eqz v0, :cond_3

    .line 104
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    move-result-object v0

    .line 109
    check-cast v0, Lcom/android/systemui/Dumpable;

    .line 110
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 112
    goto :goto_2

    .line 115
    :cond_3
    return-void
    .line 116
.end method

.method public final dumpProto(Lcom/android/systemui/dump/nano/SystemUIProtoDump;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->currentTiles:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Iterable;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 12
    move-result v1

    .line 15
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p0

    .line 22
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 32
    check-cast v1, Lcom/android/systemui/qs/pipeline/domain/model/TileModel;

    .line 33
    iget-object v1, v1, Lcom/android/systemui/qs/pipeline/domain/model/TileModel;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 35
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 37
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    goto :goto_0

    .line 44
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 45
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v0

    .line 53
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 63
    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 64
    invoke-static {v1}, Lcom/android/systemui/qs/TileStateToProtoKt;->toProto(Lcom/android/systemui/plugins/qs/QSTile$State;)Lcom/android/systemui/qs/nano/QsTileState;

    .line 66
    move-result-object v1

    .line 69
    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    goto :goto_1

    .line 75
    :cond_2
    const/4 v0, 0x0

    .line 76
    new-array v0, v0, [Lcom/android/systemui/qs/nano/QsTileState;

    .line 77
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 79
    move-result-object p0

    .line 82
    check-cast p0, [Lcom/android/systemui/qs/nano/QsTileState;

    .line 83
    iput-object p0, p1, Lcom/android/systemui/dump/nano/SystemUIProtoDump;->tiles:[Lcom/android/systemui/qs/nano/QsTileState;

    .line 85
    return-void
    .line 87
.end method
