.class public abstract Lkotlinx/coroutines/scheduling/TasksKt;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final BlockingContext:Lkotlinx/coroutines/scheduling/TaskContextImpl;

.field public static final CORE_POOL_SIZE:I

.field public static final IDLE_WORKER_KEEP_ALIVE_NS:J

.field public static final MAX_POOL_SIZE:I

.field public static final NonBlockingContext:Lkotlinx/coroutines/scheduling/TaskContextImpl;

.field public static final WORK_STEALING_TIME_RESOLUTION_NS:J

.field public static final schedulerTimeSource:Lkotlinx/coroutines/scheduling/NanoTimeSource;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    const-string v0, "kotlinx.coroutines.scheduler.resolution.ns"

    .line 2
    const-wide/32 v1, 0x186a0

    .line 4
    const-wide/16 v3, 0x1

    .line 7
    const-wide v5, 0x7fffffffffffffffL

    .line 9
    invoke-static/range {v0 .. v6}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp(Ljava/lang/String;JJJ)J

    .line 14
    move-result-wide v0

    .line 17
    sput-wide v0, Lkotlinx/coroutines/scheduling/TasksKt;->WORK_STEALING_TIME_RESOLUTION_NS:J

    .line 18
    sget v0, Lkotlinx/coroutines/internal/SystemPropsKt__SystemPropsKt;->AVAILABLE_PROCESSORS:I

    .line 20
    const/4 v1, 0x2

    .line 22
    if-ge v0, v1, :cond_0

    .line 23
    move v0, v1

    .line 25
    :cond_0
    const/16 v1, 0x8

    .line 26
    const-string v2, "kotlinx.coroutines.scheduler.core.pool.size"

    .line 28
    const/4 v3, 0x1

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-static {v2, v0, v3, v4, v1}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp$default(Ljava/lang/String;IIII)I

    .line 32
    move-result v0

    .line 35
    sput v0, Lkotlinx/coroutines/scheduling/TasksKt;->CORE_POOL_SIZE:I

    .line 36
    const-string v0, "kotlinx.coroutines.scheduler.max.pool.size"

    .line 38
    const/4 v1, 0x4

    .line 40
    const v2, 0x1ffffe

    .line 41
    invoke-static {v0, v2, v4, v2, v1}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp$default(Ljava/lang/String;IIII)I

    .line 44
    move-result v0

    .line 47
    sput v0, Lkotlinx/coroutines/scheduling/TasksKt;->MAX_POOL_SIZE:I

    .line 48
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 50
    const-string v5, "kotlinx.coroutines.scheduler.keep.alive.sec"

    .line 52
    const-wide/16 v6, 0x3c

    .line 54
    const-wide/16 v8, 0x1

    .line 56
    const-wide v10, 0x7fffffffffffffffL

    .line 58
    invoke-static/range {v5 .. v11}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp(Ljava/lang/String;JJJ)J

    .line 63
    move-result-wide v1

    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 67
    move-result-wide v0

    .line 70
    sput-wide v0, Lkotlinx/coroutines/scheduling/TasksKt;->IDLE_WORKER_KEEP_ALIVE_NS:J

    .line 71
    sget-object v0, Lkotlinx/coroutines/scheduling/NanoTimeSource;->INSTANCE:Lkotlinx/coroutines/scheduling/NanoTimeSource;

    .line 73
    sput-object v0, Lkotlinx/coroutines/scheduling/TasksKt;->schedulerTimeSource:Lkotlinx/coroutines/scheduling/NanoTimeSource;

    .line 75
    new-instance v0, Lkotlinx/coroutines/scheduling/TaskContextImpl;

    .line 77
    invoke-direct {v0, v4}, Lkotlinx/coroutines/scheduling/TaskContextImpl;-><init>(I)V

    .line 79
    sput-object v0, Lkotlinx/coroutines/scheduling/TasksKt;->NonBlockingContext:Lkotlinx/coroutines/scheduling/TaskContextImpl;

    .line 82
    new-instance v0, Lkotlinx/coroutines/scheduling/TaskContextImpl;

    .line 84
    invoke-direct {v0, v3}, Lkotlinx/coroutines/scheduling/TaskContextImpl;-><init>(I)V

    .line 86
    sput-object v0, Lkotlinx/coroutines/scheduling/TasksKt;->BlockingContext:Lkotlinx/coroutines/scheduling/TaskContextImpl;

    .line 89
    return-void
    .line 91
.end method
