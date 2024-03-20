.class public abstract Lkotlinx/coroutines/internal/ConcurrentKt;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final REMOVE_FUTURE_ON_CANCEL:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    :try_start_0
    const-class v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 2
    const-string/jumbo v1, "setRemoveOnCancelPolicy"

    .line 4
    const/4 v2, 0x1

    .line 7
    new-array v2, v2, [Ljava/lang/Class;

    .line 8
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 10
    const/4 v4, 0x0

    .line 12
    aput-object v3, v2, v4

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    sput-object v0, Lkotlinx/coroutines/internal/ConcurrentKt;->REMOVE_FUTURE_ON_CANCEL:Ljava/lang/reflect/Method;

    .line 21
    return-void
    .line 23
.end method
