.class public final Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;


# instance fields
.field public final activeRepo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final demoImpl:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;

.field public final demoModeController:Lcom/android/systemui/demomode/DemoModeController;

.field public final isDemoMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isWifiDefault:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isWifiEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final realImpl:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/RealWifiRepository;

.field public final wifiActivity:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final wifiNetwork:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/RealWifiRepository;Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;Lcom/android/systemui/demomode/DemoModeController;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher;->realImpl:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/RealWifiRepository;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher;->demoImpl:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher;->demoModeController:Lcom/android/systemui/demomode/DemoModeController;

    .line 9
    new-instance p2, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher$isDemoMode$1;

    .line 11
    const/4 v0, 0x0

    .line 13
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher$isDemoMode$1;-><init>(Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher;Lkotlin/coroutines/Continuation;)V

    .line 14
    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 17
    move-result-object p2

    .line 20
    const/4 v1, -0x1

    .line 21
    invoke-static {p2, v1}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 22
    move-result-object p2

    .line 25
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 26
    move-result-object v1

    .line 29
    iget-boolean p3, p3, Lcom/android/systemui/demomode/DemoModeController;->isInDemoMode:Z

    .line 30
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    move-result-object p3

    .line 35
    invoke-static {p2, p4, v1, p3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 36
    move-result-object p2

    .line 39
    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher;->isDemoMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 40
    new-instance p3, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher$activeRepo$1;

    .line 42
    invoke-direct {p3, p0, v0}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher$activeRepo$1;-><init>(Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher;Lkotlin/coroutines/Continuation;)V

    .line 44
    invoke-static {p3, p2}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 47
    move-result-object p2

    .line 50
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 51
    move-result-object p3

    .line 54
    invoke-static {p2, p4, p3, p1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 55
    move-result-object p2

    .line 58
    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher;->activeRepo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 59
    new-instance p3, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher$special$$inlined$flatMapLatest$1;

    .line 61
    invoke-direct {p3, v0}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 63
    invoke-static {p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 66
    move-result-object p3

    .line 69
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 70
    move-result-object v1

    .line 73
    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;->isWifiEnabled()Lkotlinx/coroutines/flow/StateFlow;

    .line 74
    move-result-object v2

    .line 77
    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 78
    move-result-object v2

    .line 81
    invoke-static {p3, p4, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 82
    move-result-object p3

    .line 85
    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher;->isWifiEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 86
    new-instance p3, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher$special$$inlined$flatMapLatest$2;

    .line 88
    invoke-direct {p3, v0}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 90
    invoke-static {p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 93
    move-result-object p3

    .line 96
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 97
    move-result-object v1

    .line 100
    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;->isWifiDefault()Lkotlinx/coroutines/flow/StateFlow;

    .line 101
    move-result-object v2

    .line 104
    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 105
    move-result-object v2

    .line 108
    invoke-static {p3, p4, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 109
    move-result-object p3

    .line 112
    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher;->isWifiDefault:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 113
    new-instance p3, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher$special$$inlined$flatMapLatest$3;

    .line 115
    invoke-direct {p3, v0}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher$special$$inlined$flatMapLatest$3;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 117
    invoke-static {p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 120
    move-result-object p3

    .line 123
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 124
    move-result-object v1

    .line 127
    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;->getWifiNetwork()Lkotlinx/coroutines/flow/StateFlow;

    .line 128
    move-result-object v2

    .line 131
    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 132
    move-result-object v2

    .line 135
    invoke-static {p3, p4, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 136
    move-result-object p3

    .line 139
    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher;->wifiNetwork:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 140
    new-instance p3, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher$special$$inlined$flatMapLatest$4;

    .line 142
    invoke-direct {p3, v0}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher$special$$inlined$flatMapLatest$4;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 144
    invoke-static {p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 147
    move-result-object p2

    .line 150
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 151
    move-result-object p3

    .line 154
    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;->getWifiActivity()Lkotlinx/coroutines/flow/StateFlow;

    .line 155
    move-result-object p1

    .line 158
    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 159
    move-result-object p1

    .line 162
    invoke-static {p2, p4, p3, p1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 163
    move-result-object p1

    .line 166
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher;->wifiActivity:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 167
    return-void
    .line 169
.end method

.method public static synthetic getActiveRepo$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public final getWifiActivity()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher;->wifiActivity:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getWifiNetwork()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher;->wifiNetwork:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 2
    return-object p0
    .line 4
.end method

.method public final isWifiConnectedWithValidSsid()Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository$DefaultImpls;->isWifiConnectedWithValidSsid(Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepository;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final isWifiDefault()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher;->isWifiDefault:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 2
    return-object p0
    .line 4
.end method

.method public final isWifiEnabled()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher;->isWifiEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 2
    return-object p0
    .line 4
.end method
