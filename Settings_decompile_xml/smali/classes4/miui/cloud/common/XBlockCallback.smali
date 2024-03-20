.class public Lmiui/cloud/common/XBlockCallback;
.super Lmiui/cloud/common/XCallback;
.source "XBlockCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/common/XBlockCallback$CallbackRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmiui/cloud/common/XCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mCallbackRequest:Lmiui/cloud/common/XBlockCallback$CallbackRequest;

.field private mCallbackRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mCallbackRequestReady:Ljava/util/concurrent/locks/Condition;

.field private mCallbackRequestWait:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Lmiui/cloud/common/XCallback;-><init>(Ljava/lang/Class;)V

    .line 70
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 72
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestWait:Ljava/util/concurrent/locks/Condition;

    .line 73
    iget-object p1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 74
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestReady:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method protected handleCallback(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 50
    :try_start_0
    iget-object v0, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 52
    :goto_0
    iget-object v0, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequest:Lmiui/cloud/common/XBlockCallback$CallbackRequest;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestReady:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 54
    iget-object v0, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestWait:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    .line 57
    :cond_0
    new-instance v0, Lmiui/cloud/common/XBlockCallback$CallbackRequest;

    invoke-direct {v0, p1, p2}, Lmiui/cloud/common/XBlockCallback$CallbackRequest;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequest:Lmiui/cloud/common/XBlockCallback$CallbackRequest;

    .line 59
    iget-object p1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestReady:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    const/4 p1, 0x1

    :try_start_1
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Interrupted while waiting for callback handlers. "

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 62
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :goto_1
    iget-object p0, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p0, 0x0

    return-object p0

    :goto_2
    iget-object p0, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 65
    throw p1
.end method

.method public waitForCallBack(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "Bad callback. "

    .line 17
    :try_start_0
    iget-object v1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 19
    :goto_0
    iget-object v1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequest:Lmiui/cloud/common/XBlockCallback$CallbackRequest;

    if-nez v1, :cond_0

    .line 20
    iget-object v1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestWait:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 21
    iget-object v1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestReady:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 25
    :try_start_1
    iget-object v4, v1, Lmiui/cloud/common/XBlockCallback$CallbackRequest;->method:Ljava/lang/reflect/Method;

    iget-object v1, v1, Lmiui/cloud/common/XBlockCallback$CallbackRequest;->args:[Ljava/lang/Object;

    invoke-virtual {v4, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v0, 0x2

    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Exception in callback, but unable to propagate to the original thread. "

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    .line 33
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    new-array p1, v3, [Ljava/lang/Object;

    aput-object v0, p1, v2

    .line 29
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    new-array p1, v3, [Ljava/lang/Object;

    aput-object v0, p1, v2

    .line 27
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    :goto_1
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequest:Lmiui/cloud/common/XBlockCallback$CallbackRequest;

    .line 38
    iget-object p1, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestWait:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    iget-object p0, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lmiui/cloud/common/XBlockCallback;->mCallbackRequestLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 42
    throw p1
.end method
