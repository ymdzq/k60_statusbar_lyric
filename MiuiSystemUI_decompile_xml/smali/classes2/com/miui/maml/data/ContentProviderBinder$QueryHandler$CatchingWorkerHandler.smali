.class public Lcom/miui/maml/data/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;
.super Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$1:Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/data/ContentProviderBinder$QueryHandler$CatchingWorkerHandler;->this$1:Lcom/miui/maml/data/ContentProviderBinder$QueryHandler;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;-><init>(Lcom/miui/maml/data/AsyncQueryHandler;Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    const-string v0, "Exception on background worker thread"

    .line 2
    const-string v1, "ContentProviderBinder"

    .line 4
    :try_start_0
    invoke-super {p0, p1}, Lcom/miui/maml/data/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    goto :goto_0

    .line 14
    :catch_1
    move-exception p0

    .line 15
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    goto :goto_0

    .line 19
    :catch_2
    move-exception p0

    .line 20
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    :goto_0
    return-void
    .line 24
.end method
