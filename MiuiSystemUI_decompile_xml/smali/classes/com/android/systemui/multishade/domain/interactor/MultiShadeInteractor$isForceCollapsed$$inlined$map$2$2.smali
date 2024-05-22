.class public final Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isForceCollapsed$$inlined$map$2$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $shadeId$inlined:Lcom/android/systemui/multishade/shared/model/ShadeId;

.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/multishade/shared/model/ShadeId;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isForceCollapsed$$inlined$map$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isForceCollapsed$$inlined$map$2$2;->$shadeId$inlined:Lcom/android/systemui/multishade/shared/model/ShadeId;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isForceCollapsed$$inlined$map$2$2$1;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isForceCollapsed$$inlined$map$2$2$1;

    .line 7
    iget v1, v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isForceCollapsed$$inlined$map$2$2$1;->label:I

    .line 9
    const/high16 v2, -0x80000000

    .line 11
    and-int v3, v1, v2

    .line 13
    if-eqz v3, :cond_0

    .line 15
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isForceCollapsed$$inlined$map$2$2$1;->label:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isForceCollapsed$$inlined$map$2$2$1;

    .line 21
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isForceCollapsed$$inlined$map$2$2$1;-><init>(Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isForceCollapsed$$inlined$map$2$2;Lkotlin/coroutines/Continuation;)V

    .line 23
    :goto_0
    iget-object p2, v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isForceCollapsed$$inlined$map$2$2$1;->result:Ljava/lang/Object;

    .line 26
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    iget v2, v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isForceCollapsed$$inlined$map$2$2$1;->label:I

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
    check-cast p1, Lcom/android/systemui/multishade/shared/model/ShadeId;

    .line 68
    iget-object v2, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isForceCollapsed$$inlined$map$2$2;->$shadeId$inlined:Lcom/android/systemui/multishade/shared/model/ShadeId;

    .line 70
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 72
    move-result v2

    .line 75
    if-eqz v2, :cond_5

    .line 76
    if-eq v2, v3, :cond_4

    .line 78
    const/4 v4, 0x2

    .line 80
    if-ne v2, v4, :cond_3

    .line 81
    const/4 v2, 0x0

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 85
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 87
    throw p0

    .line 90
    :cond_4
    sget-object v2, Lcom/android/systemui/multishade/shared/model/ShadeId;->LEFT:Lcom/android/systemui/multishade/shared/model/ShadeId;

    .line 91
    goto :goto_1

    .line 93
    :cond_5
    sget-object v2, Lcom/android/systemui/multishade/shared/model/ShadeId;->RIGHT:Lcom/android/systemui/multishade/shared/model/ShadeId;

    .line 94
    :goto_1
    if-eqz p2, :cond_6

    .line 96
    :goto_2
    move p2, v3

    .line 98
    goto :goto_3

    .line 99
    :cond_6
    const/4 p2, 0x0

    .line 100
    if-nez v2, :cond_7

    .line 101
    goto :goto_3

    .line 103
    :cond_7
    if-ne p1, v2, :cond_8

    .line 104
    goto :goto_2

    .line 106
    :cond_8
    :goto_3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 107
    move-result-object p1

    .line 110
    iput v3, v0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isForceCollapsed$$inlined$map$2$2$1;->label:I

    .line 111
    iget-object p0, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$isForceCollapsed$$inlined$map$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 113
    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 115
    move-result-object p0

    .line 118
    if-ne p0, v1, :cond_9

    .line 119
    return-object v1

    .line 121
    :cond_9
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 122
    return-object p0
    .line 124
.end method
