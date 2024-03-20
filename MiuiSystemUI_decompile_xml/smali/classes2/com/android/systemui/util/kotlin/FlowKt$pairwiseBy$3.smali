.class final Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.util.kotlin.FlowKt$pairwiseBy$3"
    f = "Flow.kt"
    l = {
        0x50,
        0x50
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $getInitialValue:Lkotlin/jvm/functions/Function1;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->$getInitialValue:Lkotlin/jvm/functions/Function1;

    .line 2
    const/4 p2, 0x2

    .line 4
    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->$getInitialValue:Lkotlin/jvm/functions/Function1;

    .line 4
    invoke-direct {v0, p2, p0}, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    .line 6
    iput-object p1, v0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->L$0:Ljava/lang/Object;

    .line 9
    return-object v0
    .line 11
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->label:I

    .line 4
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    if-eq v1, v3, :cond_1

    .line 10
    if-ne v1, v2, :cond_0

    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 14
    goto :goto_1

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 18
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p0

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->L$0:Ljava/lang/Object;

    .line 26
    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 28
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    goto :goto_0

    .line 33
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    iget-object p1, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->L$0:Ljava/lang/Object;

    .line 37
    move-object v1, p1

    .line 39
    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 40
    iget-object p1, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->$getInitialValue:Lkotlin/jvm/functions/Function1;

    .line 42
    iput-object v1, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->L$0:Ljava/lang/Object;

    .line 44
    iput v3, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->label:I

    .line 46
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object p1

    .line 51
    if-ne p1, v0, :cond_3

    .line 52
    return-object v0

    .line 54
    :cond_3
    :goto_0
    const/4 v3, 0x0

    .line 55
    iput-object v3, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->L$0:Ljava/lang/Object;

    .line 56
    iput v2, p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;->label:I

    .line 58
    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 60
    move-result-object p0

    .line 63
    if-ne p0, v0, :cond_4

    .line 64
    return-object v0

    .line 66
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 67
    return-object p0
    .line 69
.end method
