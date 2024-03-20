.class public final Lcom/android/systemui/multishade/data/remoteproxy/MultiShadeInputProxy;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final _proxiedTouch:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final proxiedInput:Lkotlinx/coroutines/flow/ReadonlySharedFlow;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 5
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x2

    .line 9
    invoke-static {v1, v2, v0, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 10
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/systemui/multishade/data/remoteproxy/MultiShadeInputProxy;->_proxiedTouch:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 14
    new-instance v1, Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 16
    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/ReadonlySharedFlow;-><init>(Lkotlinx/coroutines/flow/SharedFlowImpl;)V

    .line 18
    iput-object v1, p0, Lcom/android/systemui/multishade/data/remoteproxy/MultiShadeInputProxy;->proxiedInput:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 21
    return-void
    .line 23
.end method
