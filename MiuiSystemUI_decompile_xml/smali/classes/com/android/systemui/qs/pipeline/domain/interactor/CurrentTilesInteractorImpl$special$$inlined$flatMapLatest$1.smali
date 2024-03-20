.class public final Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$special$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.qs.pipeline.domain.interactor.CurrentTilesInteractorImpl$special$$inlined$flatMapLatest$1"
    f = "CurrentTilesInteractor.kt"
    l = {
        0xbe
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;

    .line 2
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 4
    new-instance v0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$special$$inlined$flatMapLatest$1;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;

    .line 8
    invoke-direct {v0, p0, p3}, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$special$$inlined$flatMapLatest$1;-><init>(Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;Lkotlin/coroutines/Continuation;)V

    .line 10
    iput-object p1, v0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    .line 13
    iput-object p2, v0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 15
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$special$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 22
    return-object p0
    .line 23
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$special$$inlined$flatMapLatest$1;->label:I

    .line 4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    const/4 v3, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    if-ne v1, v3, :cond_0

    .line 11
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13
    goto :goto_2

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 17
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    iget-object p1, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    .line 28
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 30
    iget-object v1, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 32
    check-cast v1, Ljava/lang/Number;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 36
    move-result v1

    .line 39
    iget-object v4, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;

    .line 40
    iget-object v4, v4, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl;->tileSpecRepository:Lcom/android/systemui/qs/pipeline/data/repository/TileSpecRepository;

    .line 42
    check-cast v4, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;

    .line 44
    iget-object v5, v4, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;->retailModeRepository:Lcom/android/systemui/retail/data/repository/RetailModeRepository;

    .line 46
    check-cast v5, Lcom/android/systemui/retail/data/repository/RetailModeSettingsRepository;

    .line 48
    iget-object v5, v5, Lcom/android/systemui/retail/data/repository/RetailModeSettingsRepository;->retailMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 50
    new-instance v6, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$tilesSpecs$$inlined$flatMapLatest$1;

    .line 52
    const/4 v7, 0x0

    .line 54
    invoke-direct {v6, v1, v4, v7}, Lcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository$tilesSpecs$$inlined$flatMapLatest$1;-><init>(ILcom/android/systemui/qs/pipeline/data/repository/TileSpecSettingsRepository;Lkotlin/coroutines/Continuation;)V

    .line 55
    invoke-static {v5, v6}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 58
    move-result-object v4

    .line 61
    iput v3, p0, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$special$$inlined$flatMapLatest$1;->label:I

    .line 62
    new-instance v3, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$userAndTiles$lambda$1$$inlined$map$1$2;

    .line 64
    invoke-direct {v3, p1, v1}, Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$userAndTiles$lambda$1$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;I)V

    .line 66
    invoke-virtual {v4, v3, p0}, Lkotlinx/coroutines/flow/internal/ChannelFlowOperator;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 69
    move-result-object p0

    .line 72
    if-ne p0, v0, :cond_2

    .line 73
    goto :goto_0

    .line 75
    :cond_2
    move-object p0, v2

    .line 76
    :goto_0
    if-ne p0, v0, :cond_3

    .line 77
    goto :goto_1

    .line 79
    :cond_3
    move-object p0, v2

    .line 80
    :goto_1
    if-ne p0, v0, :cond_4

    .line 81
    return-object v0

    .line 83
    :cond_4
    :goto_2
    return-object v2
    .line 84
.end method
