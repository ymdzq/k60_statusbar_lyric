.class public final Lkotlin/coroutines/SafeContinuation;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/coroutines/Continuation;
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;


# static fields
.field public static final RESULT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public final delegate:Lkotlin/coroutines/Continuation;

.field private volatile result:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Ljava/lang/Object;

    .line 2
    const-string v1, "result"

    .line 4
    const-class v2, Lkotlin/coroutines/SafeContinuation;

    .line 6
    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    move-result-object v0

    .line 11
    sput-object v0, Lkotlin/coroutines/SafeContinuation;->RESULT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    return-void
    .line 14
.end method

.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->UNDECIDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lkotlin/coroutines/SafeContinuation;->delegate:Lkotlin/coroutines/Continuation;

    .line 7
    iput-object v0, p0, Lkotlin/coroutines/SafeContinuation;->result:Ljava/lang/Object;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 1

    .line 1
    iget-object p0, p0, Lkotlin/coroutines/SafeContinuation;->delegate:Lkotlin/coroutines/Continuation;

    .line 2
    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    check-cast p0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
    .line 12
.end method

.method public final getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/coroutines/SafeContinuation;->delegate:Lkotlin/coroutines/Continuation;

    .line 2
    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getOrThrow()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/coroutines/SafeContinuation;->result:Ljava/lang/Object;

    .line 2
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->UNDECIDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    if-ne v0, v1, :cond_1

    .line 8
    sget-object v0, Lkotlin/coroutines/SafeContinuation;->RESULT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 10
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    return-object v2

    .line 18
    :cond_0
    iget-object v0, p0, Lkotlin/coroutines/SafeContinuation;->result:Ljava/lang/Object;

    .line 19
    :cond_1
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->RESUMED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 21
    if-ne v0, p0, :cond_2

    .line 23
    goto :goto_0

    .line 25
    :cond_2
    instance-of p0, v0, Lkotlin/Result$Failure;

    .line 26
    if-nez p0, :cond_3

    .line 28
    move-object v2, v0

    .line 30
    :goto_0
    return-object v2

    .line 31
    :cond_3
    check-cast v0, Lkotlin/Result$Failure;

    .line 32
    iget-object p0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    .line 34
    throw p0
    .line 36
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 3

    .line 1
    :cond_0
    iget-object v0, p0, Lkotlin/coroutines/SafeContinuation;->result:Ljava/lang/Object;

    .line 2
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->UNDECIDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    if-ne v0, v1, :cond_1

    .line 6
    sget-object v0, Lkotlin/coroutines/SafeContinuation;->RESULT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    return-void

    .line 16
    :cond_1
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    if-ne v0, v1, :cond_2

    .line 19
    sget-object v0, Lkotlin/coroutines/SafeContinuation;->RESULT:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 21
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->RESUMED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 23
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    iget-object p0, p0, Lkotlin/coroutines/SafeContinuation;->delegate:Lkotlin/coroutines/Continuation;

    .line 31
    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 33
    return-void

    .line 36
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 37
    const-string p1, "Already resumed"

    .line 39
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    throw p0
    .line 44
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "SafeContinuation for "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lkotlin/coroutines/SafeContinuation;->delegate:Lkotlin/coroutines/Continuation;

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method
