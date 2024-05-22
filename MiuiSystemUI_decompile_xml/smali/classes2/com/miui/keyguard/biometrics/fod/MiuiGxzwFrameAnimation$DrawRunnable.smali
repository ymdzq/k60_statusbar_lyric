.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mBackgroundBmp:Landroid/graphics/Bitmap;

.field public final mBackgroundFrame:I

.field public final mBackgroundRes:I

.field public volatile mCurrentPosition:I

.field public final mDrawCurrFrameCallBack:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable$1;

.field public mDrawing:Z

.field public final mFrameAnimationListener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal$AnimationListener;

.field public mInterruptDecode:J

.field public mInterruptDraw:Z

.field public mRepeatDraw:Z

.field public mStartTimePerFrame:J

.field public final mTranslateX:I

.field public final mTranslateY:I

.field public final synthetic this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;


# direct methods
.method public constructor <init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;IIILcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal$AnimationListener;II)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mDrawing:Z

    .line 8
    const-wide/16 v1, 0x0

    .line 10
    iput-wide v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mStartTimePerFrame:J

    .line 12
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mInterruptDraw:Z

    .line 14
    iput-wide v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mInterruptDecode:J

    .line 16
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mRepeatDraw:Z

    .line 18
    new-instance v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable$1;

    .line 20
    invoke-direct {v0, p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable$1;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;)V

    .line 22
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mDrawCurrFrameCallBack:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable$1;

    .line 25
    iget-object p1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mGxzwAnimCacheBitmapHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 29
    move-result p1

    .line 32
    rem-int/2addr p2, p1

    .line 33
    iput p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mCurrentPosition:I

    .line 34
    iput p3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mBackgroundRes:I

    .line 36
    iput p4, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mBackgroundFrame:I

    .line 38
    iput-object p5, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mFrameAnimationListener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal$AnimationListener;

    .line 40
    iput p6, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mTranslateX:I

    .line 42
    iput p7, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mTranslateY:I

    .line 44
    return-void
    .line 46
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mInterruptDecode:J

    .line 2
    const-wide/16 v2, 0x0

    .line 4
    cmp-long v0, v0, v2

    .line 6
    if-lez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->setDrawing(Z)V

    .line 12
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mFrameAnimationListener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal$AnimationListener;

    .line 15
    const/4 v4, 0x0

    .line 17
    if-eqz v1, :cond_1

    .line 18
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 20
    iget-object v1, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mHandler:Landroid/os/Handler;

    .line 22
    new-instance v5, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable$$ExternalSyntheticLambda0;

    .line 24
    invoke-direct {v5, p0, v4}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;I)V

    .line 26
    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 32
    iget-object v1, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mGxzwAnimCacheBitmapHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    if-eqz v1, :cond_4

    .line 36
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 38
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    goto :goto_1

    .line 44
    :cond_2
    iget v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mBackgroundRes:I

    .line 45
    if-nez v1, :cond_3

    .line 47
    const/4 v0, 0x0

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    iget-object v4, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 51
    invoke-virtual {v4, v1, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->decodeBitmap(IZ)Landroid/graphics/Bitmap;

    .line 53
    move-result-object v0

    .line 56
    :goto_0
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mBackgroundBmp:Landroid/graphics/Bitmap;

    .line 57
    iput-wide v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mStartTimePerFrame:J

    .line 59
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 61
    move-result-object v0

    .line 64
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mDrawCurrFrameCallBack:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable$1;

    .line 65
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 67
    return-void

    .line 70
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mFrameAnimationListener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal$AnimationListener;

    .line 71
    if-eqz v1, :cond_5

    .line 73
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 75
    iget-object v1, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mHandler:Landroid/os/Handler;

    .line 77
    new-instance v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable$$ExternalSyntheticLambda0;

    .line 79
    invoke-direct {v2, p0, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;I)V

    .line 81
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    :cond_5
    invoke-virtual {p0, v4}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->setDrawing(Z)V

    .line 87
    return-void
    .line 90
.end method

.method public final declared-synchronized setDrawing(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mDrawing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
    .line 9
.end method
