.class public final Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionsRepository;


# instance fields
.field public final activeMobileDataRepository:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final activeMobileDataSubscriptionId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final activeRepo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final activeSubChangedInGroupEvent:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final defaultConnectionIsValidated:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final defaultDataSubId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final defaultDataSubRatConfig:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final defaultMobileIconGroup:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final defaultMobileIconMapping:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final demoMobileConnectionsRepository:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoMobileConnectionsRepository;

.field public final hasCarrierMergedConnection:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isDemoMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final mobileIsDefault:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final realRepository:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl;

.field public final subscriptions:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoMobileConnectionsRepository;Lcom/android/systemui/demomode/DemoModeController;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->realRepository:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->demoMobileConnectionsRepository:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoMobileConnectionsRepository;

    .line 7
    new-instance p3, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$isDemoMode$1;

    .line 9
    const/4 v0, 0x0

    .line 11
    invoke-direct {p3, p4, p0, v0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$isDemoMode$1;-><init>(Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;Lkotlin/coroutines/Continuation;)V

    .line 12
    invoke-static {p3}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 15
    move-result-object p3

    .line 18
    const/4 v1, -0x1

    .line 19
    invoke-static {p3, v1}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 20
    move-result-object p3

    .line 23
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 24
    move-result-object v1

    .line 27
    iget-boolean p4, p4, Lcom/android/systemui/demomode/DemoModeController;->isInDemoMode:Z

    .line 28
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    move-result-object p4

    .line 33
    invoke-static {p3, p1, v1, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 34
    move-result-object p3

    .line 37
    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->isDemoMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 38
    new-instance p4, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$activeRepo$1;

    .line 40
    invoke-direct {p4, p0, v0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$activeRepo$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;Lkotlin/coroutines/Continuation;)V

    .line 42
    invoke-static {p4, p3}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 45
    move-result-object p3

    .line 48
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 49
    move-result-object p4

    .line 52
    invoke-static {p3, p1, p4, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 53
    move-result-object p3

    .line 56
    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->activeRepo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 57
    new-instance p4, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$special$$inlined$flatMapLatest$1;

    .line 59
    invoke-direct {p4, v0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 61
    invoke-static {p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 64
    move-result-object p4

    .line 67
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 68
    move-result-object v1

    .line 71
    iget-object v2, p2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl;->subscriptions:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 72
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 74
    move-result-object v2

    .line 77
    invoke-static {p4, p1, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 78
    move-result-object p4

    .line 81
    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->subscriptions:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 82
    new-instance p4, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$special$$inlined$flatMapLatest$2;

    .line 84
    invoke-direct {p4, v0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 86
    invoke-static {p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 89
    move-result-object p4

    .line 92
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 93
    move-result-object v1

    .line 96
    iget-object v2, p2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl;->activeMobileDataSubscriptionId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 97
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 99
    move-result-object v2

    .line 102
    invoke-static {p4, p1, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 103
    move-result-object p4

    .line 106
    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->activeMobileDataSubscriptionId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 107
    new-instance p4, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$special$$inlined$flatMapLatest$3;

    .line 109
    invoke-direct {p4, v0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$special$$inlined$flatMapLatest$3;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 111
    invoke-static {p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 114
    move-result-object p4

    .line 117
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 118
    move-result-object v1

    .line 121
    iget-object v2, p2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl;->activeMobileDataRepository:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 122
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 124
    move-result-object v2

    .line 127
    invoke-static {p4, p1, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 128
    move-result-object p4

    .line 131
    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->activeMobileDataRepository:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 132
    new-instance p4, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$special$$inlined$flatMapLatest$4;

    .line 134
    invoke-direct {p4, v0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$special$$inlined$flatMapLatest$4;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 136
    invoke-static {p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 139
    move-result-object p4

    .line 142
    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->activeSubChangedInGroupEvent:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 143
    new-instance p4, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$special$$inlined$flatMapLatest$5;

    .line 145
    invoke-direct {p4, v0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$special$$inlined$flatMapLatest$5;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 147
    invoke-static {p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 150
    move-result-object p4

    .line 153
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 154
    move-result-object v1

    .line 157
    iget-object v2, p2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl;->defaultDataSubRatConfig:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 158
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 160
    move-result-object v2

    .line 163
    invoke-static {p4, p1, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 164
    move-result-object p4

    .line 167
    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->defaultDataSubRatConfig:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 168
    new-instance p4, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$special$$inlined$flatMapLatest$6;

    .line 170
    invoke-direct {p4, v0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$special$$inlined$flatMapLatest$6;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 172
    invoke-static {p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 175
    move-result-object p4

    .line 178
    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->defaultMobileIconMapping:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 179
    new-instance p4, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$special$$inlined$flatMapLatest$7;

    .line 181
    invoke-direct {p4, v0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$special$$inlined$flatMapLatest$7;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 183
    invoke-static {p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 186
    move-result-object p4

    .line 189
    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->defaultMobileIconGroup:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 190
    new-instance p4, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$special$$inlined$flatMapLatest$8;

    .line 192
    invoke-direct {p4, v0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$special$$inlined$flatMapLatest$8;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 194
    invoke-static {p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 197
    move-result-object p4

    .line 200
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 201
    move-result-object v1

    .line 204
    iget-object v2, p2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl;->defaultDataSubId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 205
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 207
    move-result-object v2

    .line 210
    invoke-static {p4, p1, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 211
    move-result-object p4

    .line 214
    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->defaultDataSubId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 215
    new-instance p4, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$special$$inlined$flatMapLatest$9;

    .line 217
    invoke-direct {p4, v0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$special$$inlined$flatMapLatest$9;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 219
    invoke-static {p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 222
    move-result-object p4

    .line 225
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 226
    move-result-object v1

    .line 229
    iget-object v2, p2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl;->mobileIsDefault:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 230
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 232
    move-result-object v2

    .line 235
    invoke-static {p4, p1, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 236
    move-result-object p4

    .line 239
    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->mobileIsDefault:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 240
    new-instance p4, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$special$$inlined$flatMapLatest$10;

    .line 242
    invoke-direct {p4, v0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$special$$inlined$flatMapLatest$10;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 244
    invoke-static {p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 247
    move-result-object p4

    .line 250
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 251
    move-result-object v1

    .line 254
    iget-object v2, p2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl;->hasCarrierMergedConnection:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 255
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 257
    move-result-object v2

    .line 260
    invoke-static {p4, p1, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 261
    move-result-object p4

    .line 264
    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->hasCarrierMergedConnection:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 265
    new-instance p4, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$special$$inlined$flatMapLatest$11;

    .line 267
    invoke-direct {p4, v0}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher$special$$inlined$flatMapLatest$11;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 269
    invoke-static {p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 272
    move-result-object p3

    .line 275
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 276
    move-result-object p4

    .line 279
    iget-object p2, p2, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl;->defaultConnectionIsValidated:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 280
    invoke-virtual {p2}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 282
    move-result-object p2

    .line 285
    invoke-static {p3, p1, p4, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 286
    move-result-object p1

    .line 289
    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->defaultConnectionIsValidated:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 290
    return-void
    .line 292
.end method

.method public static synthetic getActiveRepo$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public final getActiveMobileDataRepository()Lkotlinx/coroutines/flow/ReadonlyStateFlow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->activeMobileDataRepository:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getActiveMobileDataSubscriptionId()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->activeMobileDataSubscriptionId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getActiveSubChangedInGroupEvent()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->activeSubChangedInGroupEvent:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getDefaultConnectionIsValidated()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->defaultConnectionIsValidated:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getDefaultDataSubId()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->defaultDataSubId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getDefaultDataSubRatConfig()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->defaultDataSubRatConfig:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getDefaultMobileIconGroup()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->defaultMobileIconGroup:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getDefaultMobileIconMapping()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->defaultMobileIconMapping:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getHasCarrierMergedConnection()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->hasCarrierMergedConnection:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getMobileIsDefault()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->mobileIsDefault:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getRepoForSubId(I)Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileConnectionRepository;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->isDemoMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 2
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->demoMobileConnectionsRepository:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoMobileConnectionsRepository;

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoMobileConnectionsRepository;->getRepoForSubId(I)Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/demo/DemoMobileConnectionRepository;

    .line 18
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->realRepository:Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl;

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/MobileConnectionsRepositoryImpl;->getRepoForSubId(I)Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/prod/FullMobileConnectionRepository;

    .line 25
    move-result-object p0

    .line 28
    return-object p0
    .line 29
.end method

.method public final getSubscriptions()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/repository/MobileRepositorySwitcher;->subscriptions:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 2
    return-object p0
    .line 4
.end method
