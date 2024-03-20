.class abstract Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
.source "Mutex.kt"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/sync/MutexImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LockWaiter"
.end annotation


# instance fields
.field private final isTaken:Lkotlinx/atomicfu/AtomicBoolean;

.field public final owner:Ljava/lang/Object;

.field final synthetic this$0:Lkotlinx/coroutines/sync/MutexImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 369
    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    .line 371
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;-><init>()V

    .line 370
    iput-object p2, p0, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->owner:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 372
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->isTaken:Lkotlinx/atomicfu/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public abstract completeResumeLockWaiter()V
.end method

.method public final dispose()V
    .locals 0

    .line 374
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->remove()Z

    return-void
.end method

.method public final take()Z
    .locals 2

    .line 373
    iget-object p0, p0, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->isTaken:Lkotlinx/atomicfu/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    return p0
.end method

.method public abstract tryResumeLockWaiter()Z
.end method
