.class public Lcom/miui/maml/RendererController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RendererController"

.field private static final MAX_MSG_COUNT:I = 0x3


# instance fields
.field private mCurFramerate:F

.field private mFrameTime:J

.field private mFramerateControllers:Ljava/util/ArrayList;

.field private mFramerateTokenList:Lcom/miui/maml/FramerateTokenList;

.field private mInited:Z

.field private mLastUpdateSystemTime:J

.field private mListener:Lcom/miui/maml/RendererController$Listener;

.field private mLock:[B

.field private mMsgLock:Ljava/lang/Object;

.field private mMsgQueue:Ljava/util/LinkedList;

.field private mNeedReset:Z

.field private mPendingRender:Z

.field private mReadRunnableQueue:Ljava/util/ArrayList;

.field private mSelfPaused:Z

.field private mSelfRender:Z

.field private mShouldUpdate:Z

.field private mTouchX:F

.field private mTouchY:F

.field private mWriteRunnableQueue:Ljava/util/ArrayList;

.field private mWriteRunnableQueueLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Lcom/miui/maml/FramerateTokenList;

    .line 12
    invoke-direct {v0}, Lcom/miui/maml/FramerateTokenList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/miui/maml/RendererController;->mFramerateTokenList:Lcom/miui/maml/FramerateTokenList;

    .line 17
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/miui/maml/RendererController;->mSelfPaused:Z

    .line 20
    const/4 v0, 0x0

    .line 22
    new-array v0, v0, [B

    .line 23
    iput-object v0, p0, Lcom/miui/maml/RendererController;->mLock:[B

    .line 25
    const-wide v0, 0x7fffffffffffffffL

    .line 27
    iput-wide v0, p0, Lcom/miui/maml/RendererController;->mFrameTime:J

    .line 32
    new-instance v0, Ljava/lang/Object;

    .line 34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/miui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    .line 39
    const/high16 v0, -0x40800000    # -1.0f

    .line 41
    iput v0, p0, Lcom/miui/maml/RendererController;->mTouchX:F

    .line 43
    iput v0, p0, Lcom/miui/maml/RendererController;->mTouchY:F

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/miui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/lang/Object;

    .line 61
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Lcom/miui/maml/FramerateTokenList;

    .line 68
    invoke-direct {v0, p0}, Lcom/miui/maml/FramerateTokenList;-><init>(Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;)V

    .line 70
    iput-object v0, p0, Lcom/miui/maml/RendererController;->mFramerateTokenList:Lcom/miui/maml/FramerateTokenList;

    .line 73
    return-void
    .line 75
.end method

.method private runRunnables()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/RendererController;->mNeedReset:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    .line 9
    iget-object v2, p0, Lcom/miui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    .line 11
    iput-object v2, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    .line 13
    iput-object v1, p0, Lcom/miui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    if-ge v1, v0, :cond_0

    .line 23
    iget-object v2, p0, Lcom/miui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/Runnable;

    .line 31
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 36
    goto :goto_0

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/RendererController;->mReadRunnableQueue:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 41
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p0

    .line 47
    :cond_1
    :goto_1
    return-void
    .line 48
.end method


# virtual methods
.method public addFramerateController(Lcom/miui/maml/elements/FramerateController;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    return-void
    .line 16
.end method

.method public final createToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/RendererController;->mFramerateTokenList:Lcom/miui/maml/FramerateTokenList;

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/maml/FramerateTokenList;->createToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final doRender()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/miui/maml/RendererController;->mPendingRender:Z

    .line 7
    invoke-interface {v0}, Lcom/miui/maml/RendererController$IRenderable;->doRender()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final doneRender()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/RendererController;->mPendingRender:Z

    .line 3
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->triggerUpdate()V

    .line 5
    return-void
    .line 8
.end method

.method public finish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mLock:[B

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/RendererController;->mInited:Z

    .line 5
    if-nez v1, :cond_0

    .line 7
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 11
    if-eqz v1, :cond_1

    .line 13
    :try_start_1
    invoke-interface {v1}, Lcom/miui/maml/RendererController$Listener;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 15
    goto :goto_0

    .line 18
    :catch_0
    move-exception v1

    .line 19
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    const-string v2, "RendererController"

    .line 23
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 28
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    .line 32
    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 34
    :try_start_3
    iget-object v2, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 35
    if-eqz v2, :cond_2

    .line 37
    :goto_1
    iget-object v2, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 39
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 41
    move-result v2

    .line 44
    if-lez v2, :cond_2

    .line 45
    iget-object v2, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 47
    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 52
    check-cast v2, Landroid/view/MotionEvent;

    .line 53
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 55
    goto :goto_1

    .line 58
    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 59
    :try_start_4
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    .line 60
    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 62
    :try_start_5
    iget-object v2, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 65
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 68
    const/4 v1, 0x0

    .line 69
    :try_start_6
    iput-boolean v1, p0, Lcom/miui/maml/RendererController;->mInited:Z

    .line 70
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 72
    iget-object p0, p0, Lcom/miui/maml/RendererController;->mFramerateTokenList:Lcom/miui/maml/FramerateTokenList;

    .line 73
    invoke-virtual {p0}, Lcom/miui/maml/FramerateTokenList;->clear()V

    .line 75
    return-void

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 80
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 81
    :catchall_1
    move-exception p0

    .line 82
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 83
    :try_start_a
    throw p0

    .line 84
    :catchall_2
    move-exception p0

    .line 85
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 86
    throw p0
    .line 87
.end method

.method public forceUpdate()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/miui/maml/RendererController$ISelfUpdateRenderable;->forceUpdate()V

    .line 6
    :cond_0
    invoke-static {}, Lcom/miui/maml/RenderVsyncUpdater;->getInstance()Lcom/miui/maml/RenderVsyncUpdater;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lcom/miui/maml/RenderVsyncUpdater;->forceUpdate()V

    .line 13
    return-void
    .line 16
.end method

.method public final getMessage()Landroid/view/MotionEvent;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 11
    if-nez p0, :cond_1

    .line 13
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 19
    move-object v1, p0

    .line 20
    check-cast v1, Landroid/view/MotionEvent;

    .line 21
    :goto_0
    monitor-exit v0

    .line 23
    return-object v1

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
    .line 27
.end method

.method public final hasInited()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/RendererController;->mInited:Z

    .line 2
    return p0
    .line 4
.end method

.method public final hasMessage()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 11
    if-nez p0, :cond_1

    .line 13
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    .line 16
    move-result p0

    .line 19
    if-lez p0, :cond_2

    .line 20
    const/4 v1, 0x1

    .line 22
    :cond_2
    :goto_0
    monitor-exit v0

    .line 23
    return v1

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
    .line 27
.end method

.method public final hasRunnable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    monitor-exit v0

    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
    .line 20
.end method

.method public init()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mLock:[B

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/RendererController;->mInited:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-eqz v1, :cond_1

    .line 13
    :try_start_1
    invoke-interface {v1}, Lcom/miui/maml/RendererController$Listener;->init()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    goto :goto_0

    .line 18
    :catch_0
    move-exception v1

    .line 19
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    const-string v2, "RendererController"

    .line 23
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 28
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lcom/miui/maml/RendererController;->mInited:Z

    .line 33
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
    .line 39
.end method

.method public final isSelfPaused()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/RendererController;->mSelfPaused:Z

    .line 2
    return p0
    .line 4
.end method

.method public onFrameRateChage(FF)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    cmpl-float p1, p2, p1

    .line 3
    if-lez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->triggerUpdate()V

    .line 7
    :cond_0
    return-void
    .line 10
.end method

.method public onHover(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    const-string v0, "RendererController"

    .line 2
    if-nez p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    .line 7
    if-eqz p0, :cond_1

    .line 9
    :try_start_0
    invoke-interface {p0, p1}, Lcom/miui/maml/RendererController$Listener;->onHover(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 16
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    goto :goto_0

    .line 26
    :catch_1
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 34
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_1
    :goto_0
    return-void
    .line 38
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    const-string v0, "RendererController"

    .line 2
    if-nez p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    .line 7
    if-eqz p0, :cond_1

    .line 9
    :try_start_0
    invoke-interface {p0, p1}, Lcom/miui/maml/RendererController$Listener;->onTouch(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 16
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    goto :goto_0

    .line 26
    :catch_1
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 34
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_1
    :goto_0
    return-void
    .line 38
.end method

.method public final pendingRender()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/RendererController;->mPendingRender:Z

    .line 2
    return p0
    .line 4
.end method

.method public postMessage(Landroid/view/MotionEvent;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mMsgLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 5
    if-nez v1, :cond_0

    .line 7
    new-instance v1, Ljava/util/LinkedList;

    .line 9
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 11
    iput-object v1, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 16
    move-result v1

    .line 19
    const/4 v2, 0x2

    .line 20
    if-ne v1, v2, :cond_1

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 23
    move-result v1

    .line 26
    iget v3, p0, Lcom/miui/maml/RendererController;->mTouchX:F

    .line 27
    cmpl-float v1, v1, v3

    .line 29
    if-nez v1, :cond_1

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 33
    move-result v1

    .line 36
    iget v3, p0, Lcom/miui/maml/RendererController;->mTouchY:F

    .line 37
    cmpl-float v1, v1, v3

    .line 39
    if-eqz v1, :cond_2

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 43
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 48
    move-result v1

    .line 51
    iput v1, p0, Lcom/miui/maml/RendererController;->mTouchX:F

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 54
    move-result p1

    .line 57
    iput p1, p0, Lcom/miui/maml/RendererController;->mTouchY:F

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 60
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 62
    move-result p1

    .line 65
    const/4 v1, 0x3

    .line 66
    if-le p1, v1, :cond_5

    .line 67
    iget-object p1, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 69
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 71
    move-result-object p1

    .line 74
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    move-result v1

    .line 78
    if-eqz v1, :cond_4

    .line 79
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    move-result-object v1

    .line 84
    check-cast v1, Landroid/view/MotionEvent;

    .line 85
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 87
    move-result v3

    .line 90
    if-ne v3, v2, :cond_3

    .line 91
    goto :goto_0

    .line 93
    :cond_4
    const/4 v1, 0x0

    .line 94
    :goto_0
    if-eqz v1, :cond_5

    .line 95
    iget-object p1, p0, Lcom/miui/maml/RendererController;->mMsgQueue:Ljava/util/LinkedList;

    .line 97
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 102
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->forceUpdate()V

    .line 106
    return-void

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    throw p0
    .line 112
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 9
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->requestUpdate()V

    .line 21
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0

    .line 27
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 28
    const-string p1, "postRunnable null"

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p0
    .line 35
.end method

.method public postRunnableAtFrontOfQueue(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueueLock:Ljava/lang/Object;

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 9
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mWriteRunnableQueue:Ljava/util/ArrayList;

    .line 15
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 18
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->requestUpdate()V

    .line 22
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p0

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 29
    const-string p1, "postRunnable null"

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p0
    .line 36
.end method

.method public removeFramerateController(Lcom/miui/maml/elements/FramerateController;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public final removeToken(Lcom/miui/maml/FramerateTokenList$FramerateToken;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/RendererController;->mFramerateTokenList:Lcom/miui/maml/FramerateTokenList;

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/maml/FramerateTokenList;->removeToken(Lcom/miui/maml/FramerateTokenList$FramerateToken;)V

    .line 4
    return-void
    .line 7
.end method

.method public final requestUpdate()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/RendererController;->mShouldUpdate:Z

    .line 3
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->forceUpdate()V

    .line 5
    return-void
    .line 8
.end method

.method public selfPause()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/RendererController;->mInited:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mLock:[B

    .line 7
    monitor-enter v0

    .line 9
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/RendererController;->mSelfPaused:Z

    .line 10
    if-nez v1, :cond_1

    .line 12
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/miui/maml/RendererController;->mSelfPaused:Z

    .line 15
    iget-object v1, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    .line 17
    if-eqz v1, :cond_1

    .line 19
    invoke-interface {v1}, Lcom/miui/maml/RendererController$Listener;->pause()V

    .line 21
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/miui/maml/RendererController;->mPendingRender:Z

    .line 26
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p0
    .line 31
.end method

.method public selfResume()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/RendererController;->mInited:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mLock:[B

    .line 7
    monitor-enter v0

    .line 9
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/RendererController;->mSelfPaused:Z

    .line 10
    if-eqz v1, :cond_1

    .line 12
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lcom/miui/maml/RendererController;->mSelfPaused:Z

    .line 15
    iget-object p0, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    .line 17
    if-eqz p0, :cond_1

    .line 19
    invoke-interface {p0}, Lcom/miui/maml/RendererController$Listener;->resume()V

    .line 21
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {}, Lcom/miui/maml/RenderVsyncUpdater;->getInstance()Lcom/miui/maml/RenderVsyncUpdater;

    .line 25
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lcom/miui/maml/RenderVsyncUpdater;->onResume()V

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

.method public setListener(Lcom/miui/maml/RendererController$Listener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    .line 2
    return-void
    .line 4
.end method

.method public setNeedReset(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/RendererController;->mNeedReset:Z

    .line 2
    return-void
    .line 4
.end method

.method public setSelfRender(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/RendererController;->mSelfRender:Z

    .line 2
    return-void
    .line 4
.end method

.method public tick(J)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/RendererController;->mShouldUpdate:Z

    .line 3
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/miui/maml/RendererController$Listener;->tick(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    const-string v1, "RendererController"

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_0
    :goto_0
    iput-wide p1, p0, Lcom/miui/maml/RendererController;->mLastUpdateSystemTime:J

    .line 26
    return-void
    .line 28
.end method

.method public triggerUpdate()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/RendererController;->mListener:Lcom/miui/maml/RendererController$Listener;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lcom/miui/maml/RendererController$ISelfUpdateRenderable;->triggerUpdate()V

    .line 6
    :cond_0
    invoke-static {}, Lcom/miui/maml/RenderVsyncUpdater;->getInstance()Lcom/miui/maml/RenderVsyncUpdater;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lcom/miui/maml/RenderVsyncUpdater;->triggerUpdate()V

    .line 13
    return-void
    .line 16
.end method

.method public update(J)J
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/RendererController;->updateFramerate(J)J

    .line 2
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->hasRunnable()Z

    .line 6
    move-result v2

    .line 9
    iget-boolean v3, p0, Lcom/miui/maml/RendererController;->mPendingRender:Z

    .line 10
    if-eqz v3, :cond_0

    .line 12
    if-eqz v2, :cond_5

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/miui/maml/RendererController;->runRunnables()V

    .line 16
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->getMessage()Landroid/view/MotionEvent;

    .line 19
    move-result-object v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    invoke-static {v2}, Lcom/miui/maml/util/HideSdkDependencyUtils;->MotionEvent_isTouchEvent(Landroid/view/MotionEvent;)Z

    .line 25
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    invoke-virtual {p0, v2}, Lcom/miui/maml/RendererController;->onTouch(Landroid/view/MotionEvent;)V

    .line 31
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0, v2}, Lcom/miui/maml/RendererController;->onHover(Landroid/view/MotionEvent;)V

    .line 35
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/RendererController;->tick(J)V

    .line 38
    iget-boolean p1, p0, Lcom/miui/maml/RendererController;->mSelfRender:Z

    .line 41
    if-nez p1, :cond_3

    .line 43
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->doRender()V

    .line 45
    :cond_3
    iget-boolean p1, p0, Lcom/miui/maml/RendererController;->mShouldUpdate:Z

    .line 48
    if-nez p1, :cond_4

    .line 50
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->hasMessage()Z

    .line 52
    move-result p0

    .line 55
    if-eqz p0, :cond_5

    .line 56
    :cond_4
    const-wide/16 v0, 0x0

    .line 58
    :cond_5
    return-wide v0
    .line 60
.end method

.method public final updateFramerate(J)J
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    const-wide v1, 0x7fffffffffffffffL

    .line 8
    const/4 v3, 0x0

    .line 13
    move-wide v4, v1

    .line 14
    :goto_0
    if-ge v3, v0, :cond_1

    .line 15
    iget-object v6, p0, Lcom/miui/maml/RendererController;->mFramerateControllers:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v6

    .line 22
    check-cast v6, Lcom/miui/maml/elements/FramerateController;

    .line 23
    invoke-virtual {v6, p1, p2}, Lcom/miui/maml/elements/FramerateController;->updateFramerate(J)J

    .line 25
    move-result-wide v6

    .line 28
    cmp-long v8, v6, v4

    .line 29
    if-gez v8, :cond_0

    .line 31
    move-wide v4, v6

    .line 33
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/RendererController;->mFramerateTokenList:Lcom/miui/maml/FramerateTokenList;

    .line 37
    invoke-virtual {p1}, Lcom/miui/maml/FramerateTokenList;->getFramerate()F

    .line 39
    move-result p1

    .line 42
    iget p2, p0, Lcom/miui/maml/RendererController;->mCurFramerate:F

    .line 43
    cmpl-float v0, p2, p1

    .line 45
    if-eqz v0, :cond_4

    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    cmpl-float p2, p2, v0

    .line 51
    if-ltz p2, :cond_2

    .line 53
    cmpg-float p2, p1, v0

    .line 55
    if-gez p2, :cond_2

    .line 57
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->requestUpdate()V

    .line 59
    :cond_2
    iput p1, p0, Lcom/miui/maml/RendererController;->mCurFramerate:F

    .line 62
    const/4 p2, 0x0

    .line 64
    cmpl-float p2, p1, p2

    .line 65
    if-eqz p2, :cond_3

    .line 67
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 69
    div-float/2addr p2, p1

    .line 71
    float-to-long v1, p2

    .line 72
    :cond_3
    iput-wide v1, p0, Lcom/miui/maml/RendererController;->mFrameTime:J

    .line 73
    :cond_4
    iget-wide p0, p0, Lcom/miui/maml/RendererController;->mFrameTime:J

    .line 75
    cmp-long p2, p0, v4

    .line 77
    if-gez p2, :cond_5

    .line 79
    move-wide v4, p0

    .line 81
    :cond_5
    return-wide v4
    .line 82
.end method

.method public updateIfNeeded(J)J
    .locals 8

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/RendererController;->updateFramerate(J)J

    .line 2
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/miui/maml/RendererController;->mFrameTime:J

    .line 6
    const-wide v4, 0x7fffffffffffffffL

    .line 8
    cmp-long v6, v2, v4

    .line 13
    if-gez v6, :cond_0

    .line 15
    iget-wide v4, p0, Lcom/miui/maml/RendererController;->mLastUpdateSystemTime:J

    .line 17
    sub-long v4, p1, v4

    .line 19
    sub-long v4, v2, v4

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->hasRunnable()Z

    .line 23
    move-result v2

    .line 26
    const-wide/16 v6, 0x0

    .line 27
    cmp-long v3, v4, v6

    .line 29
    if-lez v3, :cond_2

    .line 31
    iget-boolean v3, p0, Lcom/miui/maml/RendererController;->mShouldUpdate:Z

    .line 33
    if-nez v3, :cond_2

    .line 35
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->hasMessage()Z

    .line 37
    move-result v3

    .line 40
    if-nez v3, :cond_2

    .line 41
    if-eqz v2, :cond_1

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    cmp-long p0, v4, v0

    .line 46
    if-gez p0, :cond_8

    .line 48
    move-wide v0, v4

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/miui/maml/RendererController;->mPendingRender:Z

    .line 52
    if-eqz v3, :cond_3

    .line 54
    if-eqz v2, :cond_8

    .line 56
    :cond_3
    invoke-direct {p0}, Lcom/miui/maml/RendererController;->runRunnables()V

    .line 58
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->getMessage()Landroid/view/MotionEvent;

    .line 61
    move-result-object v2

    .line 64
    if-eqz v2, :cond_5

    .line 65
    invoke-static {v2}, Lcom/miui/maml/util/HideSdkDependencyUtils;->MotionEvent_isTouchEvent(Landroid/view/MotionEvent;)Z

    .line 67
    move-result v3

    .line 70
    if-eqz v3, :cond_4

    .line 71
    invoke-virtual {p0, v2}, Lcom/miui/maml/RendererController;->onTouch(Landroid/view/MotionEvent;)V

    .line 73
    goto :goto_1

    .line 76
    :cond_4
    invoke-virtual {p0, v2}, Lcom/miui/maml/RendererController;->onHover(Landroid/view/MotionEvent;)V

    .line 77
    :cond_5
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/RendererController;->tick(J)V

    .line 80
    iget-boolean p1, p0, Lcom/miui/maml/RendererController;->mSelfRender:Z

    .line 83
    if-nez p1, :cond_6

    .line 85
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->doRender()V

    .line 87
    :cond_6
    iget-boolean p1, p0, Lcom/miui/maml/RendererController;->mShouldUpdate:Z

    .line 90
    if-nez p1, :cond_7

    .line 92
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->hasMessage()Z

    .line 94
    move-result p0

    .line 97
    if-eqz p0, :cond_8

    .line 98
    :cond_7
    move-wide v0, v6

    .line 100
    :cond_8
    :goto_2
    return-wide v0
    .line 101
.end method
