.class public abstract Lcom/miui/maml/data/AsyncQueryHandler;
.super Landroid/os/Handler;
.source "AsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;,
        Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;
    }
.end annotation


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 2

    .line 132
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 133
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    .line 134
    const-class p1, Landroid/content/AsyncQueryHandler;

    monitor-enter p1

    .line 135
    :try_start_0
    sget-object v0, Lcom/miui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AsyncQueryWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 139
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/miui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    .line 142
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    sget-object p1, Lcom/miui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/AsyncQueryHandler;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    return-void

    :catchall_0
    move-exception p0

    .line 142
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/ContentResolver;)V
    .locals 1

    .line 147
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 148
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    .line 149
    const-class p1, Landroid/content/AsyncQueryHandler;

    monitor-enter p1

    .line 150
    :try_start_0
    sget-object p2, Lcom/miui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    if-nez p2, :cond_0

    .line 151
    new-instance p2, Landroid/os/HandlerThread;

    const-string v0, "AsyncQueryWorker"

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 154
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    sput-object p2, Lcom/miui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    .line 156
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    sget-object p1, Lcom/miui/maml/data/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/AsyncQueryHandler;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    return-void

    :catchall_0
    move-exception p0

    .line 156
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final cancelOperation(I)V
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    .line 161
    new-instance v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;-><init>(Lcom/miui/maml/data/AsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method doUpdateOfCursor(Landroid/database/Cursor;)V
    .locals 0

    .line 0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 354
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    .line 361
    iget v1, p1, Landroid/os/Message;->what:I

    .line 362
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    iget-object p1, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, p1, v0}, Lcom/miui/maml/data/AsyncQueryHandler;->onDeleteComplete(ILjava/lang/Object;I)V

    goto :goto_0

    .line 375
    :cond_1
    iget-object p1, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, p1, v0}, Lcom/miui/maml/data/AsyncQueryHandler;->onUpdateComplete(ILjava/lang/Object;I)V

    goto :goto_0

    .line 371
    :cond_2
    iget-object p1, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, v1, p1, v0}, Lcom/miui/maml/data/AsyncQueryHandler;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    goto :goto_0

    .line 367
    :cond_3
    iget-object p1, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    invoke-virtual {p0, v1, p1}, Lcom/miui/maml/data/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public final startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x4

    .line 287
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 289
    new-instance v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 290
    iput-object p0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 291
    iput-object p3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 292
    iput-object p2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 293
    iput-object p4, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 294
    iput-object p5, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 295
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 297
    iget-object p0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x2

    .line 233
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 235
    new-instance v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 236
    iput-object p0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 237
    iput-object p3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 238
    iput-object p2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 239
    iput-object p4, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    .line 240
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 242
    iget-object p0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    .line 191
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 193
    new-instance v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 194
    iput-object p0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 195
    iput-object p3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 196
    iput-object p4, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 197
    iput-object p5, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 198
    iput-object p6, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 199
    iput-object p7, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 200
    iput-object p2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 201
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 203
    iget-object p0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x3

    .line 259
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 261
    new-instance v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;-><init>()V

    .line 262
    iput-object p0, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 263
    iput-object p3, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 264
    iput-object p2, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 265
    iput-object p4, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    .line 266
    iput-object p5, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 267
    iput-object p6, v0, Lcom/miui/maml/data/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 268
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 270
    iget-object p0, p0, Lcom/miui/maml/data/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
