.class public Lcom/miui/maml/RenderThread;
.super Ljava/lang/Thread;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RenderThread"

.field private static sGlobalThread:Lcom/miui/maml/RenderThread;

.field private static sGlobalThreadLock:Ljava/lang/Object;


# instance fields
.field private mCmdHanlder:Lcom/miui/maml/RenderThread$CommandThreadHandler;

.field private mCmdThread:Landroid/os/HandlerThread;

.field private mPaused:Z

.field private mRendererControllerList:Ljava/util/ArrayList;

.field private mResumeSignal:Ljava/lang/Object;

.field private mSignaled:Z

.field private mSleepSignal:Ljava/lang/Object;

.field private mStarted:Z

.field private mStop:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    sput-object v0, Lcom/miui/maml/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "MAML RenderThread"

    .line 7
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/miui/maml/RenderThread;->mPaused:Z

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    .line 12
    invoke-direct {p0}, Lcom/miui/maml/RenderThread;->initCmdThread()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/RendererController;)V
    .locals 0

    const-string p1, "MAML RenderThread"

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/miui/maml/RenderThread;->mPaused:Z

    .line 4
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    .line 5
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Lcom/miui/maml/RenderThread;->initCmdThread()V

    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/RenderThread;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/RenderThread;->setPausedImpl(Z)V

    .line 2
    return-void
    .line 5
.end method

.method private doFinish()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v1, :cond_1

    .line 22
    iget-object v3, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 29
    check-cast v3, Lcom/miui/maml/RendererController;

    .line 30
    invoke-virtual {v3}, Lcom/miui/maml/RendererController;->finish()V

    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 35
    goto :goto_0

    .line 37
    :cond_1
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
    .line 42
.end method

.method private doInit()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v1, :cond_1

    .line 22
    iget-object v3, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 29
    check-cast v3, Lcom/miui/maml/RendererController;

    .line 30
    invoke-virtual {v3}, Lcom/miui/maml/RendererController;->init()V

    .line 32
    invoke-virtual {v3}, Lcom/miui/maml/RendererController;->requestUpdate()V

    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 38
    goto :goto_0

    .line 40
    :cond_1
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
    .line 45
.end method

.method private doPause()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v1, :cond_1

    .line 22
    iget-object v3, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 29
    check-cast v3, Lcom/miui/maml/RendererController;

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
    .line 39
.end method

.method private doResume()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v1, :cond_1

    .line 22
    iget-object v3, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 29
    check-cast v3, Lcom/miui/maml/RendererController;

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
    .line 39
.end method

.method public static globalThread()Lcom/miui/maml/RenderThread;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/miui/maml/RenderThread;->globalThread(Z)Lcom/miui/maml/RenderThread;

    move-result-object v0

    return-object v0
.end method

.method public static globalThread(Z)Lcom/miui/maml/RenderThread;
    .locals 2

    .line 2
    sget-object v0, Lcom/miui/maml/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/miui/maml/RenderThread;->sGlobalThread:Lcom/miui/maml/RenderThread;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/miui/maml/RenderThread;

    invoke-direct {v1}, Lcom/miui/maml/RenderThread;-><init>()V

    sput-object v1, Lcom/miui/maml/RenderThread;->sGlobalThread:Lcom/miui/maml/RenderThread;

    :cond_0
    if-eqz p0, :cond_1

    .line 5
    sget-object p0, Lcom/miui/maml/RenderThread;->sGlobalThread:Lcom/miui/maml/RenderThread;

    invoke-virtual {p0}, Lcom/miui/maml/RenderThread;->isStarted()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    .line 6
    :try_start_1
    sget-object p0, Lcom/miui/maml/RenderThread;->sGlobalThread:Lcom/miui/maml/RenderThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :catch_0
    :cond_1
    :try_start_2
    sget-object p0, Lcom/miui/maml/RenderThread;->sGlobalThread:Lcom/miui/maml/RenderThread;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static globalThreadStop()V
    .locals 2

    .line 1
    sget-object v0, Lcom/miui/maml/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/miui/maml/RenderThread;->sGlobalThread:Lcom/miui/maml/RenderThread;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/miui/maml/RenderThread;->setStop()V

    .line 9
    const/4 v1, 0x0

    .line 12
    sput-object v1, Lcom/miui/maml/RenderThread;->sGlobalThread:Lcom/miui/maml/RenderThread;

    .line 13
    :cond_0
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw v1
    .line 19
.end method

.method private initCmdThread()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    const-string v1, "cmd"

    .line 4
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    iput-object v0, p0, Lcom/miui/maml/RenderThread;->mCmdThread:Landroid/os/HandlerThread;

    .line 9
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 11
    new-instance v0, Lcom/miui/maml/RenderThread$CommandThreadHandler;

    .line 14
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mCmdThread:Landroid/os/HandlerThread;

    .line 16
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 18
    move-result-object v1

    .line 21
    invoke-direct {v0, p0, v1}, Lcom/miui/maml/RenderThread$CommandThreadHandler;-><init>(Lcom/miui/maml/RenderThread;Landroid/os/Looper;)V

    .line 22
    iput-object v0, p0, Lcom/miui/maml/RenderThread;->mCmdHanlder:Lcom/miui/maml/RenderThread$CommandThreadHandler;

    .line 25
    return-void
    .line 27
.end method

.method private setPausedImpl(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/RenderThread;->mStop:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/RenderThread;->signal()V

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/RenderThread;->mPaused:Z

    .line 9
    if-ne v0, p1, :cond_1

    .line 11
    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    .line 14
    monitor-enter v0

    .line 16
    :try_start_0
    iput-boolean p1, p0, Lcom/miui/maml/RenderThread;->mPaused:Z

    .line 17
    if-nez p1, :cond_2

    .line 19
    iget-object p1, p0, Lcom/miui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 23
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual {p0}, Lcom/miui/maml/RenderThread;->signal()V

    .line 27
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p0
    .line 33
.end method

.method private final waitSleep(J)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/RenderThread;->mSignaled:Z

    .line 2
    if-nez v0, :cond_2

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    cmp-long v0, p1, v0

    .line 8
    if-gtz v0, :cond_0

    .line 10
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    .line 13
    monitor-enter v0

    .line 15
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/RenderThread;->mSignaled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    if-nez v1, :cond_1

    .line 18
    :try_start_1
    iget-object p0, p0, Lcom/miui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    .line 20
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    goto :goto_0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 27
    :cond_1
    :goto_0
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    throw p0

    .line 34
    :cond_2
    :goto_1
    return-void
    .line 35
.end method

.method private waiteForResume()V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 9
    :goto_0
    return-void
    .line 12
.end method


# virtual methods
.method public addRendererController(Lcom/miui/maml/RendererController;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 7
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    const-string p0, "RenderThread"

    .line 13
    const-string p1, "addRendererController: RendererController already exists"

    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lcom/miui/maml/RenderThread;->setPaused(Z)V

    .line 29
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p0
    .line 35
.end method

.method public isStarted()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/RenderThread;->mStarted:Z

    .line 2
    return p0
    .line 4
.end method

.method public removeRendererController(Lcom/miui/maml/RendererController;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
    .line 14
.end method

.method public run()V
    .locals 12

    .line 1
    const-string v0, "RenderThread"

    .line 2
    const-string v1, "RenderThread started"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/miui/maml/RenderThread;->doInit()V

    .line 9
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/miui/maml/RenderThread;->mStarted:Z

    .line 13
    :goto_0
    iget-boolean v1, p0, Lcom/miui/maml/RenderThread;->mStop:Z

    .line 15
    if-nez v1, :cond_a

    .line 17
    iget-boolean v1, p0, Lcom/miui/maml/RenderThread;->mPaused:Z

    .line 19
    if-eqz v1, :cond_1

    .line 21
    iget-object v1, p0, Lcom/miui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    .line 23
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :try_start_1
    iget-boolean v2, p0, Lcom/miui/maml/RenderThread;->mPaused:Z

    .line 26
    if-eqz v2, :cond_0

    .line 28
    invoke-direct {p0}, Lcom/miui/maml/RenderThread;->doPause()V

    .line 30
    const-string v2, "RenderThread"

    .line 33
    const-string v3, "RenderThread paused, waiting for signal"

    .line 35
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-direct {p0}, Lcom/miui/maml/RenderThread;->waiteForResume()V

    .line 40
    const-string v2, "RenderThread"

    .line 43
    const-string v3, "RenderThread resumed"

    .line 45
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-direct {p0}, Lcom/miui/maml/RenderThread;->doResume()V

    .line 50
    :cond_0
    monitor-exit v1

    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :try_start_2
    throw v0

    .line 57
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/miui/maml/RenderThread;->mStop:Z

    .line 58
    if-eqz v1, :cond_2

    .line 60
    goto/16 :goto_6

    .line 62
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 64
    move-result-wide v1

    .line 67
    iget-object v3, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 68
    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 70
    :try_start_3
    iget-object v4, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 73
    move-result v4

    .line 76
    const/4 v5, 0x0

    .line 77
    const-wide v6, 0x7fffffffffffffffL

    .line 78
    move v9, v0

    .line 83
    move v8, v5

    .line 84
    :goto_2
    if-ge v8, v4, :cond_7

    .line 85
    iget-boolean v10, p0, Lcom/miui/maml/RenderThread;->mPaused:Z

    .line 87
    if-eqz v10, :cond_3

    .line 89
    goto :goto_4

    .line 91
    :cond_3
    iget-object v10, p0, Lcom/miui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    move-result-object v10

    .line 97
    check-cast v10, Lcom/miui/maml/RendererController;

    .line 98
    invoke-virtual {v10}, Lcom/miui/maml/RendererController;->isSelfPaused()Z

    .line 100
    move-result v11

    .line 103
    if-eqz v11, :cond_4

    .line 104
    invoke-virtual {v10}, Lcom/miui/maml/RendererController;->hasRunnable()Z

    .line 106
    move-result v11

    .line 109
    if-nez v11, :cond_4

    .line 110
    goto :goto_3

    .line 112
    :cond_4
    invoke-virtual {v10}, Lcom/miui/maml/RendererController;->hasInited()Z

    .line 113
    move-result v9

    .line 116
    if-nez v9, :cond_5

    .line 117
    invoke-virtual {v10}, Lcom/miui/maml/RendererController;->init()V

    .line 119
    :cond_5
    invoke-virtual {v10, v1, v2}, Lcom/miui/maml/RendererController;->updateIfNeeded(J)J

    .line 122
    move-result-wide v9

    .line 125
    cmp-long v11, v9, v6

    .line 126
    if-gez v11, :cond_6

    .line 128
    move-wide v6, v9

    .line 130
    :cond_6
    move v9, v5

    .line 131
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 132
    goto :goto_2

    .line 134
    :cond_7
    :goto_4
    if-eqz v4, :cond_9

    .line 135
    if-eqz v9, :cond_8

    .line 137
    goto :goto_5

    .line 139
    :cond_8
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 140
    :try_start_4
    invoke-direct {p0, v6, v7}, Lcom/miui/maml/RenderThread;->waitSleep(J)V

    .line 141
    iput-boolean v5, p0, Lcom/miui/maml/RenderThread;->mSignaled:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0

    .line 144
    goto/16 :goto_0

    .line 146
    :cond_9
    :goto_5
    :try_start_5
    iput-boolean v0, p0, Lcom/miui/maml/RenderThread;->mPaused:Z

    .line 148
    const-string v1, "RenderThread"

    .line 150
    const-string v2, "All controllers paused."

    .line 152
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    monitor-exit v3

    .line 157
    goto/16 :goto_0

    .line 158
    :catchall_1
    move-exception v0

    .line 160
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 161
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 164
    const-string v1, "RenderThread"

    .line 167
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    .line 169
    move-result-object v0

    .line 172
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    goto :goto_6

    .line 176
    :catch_1
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    const-string v1, "RenderThread"

    .line 181
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 183
    move-result-object v0

    .line 186
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_a
    :goto_6
    invoke-direct {p0}, Lcom/miui/maml/RenderThread;->doFinish()V

    .line 190
    iget-object p0, p0, Lcom/miui/maml/RenderThread;->mCmdThread:Landroid/os/HandlerThread;

    .line 193
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    .line 195
    const-string p0, "RenderThread"

    .line 198
    const-string v0, "RenderThread stopped"

    .line 200
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
    .line 205
.end method

.method public setPaused(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/RenderThread;->mCmdHanlder:Lcom/miui/maml/RenderThread$CommandThreadHandler;

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/maml/RenderThread$CommandThreadHandler;->setPause(Z)V

    .line 4
    return-void
    .line 7
.end method

.method public setStop()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/RenderThread;->mStop:Z

    .line 3
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/miui/maml/RenderThread;->setPaused(Z)V

    .line 6
    return-void
    .line 9
.end method

.method public signal()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/RenderThread;->mSignaled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 9
    const/4 v1, 0x1

    .line 10
    :try_start_0
    iput-boolean v1, p0, Lcom/miui/maml/RenderThread;->mSignaled:Z

    .line 11
    iget-object p0, p0, Lcom/miui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 15
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
    .line 22
.end method
