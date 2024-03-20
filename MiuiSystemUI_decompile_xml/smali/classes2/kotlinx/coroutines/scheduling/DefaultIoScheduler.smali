.class public final Lkotlinx/coroutines/scheduling/DefaultIoScheduler;
.super Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

.field public static final default:Lkotlinx/coroutines/internal/LimitedDispatcher;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 2
    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;-><init>()V

    .line 4
    sput-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 7
    sget-object v0, Lkotlinx/coroutines/scheduling/UnlimitedIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/UnlimitedIoScheduler;

    .line 9
    sget v0, Lkotlinx/coroutines/internal/SystemPropsKt__SystemPropsKt;->AVAILABLE_PROCESSORS:I

    .line 11
    const/16 v1, 0x40

    .line 13
    if-ge v1, v0, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    move v0, v1

    .line 18
    :goto_0
    const/16 v1, 0xc

    .line 19
    const-string v2, "kotlinx.coroutines.io.parallelism"

    .line 21
    const/4 v3, 0x0

    .line 23
    invoke-static {v2, v0, v3, v3, v1}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp$default(Ljava/lang/String;IIII)I

    .line 24
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    if-lt v0, v1, :cond_1

    .line 29
    move v3, v1

    .line 31
    :cond_1
    if-eqz v3, :cond_2

    .line 32
    new-instance v1, Lkotlinx/coroutines/internal/LimitedDispatcher;

    .line 34
    invoke-direct {v1, v0}, Lkotlinx/coroutines/internal/LimitedDispatcher;-><init>(I)V

    .line 36
    sput-object v1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->default:Lkotlinx/coroutines/internal/LimitedDispatcher;

    .line 39
    return-void

    .line 41
    :cond_2
    const-string v1, "Expected positive parallelism level, but got "

    .line 42
    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 53
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    throw v1
    .line 57
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    const-string v0, "Cannot be invoked on Dispatchers.IO"

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 10
    throw p0
    .line 13
.end method

.method public final dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    sget-object p0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->default:Lkotlinx/coroutines/internal/LimitedDispatcher;

    .line 2
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/LimitedDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 4
    return-void
    .line 7
.end method

.method public final dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    sget-object p0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->default:Lkotlinx/coroutines/internal/LimitedDispatcher;

    .line 2
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/LimitedDispatcher;->dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 4
    return-void
    .line 7
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 2
    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 4
    return-void
    .line 7
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "Dispatchers.IO"

    .line 2
    return-object p0
    .line 4
.end method
