.class Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;


# direct methods
.method public constructor <init>(Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14$1;->this$0:Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14$1;->this$0:Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    move-result-wide v1

    .line 7
    invoke-static {v0, v1, v2}, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;->access$402(Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;J)J

    .line 8
    iget-object p0, p0, Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14$1;->this$0:Lmiuix/animation/physics/AnimationHandler$FrameCallbackProvider14;

    .line 11
    iget-object p0, p0, Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;->mDispatcher:Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;

    .line 13
    invoke-virtual {p0}, Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;->dispatchAnimationFrame()V

    .line 15
    return-void
    .line 18
.end method
