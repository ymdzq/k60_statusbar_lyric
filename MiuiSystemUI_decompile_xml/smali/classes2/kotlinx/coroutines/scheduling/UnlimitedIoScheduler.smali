.class public final Lkotlinx/coroutines/scheduling/UnlimitedIoScheduler;
.super Lkotlinx/coroutines/CoroutineDispatcher;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/scheduling/UnlimitedIoScheduler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/scheduling/UnlimitedIoScheduler;

    .line 2
    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/UnlimitedIoScheduler;-><init>()V

    .line 4
    sput-object v0, Lkotlinx/coroutines/scheduling/UnlimitedIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/UnlimitedIoScheduler;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object p0, Lkotlinx/coroutines/scheduling/DefaultScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    sget-object p1, Lkotlinx/coroutines/scheduling/TasksKt;->BlockingContext:Lkotlinx/coroutines/scheduling/TaskContextImpl;

    .line 4
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/SchedulerCoroutineDispatcher;->coroutineScheduler:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 6
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p2, p1, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->dispatch(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContextImpl;Z)V

    .line 9
    return-void
    .line 12
.end method

.method public final dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object p0, Lkotlinx/coroutines/scheduling/DefaultScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    sget-object p1, Lkotlinx/coroutines/scheduling/TasksKt;->BlockingContext:Lkotlinx/coroutines/scheduling/TaskContextImpl;

    .line 4
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/SchedulerCoroutineDispatcher;->coroutineScheduler:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 6
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, p2, p1, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->dispatch(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContextImpl;Z)V

    .line 9
    return-void
    .line 12
.end method
