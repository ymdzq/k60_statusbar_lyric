.class public Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;
.super Landroid/view/TextureView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public volatile mAnimationRunning:Z

.field public mCircleDrawer:Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;

.field public mContext:Landroid/content/Context;

.field public mDrawableHeight:I

.field public mDrawableWidth:I

.field public final mFrameCallback:Lcom/miui/charge/lollipop/LollipopWirelessAnimationView$1;

.field public mPendingStartAnimation:Z

.field public mScreenSize:Landroid/graphics/Point;

.field public mSurfaceAvailable:Z

.field public mViewHeight:I

.field public mViewWidth:I

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView$1;

    invoke-direct {p2, p0}, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView$1;-><init>(Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;)V

    iput-object p2, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mFrameCallback:Lcom/miui/charge/lollipop/LollipopWirelessAnimationView$1;

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p0, p2}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 6
    iput-object p1, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mContext:Landroid/content/Context;

    .line 7
    iput-boolean p2, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mSurfaceAvailable:Z

    .line 8
    iput-boolean p2, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mAnimationRunning:Z

    .line 9
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 10
    invoke-virtual {p0}, Landroid/view/TextureView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget-object v0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->WIRELESS_CIRCLE_RES_ARRAY:[I

    aget p2, v0, p2

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    iput p3, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mDrawableWidth:I

    .line 12
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    iput p2, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mDrawableHeight:I

    const-string/jumbo p2, "window"

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mWindowManager:Landroid/view/WindowManager;

    .line 14
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mScreenSize:Landroid/graphics/Point;

    .line 15
    iget-object p1, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {p1, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 16
    invoke-virtual {p0}, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->updateSizeForScreenSizeChange()V

    return-void
.end method


# virtual methods
.method public final checkScreenSize()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mWindowManager:Landroid/view/WindowManager;

    .line 7
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 13
    iget-object v1, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mScreenSize:Landroid/graphics/Point;

    .line 16
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 18
    iget v3, v0, Landroid/graphics/Point;->y:I

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->equals(II)Z

    .line 22
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mScreenSize:Landroid/graphics/Point;

    .line 28
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 30
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 32
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    .line 34
    invoke-virtual {p0}, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->updateSizeForScreenSizeChange()V

    .line 37
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    .line 40
    :cond_0
    return-void
    .line 43
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->checkScreenSize()V

    .line 5
    return-void
    .line 8
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/TextureView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->checkScreenSize()V

    .line 5
    return-void
    .line 8
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->stopAnimation()V

    .line 5
    return-void
    .line 8
.end method

.method public final onMeasure(II)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mViewWidth:I

    .line 2
    iget p2, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mViewHeight:I

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    .line 6
    return-void
    .line 9
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mSurfaceAvailable:Z

    .line 3
    iget-boolean p1, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mPendingStartAnimation:Z

    .line 5
    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->startAnimation()V

    .line 9
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mPendingStartAnimation:Z

    .line 13
    :cond_0
    return-void
    .line 15
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final startAnimation()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mAnimationRunning:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mSurfaceAvailable:Z

    .line 7
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_3

    .line 10
    iput-boolean v1, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mAnimationRunning:Z

    .line 12
    new-instance v0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;

    .line 14
    iget-object v2, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mContext:Landroid/content/Context;

    .line 16
    invoke-direct {v0, v2}, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mCircleDrawer:Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;

    .line 21
    const-wide/16 v2, -0x1

    .line 23
    iput-wide v2, v0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mLastFrameTime:J

    .line 25
    iget-object v2, v0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mBitmapQueue:Ljava/util/concurrent/BlockingQueue;

    .line 27
    check-cast v2, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 29
    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 31
    iget-object v2, v0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mDecodeThread:Landroid/os/HandlerThread;

    .line 34
    if-nez v2, :cond_1

    .line 36
    new-instance v2, Landroid/os/HandlerThread;

    .line 38
    const-string v3, "charge_animation_decode"

    .line 40
    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 42
    iput-object v2, v0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mDecodeThread:Landroid/os/HandlerThread;

    .line 45
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 47
    :cond_1
    iget-object v2, v0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mHandlerLock:Ljava/lang/Object;

    .line 50
    monitor-enter v2

    .line 52
    :try_start_0
    iget-object v3, v0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mDecodeHandler:Landroid/os/Handler;

    .line 53
    if-nez v3, :cond_2

    .line 55
    new-instance v3, Landroid/os/Handler;

    .line 57
    iget-object v4, v0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mDecodeThread:Landroid/os/HandlerThread;

    .line 59
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 61
    move-result-object v4

    .line 64
    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 65
    iput-object v3, v0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mDecodeHandler:Landroid/os/Handler;

    .line 68
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    new-instance v2, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;

    .line 71
    sget-object v3, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->WIRELESS_CIRCLE_RES_ARRAY:[I

    .line 73
    invoke-direct {v2, v0, v3}, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;-><init>(Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;[I)V

    .line 75
    iput-object v2, v0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mDecodeTask:Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;

    .line 78
    iput-boolean v1, v2, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;->mDecoding:Z

    .line 80
    iget-object v1, v0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mDecodeHandler:Landroid/os/Handler;

    .line 82
    iget-object v0, v0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mDecodeTask:Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;

    .line 84
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 89
    move-result-object v0

    .line 92
    iget-object p0, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mFrameCallback:Lcom/miui/charge/lollipop/LollipopWirelessAnimationView$1;

    .line 93
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 95
    goto :goto_0

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    throw p0

    .line 101
    :cond_3
    iput-boolean v1, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mPendingStartAnimation:Z

    .line 102
    :goto_0
    return-void
    .line 104
.end method

.method public final stopAnimation()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mAnimationRunning:Z

    .line 3
    iput-boolean v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mPendingStartAnimation:Z

    .line 5
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 7
    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mFrameCallback:Lcom/miui/charge/lollipop/LollipopWirelessAnimationView$1;

    .line 11
    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 13
    iget-object v1, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mCircleDrawer:Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;

    .line 16
    if-eqz v1, :cond_3

    .line 18
    iget-object v2, v1, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mDecodeTask:Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;

    .line 20
    const/4 v3, 0x0

    .line 22
    if-eqz v2, :cond_0

    .line 23
    iput-boolean v0, v2, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;->mDecoding:Z

    .line 25
    iput-object v3, v1, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mDecodeTask:Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;

    .line 27
    :cond_0
    iget-object v0, v1, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mHandlerLock:Ljava/lang/Object;

    .line 29
    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v2, v1, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mDecodeHandler:Landroid/os/Handler;

    .line 32
    if-eqz v2, :cond_1

    .line 34
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 36
    iput-object v3, v1, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mDecodeHandler:Landroid/os/Handler;

    .line 39
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    iget-object v0, v1, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mDecodeThread:Landroid/os/HandlerThread;

    .line 42
    if-eqz v0, :cond_2

    .line 44
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 46
    iput-object v3, v1, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mDecodeThread:Landroid/os/HandlerThread;

    .line 49
    :cond_2
    iget-object v0, v1, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mBitmapQueue:Ljava/util/concurrent/BlockingQueue;

    .line 51
    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 53
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 55
    iput-object v3, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mCircleDrawer:Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;

    .line 58
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw p0

    .line 63
    :cond_3
    :goto_0
    return-void
    .line 64
.end method

.method public final updateSizeForScreenSizeChange()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mScreenSize:Landroid/graphics/Point;

    .line 2
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 4
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 8
    move-result v0

    .line 11
    int-to-float v0, v0

    .line 12
    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    mul-float/2addr v1, v0

    .line 15
    const/high16 v2, 0x44870000    # 1080.0f

    .line 16
    div-float/2addr v1, v2

    .line 18
    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    .line 19
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->isLiteChargeAnimationPad()Z

    .line 22
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    const v1, 0x3f19999a    # 0.6f

    .line 28
    mul-float/2addr v0, v1

    .line 31
    div-float v1, v0, v2

    .line 32
    :cond_0
    iget v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mDrawableWidth:I

    .line 34
    int-to-float v0, v0

    .line 36
    mul-float/2addr v0, v1

    .line 37
    float-to-int v0, v0

    .line 38
    iput v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mViewWidth:I

    .line 39
    iget v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mDrawableHeight:I

    .line 41
    int-to-float v0, v0

    .line 43
    mul-float/2addr v1, v0

    .line 44
    float-to-int v0, v1

    .line 45
    iput v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->mViewHeight:I

    .line 46
    return-void
    .line 48
.end method
