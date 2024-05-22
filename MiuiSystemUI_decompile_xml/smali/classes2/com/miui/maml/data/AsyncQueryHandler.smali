.class public abstract Lcom/miui/maml/data/AsyncQueryHandler;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final EVENT_ARG_DELETE:I = 0x4

.field private static final EVENT_ARG_INSERT:I = 0x2

.field private static final EVENT_ARG_QUERY:I = 0x1

.field private static final EVENT_ARG_UPDATE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AsyncQuery"

.field private static final localLOGV:Z = false

.field private static sLooper:Landroid/os/Looper;


# instance fields
.field final mResolver:Ljava/lang/ref/WeakReference;

.field private mWorkerThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    .line 3
    const-class p1, Landroid/content/AsyncQueryHandler;

    monitor-enter p1

    .line 4
    :try_start_0
    sget-object v0, Lcom/miui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AsyncQueryWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 7
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/miui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    .line 8
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    sget-object p1, Lcom/miui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/AsyncQueryHandler;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    return-void

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/ContentResolver;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    .line 13
    const-class p1, Landroid/content/AsyncQueryHandler;

    monitor-enter p1

    .line 14
    :try_start_0
    sget-object p2, Lcom/miui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    if-nez p2, :cond_0

    .line 15
    new-instance p2, Landroid/os/HandlerThread;

    const-string v0, "AsyncQueryWorker"

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 17
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    sput-object p2, Lcom/miui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    .line 18
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    sget-object p1, Lcom/miui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/AsyncQueryHandler;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    return-void

    :catchall_0
    move-exception p0

    .line 20
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final cancelOperation(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 2
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    return-void
    .line 7
.end method

.method public createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;-><init>(Lcom/miui/maml/data/AsyncQueryHandler;Landroid/os/Looper;)V

    .line 4
    return-object v0
    .line 7
.end method

.method public doUpdateOfCursor(Landroid/database/Cursor;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    check-cast v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    .line 4
    iget v1, p1, Landroid/os/Message;->what:I

    .line 6
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 8
    const/4 v2, 0x1

    .line 10
    if-eq p1, v2, :cond_3

    .line 11
    const/4 v2, 0x2

    .line 13
    if-eq p1, v2, :cond_2

    .line 14
    const/4 v2, 0x3

    .line 16
    if-eq p1, v2, :cond_1

    .line 17
    const/4 v2, 0x4

    .line 19
    if-eq p1, v2, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 23
    iget-object v0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    .line 25
    check-cast v0, Ljava/lang/Integer;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 29
    move-result v0

    .line 32
    invoke-virtual {p0, v1, p1, v0}, Lcom/miui/maml/data/AsyncQueryHandler;->onDeleteComplete(ILjava/lang/Object;I)V

    .line 33
    goto :goto_0

    .line 36
    :cond_1
    iget-object p1, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 37
    iget-object v0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    .line 39
    check-cast v0, Ljava/lang/Integer;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 43
    move-result v0

    .line 46
    invoke-virtual {p0, v1, p1, v0}, Lcom/miui/maml/data/AsyncQueryHandler;->onUpdateComplete(ILjava/lang/Object;I)V

    .line 47
    goto :goto_0

    .line 50
    :cond_2
    iget-object p1, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 51
    iget-object v0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    .line 53
    check-cast v0, Landroid/net/Uri;

    .line 55
    invoke-virtual {p0, v1, p1, v0}, Lcom/miui/maml/data/AsyncQueryHandler;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    .line 57
    goto :goto_0

    .line 60
    :cond_3
    iget-object p1, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 61
    invoke-virtual {p0, v1, p1}, Lcom/miui/maml/data/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;)V

    .line 63
    :goto_0
    return-void
    .line 66
.end method

.method public onDeleteComplete(ILjava/lang/Object;I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onQueryComplete(ILjava/lang/Object;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 4
    move-result-object p1

    .line 7
    const/4 v0, 0x4

    .line 8
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 9
    new-instance v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    .line 11
    invoke-direct {v0}, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 13
    iput-object p0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 16
    iput-object p3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 18
    iput-object p2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 20
    iput-object p4, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 22
    iput-object p5, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 24
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 26
    iget-object p0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 28
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    return-void
    .line 33
.end method

.method public final startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 4
    move-result-object p1

    .line 7
    const/4 v0, 0x2

    .line 8
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 9
    new-instance v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    .line 11
    invoke-direct {v0}, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 13
    iput-object p0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 16
    iput-object p3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 18
    iput-object p2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 20
    iput-object p4, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    .line 22
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 24
    iget-object p0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 26
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 28
    return-void
    .line 31
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 4
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 9
    new-instance v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    .line 11
    invoke-direct {v0}, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 13
    iput-object p0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 16
    iput-object p3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 18
    iput-object p4, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 20
    iput-object p5, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 22
    iput-object p6, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 24
    iput-object p7, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 26
    iput-object p2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 28
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 30
    iget-object p0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 32
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 34
    return-void
    .line 37
.end method

.method public final startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 4
    move-result-object p1

    .line 7
    const/4 v0, 0x3

    .line 8
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 9
    new-instance v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    .line 11
    invoke-direct {v0}, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 13
    iput-object p0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 16
    iput-object p3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 18
    iput-object p2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 20
    iput-object p4, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    .line 22
    iput-object p5, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 24
    iput-object p6, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 26
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    iget-object p0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 30
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 32
    return-void
    .line 35
.end method
