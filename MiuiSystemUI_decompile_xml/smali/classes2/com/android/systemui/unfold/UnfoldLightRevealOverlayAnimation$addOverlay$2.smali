.class public final Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$addOverlay$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;


# instance fields
.field public final synthetic $onOverlayReady:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$addOverlay$2;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$addOverlay$2;->$onOverlayReady:Ljava/lang/Runnable;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final finished(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Choreographer;->getVsyncId()J

    .line 6
    move-result-wide v0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 10
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 14
    const-wide/16 v2, 0x1

    .line 17
    add-long/2addr v0, v2

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 20
    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$addOverlay$2;->this$0:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    .line 24
    iget-object v0, v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->bgExecutor:Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 26
    if-nez v0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 30
    :cond_0
    new-instance v1, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$addOverlay$2$1;

    .line 31
    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$addOverlay$2;->$onOverlayReady:Ljava/lang/Runnable;

    .line 33
    invoke-direct {v1, p0}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$addOverlay$2$1;-><init>(Ljava/lang/Runnable;)V

    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    .line 38
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 42
    return-void
    .line 45
.end method
