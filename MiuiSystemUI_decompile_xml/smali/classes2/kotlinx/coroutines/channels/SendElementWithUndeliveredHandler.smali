.class public final Lkotlinx/coroutines/channels/SendElementWithUndeliveredHandler;
.super Lkotlinx/coroutines/channels/SendElement;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final onUndeliveredElement:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuationImpl;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/SendElement;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 2
    iput-object p3, p0, Lkotlinx/coroutines/channels/SendElementWithUndeliveredHandler;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final remove$1()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->remove$1()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/SendElementWithUndeliveredHandler;->undeliveredElement()V

    .line 10
    const/4 p0, 0x1

    .line 13
    return p0
    .line 14
.end method

.method public final undeliveredElement()V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/SendElement;->cont:Lkotlinx/coroutines/CancellableContinuation;

    .line 2
    check-cast v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 4
    iget-object v0, v0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    .line 6
    const/4 v1, 0x0

    .line 8
    iget-object v2, p0, Lkotlinx/coroutines/channels/SendElementWithUndeliveredHandler;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 9
    iget-object p0, p0, Lkotlinx/coroutines/channels/SendElement;->pollResult:Ljava/lang/Object;

    .line 11
    invoke-static {v2, p0, v1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    .line 13
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    invoke-static {v0, p0}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 19
    :cond_0
    return-void
    .line 22
.end method
