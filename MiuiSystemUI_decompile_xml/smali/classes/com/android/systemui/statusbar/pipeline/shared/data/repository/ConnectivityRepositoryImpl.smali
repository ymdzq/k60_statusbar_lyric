.class public final Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepository;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$Companion;


# instance fields
.field public final connectivityManager:Landroid/net/ConnectivityManager;

.field public final connectivitySlots:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlots;

.field public final defaultConnections:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final defaultHiddenIcons:Ljava/util/Set;

.field public final defaultNetworkCapabilities:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final forceHiddenSlots:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final vcnSubId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$Companion;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$Companion;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->Companion:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$Companion;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlots;Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityInputLogger;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/tuner/TunerService;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->connectivitySlots:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlots;

    .line 7
    const-string p1, "ConnectivityRepository"

    .line 9
    invoke-virtual {p4, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 11
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object p1

    .line 17
    const p3, 0x7f03006a    # @array/config_statusBarIconsToExclude

    .line 18
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 24
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    move-result-object p1

    .line 28
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$Companion;->access$toSlotSet(Ljava/util/List;Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlots;)Ljava/util/Set;

    .line 29
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->defaultHiddenIcons:Ljava/util/Set;

    .line 33
    new-instance p2, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$forceHiddenSlots$1;

    .line 35
    const/4 p3, 0x0

    .line 37
    invoke-direct {p2, p7, p5, p0, p3}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$forceHiddenSlots$1;-><init>(Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityInputLogger;Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 38
    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 41
    move-result-object p2

    .line 44
    const/4 p4, -0x1

    .line 45
    invoke-static {p2, p4}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 46
    move-result-object p2

    .line 49
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 50
    move-result-object p7

    .line 53
    invoke-static {p2, p6, p7, p1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 54
    move-result-object p1

    .line 57
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->forceHiddenSlots:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 58
    new-instance p1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$defaultNetworkCapabilities$1;

    .line 60
    invoke-direct {p1, p0, p5, p3}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$defaultNetworkCapabilities$1;-><init>(Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityInputLogger;Lkotlin/coroutines/Continuation;)V

    .line 62
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 65
    move-result-object p1

    .line 68
    invoke-static {p1, p4}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 69
    move-result-object p1

    .line 72
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 73
    move-result-object p2

    .line 76
    const/4 p4, 0x0

    .line 77
    invoke-static {p1, p6, p2, p4}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 78
    move-result-object p1

    .line 81
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->defaultNetworkCapabilities:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 82
    new-instance p2, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$special$$inlined$map$1;

    .line 84
    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/ReadonlySharedFlow;)V

    .line 86
    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 89
    move-result-object p2

    .line 92
    new-instance p7, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$vcnSubId$2;

    .line 93
    invoke-direct {p7, p5, p3}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$vcnSubId$2;-><init>(Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityInputLogger;Lkotlin/coroutines/Continuation;)V

    .line 95
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    .line 98
    invoke-direct {v0, p7, p2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 100
    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    .line 103
    invoke-static {v0, p6, p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 105
    move-result-object p7

    .line 108
    iput-object p7, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->vcnSubId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 109
    new-instance p7, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$special$$inlined$map$2;

    .line 111
    invoke-direct {p7, p1, p0}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/ReadonlySharedFlow;Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;)V

    .line 113
    invoke-static {p7}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 116
    move-result-object p1

    .line 119
    new-instance p7, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$defaultConnections$2;

    .line 120
    invoke-direct {p7, p5, p3}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$defaultConnections$2;-><init>(Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityInputLogger;Lkotlin/coroutines/Continuation;)V

    .line 122
    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    .line 125
    invoke-direct {p3, p7, p1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 127
    new-instance p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;

    .line 130
    new-instance v1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Wifi;

    .line 132
    invoke-direct {v1, p4}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Wifi;-><init>(Z)V

    .line 134
    new-instance v2, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Mobile;

    .line 137
    invoke-direct {v2, p4}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Mobile;-><init>(Z)V

    .line 139
    new-instance v3, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$CarrierMerged;

    .line 142
    invoke-direct {v3, p4}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$CarrierMerged;-><init>(Z)V

    .line 144
    new-instance v4, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Ethernet;

    .line 147
    invoke-direct {v4, p4}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Ethernet;-><init>(Z)V

    .line 149
    const/4 v5, 0x0

    .line 152
    move-object v0, p1

    .line 153
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;-><init>(Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Wifi;Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Mobile;Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$CarrierMerged;Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Ethernet;Z)V

    .line 154
    invoke-static {p3, p6, p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 157
    move-result-object p1

    .line 160
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->defaultConnections:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 161
    return-void
    .line 163
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    const-string v0, "defaultHiddenIcons="

    .line 4
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->defaultHiddenIcons:Ljava/util/Set;

    .line 9
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 17
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    return-void
    .line 21
.end method
