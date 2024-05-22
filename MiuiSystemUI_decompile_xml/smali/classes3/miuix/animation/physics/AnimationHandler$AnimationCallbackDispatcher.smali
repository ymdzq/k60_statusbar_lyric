.class Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lmiuix/animation/physics/AnimationHandler;


# direct methods
.method public constructor <init>(Lmiuix/animation/physics/AnimationHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiuix/animation/physics/AnimationHandler;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public dispatchAnimationFrame()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiuix/animation/physics/AnimationHandler;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    move-result-wide v1

    .line 7
    invoke-static {v0, v1, v2}, Lmiuix/animation/physics/AnimationHandler;->access$002(Lmiuix/animation/physics/AnimationHandler;J)J

    .line 8
    iget-object v0, p0, Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiuix/animation/physics/AnimationHandler;

    .line 11
    invoke-static {v0}, Lmiuix/animation/physics/AnimationHandler;->access$000(Lmiuix/animation/physics/AnimationHandler;)J

    .line 13
    move-result-wide v1

    .line 16
    invoke-static {v0, v1, v2}, Lmiuix/animation/physics/AnimationHandler;->access$100(Lmiuix/animation/physics/AnimationHandler;J)V

    .line 17
    iget-object v0, p0, Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiuix/animation/physics/AnimationHandler;

    .line 20
    invoke-static {v0}, Lmiuix/animation/physics/AnimationHandler;->access$200(Lmiuix/animation/physics/AnimationHandler;)Ljava/util/ArrayList;

    .line 22
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result v0

    .line 29
    if-lez v0, :cond_0

    .line 30
    iget-object p0, p0, Lmiuix/animation/physics/AnimationHandler$AnimationCallbackDispatcher;->this$0:Lmiuix/animation/physics/AnimationHandler;

    .line 32
    invoke-static {p0}, Lmiuix/animation/physics/AnimationHandler;->access$300(Lmiuix/animation/physics/AnimationHandler;)Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;

    .line 34
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback()V

    .line 38
    :cond_0
    return-void
    .line 41
.end method
