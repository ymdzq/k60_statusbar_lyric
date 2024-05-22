.class public final Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElementWithUndeliveredHandler;
.super Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final onUndeliveredElement:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuationImpl;ILkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;I)V

    .line 2
    iput-object p3, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElementWithUndeliveredHandler;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final resumeOnCancellationFun(Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;->cont:Lkotlinx/coroutines/CancellableContinuation;

    .line 2
    check-cast v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 4
    iget-object v0, v0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    .line 6
    iget-object p0, p0, Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElementWithUndeliveredHandler;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 8
    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->bindCancellationFun(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/jvm/functions/Function1;

    .line 10
    move-result-object p0

    .line 13
    return-object p0
    .line 14
.end method
