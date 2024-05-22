.class public abstract Lkotlinx/coroutines/CoroutineExceptionHandlerImplKt;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final handlers:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lkotlinx/coroutines/CoroutineExceptionHandlerImplKt$$ExternalSyntheticServiceLoad0;->m()Ljava/util/Iterator;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/sequences/SequencesKt___SequencesJvmKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    .line 6
    move-result-object v0

    .line 9
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 10
    move-result-object v0

    .line 13
    sput-object v0, Lkotlinx/coroutines/CoroutineExceptionHandlerImplKt;->handlers:Ljava/util/List;

    .line 14
    return-void
    .line 16
.end method

.method public static final handleCoroutineExceptionImpl(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandlerImplKt;->handlers:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 18
    :try_start_0
    check-cast v1, Lkotlinx/coroutines/android/AndroidExceptionPreHandler;

    .line 20
    invoke-virtual {v1, p0, p1}, Lkotlinx/coroutines/android/AndroidExceptionPreHandler;->handleException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 27
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 31
    move-result-object v3

    .line 34
    if-ne p1, v1, :cond_0

    .line 35
    move-object v4, p1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    .line 39
    const-string v5, "Exception while trying to handle coroutine exception"

    .line 41
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    invoke-static {v4, p1}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 46
    :goto_1
    invoke-interface {v3, v2, v4}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 49
    goto :goto_0

    .line 52
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 53
    move-result-object v0

    .line 56
    :try_start_1
    new-instance v1, Lkotlinx/coroutines/DiagnosticCoroutineContextException;

    .line 57
    invoke-direct {v1, p0}, Lkotlinx/coroutines/DiagnosticCoroutineContextException;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .line 59
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    goto :goto_2

    .line 65
    :catchall_1
    new-instance p0, Lkotlin/Result$Failure;

    .line 66
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 68
    move-result-object p0

    .line 71
    invoke-interface {p0, v0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 72
    return-void
    .line 75
.end method
