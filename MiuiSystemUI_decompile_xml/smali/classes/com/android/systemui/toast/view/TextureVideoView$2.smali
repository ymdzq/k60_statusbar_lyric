.class public final Lcom/android/systemui/toast/view/TextureVideoView$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/toast/view/TextureVideoView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/toast/view/TextureVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/view/TextureVideoView$2;->this$0:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/toast/view/TextureVideoView$2;->this$0:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 2
    const/4 v1, 0x2

    .line 4
    iput v1, v0, Lcom/android/systemui/toast/view/TextureVideoView;->mCurrentState:I

    .line 5
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/android/systemui/toast/view/TextureVideoView;->mCanSeekForward:Z

    .line 8
    iput-boolean v1, v0, Lcom/android/systemui/toast/view/TextureVideoView;->mCanSeekBack:Z

    .line 10
    iput-boolean v1, v0, Lcom/android/systemui/toast/view/TextureVideoView;->mCanPause:Z

    .line 12
    iget-object v1, v0, Lcom/android/systemui/toast/view/TextureVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 14
    if-eqz v1, :cond_0

    .line 16
    iget-object v0, v0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 18
    invoke-interface {v1, v0}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/toast/view/TextureVideoView$2;->this$0:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 23
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 25
    move-result v1

    .line 28
    iput v1, v0, Lcom/android/systemui/toast/view/TextureVideoView;->mVideoWidth:I

    .line 29
    iget-object v0, p0, Lcom/android/systemui/toast/view/TextureVideoView$2;->this$0:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 31
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 33
    move-result p1

    .line 36
    iput p1, v0, Lcom/android/systemui/toast/view/TextureVideoView;->mVideoHeight:I

    .line 37
    iget-object p1, p0, Lcom/android/systemui/toast/view/TextureVideoView$2;->this$0:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 39
    iget v0, p1, Lcom/android/systemui/toast/view/TextureVideoView;->mSeekWhenPrepared:I

    .line 41
    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {p1, v0}, Lcom/android/systemui/toast/view/TextureVideoView;->seekTo(I)V

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/toast/view/TextureVideoView$2;->this$0:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 48
    iget v0, p1, Lcom/android/systemui/toast/view/TextureVideoView;->mVideoWidth:I

    .line 50
    if-eqz v0, :cond_2

    .line 52
    iget v0, p1, Lcom/android/systemui/toast/view/TextureVideoView;->mVideoHeight:I

    .line 54
    if-eqz v0, :cond_2

    .line 56
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 58
    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/android/systemui/toast/view/TextureVideoView$2;->this$0:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 62
    iget v1, v0, Lcom/android/systemui/toast/view/TextureVideoView;->mVideoWidth:I

    .line 64
    iget v0, v0, Lcom/android/systemui/toast/view/TextureVideoView;->mVideoHeight:I

    .line 66
    invoke-virtual {p1, v1, v0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 68
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/toast/view/TextureVideoView$2;->this$0:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 71
    iget p1, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mTargetState:I

    .line 73
    const/4 v0, 0x3

    .line 75
    if-ne p1, v0, :cond_3

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/toast/view/TextureVideoView;->start()V

    .line 78
    :cond_3
    return-void
    .line 81
.end method
