.class Lmiuix/animation/internal/ThreadPoolUtil$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$factoryName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmiuix/animation/internal/ThreadPoolUtil$2;->val$factoryName:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 10
    iput-object p1, p0, Lmiuix/animation/internal/ThreadPoolUtil$2;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 1
    new-instance v0, Lmiuix/animation/internal/ThreadPoolUtil$2$1;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v2, p0, Lmiuix/animation/internal/ThreadPoolUtil$2;->val$factoryName:Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v2, "-"

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v2, p0, Lmiuix/animation/internal/ThreadPoolUtil$2;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 21
    move-result v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 31
    invoke-direct {v0, p0, p1, v1}, Lmiuix/animation/internal/ThreadPoolUtil$2$1;-><init>(Lmiuix/animation/internal/ThreadPoolUtil$2;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 32
    return-object v0
    .line 35
.end method
