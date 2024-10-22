.class public final Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final carrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field public final carrierConfigStream:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final configs:Landroid/util/SparseArray;

.field public final defaultConfig$delegate:Lkotlin/Lazy;

.field public final defaultConfigForLogs$delegate:Lkotlin/Lazy;

.field public isListening:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/telephony/CarrierConfigManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;->carrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 5
    sget-object p2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$defaultConfig$2;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$defaultConfig$2;

    .line 7
    invoke-static {p2}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 9
    move-result-object p2

    .line 12
    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;->defaultConfig$delegate:Lkotlin/Lazy;

    .line 13
    new-instance p2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$defaultConfigForLogs$2;

    .line 15
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$defaultConfigForLogs$2;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;)V

    .line 17
    invoke-static {p2}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 20
    move-result-object p2

    .line 23
    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;->defaultConfigForLogs$delegate:Lkotlin/Lazy;

    .line 24
    new-instance p2, Landroid/util/SparseArray;

    .line 26
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;->configs:Landroid/util/SparseArray;

    .line 31
    invoke-virtual {p3, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Lcom/android/systemui/Dumpable;)V

    .line 33
    new-instance p2, Landroid/content/IntentFilter;

    .line 36
    const-string p3, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 38
    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 40
    sget-object p3, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$carrierConfigStream$1;->INSTANCE:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$carrierConfigStream$1;

    .line 43
    const/16 v0, 0xe

    .line 45
    const/4 v1, 0x0

    .line 47
    invoke-static {p1, p2, v1, p3, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/flow/Flow;

    .line 48
    move-result-object p1

    .line 51
    new-instance p2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$carrierConfigStream$2;

    .line 52
    invoke-direct {p2, p4, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$carrierConfigStream$2;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/MobileInputLogger;Lkotlin/coroutines/Continuation;)V

    .line 54
    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    .line 57
    invoke-direct {p3, p2, p1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 59
    new-instance p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$special$$inlined$filter$1;

    .line 62
    invoke-direct {p1, p3}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;)V

    .line 64
    new-instance p2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$special$$inlined$mapNotNull$1;

    .line 67
    invoke-direct {p2, p1, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$special$$inlined$mapNotNull$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$special$$inlined$filter$1;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;)V

    .line 69
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 72
    move-result-object p1

    .line 75
    const/4 p3, 0x0

    .line 76
    invoke-static {p2, p5, p1, p3}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 77
    move-result-object p1

    .line 80
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;->carrierConfigStream:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 81
    return-void
    .line 83
.end method

.method public static synthetic getCarrierConfigStream$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;->isListening:Z

    .line 2
    const-string v0, "isListening: "

    .line 4
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 6
    iget-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;->configs:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 11
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    move v0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v2

    .line 21
    :goto_0
    if-eqz v0, :cond_1

    .line 22
    const-string p0, "no carrier configs loaded"

    .line 24
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    goto :goto_3

    .line 29
    :cond_1
    const-string v0, "Carrier configs by subId"

    .line 30
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32
    move v0, v2

    .line 35
    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 36
    move-result v3

    .line 39
    if-ge v0, v3, :cond_2

    .line 40
    move v3, v1

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move v3, v2

    .line 44
    :goto_2
    if-eqz v3, :cond_3

    .line 45
    add-int/lit8 v3, v0, 0x1

    .line 47
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 49
    move-result v0

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 57
    move-result v0

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    .line 61
    const-string v5, "  subId="

    .line 63
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v4

    .line 74
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v0

    .line 81
    check-cast v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SystemUiCarrierConfig;

    .line 82
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SystemUiCarrierConfig;->toStringConsideringDefaults()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 87
    const-string v4, "    config="

    .line 88
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 93
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    move v0, v3

    .line 97
    goto :goto_1

    .line 98
    :cond_3
    const-string p2, "Default config:"

    .line 99
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;->defaultConfigForLogs$delegate:Lkotlin/Lazy;

    .line 104
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 106
    move-result-object p0

    .line 109
    check-cast p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SystemUiCarrierConfig;

    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    .line 112
    const-string v0, "  "

    .line 114
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object p0

    .line 125
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    :goto_3
    return-void
    .line 129
.end method

.method public final getOrCreateConfigForSubId(I)Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SystemUiCarrierConfig;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;->configs:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    new-instance v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SystemUiCarrierConfig;

    .line 10
    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;->defaultConfig$delegate:Lkotlin/Lazy;

    .line 12
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 17
    check-cast v2, Landroid/os/PersistableBundle;

    .line 18
    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SystemUiCarrierConfig;-><init>(Landroid/os/PersistableBundle;)V

    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;->carrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 23
    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    .line 25
    move-result-object p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SystemUiCarrierConfig;->processNewCarrierConfig(Landroid/os/PersistableBundle;)V

    .line 31
    :cond_0
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    :cond_1
    check-cast v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SystemUiCarrierConfig;

    .line 37
    return-object v1
    .line 39
.end method

.method public final startObservingCarrierConfigUpdates(Lkotlin/coroutines/Continuation;)V
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$startObservingCarrierConfigUpdates$1;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$startObservingCarrierConfigUpdates$1;

    .line 7
    iget v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$startObservingCarrierConfigUpdates$1;->label:I

    .line 9
    const/high16 v2, -0x80000000

    .line 11
    and-int v3, v1, v2

    .line 13
    if-eqz v3, :cond_0

    .line 15
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$startObservingCarrierConfigUpdates$1;->label:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$startObservingCarrierConfigUpdates$1;

    .line 21
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$startObservingCarrierConfigUpdates$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;Lkotlin/coroutines/Continuation;)V

    .line 23
    :goto_0
    iget-object p1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$startObservingCarrierConfigUpdates$1;->result:Ljava/lang/Object;

    .line 26
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    iget v2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$startObservingCarrierConfigUpdates$1;->label:I

    .line 30
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    if-eq v2, v3, :cond_1

    .line 35
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 37
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 39
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    throw p0

    .line 44
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    goto :goto_1

    .line 48
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;->isListening:Z

    .line 52
    new-instance p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$startObservingCarrierConfigUpdates$2;

    .line 54
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$startObservingCarrierConfigUpdates$2;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;)V

    .line 56
    iput v3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository$startObservingCarrierConfigUpdates$1;->label:I

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/CarrierConfigRepository;->carrierConfigStream:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 61
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/flow/ReadonlySharedFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 63
    move-result-object p0

    .line 66
    if-ne p0, v1, :cond_3

    .line 67
    return-void

    .line 69
    :cond_3
    :goto_1
    new-instance p0, Lkotlin/KotlinNothingValueException;

    .line 70
    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 72
    throw p0
    .line 75
.end method
