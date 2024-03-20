.class public final Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final inputProxy:Lcom/android/systemui/multishade/data/remoteproxy/MultiShadeInputProxy;

.field public final isAnyShadeExpanded:Lkotlinx/coroutines/flow/Flow;

.field public final maxShadeExpansion:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final processedProxiedInput:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final repository:Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;

.field public final shadeConfig:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;Lcom/android/systemui/multishade/data/remoteproxy/MultiShadeInputProxy;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;->repository:Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;->inputProxy:Lcom/android/systemui/multishade/data/remoteproxy/MultiShadeInputProxy;

    .line 7
    iget-object p3, p2, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->shadeConfig:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 9
    iput-object p3, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;->shadeConfig:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 11
    new-instance v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$flatMapLatest$1;

    .line 13
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;)V

    .line 16
    invoke-static {p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 19
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;->maxShadeExpansion:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 23
    new-instance v1, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$map$1;

    .line 25
    const/4 v2, 0x0

    .line 27
    invoke-direct {v1, v2, v0}, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$map$1;-><init>(ILjava/lang/Object;)V

    .line 28
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 31
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;->isAnyShadeExpanded:Lkotlinx/coroutines/flow/Flow;

    .line 35
    iget-object p2, p2, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->proxiedInput:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 37
    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 39
    move-result-object p2

    .line 42
    sget-object v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$processedProxiedInput$2;->INSTANCE:Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$processedProxiedInput$2;

    .line 43
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 45
    invoke-direct {v1, p3, p2, v0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 47
    new-instance p2, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$map$2;

    .line 50
    invoke-direct {p2, v1, p0, v2}, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;I)V

    .line 52
    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    .line 55
    const/4 v0, 0x1

    .line 57
    invoke-static {p2, p1, p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 58
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;->processedProxiedInput:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 62
    return-void
    .line 64
.end method
