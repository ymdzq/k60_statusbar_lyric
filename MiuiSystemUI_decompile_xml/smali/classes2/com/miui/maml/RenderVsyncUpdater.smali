.class public Lcom/miui/maml/RenderVsyncUpdater;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RenderVsyncUpdater"


# instance fields
.field private mDisplayEventReceiver:Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private mRendererControllerList:Landroidx/collection/ArraySet;

.field private mScheduleFrame:Ljava/lang/Runnable;

.field private mStopRefresh:Z

.field private mSyncInterval:I

.field private mVsyncLeft:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroidx/collection/ArraySet;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 5
    iput-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/ArraySet;

    const/16 v0, 0x10

    .line 6
    iput v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mSyncInterval:I

    .line 7
    new-instance v0, Lcom/miui/maml/RenderVsyncUpdater$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/RenderVsyncUpdater$1;-><init>(Lcom/miui/maml/RenderVsyncUpdater;)V

    iput-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mScheduleFrame:Ljava/lang/Runnable;

    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.ui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 11
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    .line 12
    new-instance v1, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    invoke-direct {v1, p0, v0}, Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;-><init>(Lcom/miui/maml/RenderVsyncUpdater;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mDisplayEventReceiver:Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/RenderVsyncUpdater$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/RenderVsyncUpdater;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/miui/maml/RenderVsyncUpdater;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/RenderVsyncUpdater;->scheduleFrame()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$200(Lcom/miui/maml/RenderVsyncUpdater;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public static synthetic access$222(Lcom/miui/maml/RenderVsyncUpdater;J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    .line 2
    sub-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    .line 5
    return-wide v0
    .line 7
.end method

.method public static synthetic access$300(Lcom/miui/maml/RenderVsyncUpdater;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$400(Lcom/miui/maml/RenderVsyncUpdater;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mPaused:Z

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$500(Lcom/miui/maml/RenderVsyncUpdater;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    .line 2
    return p0
    .line 4
.end method

.method private doRunUpdater()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    .line 2
    const-wide/16 v2, 0x0

    .line 4
    cmp-long v0, v0, v2

    .line 6
    if-lez v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mDisplayEventReceiver:Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    .line 10
    invoke-virtual {p0}, Landroid/view/DisplayEventReceiver;->scheduleVsync()V

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    .line 16
    iget-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mScheduleFrame:Ljava/lang/Runnable;

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 20
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    .line 26
    iget-object p0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mScheduleFrame:Ljava/lang/Runnable;

    .line 28
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    :cond_1
    :goto_0
    return-void
    .line 33
.end method

.method public static getInstance()Lcom/miui/maml/RenderVsyncUpdater;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/RenderVsyncUpdater$RenderVsyncUpdaterHolder;->INSTANCE:Lcom/miui/maml/RenderVsyncUpdater;

    .line 2
    return-object v0
    .line 4
.end method

.method private scheduleFrame()V
    .locals 14

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/ArraySet;

    .line 6
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/ArraySet;

    .line 9
    iget v3, v3, Landroidx/collection/ArraySet;->_size:I

    .line 11
    add-int/lit8 v4, v3, -0x1

    .line 13
    const/4 v5, 0x1

    .line 15
    const-wide v6, 0x7fffffffffffffffL

    .line 16
    move v8, v5

    .line 21
    move-wide v9, v6

    .line 22
    :goto_0
    const/4 v11, 0x0

    .line 23
    if-ltz v4, :cond_4

    .line 24
    iget-object v12, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/ArraySet;

    .line 26
    iget-object v12, v12, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    .line 28
    aget-object v12, v12, v4

    .line 30
    check-cast v12, Ljava/lang/ref/WeakReference;

    .line 32
    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 34
    move-result-object v12

    .line 37
    check-cast v12, Lcom/miui/maml/RendererController;

    .line 38
    if-nez v12, :cond_0

    .line 40
    iget-object v11, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/ArraySet;

    .line 42
    invoke-virtual {v11, v4}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 44
    goto :goto_1

    .line 47
    :cond_0
    invoke-virtual {v12}, Lcom/miui/maml/RendererController;->isSelfPaused()Z

    .line 48
    move-result v13

    .line 51
    if-eqz v13, :cond_1

    .line 52
    invoke-virtual {v12}, Lcom/miui/maml/RendererController;->hasRunnable()Z

    .line 54
    move-result v13

    .line 57
    if-nez v13, :cond_1

    .line 58
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {v12}, Lcom/miui/maml/RendererController;->hasInited()Z

    .line 61
    move-result v8

    .line 64
    if-nez v8, :cond_2

    .line 65
    invoke-virtual {v12}, Lcom/miui/maml/RendererController;->init()V

    .line 67
    :cond_2
    invoke-virtual {v12, v0, v1}, Lcom/miui/maml/RendererController;->updateIfNeeded(J)J

    .line 70
    move-result-wide v12

    .line 73
    cmp-long v8, v12, v9

    .line 74
    if-gez v8, :cond_3

    .line 76
    move v8, v11

    .line 78
    move-wide v9, v12

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    move v8, v11

    .line 81
    :goto_1
    add-int/lit8 v4, v4, -0x1

    .line 82
    goto :goto_0

    .line 84
    :cond_4
    if-eqz v3, :cond_6

    .line 85
    if-eqz v8, :cond_5

    .line 87
    goto :goto_2

    .line 89
    :cond_5
    iput-boolean v11, p0, Lcom/miui/maml/RenderVsyncUpdater;->mPaused:Z

    .line 90
    goto :goto_3

    .line 92
    :cond_6
    :goto_2
    iput-boolean v5, p0, Lcom/miui/maml/RenderVsyncUpdater;->mPaused:Z

    .line 93
    const-string v0, "RenderVsyncUpdater"

    .line 95
    const-string v1, "All controllers paused."

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    cmp-long v0, v9, v6

    .line 103
    if-nez v0, :cond_7

    .line 105
    iput-boolean v5, p0, Lcom/miui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    .line 107
    goto :goto_4

    .line 109
    :cond_7
    iput-boolean v11, p0, Lcom/miui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    .line 110
    :goto_4
    iget-boolean v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    .line 112
    if-nez v0, :cond_9

    .line 114
    iget-boolean v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mPaused:Z

    .line 116
    if-nez v0, :cond_9

    .line 118
    const-wide/16 v0, 0x0

    .line 120
    cmp-long v2, v9, v0

    .line 122
    if-lez v2, :cond_9

    .line 124
    iget v2, p0, Lcom/miui/maml/RenderVsyncUpdater;->mSyncInterval:I

    .line 126
    int-to-long v2, v2

    .line 128
    div-long/2addr v9, v2

    .line 129
    iput-wide v9, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    .line 130
    cmp-long v0, v9, v0

    .line 132
    if-lez v0, :cond_8

    .line 134
    const-wide/16 v0, 0x1

    .line 136
    sub-long/2addr v9, v0

    .line 138
    iput-wide v9, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    .line 139
    :cond_8
    iget-object p0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mDisplayEventReceiver:Lcom/miui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    .line 141
    invoke-virtual {p0}, Landroid/view/DisplayEventReceiver;->scheduleVsync()V

    .line 143
    :cond_9
    return-void

    .line 146
    :catchall_0
    move-exception p0

    .line 147
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    throw p0
    .line 149
.end method


# virtual methods
.method public addRendererController(Lcom/miui/maml/RendererController;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/ArraySet;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/ArraySet;

    .line 5
    iget v1, v1, Landroidx/collection/ArraySet;->_size:I

    .line 7
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    iget-object v3, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/ArraySet;

    .line 12
    iget-object v3, v3, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    .line 14
    aget-object v3, v3, v2

    .line 16
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 18
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 23
    check-cast v3, Lcom/miui/maml/RendererController;

    .line 24
    if-ne v3, p1, :cond_0

    .line 26
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/ArraySet;

    .line 33
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 35
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 37
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 40
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
    .line 47
.end method

.method public forceUpdate()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mVsyncLeft:J

    .line 4
    invoke-direct {p0}, Lcom/miui/maml/RenderVsyncUpdater;->doRunUpdater()V

    .line 6
    return-void
    .line 9
.end method

.method public onResume()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mPaused:Z

    .line 3
    iput-boolean v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mStopRefresh:Z

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/RenderVsyncUpdater;->forceUpdate()V

    .line 7
    return-void
    .line 10
.end method

.method public removeRendererController(Lcom/miui/maml/RendererController;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/ArraySet;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/ArraySet;

    .line 5
    iget v1, v1, Landroidx/collection/ArraySet;->_size:I

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 9
    :goto_0
    if-ltz v1, :cond_2

    .line 11
    iget-object v2, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/ArraySet;

    .line 13
    iget-object v2, v2, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    .line 15
    aget-object v2, v2, v1

    .line 17
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 19
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 24
    check-cast v2, Lcom/miui/maml/RendererController;

    .line 25
    if-eqz v2, :cond_1

    .line 27
    if-ne v2, p1, :cond_0

    .line 29
    goto :goto_1

    .line 31
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/miui/maml/RenderVsyncUpdater;->mRendererControllerList:Landroidx/collection/ArraySet;

    .line 35
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 37
    :cond_2
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
    .line 44
.end method

.method public setSyncInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/maml/RenderVsyncUpdater;->mSyncInterval:I

    .line 2
    return-void
    .line 4
.end method

.method public triggerUpdate()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/RenderVsyncUpdater;->doRunUpdater()V

    .line 2
    return-void
    .line 5
.end method
