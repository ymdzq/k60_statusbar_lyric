.class public abstract Lcom/android/systemui/util/kotlin/FlowKt;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static final pairwise(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/qs/pipeline/domain/interactor/CurrentTilesInteractorImpl$UserAndTiles;)Lkotlinx/coroutines/flow/SafeFlow;
    .locals 3

    .line 4
    sget-object v0, Lcom/android/systemui/util/kotlin/FlowKt$pairwise$4;->INSTANCE:Lcom/android/systemui/util/kotlin/FlowKt$pairwise$4;

    .line 5
    new-instance v1, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 6
    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 7
    new-instance p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$1;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    .line 8
    new-instance p1, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    return-object p1
.end method

.method public static final pairwise(Lkotlinx/coroutines/flow/ReadonlyStateFlow;)Lkotlinx/coroutines/flow/SafeFlow;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/util/kotlin/FlowKt$pairwise$2;->INSTANCE:Lcom/android/systemui/util/kotlin/FlowKt$pairwise$2;

    .line 2
    new-instance v1, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    .line 3
    new-instance p0, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p0, v1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    return-object p0
.end method

.method public static final pairwiseBy(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/SafeFlow;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p1}, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$3;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    .line 5
    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    .line 8
    invoke-direct {p1, v0, p0}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 10
    new-instance p0, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$1;

    .line 13
    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/util/kotlin/FlowKt$pairwiseBy$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    .line 15
    new-instance p1, Lkotlinx/coroutines/flow/SafeFlow;

    .line 18
    invoke-direct {p1, p0}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 20
    return-object p1
    .line 23
.end method

.method public static final sample(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/SafeFlow;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/systemui/util/kotlin/FlowKt$sample$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/util/kotlin/FlowKt$sample$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, p1, v0}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/SafeFlow;

    move-result-object p0

    return-object p0
.end method

.method public static final sample(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/SafeFlow;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/util/kotlin/FlowKt$sample$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/systemui/util/kotlin/FlowKt$sample$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    .line 2
    new-instance p0, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    return-object p0
.end method
