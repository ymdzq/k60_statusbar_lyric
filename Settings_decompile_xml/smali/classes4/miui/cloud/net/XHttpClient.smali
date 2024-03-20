.class public final Lmiui/cloud/net/XHttpClient;
.super Ljava/lang/Object;
.source "XHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/net/XHttpClient$HttpRequest;,
        Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;,
        Lmiui/cloud/net/XHttpClient$DataProcessorFactor;,
        Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;,
        Lmiui/cloud/net/XHttpClient$ISendDataProcessor;,
        Lmiui/cloud/net/XHttpClient$DataConversionException;,
        Lmiui/cloud/net/XHttpClient$IResponseHandler;,
        Lmiui/cloud/net/XHttpClient$HttpResponse;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DEFAULT_OUT_ENCODING:Ljava/lang/String; = "utf-8"

.field private static final DEFAULT_RUNNING_TASKS:I = 0x5

.field private static final HTTP_STATUS_OK_CODE:I = 0xc8

.field private static final REQUEST_TIME_OUT:I = 0x7530

.field private static final TEST_RESPONSE_DELAY:I = 0xc8

.field private static final TEST_RESPONSE_STATUS_CODE:I = 0x400

.field private static final TEST_RESPONSE_STATUS_MSG:Ljava/lang/String; = "TEST OK"

.field private static final TEST_URL:Ljava/lang/String; = "[TEST]"


# instance fields
.field private volatile mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

.field private mMaxRuningTaskCount:I

.field private mPendingTasks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lmiui/cloud/net/XHttpClient$HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningTaskCount:I

.field private volatile mUserAgentNameProvider:Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    new-instance v0, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    invoke-direct {v0}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;-><init>()V

    iput-object v0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Lmiui/cloud/net/XHttpClient;->mUserAgentNameProvider:Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;

    const/4 v0, 0x5

    .line 280
    iput v0, p0, Lmiui/cloud/net/XHttpClient;->mMaxRuningTaskCount:I

    .line 282
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmiui/cloud/net/XHttpClient;->mPendingTasks:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 284
    iput v0, p0, Lmiui/cloud/net/XHttpClient;->mRunningTaskCount:I

    return-void
.end method

.method static synthetic access$000(Lmiui/cloud/net/XHttpClient;Lmiui/cloud/net/XHttpClient$HttpRequest;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lmiui/cloud/net/XHttpClient;->finishTask(Lmiui/cloud/net/XHttpClient$HttpRequest;)V

    return-void
.end method

.method static synthetic access$100(Lmiui/cloud/net/XHttpClient;)Lmiui/cloud/net/XHttpClient$DataProcessorFactor;
    .locals 0

    .line 25
    iget-object p0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    return-object p0
.end method

.method static synthetic access$200(Lmiui/cloud/net/XHttpClient;)Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;
    .locals 0

    .line 25
    iget-object p0, p0, Lmiui/cloud/net/XHttpClient;->mUserAgentNameProvider:Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;

    return-object p0
.end method

.method private declared-synchronized addTask(Lmiui/cloud/net/XHttpClient$HttpRequest;)V
    .locals 1

    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mPendingTasks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-direct {p0}, Lmiui/cloud/net/XHttpClient;->scheduleTasksLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized finishTask(Lmiui/cloud/net/XHttpClient$HttpRequest;)V
    .locals 4

    monitor-enter p0

    .line 251
    :try_start_0
    iget p1, p0, Lmiui/cloud/net/XHttpClient;->mRunningTaskCount:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lmiui/cloud/net/XHttpClient;->mRunningTaskCount:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Task--"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 254
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 256
    invoke-direct {p0}, Lmiui/cloud/net/XHttpClient;->scheduleTasksLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private scheduleTasksLocked()V
    .locals 2

    .line 260
    iget v0, p0, Lmiui/cloud/net/XHttpClient;->mRunningTaskCount:I

    iget v1, p0, Lmiui/cloud/net/XHttpClient;->mMaxRuningTaskCount:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mPendingTasks:Ljava/util/LinkedList;

    .line 261
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 264
    :cond_0
    :goto_0
    iget v0, p0, Lmiui/cloud/net/XHttpClient;->mRunningTaskCount:I

    iget v1, p0, Lmiui/cloud/net/XHttpClient;->mMaxRuningTaskCount:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mPendingTasks:Ljava/util/LinkedList;

    .line 265
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lmiui/cloud/net/XHttpClient;->mPendingTasks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 267
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mPendingTasks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 268
    iget v0, p0, Lmiui/cloud/net/XHttpClient;->mRunningTaskCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/cloud/net/XHttpClient;->mRunningTaskCount:I

    goto :goto_0

    .line 272
    :cond_1
    iget p0, p0, Lmiui/cloud/net/XHttpClient;->mRunningTaskCount:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "task++"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public asyncGet(Ljava/lang/String;Ljava/util/Map;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lmiui/cloud/common/XCallback<",
            "Lmiui/cloud/net/XHttpClient$IResponseHandler;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v1, "GET"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    move-object v8, p4

    .line 161
    invoke-virtual/range {v0 .. v8}, Lmiui/cloud/net/XHttpClient;->asyncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public asyncGet(Ljava/lang/String;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lmiui/cloud/common/XCallback<",
            "Lmiui/cloud/net/XHttpClient$IResponseHandler;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v1, "GET"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v7, p2

    move-object v8, p3

    .line 156
    invoke-virtual/range {v0 .. v8}, Lmiui/cloud/net/XHttpClient;->asyncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public asyncPost(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lmiui/cloud/common/XCallback<",
            "Lmiui/cloud/net/XHttpClient$IResponseHandler;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v1, "POST"

    const/4 v3, 0x0

    .line 166
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    .line 167
    invoke-virtual {v0, p3, p2}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->getSendDataProcessor(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v7, p4

    move-object v8, p5

    .line 166
    invoke-virtual/range {v0 .. v8}, Lmiui/cloud/net/XHttpClient;->asyncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public asyncPost(Ljava/lang/String;Ljava/lang/Object;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lmiui/cloud/common/XCallback<",
            "Lmiui/cloud/net/XHttpClient$IResponseHandler;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v1, "POST"

    const/4 v3, 0x0

    .line 181
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    const-string v2, "utf-8"

    .line 182
    invoke-virtual {v0, v2, p2}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->getSendDataProcessor(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v7, p3

    move-object v8, p4

    .line 181
    invoke-virtual/range {v0 .. v8}, Lmiui/cloud/net/XHttpClient;->asyncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public asyncPost(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lmiui/cloud/common/XCallback<",
            "Lmiui/cloud/net/XHttpClient$IResponseHandler;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v1, "POST"

    .line 174
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    .line 175
    invoke-virtual {v0, p4, p3}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->getSendDataProcessor(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p5

    move-object v8, p6

    .line 174
    invoke-virtual/range {v0 .. v8}, Lmiui/cloud/net/XHttpClient;->asyncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public asyncPost(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lmiui/cloud/common/XCallback<",
            "Lmiui/cloud/net/XHttpClient$IResponseHandler;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v1, "POST"

    .line 188
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    const-string v2, "utf-8"

    .line 189
    invoke-virtual {v0, v2, p3}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->getSendDataProcessor(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    move-object v8, p5

    .line 188
    invoke-virtual/range {v0 .. v8}, Lmiui/cloud/net/XHttpClient;->asyncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public asyncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lmiui/cloud/net/XHttpClient$ISendDataProcessor;",
            "Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;",
            "Lmiui/cloud/common/XCallback<",
            "Lmiui/cloud/net/XHttpClient$IResponseHandler;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 124
    new-instance v10, Lmiui/cloud/net/XHttpClient$HttpRequest;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lmiui/cloud/net/XHttpClient$HttpRequest;-><init>(Lmiui/cloud/net/XHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V

    move-object v0, p0

    invoke-direct {p0, v10}, Lmiui/cloud/net/XHttpClient;->addTask(Lmiui/cloud/net/XHttpClient$HttpRequest;)V

    return-void
.end method

.method public setDataProcessorFactor(Lmiui/cloud/net/XHttpClient$DataProcessorFactor;)V
    .locals 0

    .line 232
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    iput-object p1, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    return-void
.end method

.method public declared-synchronized setMaxRunningTasks(I)V
    .locals 0

    monitor-enter p0

    .line 241
    :try_start_0
    iput p1, p0, Lmiui/cloud/net/XHttpClient;->mMaxRuningTaskCount:I

    .line 242
    invoke-direct {p0}, Lmiui/cloud/net/XHttpClient;->scheduleTasksLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setUserAgentNameProvider(Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lmiui/cloud/net/XHttpClient;->mUserAgentNameProvider:Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;

    return-void
.end method

.method public syncGet(Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v1, "GET"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 194
    invoke-virtual/range {v0 .. v6}, Lmiui/cloud/net/XHttpClient;->syncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;)Lmiui/cloud/net/XHttpClient$HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public syncGet(Ljava/lang/String;Ljava/util/Map;)Lmiui/cloud/net/XHttpClient$HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lmiui/cloud/net/XHttpClient$HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v1, "GET"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 199
    invoke-virtual/range {v0 .. v6}, Lmiui/cloud/net/XHttpClient;->syncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;)Lmiui/cloud/net/XHttpClient$HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public syncPost(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v1, "POST"

    const/4 v3, 0x0

    .line 218
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    const-string v2, "utf-8"

    .line 219
    invoke-virtual {v0, v2, p2}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->getSendDataProcessor(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    .line 218
    invoke-virtual/range {v0 .. v6}, Lmiui/cloud/net/XHttpClient;->syncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;)Lmiui/cloud/net/XHttpClient$HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public syncPost(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v1, "POST"

    const/4 v3, 0x0

    .line 204
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    .line 205
    invoke-virtual {v0, p3, p2}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->getSendDataProcessor(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    .line 204
    invoke-virtual/range {v0 .. v6}, Lmiui/cloud/net/XHttpClient;->syncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;)Lmiui/cloud/net/XHttpClient$HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public syncPost(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")",
            "Lmiui/cloud/net/XHttpClient$HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v1, "POST"

    .line 225
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    const-string v2, "utf-8"

    .line 226
    invoke-virtual {v0, v2, p3}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->getSendDataProcessor(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 225
    invoke-virtual/range {v0 .. v6}, Lmiui/cloud/net/XHttpClient;->syncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;)Lmiui/cloud/net/XHttpClient$HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public syncPost(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lmiui/cloud/net/XHttpClient$HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v1, "POST"

    .line 211
    iget-object v0, p0, Lmiui/cloud/net/XHttpClient;->mDataProcessorFactor:Lmiui/cloud/net/XHttpClient$DataProcessorFactor;

    .line 212
    invoke-virtual {v0, p4, p3}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;->getSendDataProcessor(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 211
    invoke-virtual/range {v0 .. v6}, Lmiui/cloud/net/XHttpClient;->syncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;)Lmiui/cloud/net/XHttpClient$HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public syncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;)Lmiui/cloud/net/XHttpClient$HttpResponse;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lmiui/cloud/net/XHttpClient$ISendDataProcessor;",
            "Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;",
            ")",
            "Lmiui/cloud/net/XHttpClient$HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 134
    new-instance v0, Lmiui/cloud/common/XWrapper;

    invoke-direct {v0}, Lmiui/cloud/common/XWrapper;-><init>()V

    .line 137
    new-instance v10, Lmiui/cloud/common/XBlockCallback;

    const-class v1, Lmiui/cloud/net/XHttpClient$IResponseHandler;

    invoke-direct {v10, v1}, Lmiui/cloud/common/XBlockCallback;-><init>(Ljava/lang/Class;)V

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, v10

    .line 141
    invoke-virtual/range {v1 .. v9}, Lmiui/cloud/net/XHttpClient;->asyncSend(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Lmiui/cloud/net/XHttpClient$ISendDataProcessor;Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;Lmiui/cloud/common/XCallback;Ljava/lang/Object;)V

    .line 144
    new-instance v1, Lmiui/cloud/net/XHttpClient$1;

    move-object v2, p0

    invoke-direct {v1, p0, v0}, Lmiui/cloud/net/XHttpClient$1;-><init>(Lmiui/cloud/net/XHttpClient;Lmiui/cloud/common/XWrapper;)V

    invoke-virtual {v10, v1}, Lmiui/cloud/common/XBlockCallback;->waitForCallBack(Ljava/lang/Object;)V

    .line 151
    invoke-virtual {v0}, Lmiui/cloud/common/XWrapper;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cloud/net/XHttpClient$HttpResponse;

    return-object v0
.end method
