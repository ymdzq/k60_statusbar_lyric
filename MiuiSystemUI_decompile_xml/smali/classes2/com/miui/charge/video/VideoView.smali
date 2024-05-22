.class public Lcom/miui/charge/video/VideoView;
.super Landroid/widget/RelativeLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static BASE_VIDEO_HEIGHT:I = 0x924

.field public static BASE_VIDEO_WIDTH:I = 0x438


# instance fields
.field public alphaOut:Landroid/animation/ObjectAnimator;

.field public alphaRapidOut:Landroid/animation/ObjectAnimator;

.field public alphaStrongOut:Landroid/animation/ObjectAnimator;

.field public final mBackImage:Landroid/widget/ImageView;

.field public mChargeSurfaceTextureListener:Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;

.field public mChargeUri:Ljava/lang/String;

.field public mChargeView:Landroid/view/TextureView;

.field public final mConfiguration:Landroid/content/res/Configuration;

.field public final mContext:Landroid/content/Context;

.field public final mIsFoldChargeVideo:Z

.field public final mIsPadChargeVideo:Z

.field public mMediaPlayer:Landroid/media/MediaPlayer;

.field public final mOnCompletionListener:Lcom/miui/charge/video/VideoView$3;

.field public final mOnPreparedListener:Lcom/miui/charge/video/VideoView$1;

.field public final mPoint:Landroid/graphics/Point;

.field public mRapidChargeSurfaceTextureListener:Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;

.field public mRapidChargeUri:Ljava/lang/String;

.field public mRapidChargeView:Landroid/view/TextureView;

.field public mRapidMediaPlayer:Landroid/media/MediaPlayer;

.field public final mScreenSize:Landroid/graphics/Point;

.field public mStrongRapidChargeSurfaceTextureListener:Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;

.field public mStrongRapidChargeUri:Ljava/lang/String;

.field public mStrongRapidChargeView:Landroid/view/TextureView;

.field public mStrongRapidMediaPlayer:Landroid/media/MediaPlayer;

.field public final mToNormalAnimatorSet:Landroid/animation/AnimatorSet;

.field public final mToRapidAnimatorSet:Landroid/animation/AnimatorSet;

.field public final mToStrongRapidAnimatorSet:Landroid/animation/AnimatorSet;

.field public final mUiBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public mVideoHeight:I

.field public mVideoWidth:I

.field public final mWindowManager:Landroid/view/WindowManager;

.field public mWorkHandleThread:Landroid/os/HandlerThread;

.field public mWorkHandler:Landroid/os/Handler;

.field public final onErrorListener:Lcom/miui/charge/video/VideoView$2;


# direct methods
.method public static bridge synthetic -$$Nest$mgetSequentialWorkHandler(Lcom/miui/charge/video/VideoView;)Landroid/os/Handler;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/charge/video/VideoView;->getSequentialWorkHandler()Landroid/os/Handler;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/charge/video/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/charge/video/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/video/VideoView;->mToStrongRapidAnimatorSet:Landroid/animation/AnimatorSet;

    .line 5
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/video/VideoView;->mToRapidAnimatorSet:Landroid/animation/AnimatorSet;

    .line 6
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/video/VideoView;->mToNormalAnimatorSet:Landroid/animation/AnimatorSet;

    .line 7
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/video/VideoView;->mScreenSize:Landroid/graphics/Point;

    .line 8
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/video/VideoView;->mConfiguration:Landroid/content/res/Configuration;

    .line 9
    new-instance p2, Lcom/miui/charge/video/VideoView$1;

    invoke-direct {p2}, Lcom/miui/charge/video/VideoView$1;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/video/VideoView;->mOnPreparedListener:Lcom/miui/charge/video/VideoView$1;

    .line 10
    new-instance p2, Lcom/miui/charge/video/VideoView$2;

    invoke-direct {p2}, Lcom/miui/charge/video/VideoView$2;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/video/VideoView;->onErrorListener:Lcom/miui/charge/video/VideoView$2;

    .line 11
    new-instance p2, Lcom/miui/charge/video/VideoView$3;

    invoke-direct {p2}, Lcom/miui/charge/video/VideoView$3;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/video/VideoView;->mOnCompletionListener:Lcom/miui/charge/video/VideoView$3;

    .line 12
    const-class p2, Lmiui/stub/MiuiStub$1;

    invoke-static {p2}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiui/stub/MiuiStub$1;

    .line 13
    iget-object p2, p2, Lmiui/stub/MiuiStub$1;->this$0:Lmiui/stub/MiuiStub;

    .line 14
    iget-object p2, p2, Lmiui/stub/MiuiStub;->mBaseProvider:Lmiui/stub/MiuiStub$BaseProvider;

    iget-object p2, p2, Lmiui/stub/MiuiStub$BaseProvider;->mUiBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 15
    iput-object p2, p0, Lcom/miui/charge/video/VideoView;->mUiBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 16
    sget-boolean p3, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    iput-boolean p3, p0, Lcom/miui/charge/video/VideoView;->mIsPadChargeVideo:Z

    .line 17
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    iput-boolean v0, p0, Lcom/miui/charge/video/VideoView;->mIsFoldChargeVideo:Z

    if-eqz p3, :cond_0

    const/16 p3, 0x32a

    .line 18
    sput p3, Lcom/miui/charge/video/VideoView;->BASE_VIDEO_WIDTH:I

    .line 19
    sput p3, Lcom/miui/charge/video/VideoView;->BASE_VIDEO_HEIGHT:I

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/16 p3, 0x3e8

    .line 20
    sput p3, Lcom/miui/charge/video/VideoView;->BASE_VIDEO_WIDTH:I

    .line 21
    sput p3, Lcom/miui/charge/video/VideoView;->BASE_VIDEO_HEIGHT:I

    .line 22
    :cond_1
    :goto_0
    sget p3, Lcom/miui/charge/video/VideoView;->BASE_VIDEO_WIDTH:I

    iput p3, p0, Lcom/miui/charge/video/VideoView;->mVideoWidth:I

    .line 23
    sget p3, Lcom/miui/charge/video/VideoView;->BASE_VIDEO_HEIGHT:I

    iput p3, p0, Lcom/miui/charge/video/VideoView;->mVideoHeight:I

    .line 24
    iput-object p1, p0, Lcom/miui/charge/video/VideoView;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string/jumbo v1, "window"

    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/miui/charge/video/VideoView;->mWindowManager:Landroid/view/WindowManager;

    .line 26
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/miui/charge/video/VideoView;->mPoint:Landroid/graphics/Point;

    .line 27
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/charge/video/VideoView;->mBackImage:Landroid/widget/ImageView;

    const p1, 0x7f0819c8    # @drawable/wired_charge_video_bg_img 'res/drawable-nodpi/wired_charge_video_bg_img.webp'

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 29
    new-instance v1, Lcom/miui/charge/video/VideoView$LoadImageRunnable;

    invoke-direct {v1, p3, p1}, Lcom/miui/charge/video/VideoView$LoadImageRunnable;-><init>(Landroid/widget/ImageView;I)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    .line 30
    invoke-virtual {p0, p1}, Lcom/miui/charge/video/VideoView;->checkScreenSize(Z)V

    .line 31
    invoke-virtual {p0}, Lcom/miui/charge/video/VideoView;->getTextTureParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/miui/charge/video/VideoView;->getVideoLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method private getSequentialWorkHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mWorkHandler:Landroid/os/Handler;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/os/HandlerThread;

    .line 6
    const-string v1, "VideoView"

    .line 8
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 10
    iput-object v0, p0, Lcom/miui/charge/video/VideoView;->mWorkHandleThread:Landroid/os/HandlerThread;

    .line 13
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 15
    new-instance v0, Landroid/os/Handler;

    .line 18
    iget-object v1, p0, Lcom/miui/charge/video/VideoView;->mWorkHandleThread:Landroid/os/HandlerThread;

    .line 20
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 22
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    iput-object v0, p0, Lcom/miui/charge/video/VideoView;->mWorkHandler:Landroid/os/Handler;

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/miui/charge/video/VideoView;->mWorkHandler:Landroid/os/Handler;

    .line 31
    return-object p0
    .line 33
.end method

.method private getVideoWidth()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/charge/video/VideoView;->mIsPadChargeVideo:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/16 p0, 0x32a

    .line 6
    return p0

    .line 8
    :cond_0
    iget-boolean p0, p0, Lcom/miui/charge/video/VideoView;->mIsFoldChargeVideo:Z

    .line 9
    if-eqz p0, :cond_1

    .line 11
    const/16 p0, 0x3e8

    .line 13
    return p0

    .line 15
    :cond_1
    const/4 p0, -0x1

    .line 16
    return p0
    .line 17
.end method


# virtual methods
.method public final addChargeView()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/TextureView;

    .line 2
    iget-object v1, p0, Lcom/miui/charge/video/VideoView;->mContext:Landroid/content/Context;

    .line 4
    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 6
    iput-object v0, p0, Lcom/miui/charge/video/VideoView;->mChargeView:Landroid/view/TextureView;

    .line 9
    new-instance v0, Landroid/media/MediaPlayer;

    .line 11
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/miui/charge/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 16
    iget-object v1, p0, Lcom/miui/charge/video/VideoView;->mOnPreparedListener:Lcom/miui/charge/video/VideoView$1;

    .line 18
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 20
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 23
    iget-object v1, p0, Lcom/miui/charge/video/VideoView;->mOnCompletionListener:Lcom/miui/charge/video/VideoView$3;

    .line 25
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 27
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 30
    iget-object v1, p0, Lcom/miui/charge/video/VideoView;->onErrorListener:Lcom/miui/charge/video/VideoView$2;

    .line 32
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 34
    new-instance v0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;

    .line 37
    iget-object v1, p0, Lcom/miui/charge/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 39
    const/4 v2, 0x0

    .line 41
    invoke-direct {v0, p0, v1, v2}, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;-><init>(Lcom/miui/charge/video/VideoView;Landroid/media/MediaPlayer;I)V

    .line 42
    iput-object v0, p0, Lcom/miui/charge/video/VideoView;->mChargeSurfaceTextureListener:Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;

    .line 45
    iget-boolean v0, p0, Lcom/miui/charge/video/VideoView;->mIsFoldChargeVideo:Z

    .line 47
    const/4 v1, -0x1

    .line 49
    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, v0}, Lcom/miui/charge/video/VideoView;->checkScreenSize(Z)V

    .line 53
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mChargeView:Landroid/view/TextureView;

    .line 56
    invoke-virtual {p0}, Lcom/miui/charge/video/VideoView;->getTextTureParams()Landroid/widget/RelativeLayout$LayoutParams;

    .line 58
    move-result-object v2

    .line 61
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 62
    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mChargeView:Landroid/view/TextureView;

    .line 66
    invoke-virtual {p0}, Lcom/miui/charge/video/VideoView;->getVideoLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    .line 68
    move-result-object v2

    .line 71
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mChargeView:Landroid/view/TextureView;

    .line 75
    iget-object p0, p0, Lcom/miui/charge/video/VideoView;->mChargeSurfaceTextureListener:Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;

    .line 77
    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 79
    return-void
    .line 82
.end method

.method public final addRapidChargeView()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/TextureView;

    .line 2
    iget-object v1, p0, Lcom/miui/charge/video/VideoView;->mContext:Landroid/content/Context;

    .line 4
    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 6
    iput-object v0, p0, Lcom/miui/charge/video/VideoView;->mRapidChargeView:Landroid/view/TextureView;

    .line 9
    new-instance v0, Landroid/media/MediaPlayer;

    .line 11
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/miui/charge/video/VideoView;->mRapidMediaPlayer:Landroid/media/MediaPlayer;

    .line 16
    iget-object v1, p0, Lcom/miui/charge/video/VideoView;->mOnPreparedListener:Lcom/miui/charge/video/VideoView$1;

    .line 18
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 20
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mRapidMediaPlayer:Landroid/media/MediaPlayer;

    .line 23
    iget-object v1, p0, Lcom/miui/charge/video/VideoView;->mOnCompletionListener:Lcom/miui/charge/video/VideoView$3;

    .line 25
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 27
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mRapidMediaPlayer:Landroid/media/MediaPlayer;

    .line 30
    iget-object v1, p0, Lcom/miui/charge/video/VideoView;->onErrorListener:Lcom/miui/charge/video/VideoView$2;

    .line 32
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 34
    new-instance v0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;

    .line 37
    iget-object v1, p0, Lcom/miui/charge/video/VideoView;->mRapidMediaPlayer:Landroid/media/MediaPlayer;

    .line 39
    const/4 v2, 0x1

    .line 41
    invoke-direct {v0, p0, v1, v2}, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;-><init>(Lcom/miui/charge/video/VideoView;Landroid/media/MediaPlayer;I)V

    .line 42
    iput-object v0, p0, Lcom/miui/charge/video/VideoView;->mRapidChargeSurfaceTextureListener:Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;

    .line 45
    iget-boolean v0, p0, Lcom/miui/charge/video/VideoView;->mIsFoldChargeVideo:Z

    .line 47
    const/4 v1, -0x1

    .line 49
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0, v2}, Lcom/miui/charge/video/VideoView;->checkScreenSize(Z)V

    .line 52
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mRapidChargeView:Landroid/view/TextureView;

    .line 55
    invoke-virtual {p0}, Lcom/miui/charge/video/VideoView;->getTextTureParams()Landroid/widget/RelativeLayout$LayoutParams;

    .line 57
    move-result-object v2

    .line 60
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 61
    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mRapidChargeView:Landroid/view/TextureView;

    .line 65
    invoke-virtual {p0}, Lcom/miui/charge/video/VideoView;->getVideoLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    .line 67
    move-result-object v2

    .line 70
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mRapidChargeView:Landroid/view/TextureView;

    .line 74
    iget-object p0, p0, Lcom/miui/charge/video/VideoView;->mRapidChargeSurfaceTextureListener:Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;

    .line 76
    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 78
    return-void
    .line 81
.end method

.method public final addStrongRapidChargeView()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/TextureView;

    .line 2
    iget-object v1, p0, Lcom/miui/charge/video/VideoView;->mContext:Landroid/content/Context;

    .line 4
    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 6
    iput-object v0, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeView:Landroid/view/TextureView;

    .line 9
    new-instance v0, Landroid/media/MediaPlayer;

    .line 11
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidMediaPlayer:Landroid/media/MediaPlayer;

    .line 16
    new-instance v1, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;

    .line 18
    const/4 v2, 0x2

    .line 20
    invoke-direct {v1, p0, v0, v2}, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;-><init>(Lcom/miui/charge/video/VideoView;Landroid/media/MediaPlayer;I)V

    .line 21
    iput-object v1, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeSurfaceTextureListener:Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;

    .line 24
    iget-object v1, p0, Lcom/miui/charge/video/VideoView;->mOnPreparedListener:Lcom/miui/charge/video/VideoView$1;

    .line 26
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 28
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidMediaPlayer:Landroid/media/MediaPlayer;

    .line 31
    iget-object v1, p0, Lcom/miui/charge/video/VideoView;->mOnCompletionListener:Lcom/miui/charge/video/VideoView$3;

    .line 33
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 35
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidMediaPlayer:Landroid/media/MediaPlayer;

    .line 38
    iget-object v1, p0, Lcom/miui/charge/video/VideoView;->onErrorListener:Lcom/miui/charge/video/VideoView$2;

    .line 40
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 42
    iget-boolean v0, p0, Lcom/miui/charge/video/VideoView;->mIsFoldChargeVideo:Z

    .line 45
    const/4 v1, -0x1

    .line 47
    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x1

    .line 50
    invoke-virtual {p0, v0}, Lcom/miui/charge/video/VideoView;->checkScreenSize(Z)V

    .line 51
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeView:Landroid/view/TextureView;

    .line 54
    invoke-virtual {p0}, Lcom/miui/charge/video/VideoView;->getTextTureParams()Landroid/widget/RelativeLayout$LayoutParams;

    .line 56
    move-result-object v2

    .line 59
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 60
    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeView:Landroid/view/TextureView;

    .line 64
    invoke-virtual {p0}, Lcom/miui/charge/video/VideoView;->getVideoLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    .line 66
    move-result-object v2

    .line 69
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeView:Landroid/view/TextureView;

    .line 73
    iget-object p0, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeSurfaceTextureListener:Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;

    .line 75
    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 77
    return-void
    .line 80
.end method

.method public final checkScreenSize(Z)V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/miui/charge/video/VideoView;->mWindowManager:Landroid/view/WindowManager;

    .line 7
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 13
    iget-object v1, p0, Lcom/miui/charge/video/VideoView;->mScreenSize:Landroid/graphics/Point;

    .line 16
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 18
    iget v3, v0, Landroid/graphics/Point;->y:I

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->equals(II)Z

    .line 22
    move-result v1

    .line 25
    xor-int/lit8 v1, v1, 0x1

    .line 26
    if-nez v1, :cond_0

    .line 28
    if-eqz p1, :cond_7

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mScreenSize:Landroid/graphics/Point;

    .line 32
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 34
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 36
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Point;->set(II)V

    .line 38
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 45
    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mConfiguration:Landroid/content/res/Configuration;

    .line 49
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 51
    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 54
    and-int/lit8 p1, p1, 0xf

    .line 56
    const/4 v0, 0x3

    .line 58
    if-eq p1, v0, :cond_2

    .line 59
    const/4 v0, 0x4

    .line 61
    if-eq p1, v0, :cond_2

    .line 62
    iget-boolean p1, p0, Lcom/miui/charge/video/VideoView;->mIsFoldChargeVideo:Z

    .line 64
    if-eqz p1, :cond_1

    .line 66
    sget p1, Lcom/miui/charge/video/VideoView;->BASE_VIDEO_WIDTH:I

    .line 68
    iput p1, p0, Lcom/miui/charge/video/VideoView;->mVideoWidth:I

    .line 70
    sget p1, Lcom/miui/charge/video/VideoView;->BASE_VIDEO_HEIGHT:I

    .line 72
    iput p1, p0, Lcom/miui/charge/video/VideoView;->mVideoHeight:I

    .line 74
    goto :goto_0

    .line 76
    :cond_1
    const/4 p1, -0x1

    .line 77
    iput p1, p0, Lcom/miui/charge/video/VideoView;->mVideoWidth:I

    .line 78
    iput p1, p0, Lcom/miui/charge/video/VideoView;->mVideoHeight:I

    .line 80
    goto :goto_0

    .line 82
    :cond_2
    sget p1, Lcom/miui/charge/video/VideoView;->BASE_VIDEO_WIDTH:I

    .line 83
    iput p1, p0, Lcom/miui/charge/video/VideoView;->mVideoWidth:I

    .line 85
    sget p1, Lcom/miui/charge/video/VideoView;->BASE_VIDEO_HEIGHT:I

    .line 87
    iput p1, p0, Lcom/miui/charge/video/VideoView;->mVideoHeight:I

    .line 89
    :goto_0
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mBackImage:Landroid/widget/ImageView;

    .line 91
    if-eqz p1, :cond_3

    .line 93
    invoke-virtual {p1}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    .line 95
    move-result p1

    .line 98
    if-eqz p1, :cond_3

    .line 99
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mBackImage:Landroid/widget/ImageView;

    .line 101
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 103
    move-result-object p1

    .line 106
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 107
    iget v0, p0, Lcom/miui/charge/video/VideoView;->mVideoWidth:I

    .line 109
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 111
    iget v0, p0, Lcom/miui/charge/video/VideoView;->mVideoHeight:I

    .line 113
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 115
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mBackImage:Landroid/widget/ImageView;

    .line 117
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    :cond_3
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mChargeView:Landroid/view/TextureView;

    .line 122
    if-eqz p1, :cond_4

    .line 124
    invoke-virtual {p1}, Landroid/view/TextureView;->isAttachedToWindow()Z

    .line 126
    move-result p1

    .line 129
    if-eqz p1, :cond_4

    .line 130
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mChargeView:Landroid/view/TextureView;

    .line 132
    invoke-virtual {p1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 134
    move-result-object p1

    .line 137
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 138
    iget v0, p0, Lcom/miui/charge/video/VideoView;->mVideoWidth:I

    .line 140
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 142
    iget v0, p0, Lcom/miui/charge/video/VideoView;->mVideoHeight:I

    .line 144
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 146
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mChargeView:Landroid/view/TextureView;

    .line 148
    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    :cond_4
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mRapidChargeView:Landroid/view/TextureView;

    .line 153
    if-eqz p1, :cond_5

    .line 155
    invoke-virtual {p1}, Landroid/view/TextureView;->isAttachedToWindow()Z

    .line 157
    move-result p1

    .line 160
    if-eqz p1, :cond_5

    .line 161
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mRapidChargeView:Landroid/view/TextureView;

    .line 163
    invoke-virtual {p1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 165
    move-result-object p1

    .line 168
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 169
    iget v0, p0, Lcom/miui/charge/video/VideoView;->mVideoWidth:I

    .line 171
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 173
    iget v0, p0, Lcom/miui/charge/video/VideoView;->mVideoHeight:I

    .line 175
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 177
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mRapidChargeView:Landroid/view/TextureView;

    .line 179
    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    :cond_5
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeView:Landroid/view/TextureView;

    .line 184
    if-eqz p1, :cond_6

    .line 186
    invoke-virtual {p1}, Landroid/view/TextureView;->isAttachedToWindow()Z

    .line 188
    move-result p1

    .line 191
    if-eqz p1, :cond_6

    .line 192
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeView:Landroid/view/TextureView;

    .line 194
    invoke-virtual {p1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 196
    move-result-object p1

    .line 199
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 200
    iget v0, p0, Lcom/miui/charge/video/VideoView;->mVideoWidth:I

    .line 202
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 204
    iget v0, p0, Lcom/miui/charge/video/VideoView;->mVideoHeight:I

    .line 206
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 208
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeView:Landroid/view/TextureView;

    .line 210
    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    :cond_6
    if-eqz v1, :cond_7

    .line 215
    invoke-direct {p0}, Lcom/miui/charge/video/VideoView;->getSequentialWorkHandler()Landroid/os/Handler;

    .line 217
    move-result-object p1

    .line 220
    new-instance v0, Lcom/miui/charge/video/VideoView$$ExternalSyntheticLambda0;

    .line 221
    const/4 v1, 0x0

    .line 223
    invoke-direct {v0, v1, p0}, Lcom/miui/charge/video/VideoView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 224
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
    :cond_7
    return-void
    .line 230
.end method

.method public getFoldingVideoLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .line 1
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    const/4 v0, -0x1

    .line 4
    invoke-direct {p0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5
    const/16 v0, 0xd

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 10
    return-object p0
    .line 13
.end method

.method public getTextTureParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    iget v1, p0, Lcom/miui/charge/video/VideoView;->mVideoWidth:I

    .line 4
    iget p0, p0, Lcom/miui/charge/video/VideoView;->mVideoHeight:I

    .line 6
    invoke-direct {v0, v1, p0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 8
    const/16 p0, 0xd

    .line 11
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 13
    return-object v0
    .line 16
.end method

.method public getVideoHeight()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/charge/video/VideoView;->mIsPadChargeVideo:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/16 p0, 0x32a

    .line 6
    return p0

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/miui/charge/video/VideoView;->mIsFoldChargeVideo:Z

    .line 9
    if-eqz v0, :cond_1

    .line 11
    const/16 p0, 0x3e8

    .line 13
    return p0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mWindowManager:Landroid/view/WindowManager;

    .line 16
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 18
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/miui/charge/video/VideoView;->mPoint:Landroid/graphics/Point;

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 24
    iget-object p0, p0, Lcom/miui/charge/video/VideoView;->mPoint:Landroid/graphics/Point;

    .line 27
    iget v0, p0, Landroid/graphics/Point;->x:I

    .line 29
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 31
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 33
    move-result p0

    .line 36
    int-to-float p0, p0

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    .line 38
    mul-float/2addr p0, v0

    .line 40
    sget v0, Lcom/miui/charge/video/VideoView;->BASE_VIDEO_WIDTH:I

    .line 41
    int-to-float v0, v0

    .line 43
    div-float/2addr p0, v0

    .line 44
    sget v0, Lcom/miui/charge/video/VideoView;->BASE_VIDEO_HEIGHT:I

    .line 45
    int-to-float v0, v0

    .line 47
    mul-float/2addr p0, v0

    .line 48
    float-to-int p0, p0

    .line 49
    return p0
    .line 50
.end method

.method public getVideoLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    invoke-direct {p0}, Lcom/miui/charge/video/VideoView;->getVideoWidth()I

    .line 4
    move-result v1

    .line 7
    invoke-virtual {p0}, Lcom/miui/charge/video/VideoView;->getVideoHeight()I

    .line 8
    move-result p0

    .line 11
    invoke-direct {v0, v1, p0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 12
    const/16 p0, 0xd

    .line 15
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17
    return-object v0
    .line 20
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-boolean v0, p0, Lcom/miui/charge/video/VideoView;->mIsFoldChargeVideo:Z

    .line 5
    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mConfiguration:Landroid/content/res/Configuration;

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 11
    move-result p1

    .line 14
    and-int/lit16 p1, p1, 0x800

    .line 15
    const/4 v0, 0x0

    .line 17
    if-eqz p1, :cond_0

    .line 18
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move p1, v0

    .line 22
    :goto_0
    if-eqz p1, :cond_1

    .line 23
    invoke-virtual {p0, v0}, Lcom/miui/charge/video/VideoView;->checkScreenSize(Z)V

    .line 25
    :cond_1
    return-void
    .line 28
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mBackImage:Landroid/widget/ImageView;

    .line 5
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mWorkHandler:Landroid/os/Handler;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mWorkHandleThread:Landroid/os/HandlerThread;

    .line 15
    if-eqz v0, :cond_0

    .line 17
    iput-object v1, p0, Lcom/miui/charge/video/VideoView;->mWorkHandler:Landroid/os/Handler;

    .line 19
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 21
    iput-object v1, p0, Lcom/miui/charge/video/VideoView;->mWorkHandleThread:Landroid/os/HandlerThread;

    .line 24
    :cond_0
    return-void
    .line 26
.end method

.method public setChargeUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/charge/video/VideoView;->mChargeUri:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public setDefaultImage(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mBackImage:Landroid/widget/ImageView;

    .line 2
    if-nez p1, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lcom/miui/charge/video/VideoView;->mUiBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 14
    new-instance v2, Lcom/miui/charge/video/VideoView$LoadImageRunnable;

    .line 16
    invoke-direct {v2, v0, p1}, Lcom/miui/charge/video/VideoView$LoadImageRunnable;-><init>(Landroid/widget/ImageView;I)V

    .line 18
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 21
    :goto_0
    iget-boolean p1, p0, Lcom/miui/charge/video/VideoView;->mIsFoldChargeVideo:Z

    .line 24
    if-eqz p1, :cond_1

    .line 26
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mBackImage:Landroid/widget/ImageView;

    .line 28
    invoke-virtual {p0}, Lcom/miui/charge/video/VideoView;->getTextTureParams()Landroid/widget/RelativeLayout$LayoutParams;

    .line 30
    move-result-object p0

    .line 33
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    goto :goto_1

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mBackImage:Landroid/widget/ImageView;

    .line 38
    invoke-virtual {p0}, Lcom/miui/charge/video/VideoView;->getVideoLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    .line 40
    move-result-object p0

    .line 43
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    :goto_1
    return-void
    .line 47
.end method

.method public setRapidChargeUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/charge/video/VideoView;->mRapidChargeUri:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public setStrongRapidChargeUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeUri:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method
