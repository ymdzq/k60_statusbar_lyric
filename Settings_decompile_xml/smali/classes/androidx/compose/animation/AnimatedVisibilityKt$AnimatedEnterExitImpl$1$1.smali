.class final Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AnimatedVisibility.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedEnterExitImpl(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.animation.AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1"
    f = "AnimatedVisibility.kt"
    l = {
        0x2ec
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $childTransition:Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "Landroidx/compose/animation/EnterExitState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $isAnimationVisible:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "Landroidx/compose/animation/EnterExitState;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1;->$childTransition:Landroidx/compose/animation/core/Transition;

    iput-object p2, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1;->$isAnimationVisible:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance p1, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1;

    iget-object v0, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1;->$childTransition:Landroidx/compose/animation/core/Transition;

    iget-object p0, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1;->$isAnimationVisible:Landroidx/compose/runtime/MutableState;

    invoke-direct {p1, v0, p0, p2}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 65535
    iget v1, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 745
    new-instance p1, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1$1;

    iget-object v1, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1;->$childTransition:Landroidx/compose/animation/core/Transition;

    invoke-direct {p1, v1}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1$1;-><init>(Landroidx/compose/animation/core/Transition;)V

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 748
    new-instance v1, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1$2;

    iget-object v3, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1;->$isAnimationVisible:Landroidx/compose/runtime/MutableState;

    invoke-direct {v1, v3}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1$2;-><init>(Landroidx/compose/runtime/MutableState;)V

    iput v2, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    .line 751
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method