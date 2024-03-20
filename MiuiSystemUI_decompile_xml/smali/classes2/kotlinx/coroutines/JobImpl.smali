.class public Lkotlinx/coroutines/JobImpl;
.super Lkotlinx/coroutines/JobSupport;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final handlesException:Z


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Job;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;-><init>(Z)V

    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->initParentJob(Lkotlinx/coroutines/Job;)V

    .line 6
    iget-object p1, p0, Lkotlinx/coroutines/JobSupport;->_parentHandle:Lkotlinx/atomicfu/AtomicRef;

    .line 9
    iget-object p1, p1, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 11
    check-cast p1, Lkotlinx/coroutines/ChildHandle;

    .line 13
    instance-of v1, p1, Lkotlinx/coroutines/ChildHandleNode;

    .line 15
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    check-cast p1, Lkotlinx/coroutines/ChildHandleNode;

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    move-object p1, v2

    .line 23
    :goto_0
    if-eqz p1, :cond_4

    .line 24
    invoke-virtual {p1}, Lkotlinx/coroutines/JobNode;->getJob()Lkotlinx/coroutines/JobSupport;

    .line 26
    move-result-object p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    goto :goto_2

    .line 32
    :cond_1
    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport;->getHandlesException$external__kotlinx_coroutines__android_common__kotlinx_coroutines()Z

    .line 33
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    goto :goto_3

    .line 39
    :cond_2
    iget-object p1, p1, Lkotlinx/coroutines/JobSupport;->_parentHandle:Lkotlinx/atomicfu/AtomicRef;

    .line 40
    iget-object p1, p1, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 42
    check-cast p1, Lkotlinx/coroutines/ChildHandle;

    .line 44
    instance-of v1, p1, Lkotlinx/coroutines/ChildHandleNode;

    .line 46
    if-eqz v1, :cond_3

    .line 48
    check-cast p1, Lkotlinx/coroutines/ChildHandleNode;

    .line 50
    goto :goto_1

    .line 52
    :cond_3
    move-object p1, v2

    .line 53
    :goto_1
    if-eqz p1, :cond_4

    .line 54
    invoke-virtual {p1}, Lkotlinx/coroutines/JobNode;->getJob()Lkotlinx/coroutines/JobSupport;

    .line 56
    move-result-object p1

    .line 59
    if-nez p1, :cond_1

    .line 60
    :cond_4
    :goto_2
    const/4 v0, 0x0

    .line 62
    :goto_3
    iput-boolean v0, p0, Lkotlinx/coroutines/JobImpl;->handlesException:Z

    .line 63
    return-void
    .line 65
.end method


# virtual methods
.method public final getHandlesException$external__kotlinx_coroutines__android_common__kotlinx_coroutines()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lkotlinx/coroutines/JobImpl;->handlesException:Z

    .line 2
    return p0
    .line 4
.end method

.method public final getOnCancelComplete$external__kotlinx_coroutines__android_common__kotlinx_coroutines()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method
