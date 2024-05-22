.class public final Lcom/miui/charge/lollipop/LollipopWirelessAnimationView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic this$0:Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;


# direct methods
.method public constructor <init>(Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView$1;->this$0:Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView$1;->this$0:Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;

    .line 2
    iget-boolean v0, v0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mAnimationRunning:Z

    .line 4
    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView$1;->this$0:Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;

    .line 8
    iget-boolean v1, v0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mSurfaceAvailable:Z

    .line 10
    if-eqz v1, :cond_1

    .line 12
    iget-object v1, v0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mCircleDrawer:Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;

    .line 14
    if-eqz v1, :cond_1

    .line 16
    iget-object v2, v1, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mBitmapQueue:Ljava/util/concurrent/BlockingQueue;

    .line 18
    check-cast v2, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 20
    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->peek()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 25
    check-cast v2, Landroid/graphics/Bitmap;

    .line 26
    if-eqz v2, :cond_1

    .line 28
    iget-wide v2, v1, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mLastFrameTime:J

    .line 30
    const-wide/16 v4, -0x1

    .line 32
    cmp-long v4, v2, v4

    .line 34
    if-nez v4, :cond_0

    .line 36
    invoke-virtual {v1, v0}, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->dequeueBitmapInfoAndDraw(Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;)V

    .line 38
    iput-wide p1, v1, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mLastFrameTime:J

    .line 41
    goto :goto_0

    .line 43
    :cond_0
    sub-long v2, p1, v2

    .line 44
    iget v4, v1, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mFrameInterval:I

    .line 46
    const v5, 0xf4240

    .line 48
    mul-int/2addr v4, v5

    .line 51
    int-to-long v4, v4

    .line 52
    cmp-long v2, v2, v4

    .line 53
    if-ltz v2, :cond_1

    .line 55
    invoke-virtual {v1, v0}, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->dequeueBitmapInfoAndDraw(Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;)V

    .line 57
    iput-wide p1, v1, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mLastFrameTime:J

    .line 60
    :cond_1
    :goto_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 62
    move-result-object p1

    .line 65
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 66
    :cond_2
    return-void
    .line 69
.end method
