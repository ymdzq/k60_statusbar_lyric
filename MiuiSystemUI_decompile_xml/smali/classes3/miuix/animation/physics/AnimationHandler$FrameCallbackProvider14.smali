.class Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;
.super Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLastFrameTime:J

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;-><init>(Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;)V

    .line 2
    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J

    .line 7
    new-instance p1, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14$1;

    .line 9
    invoke-direct {p1, p0}, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14$1;-><init>(Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;)V

    .line 11
    iput-object p1, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mRunnable:Ljava/lang/Runnable;

    .line 14
    new-instance p1, Landroid/os/Handler;

    .line 16
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 18
    move-result-object v0

    .line 21
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    iput-object p1, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mHandler:Landroid/os/Handler;

    .line 25
    return-void
    .line 27
.end method

.method public static synthetic access$402(Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J

    .line 2
    return-wide p1
    .line 4
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mHandler:Landroid/os/Handler;

    .line 2
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public isCurrentThread()Z
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    move-result-object v0

    .line 5
    iget-object p0, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mHandler:Landroid/os/Handler;

    .line 6
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 12
    move-result-object p0

    .line 15
    if-ne v0, p0, :cond_0

    .line 16
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
    .line 21
.end method

.method public postFrameCallback()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mLastFrameTime:J

    .line 6
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0xa

    .line 9
    sub-long/2addr v2, v0

    .line 11
    const-wide/16 v0, 0x0

    .line 12
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 14
    move-result-wide v0

    .line 17
    iget-object v2, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mHandler:Landroid/os/Handler;

    .line 18
    iget-object p0, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->mRunnable:Ljava/lang/Runnable;

    .line 20
    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    return-void
    .line 25
.end method
