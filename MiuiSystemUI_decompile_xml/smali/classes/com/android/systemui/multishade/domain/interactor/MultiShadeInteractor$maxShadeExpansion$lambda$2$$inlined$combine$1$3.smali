.class public final Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$maxShadeExpansion$lambda$2$$inlined$combine$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.multishade.domain.interactor.MultiShadeInteractor$maxShadeExpansion$lambda$2$$inlined$combine$1$3"
    f = "MultiShadeInteractor.kt"
    l = {
        0x124
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    check-cast p2, [Ljava/lang/Object;

    .line 4
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 6
    new-instance p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$maxShadeExpansion$lambda$2$$inlined$combine$1$3;

    .line 8
    invoke-direct {p0, p3}, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$maxShadeExpansion$lambda$2$$inlined$combine$1$3;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 10
    iput-object p1, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$maxShadeExpansion$lambda$2$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    .line 13
    iput-object p2, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$maxShadeExpansion$lambda$2$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    .line 15
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$maxShadeExpansion$lambda$2$$inlined$combine$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 22
    return-object p0
    .line 23
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$maxShadeExpansion$lambda$2$$inlined$combine$1$3;->label:I

    .line 4
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    if-ne v1, v2, :cond_0

    .line 9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    goto :goto_4

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
    iget-object p1, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$maxShadeExpansion$lambda$2$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    .line 26
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 28
    iget-object v1, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$maxShadeExpansion$lambda$2$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    .line 30
    check-cast v1, [Ljava/lang/Object;

    .line 32
    check-cast v1, [Lcom/android/systemui/multishade/shared/model/ShadeModel;

    .line 34
    array-length v3, v1

    .line 36
    const/4 v4, 0x0

    .line 37
    if-nez v3, :cond_2

    .line 38
    move v3, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    move v3, v4

    .line 42
    :goto_0
    if-eqz v3, :cond_3

    .line 43
    const/4 v1, 0x0

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    aget-object v3, v1, v4

    .line 47
    iget v3, v3, Lcom/android/systemui/multishade/shared/model/ShadeModel;->expansion:F

    .line 49
    new-instance v4, Lkotlin/ranges/IntRange;

    .line 51
    array-length v5, v1

    .line 53
    add-int/lit8 v5, v5, -0x1

    .line 54
    invoke-direct {v4, v2, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 56
    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    .line 59
    move-result-object v4

    .line 62
    :goto_1
    iget-boolean v5, v4, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 63
    if-eqz v5, :cond_4

    .line 65
    invoke-virtual {v4}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    .line 67
    move-result v5

    .line 70
    aget-object v5, v1, v5

    .line 71
    iget v5, v5, Lcom/android/systemui/multishade/shared/model/ShadeModel;->expansion:F

    .line 73
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    .line 75
    move-result v3

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    new-instance v1, Ljava/lang/Float;

    .line 80
    invoke-direct {v1, v3}, Ljava/lang/Float;-><init>(F)V

    .line 82
    :goto_2
    if-eqz v1, :cond_5

    .line 85
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 87
    move-result v1

    .line 90
    goto :goto_3

    .line 91
    :cond_5
    const/4 v1, 0x0

    .line 92
    :goto_3
    new-instance v3, Ljava/lang/Float;

    .line 93
    invoke-direct {v3, v1}, Ljava/lang/Float;-><init>(F)V

    .line 95
    iput v2, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor$maxShadeExpansion$lambda$2$$inlined$combine$1$3;->label:I

    .line 98
    invoke-interface {p1, v3, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 100
    move-result-object p0

    .line 103
    if-ne p0, v0, :cond_6

    .line 104
    return-object v0

    .line 106
    :cond_6
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 107
    return-object p0
    .line 109
.end method
