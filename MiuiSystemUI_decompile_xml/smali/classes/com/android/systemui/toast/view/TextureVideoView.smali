.class public Lcom/android/systemui/toast/view/TextureVideoView;
.super Landroid/view/TextureView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAudioSession:I

.field public final mBufferingUpdateListener:Lcom/android/systemui/toast/view/TextureVideoView$5;

.field public mCanPause:Z

.field public mCanSeekBack:Z

.field public mCanSeekForward:Z

.field public final mCompletionListener:Lcom/android/systemui/toast/view/TextureVideoView$3;

.field public mCurrentBufferPercentage:I

.field public mCurrentState:I

.field public final mErrorListener:Lcom/android/systemui/toast/view/TextureVideoView$4;

.field public mHeaders:Ljava/util/Map;

.field public final mInfoListener:Lcom/android/systemui/toast/view/TextureVideoView$$ExternalSyntheticLambda0;

.field public mMediaPlayer:Landroid/media/MediaPlayer;

.field public mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field public mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field public mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field public final mPreparedListener:Lcom/android/systemui/toast/view/TextureVideoView$2;

.field public mSeekWhenPrepared:I

.field public final mSizeChangedListener:Lcom/android/systemui/toast/view/TextureVideoView$1;

.field public mSurface:Landroid/view/Surface;

.field public final mSurfaceTextureListener:Lcom/android/systemui/toast/view/TextureVideoView$6;

.field public mTargetState:I

.field public mUri:Landroid/net/Uri;

.field public mVideoHeight:I

.field public mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/toast/view/TextureVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/toast/view/TextureVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mCurrentState:I

    .line 5
    iput p1, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mTargetState:I

    const/4 p2, 0x0

    .line 6
    iput-object p2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mSurface:Landroid/view/Surface;

    .line 7
    iput-object p2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 8
    new-instance p2, Lcom/android/systemui/toast/view/TextureVideoView$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/toast/view/TextureVideoView$1;-><init>(Lcom/android/systemui/toast/view/TextureVideoView;)V

    iput-object p2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mSizeChangedListener:Lcom/android/systemui/toast/view/TextureVideoView$1;

    .line 9
    new-instance p2, Lcom/android/systemui/toast/view/TextureVideoView$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/toast/view/TextureVideoView$2;-><init>(Lcom/android/systemui/toast/view/TextureVideoView;)V

    iput-object p2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mPreparedListener:Lcom/android/systemui/toast/view/TextureVideoView$2;

    .line 10
    new-instance p2, Lcom/android/systemui/toast/view/TextureVideoView$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/toast/view/TextureVideoView$3;-><init>(Lcom/android/systemui/toast/view/TextureVideoView;)V

    iput-object p2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mCompletionListener:Lcom/android/systemui/toast/view/TextureVideoView$3;

    .line 11
    new-instance p2, Lcom/android/systemui/toast/view/TextureVideoView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/toast/view/TextureVideoView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/toast/view/TextureVideoView;)V

    iput-object p2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mInfoListener:Lcom/android/systemui/toast/view/TextureVideoView$$ExternalSyntheticLambda0;

    .line 12
    new-instance p2, Lcom/android/systemui/toast/view/TextureVideoView$4;

    invoke-direct {p2, p0}, Lcom/android/systemui/toast/view/TextureVideoView$4;-><init>(Lcom/android/systemui/toast/view/TextureVideoView;)V

    iput-object p2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mErrorListener:Lcom/android/systemui/toast/view/TextureVideoView$4;

    .line 13
    new-instance p2, Lcom/android/systemui/toast/view/TextureVideoView$5;

    invoke-direct {p2, p0}, Lcom/android/systemui/toast/view/TextureVideoView$5;-><init>(Lcom/android/systemui/toast/view/TextureVideoView;)V

    iput-object p2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mBufferingUpdateListener:Lcom/android/systemui/toast/view/TextureVideoView$5;

    .line 14
    new-instance p2, Lcom/android/systemui/toast/view/TextureVideoView$6;

    invoke-direct {p2, p0}, Lcom/android/systemui/toast/view/TextureVideoView$6;-><init>(Lcom/android/systemui/toast/view/TextureVideoView;)V

    iput-object p2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mSurfaceTextureListener:Lcom/android/systemui/toast/view/TextureVideoView$6;

    .line 15
    iput p1, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mVideoWidth:I

    .line 16
    iput p1, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mVideoHeight:I

    .line 17
    invoke-virtual {p0, p2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const/4 p2, 0x1

    .line 18
    invoke-virtual {p0, p2}, Landroid/view/TextureView;->setFocusable(Z)V

    .line 19
    invoke-virtual {p0, p2}, Landroid/view/TextureView;->setFocusableInTouchMode(Z)V

    .line 20
    invoke-virtual {p0}, Landroid/view/TextureView;->requestFocus()Z

    .line 21
    iput p1, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mCurrentState:I

    .line 22
    iput p1, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mTargetState:I

    return-void
.end method


# virtual methods
.method public final canPause()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mCanPause:Z

    .line 2
    return p0
    .line 4
.end method

.method public final canSeekBackward()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mCanSeekBack:Z

    .line 2
    return p0
    .line 4
.end method

.method public final canSeekForward()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mCanSeekForward:Z

    .line 2
    return p0
    .line 4
.end method

.method public getAudioSessionId()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mAudioSession:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/media/MediaPlayer;

    .line 6
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 8
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    .line 11
    move-result v1

    .line 14
    iput v1, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mAudioSession:I

    .line 15
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 17
    :cond_0
    iget p0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mAudioSession:I

    .line 20
    return p0
    .line 22
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget p0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mCurrentBufferPercentage:I

    .line 6
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
    .line 10
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/toast/view/TextureVideoView;->isInPlaybackState()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 8
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
    .line 16
.end method

.method public getDuration()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/toast/view/TextureVideoView;->isInPlaybackState()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 8
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, -0x1

    .line 15
    return p0
    .line 16
.end method

.method public final isInPlaybackState()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget p0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mCurrentState:I

    .line 6
    const/4 v0, -0x1

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    if-eqz p0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
    .line 18
.end method

.method public final isPlaying()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/toast/view/TextureVideoView;->isInPlaybackState()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 8
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 10
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
    .line 19
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class p0, Lcom/android/systemui/toast/view/TextureVideoView;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    return-void
    .line 14
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class p0, Lcom/android/systemui/toast/view/TextureVideoView;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    return-void
    .line 14
.end method

.method public final onMeasure(II)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mVideoWidth:I

    .line 2
    invoke-static {v0, p1}, Landroid/view/TextureView;->getDefaultSize(II)I

    .line 4
    move-result v0

    .line 7
    iget v1, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mVideoHeight:I

    .line 8
    invoke-static {v1, p2}, Landroid/view/TextureView;->getDefaultSize(II)I

    .line 10
    move-result v1

    .line 13
    iget v2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mVideoWidth:I

    .line 14
    if-lez v2, :cond_8

    .line 16
    iget v2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mVideoHeight:I

    .line 18
    if-lez v2, :cond_8

    .line 20
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 22
    move-result v0

    .line 25
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 26
    move-result p1

    .line 29
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 30
    move-result v1

    .line 33
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 34
    move-result p2

    .line 37
    const/high16 v2, 0x40000000    # 2.0f

    .line 38
    if-ne v0, v2, :cond_1

    .line 40
    if-ne v1, v2, :cond_1

    .line 42
    iget v0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mVideoWidth:I

    .line 44
    mul-int v1, v0, p2

    .line 46
    iget v2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mVideoHeight:I

    .line 48
    mul-int v3, p1, v2

    .line 50
    if-ge v1, v3, :cond_0

    .line 52
    mul-int/2addr v0, p2

    .line 54
    div-int/2addr v0, v2

    .line 55
    goto :goto_2

    .line 56
    :cond_0
    mul-int v1, v0, p2

    .line 57
    mul-int v3, p1, v2

    .line 59
    if-le v1, v3, :cond_4

    .line 61
    mul-int/2addr v2, p1

    .line 63
    div-int v1, v2, v0

    .line 64
    goto :goto_0

    .line 66
    :cond_1
    const/high16 v3, -0x80000000

    .line 67
    if-ne v0, v2, :cond_3

    .line 69
    iget v0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mVideoHeight:I

    .line 71
    mul-int/2addr v0, p1

    .line 73
    iget v2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mVideoWidth:I

    .line 74
    div-int/2addr v0, v2

    .line 76
    if-ne v1, v3, :cond_2

    .line 77
    if-le v0, p2, :cond_2

    .line 79
    goto :goto_1

    .line 81
    :cond_2
    move v1, v0

    .line 82
    :goto_0
    move v0, p1

    .line 83
    goto :goto_4

    .line 84
    :cond_3
    if-ne v1, v2, :cond_6

    .line 85
    iget v1, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mVideoWidth:I

    .line 87
    mul-int/2addr v1, p2

    .line 89
    iget v2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mVideoHeight:I

    .line 90
    div-int/2addr v1, v2

    .line 92
    if-ne v0, v3, :cond_5

    .line 93
    if-le v1, p1, :cond_5

    .line 95
    :cond_4
    :goto_1
    move v0, p1

    .line 97
    goto :goto_2

    .line 98
    :cond_5
    move v0, v1

    .line 99
    :goto_2
    move v1, p2

    .line 100
    goto :goto_4

    .line 101
    :cond_6
    iget v2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mVideoWidth:I

    .line 102
    iget v4, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mVideoHeight:I

    .line 104
    if-ne v1, v3, :cond_7

    .line 106
    if-le v4, p2, :cond_7

    .line 108
    mul-int v1, p2, v2

    .line 110
    div-int/2addr v1, v4

    .line 112
    goto :goto_3

    .line 113
    :cond_7
    move v1, v2

    .line 114
    move p2, v4

    .line 115
    :goto_3
    if-ne v0, v3, :cond_5

    .line 116
    if-le v1, p1, :cond_5

    .line 118
    mul-int/2addr v4, p1

    .line 120
    div-int v1, v4, v2

    .line 121
    goto :goto_0

    .line 123
    :cond_8
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    .line 124
    return-void
    .line 127
.end method

.method public final openVideo()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mUri:Landroid/net/Uri;

    .line 2
    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mSurface:Landroid/view/Surface;

    .line 6
    if-nez v0, :cond_0

    .line 8
    goto/16 :goto_1

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/toast/view/TextureVideoView;->release(Z)V

    .line 13
    const/4 v1, 0x1

    .line 16
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    .line 17
    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 19
    iput-object v2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 22
    iget v3, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mAudioSession:I

    .line 24
    if-eqz v3, :cond_1

    .line 26
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 28
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    .line 32
    move-result v2

    .line 35
    iput v2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mAudioSession:I

    .line 36
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 38
    iget-object v3, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mPreparedListener:Lcom/android/systemui/toast/view/TextureVideoView$2;

    .line 40
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 42
    iget-object v2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 45
    iget-object v3, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mSizeChangedListener:Lcom/android/systemui/toast/view/TextureVideoView$1;

    .line 47
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 49
    iget-object v2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 52
    iget-object v3, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mCompletionListener:Lcom/android/systemui/toast/view/TextureVideoView$3;

    .line 54
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 56
    iget-object v2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 59
    iget-object v3, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mErrorListener:Lcom/android/systemui/toast/view/TextureVideoView$4;

    .line 61
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 63
    iget-object v2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 66
    iget-object v3, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mInfoListener:Lcom/android/systemui/toast/view/TextureVideoView$$ExternalSyntheticLambda0;

    .line 68
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 70
    iget-object v2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 73
    iget-object v3, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mBufferingUpdateListener:Lcom/android/systemui/toast/view/TextureVideoView$5;

    .line 75
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 77
    iput v0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mCurrentBufferPercentage:I

    .line 80
    iget-object v2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 82
    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    .line 84
    move-result-object v3

    .line 87
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 88
    move-result-object v3

    .line 91
    iget-object v4, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mUri:Landroid/net/Uri;

    .line 92
    iget-object v5, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mHeaders:Ljava/util/Map;

    .line 94
    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 96
    iget-object v2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 99
    iget-object v3, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mSurface:Landroid/view/Surface;

    .line 101
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 103
    iget-object v2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 106
    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 108
    iget-object v2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 111
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 113
    iput v1, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mCurrentState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_1

    .line 118
    :catch_0
    move-exception v2

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    .line 120
    const-string v4, "Unable to open content: "

    .line 122
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    iget-object v4, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mUri:Landroid/net/Uri;

    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object v3

    .line 135
    const-string v4, "TextureVideoView"

    .line 136
    invoke-static {v4, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    const/4 v2, -0x1

    .line 141
    iput v2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mCurrentState:I

    .line 142
    iput v2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mTargetState:I

    .line 144
    iget-object v2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mErrorListener:Lcom/android/systemui/toast/view/TextureVideoView$4;

    .line 146
    iget-object p0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 148
    invoke-virtual {v2, p0, v1, v0}, Lcom/android/systemui/toast/view/TextureVideoView$4;->onError(Landroid/media/MediaPlayer;II)Z

    .line 150
    :cond_2
    :goto_1
    return-void
    .line 153
.end method

.method public final pause()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/toast/view/TextureVideoView;->isInPlaybackState()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 9
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 17
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 19
    iput v1, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mCurrentState:I

    .line 22
    :cond_0
    iput v1, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mTargetState:I

    .line 24
    return-void
    .line 26
.end method

.method public final release(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 9
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 11
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 15
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mCurrentState:I

    .line 18
    if-eqz p1, :cond_0

    .line 20
    iput v0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mTargetState:I

    .line 22
    :cond_0
    return-void
.end method

.method public final seekTo(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/toast/view/TextureVideoView;->isInPlaybackState()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 8
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 10
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mSeekWhenPrepared:I

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    iput p1, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mSeekWhenPrepared:I

    .line 17
    :goto_0
    return-void
    .line 19
.end method

.method public setAudioFocusRequest(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2
    return-void
    .line 4
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 2
    return-void
    .line 4
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 2
    return-void
    .line 4
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setVideoURI "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextureVideoView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/toast/view/TextureVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mUri:Landroid/net/Uri;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mHeaders:Ljava/util/Map;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mSeekWhenPrepared:I

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/toast/view/TextureVideoView;->openVideo()V

    .line 7
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    .line 8
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    return-void
.end method

.method public final start()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/toast/view/TextureVideoView;->isInPlaybackState()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 9
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 11
    iput v1, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mCurrentState:I

    .line 14
    :cond_0
    iput v1, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mTargetState:I

    .line 16
    return-void
    .line 18
.end method

.method public final stopPlayback()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 8
    iget-object v0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 11
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 13
    iput-object v1, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 16
    iput v2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mCurrentState:I

    .line 18
    iput v2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mTargetState:I

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mSurface:Landroid/view/Surface;

    .line 22
    if-nez v0, :cond_1

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    .line 27
    move-result-object v0

    .line 30
    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 31
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    .line 33
    invoke-interface {v0, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 35
    move-result-object v9

    .line 38
    invoke-interface {v0, v9, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 39
    const/16 v1, 0xd

    .line 42
    new-array v5, v1, [I

    .line 44
    fill-array-data v5, :array_0

    .line 46
    const/4 v1, 0x1

    .line 49
    new-array v10, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 50
    new-array v8, v1, [I

    .line 52
    const/4 v7, 0x1

    .line 54
    move-object v3, v0

    .line 55
    move-object v4, v9

    .line 56
    move-object v6, v10

    .line 57
    invoke-interface/range {v3 .. v8}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 58
    aget-object v1, v10, v2

    .line 61
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 63
    const/16 v3, 0x3098

    .line 65
    const/4 v4, 0x2

    .line 67
    const/16 v5, 0x3038

    .line 68
    filled-new-array {v3, v4, v5}, [I

    .line 70
    move-result-object v3

    .line 73
    invoke-interface {v0, v9, v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    .line 74
    move-result-object v2

    .line 77
    iget-object p0, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mSurface:Landroid/view/Surface;

    .line 78
    filled-new-array {v5}, [I

    .line 80
    move-result-object v3

    .line 83
    invoke-interface {v0, v9, v1, p0, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 84
    move-result-object p0

    .line 87
    invoke-interface {v0, v9, p0, p0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 88
    const/high16 v1, 0x3f800000    # 1.0f

    .line 91
    const/4 v3, 0x0

    .line 93
    invoke-static {v3, v3, v3, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 94
    const/16 v1, 0x4000

    .line 97
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 99
    invoke-interface {v0, v9, p0}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 102
    invoke-interface {v0, v9, p0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 105
    sget-object p0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 108
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 110
    invoke-interface {v0, v9, p0, p0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 112
    invoke-interface {v0, v9, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 115
    invoke-interface {v0, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 118
    :goto_0
    return-void

    .line 121
    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3038
        0x0
        0x3038
    .end array-data
    .line 122
.end method
