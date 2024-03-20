.class public final Lkotlinx/coroutines/sync/MutexImpl$LockCont;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# instance fields
.field public final cont:Lkotlinx/coroutines/CancellableContinuation;

.field public final isTaken:Lkotlinx/atomicfu/AtomicBoolean;

.field public final owner:Ljava/lang/Object;

.field public final synthetic this$0:Lkotlinx/coroutines/sync/MutexImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$LockCont;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    .line 2
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;-><init>()V

    .line 4
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$LockCont;->owner:Ljava/lang/Object;

    .line 8
    new-instance p1, Lkotlinx/atomicfu/AtomicBoolean;

    .line 10
    const/4 v0, 0x0

    .line 12
    invoke-direct {p1, v0}, Lkotlinx/atomicfu/AtomicBoolean;-><init>(Z)V

    .line 13
    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$LockCont;->isTaken:Lkotlinx/atomicfu/AtomicBoolean;

    .line 16
    iput-object p2, p0, Lkotlinx/coroutines/sync/MutexImpl$LockCont;->cont:Lkotlinx/coroutines/CancellableContinuation;

    .line 18
    return-void
    .line 20
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "LockCont["

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lkotlinx/coroutines/sync/MutexImpl$LockCont;->owner:Ljava/lang/Object;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lkotlinx/coroutines/sync/MutexImpl$LockCont;->cont:Lkotlinx/coroutines/CancellableContinuation;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, "] for "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object p0, p0, Lkotlinx/coroutines/sync/MutexImpl$LockCont;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 37
    return-object p0
    .line 38
.end method
