.class Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider16;
.super Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/physics/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameCallbackProvider16"
.end annotation


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method constructor <init>(Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;)V
    .locals 0

    .line 225
    invoke-direct {p0, p1}, Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;-><init>(Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;)V

    .line 220
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider16;->mChoreographer:Landroid/view/Choreographer;

    .line 221
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider16;->mLooper:Landroid/os/Looper;

    .line 226
    new-instance p1, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider16$1;

    invoke-direct {p1, p0}, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider16$1;-><init>(Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider16;)V

    iput-object p1, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider16;->mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method


# virtual methods
.method getLooper()Landroid/os/Looper;
    .locals 0

    .line 246
    iget-object p0, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider16;->mLooper:Landroid/os/Looper;

    return-object p0
.end method

.method isCurrentThread()Z
    .locals 1

    .line 241
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object p0, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider16;->mLooper:Landroid/os/Looper;

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method postFrameCallback()V
    .locals 1

    .line 236
    iget-object v0, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider16;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider16;->mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
