.class public final Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$proxiedInput$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $shadeId$inlined:Lcom/android/systemui/multishade/shared/model/ShadeId;

.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/multishade/shared/model/ShadeId;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$proxiedInput$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$proxiedInput$$inlined$map$1$2;->$shadeId$inlined:Lcom/android/systemui/multishade/shared/model/ShadeId;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p2, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$proxiedInput$$inlined$map$1$2$1;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$proxiedInput$$inlined$map$1$2$1;

    .line 7
    iget v1, v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$proxiedInput$$inlined$map$1$2$1;->label:I

    .line 9
    const/high16 v2, -0x80000000

    .line 11
    and-int v3, v1, v2

    .line 13
    if-eqz v3, :cond_0

    .line 15
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$proxiedInput$$inlined$map$1$2$1;->label:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$proxiedInput$$inlined$map$1$2$1;

    .line 21
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$proxiedInput$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$proxiedInput$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 23
    :goto_0
    iget-object p2, v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$proxiedInput$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 26
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    iget v2, v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$proxiedInput$$inlined$map$1$2$1;->label:I

    .line 30
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    if-ne v2, v3, :cond_1

    .line 35
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    goto :goto_4

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p0

    .line 48
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    check-cast p1, Lkotlin/Triple;

    .line 52
    invoke-virtual {p1}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    .line 54
    move-result-object p2

    .line 57
    check-cast p2, Lcom/android/systemui/multishade/shared/model/ProxiedInputModel;

    .line 58
    invoke-virtual {p1}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 63
    check-cast v2, Ljava/lang/Boolean;

    .line 64
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    move-result v2

    .line 69
    invoke-virtual {p1}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    .line 70
    move-result-object p1

    .line 73
    check-cast p1, Lcom/android/systemui/multishade/data/model/MultiShadeInteractionModel;

    .line 74
    const/4 v4, 0x0

    .line 76
    if-eqz v2, :cond_3

    .line 77
    :goto_1
    move-object p2, v4

    .line 79
    goto :goto_3

    .line 80
    :cond_3
    if-eqz p1, :cond_4

    .line 81
    iget-object v2, p1, Lcom/android/systemui/multishade/data/model/MultiShadeInteractionModel;->shadeId:Lcom/android/systemui/multishade/shared/model/ShadeId;

    .line 83
    goto :goto_2

    .line 85
    :cond_4
    move-object v2, v4

    .line 86
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$proxiedInput$$inlined$map$1$2;->$shadeId$inlined:Lcom/android/systemui/multishade/shared/model/ShadeId;

    .line 87
    if-eq v2, v5, :cond_5

    .line 89
    goto :goto_1

    .line 91
    :cond_5
    iget-boolean p1, p1, Lcom/android/systemui/multishade/data/model/MultiShadeInteractionModel;->isProxied:Z

    .line 92
    if-nez p1, :cond_6

    .line 94
    goto :goto_1

    .line 96
    :cond_6
    :goto_3
    iput v3, v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$proxiedInput$$inlined$map$1$2$1;->label:I

    .line 97
    iget-object p0, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$proxiedInput$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 99
    invoke-interface {p0, p2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 101
    move-result-object p0

    .line 104
    if-ne p0, v1, :cond_7

    .line 105
    return-object v1

    .line 107
    :cond_7
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 108
    return-object p0
    .line 110
.end method
