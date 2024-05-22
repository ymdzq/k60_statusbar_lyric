.class public final Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final appContext:Landroid/content/Context;

.field public final configs:Ljava/util/Set;

.field public final localUserSelectionManager:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLocalUserSelectionManager;

.field public final remoteUserSelectionManager:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceRemoteUserSelectionManager;

.field public final selectionManager:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final selections:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLocalUserSelectionManager;Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceRemoteUserSelectionManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLegacySettingSyncer;Ljava/util/Set;Lcom/android/systemui/dump/DumpManager;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;->appContext:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;->localUserSelectionManager:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLocalUserSelectionManager;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;->remoteUserSelectionManager:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceRemoteUserSelectionManager;

    .line 9
    iput-object p5, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 11
    iput-object p7, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;->configs:Ljava/util/Set;

    .line 13
    new-instance p1, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$userId$1;

    .line 15
    const/4 p4, 0x0

    .line 17
    invoke-direct {p1, p0, p4}, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$userId$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;Lkotlin/coroutines/Continuation;)V

    .line 18
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 21
    move-result-object p1

    .line 24
    const/4 p5, -0x1

    .line 25
    invoke-static {p1, p5}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 26
    move-result-object p1

    .line 29
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 30
    move-result-object p1

    .line 33
    new-instance p5, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$special$$inlined$map$1;

    .line 34
    invoke-direct {p5, p1, p9, p0}, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Landroid/os/UserHandle;Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;)V

    .line 36
    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    .line 39
    invoke-static {p5, p2, p1, p3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 41
    move-result-object p3

    .line 44
    iput-object p3, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;->selectionManager:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 45
    new-instance p5, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$special$$inlined$flatMapLatest$1;

    .line 47
    invoke-direct {p5, p0, p4}, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$special$$inlined$flatMapLatest$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;Lkotlin/coroutines/Continuation;)V

    .line 49
    invoke-static {p3, p5}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 52
    move-result-object p3

    .line 55
    invoke-static {}, Lkotlin/collections/MapsKt___MapsJvmKt;->emptyMap()Ljava/util/Map;

    .line 56
    move-result-object p4

    .line 59
    invoke-static {p3, p2, p1, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 60
    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;->selections:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 64
    invoke-static {p6}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLegacySettingSyncer;->startSyncing$default(Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceLegacySettingSyncer;)V

    .line 66
    new-instance p1, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$Dumpster;

    .line 69
    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$Dumpster;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;)V

    .line 71
    sget-object p0, Lcom/android/systemui/dump/DumpPriority;->CRITICAL:Lcom/android/systemui/dump/DumpPriority;

    .line 74
    const-string p2, "KeyguardQuickAffordances"

    .line 76
    invoke-virtual {p8, p2, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;Lcom/android/systemui/dump/DumpPriority;)V

    .line 78
    return-void
    .line 81
.end method
