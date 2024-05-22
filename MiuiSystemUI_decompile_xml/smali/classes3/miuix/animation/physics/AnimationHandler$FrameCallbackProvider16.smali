.class Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider16;
.super Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;-><init>(Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;)V

    .line 2
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 5
    move-result-object p1

    .line 8
    iput-object p1, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider16;->mChoreographer:Landroid/view/Choreographer;

    .line 9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 11
    move-result-object p1

    .line 14
    iput-object p1, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider16;->mLooper:Landroid/os/Looper;

    .line 15
    new-instance p1, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider16$1;

    .line 17
    invoke-direct {p1, p0}, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider16$1;-><init>(Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider16;)V

    .line 19
    iput-object p1, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider16;->mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;

    .line 22
    return-void
    .line 24
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider16;->mLooper:Landroid/os/Looper;

    .line 2
    return-object p0
    .line 4
.end method

.method public isCurrentThread()Z
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    move-result-object v0

    .line 5
    iget-object p0, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider16;->mLooper:Landroid/os/Looper;

    .line 6
    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 8
    move-result-object p0

    .line 11
    if-ne v0, p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public postFrameCallback()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider16;->mChoreographer:Landroid/view/Choreographer;

    .line 2
    iget-object p0, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider16;->mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;

    .line 4
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 6
    return-void
    .line 9
.end method
