.class public abstract synthetic Lkotlinx/coroutines/CoroutineExceptionHandlerImplKt$$ExternalSyntheticServiceLoad0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static synthetic m()Ljava/util/Iterator;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    new-array v0, v0, [Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 3
    const/4 v1, 0x0

    .line 5
    new-instance v2, Lkotlinx/coroutines/android/AndroidExceptionPreHandler;

    .line 6
    invoke-direct {v2}, Lkotlinx/coroutines/android/AndroidExceptionPreHandler;-><init>()V

    .line 8
    aput-object v2, v0, v1

    .line 11
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    new-instance v1, Ljava/util/ServiceConfigurationError;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 28
    invoke-direct {v1, v2, v0}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    throw v1
.end method
