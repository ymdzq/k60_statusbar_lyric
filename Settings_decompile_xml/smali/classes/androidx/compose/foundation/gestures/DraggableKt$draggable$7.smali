.class final Landroidx/compose/foundation/gestures/DraggableKt$draggable$7;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Draggable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DraggableKt;->draggable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Landroidx/compose/ui/unit/Velocity;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.gestures.DraggableKt$draggable$7"
    f = "Draggable.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/gestures/DraggableKt$draggable$7;",
            ">;)V"
        }
    .end annotation

    .line 0
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide v0

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, v0, v1, p3}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$7;->invoke-LuvzFrg(Lkotlinx/coroutines/CoroutineScope;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-LuvzFrg(Lkotlinx/coroutines/CoroutineScope;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    new-instance p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$7;

    invoke-direct {p0, p4}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$7;-><init>(Lkotlin/coroutines/Continuation;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 206
    iget p0, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$7;->label:I

    if-nez p0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
