.class public final Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.multishade.domain.interactor.MultiShadeInteractor$special$$inlined$flatMapLatest$1"
    f = "MultiShadeInteractor.kt"
    l = {
        0xbe
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;

    .line 2
    const/4 p2, 0x3

    .line 4
    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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
    new-instance v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$flatMapLatest$1;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;

    .line 8
    invoke-direct {v0, p3, p0}, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;)V

    .line 10
    iput-object p1, v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    .line 13
    iput-object p2, v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 15
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    invoke-virtual {v0, p0}, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$flatMapLatest$1;->label:I

    .line 4
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    if-ne v1, v2, :cond_0

    .line 9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    goto :goto_1

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 15
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0

    .line 22
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    .line 26
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 28
    iget-object v1, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 30
    check-cast v1, Lcom/android/systemui/multishade/shared/model/ShadeConfig;

    .line 32
    iget-object v3, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;

    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    iget-object v1, v1, Lcom/android/systemui/multishade/shared/model/ShadeConfig;->shadeIds:Ljava/util/List;

    .line 39
    new-instance v4, Ljava/util/ArrayList;

    .line 41
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 43
    move-result v5

    .line 46
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v1

    .line 53
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v5

    .line 57
    if-eqz v5, :cond_3

    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v5

    .line 63
    check-cast v5, Lcom/android/systemui/multishade/shared/model/ShadeId;

    .line 64
    iget-object v6, v3, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;->repository:Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;

    .line 66
    iget-object v6, v6, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->stateByShade:Ljava/util/Map;

    .line 68
    check-cast v6, Ljava/util/LinkedHashMap;

    .line 70
    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    move-result-object v7

    .line 75
    if-nez v7, :cond_2

    .line 76
    new-instance v7, Lcom/android/systemui/multishade/shared/model/ShadeModel;

    .line 78
    invoke-direct {v7, v5}, Lcom/android/systemui/multishade/shared/model/ShadeModel;-><init>(Lcom/android/systemui/multishade/shared/model/ShadeId;)V

    .line 80
    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 83
    move-result-object v7

    .line 86
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_2
    check-cast v7, Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 90
    new-instance v5, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 92
    invoke-direct {v5, v7}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 94
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    goto :goto_0

    .line 100
    :cond_3
    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 101
    move-result-object v1

    .line 104
    const/4 v3, 0x0

    .line 105
    new-array v3, v3, [Lkotlinx/coroutines/flow/Flow;

    .line 106
    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 108
    move-result-object v1

    .line 111
    check-cast v1, [Lkotlinx/coroutines/flow/Flow;

    .line 112
    new-instance v3, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$map$1;

    .line 114
    const/4 v4, 0x3

    .line 116
    invoke-direct {v3, v4, v1}, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$map$1;-><init>(ILjava/lang/Object;)V

    .line 117
    iput v2, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$special$$inlined$flatMapLatest$1;->label:I

    .line 120
    invoke-static {p0, v3, p1}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    .line 122
    move-result-object p0

    .line 125
    if-ne p0, v0, :cond_4

    .line 126
    return-object v0

    .line 128
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 129
    return-object p0
    .line 131
.end method
