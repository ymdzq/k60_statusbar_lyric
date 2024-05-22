.class public final Lkotlinx/coroutines/flow/SharedFlowSlot;
.super Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public cont:Lkotlinx/coroutines/CancellableContinuationImpl;

.field public index:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;-><init>()V

    .line 2
    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final allocateLocked(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)Z
    .locals 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 2
    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 4
    const-wide/16 v2, 0x0

    .line 6
    cmp-long v0, v0, v2

    .line 8
    if-ltz v0, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-wide v0, p1, Lkotlinx/coroutines/flow/SharedFlowImpl;->replayIndex:J

    .line 14
    iget-wide v2, p1, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    .line 16
    cmp-long v2, v0, v2

    .line 18
    if-gez v2, :cond_1

    .line 20
    iput-wide v0, p1, Lkotlinx/coroutines/flow/SharedFlowImpl;->minCollectorIndex:J

    .line 22
    :cond_1
    iput-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 24
    const/4 p0, 0x1

    .line 26
    :goto_0
    return p0
    .line 27
.end method

.method public final freeLocked(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)[Lkotlin/coroutines/Continuation;
    .locals 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 2
    iget-wide v0, p0, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 4
    const-wide/16 v2, -0x1

    .line 6
    iput-wide v2, p0, Lkotlinx/coroutines/flow/SharedFlowSlot;->index:J

    .line 8
    const/4 v2, 0x0

    .line 10
    iput-object v2, p0, Lkotlinx/coroutines/flow/SharedFlowSlot;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 11
    invoke-virtual {p1, v0, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->updateCollectorIndexLocked$external__kotlinx_coroutines__android_common__kotlinx_coroutines(J)[Lkotlin/coroutines/Continuation;

    .line 13
    move-result-object p0

    .line 16
    return-object p0
    .line 17
.end method
