.class public final Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isNonProxiedInputAllowed$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isNonProxiedInputAllowed$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isNonProxiedInputAllowed$$inlined$map$1$2$1;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isNonProxiedInputAllowed$$inlined$map$1$2$1;

    .line 7
    iget v1, v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isNonProxiedInputAllowed$$inlined$map$1$2$1;->label:I

    .line 9
    const/high16 v2, -0x80000000

    .line 11
    and-int v3, v1, v2

    .line 13
    if-eqz v3, :cond_0

    .line 15
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isNonProxiedInputAllowed$$inlined$map$1$2$1;->label:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isNonProxiedInputAllowed$$inlined$map$1$2$1;

    .line 21
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isNonProxiedInputAllowed$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isNonProxiedInputAllowed$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 23
    :goto_0
    iget-object p2, v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isNonProxiedInputAllowed$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 26
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    iget v2, v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isNonProxiedInputAllowed$$inlined$map$1$2$1;->label:I

    .line 30
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    if-ne v2, v3, :cond_1

    .line 35
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    goto :goto_2

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
    check-cast p1, Lkotlin/Pair;

    .line 52
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 54
    move-result-object p2

    .line 57
    check-cast p2, Ljava/lang/Boolean;

    .line 58
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    move-result p2

    .line 63
    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 64
    move-result-object p1

    .line 67
    check-cast p1, Lcom/android/systemui/multishade/data/model/MultiShadeInteractionModel;

    .line 68
    const/4 v2, 0x0

    .line 70
    if-nez p2, :cond_4

    .line 71
    if-eqz p1, :cond_3

    .line 73
    iget-boolean p1, p1, Lcom/android/systemui/multishade/data/model/MultiShadeInteractionModel;->isProxied:Z

    .line 75
    if-ne p1, v3, :cond_3

    .line 77
    move p1, v3

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    move p1, v2

    .line 81
    :goto_1
    if-nez p1, :cond_4

    .line 82
    move v2, v3

    .line 84
    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 85
    move-result-object p1

    .line 88
    iput v3, v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isNonProxiedInputAllowed$$inlined$map$1$2$1;->label:I

    .line 89
    iget-object p0, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isNonProxiedInputAllowed$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 91
    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 93
    move-result-object p0

    .line 96
    if-ne p0, v1, :cond_5

    .line 97
    return-object v1

    .line 99
    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 100
    return-object p0
    .line 102
.end method
