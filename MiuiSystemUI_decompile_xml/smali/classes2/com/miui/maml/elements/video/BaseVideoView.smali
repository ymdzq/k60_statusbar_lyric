.class public abstract Lcom/miui/maml/elements/video/BaseVideoView;
.super Landroid/view/SurfaceView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final DURATION:Ljava/lang/String; = ".duration"

.field private static final PLAY_STATE:Ljava/lang/String; = ".playState"

.field private static final POSITION:Ljava/lang/String; = ".position"

.field public static final SCALE_MODE_FIT_CROP:I = 0x2

.field public static final SCALE_MODE_FIT_START:I = 0x3

.field public static final SCALE_MODE_FIT_XY:I = 0x1

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BaseVideoView"


# instance fields
.field private mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioFocusType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mDataSource:Landroid/media/MediaDataSource;

.field private mDurationVar:Lcom/miui/maml/data/IndexedVariable;

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mLooping:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mName:Ljava/lang/String;

.field private mPositionVar:Lcom/miui/maml/data/IndexedVariable;

.field private mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field protected mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field protected mScaleMode:I

.field private mSeekWhenPrepared:I

.field private mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mStateVar:Lcom/miui/maml/data/IndexedVariable;

.field protected mSurface:Landroid/view/Surface;

.field private mTargetState:I

.field protected mVideoHeight:I

.field protected mVideoWidth:I

.field private mVolume:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSurface:Landroid/view/Surface;

    .line 6
    const/4 v1, 0x1

    .line 8
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mScaleMode:I

    .line 9
    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCurrentState:I

    .line 12
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    .line 14
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 16
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioFocusType:I

    .line 18
    new-instance v0, Lcom/miui/maml/elements/video/BaseVideoView$1;

    .line 20
    invoke-direct {v0, p0}, Lcom/miui/maml/elements/video/BaseVideoView$1;-><init>(Lcom/miui/maml/elements/video/BaseVideoView;)V

    .line 22
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 25
    new-instance v0, Lcom/miui/maml/elements/video/BaseVideoView$2;

    .line 27
    invoke-direct {v0, p0}, Lcom/miui/maml/elements/video/BaseVideoView$2;-><init>(Lcom/miui/maml/elements/video/BaseVideoView;)V

    .line 29
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 32
    new-instance v0, Lcom/miui/maml/elements/video/BaseVideoView$3;

    .line 34
    invoke-direct {v0, p0}, Lcom/miui/maml/elements/video/BaseVideoView$3;-><init>(Lcom/miui/maml/elements/video/BaseVideoView;)V

    .line 36
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 39
    new-instance v0, Lcom/miui/maml/elements/video/BaseVideoView$4;

    .line 41
    invoke-direct {v0, p0}, Lcom/miui/maml/elements/video/BaseVideoView$4;-><init>(Lcom/miui/maml/elements/video/BaseVideoView;)V

    .line 43
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 46
    new-instance v0, Lcom/miui/maml/elements/video/BaseVideoView$5;

    .line 48
    invoke-direct {v0, p0}, Lcom/miui/maml/elements/video/BaseVideoView$5;-><init>(Lcom/miui/maml/elements/video/BaseVideoView;)V

    .line 50
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 53
    new-instance v0, Lcom/miui/maml/elements/video/BaseVideoView$6;

    .line 55
    invoke-direct {v0, p0}, Lcom/miui/maml/elements/video/BaseVideoView$6;-><init>(Lcom/miui/maml/elements/video/BaseVideoView;)V

    .line 57
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 60
    new-instance v0, Lcom/miui/maml/elements/video/BaseVideoView$7;

    .line 62
    invoke-direct {v0, p0}, Lcom/miui/maml/elements/video/BaseVideoView$7;-><init>(Lcom/miui/maml/elements/video/BaseVideoView;)V

    .line 64
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 67
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mContext:Landroid/content/Context;

    .line 69
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 71
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 73
    const-string v0, "audio"

    .line 75
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    move-result-object p1

    .line 80
    check-cast p1, Landroid/media/AudioManager;

    .line 81
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 83
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCurrentState:I

    .line 85
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    .line 87
    return-void
    .line 89
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/video/BaseVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$002(Lcom/miui/maml/elements/video/BaseVideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    .line 2
    return p1
    .line 4
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/video/BaseVideoView;)Landroid/media/MediaPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$1000(Lcom/miui/maml/elements/video/BaseVideoView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->updateDurationVar(I)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$200(Lcom/miui/maml/elements/video/BaseVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSeekWhenPrepared:I

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$300(Lcom/miui/maml/elements/video/BaseVideoView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->openVideo()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$400(Lcom/miui/maml/elements/video/BaseVideoView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->updateStateVar(I)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$500(Lcom/miui/maml/elements/video/BaseVideoView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->updatePositionVar(I)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$600(Lcom/miui/maml/elements/video/BaseVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioFocusType:I

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$700(Lcom/miui/maml/elements/video/BaseVideoView;)Landroid/media/AudioManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$800(Lcom/miui/maml/elements/video/BaseVideoView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mLooping:Z

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$900(Lcom/miui/maml/elements/video/BaseVideoView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVolume:F

    .line 2
    return p0
    .line 4
.end method

.method private checkAudioFocus()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioFocusType:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 6
    iget-object p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 8
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 14
    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 18
    iget-object p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 20
    const/4 v1, 0x3

    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 24
    :cond_1
    :goto_0
    return-void
    .line 27
.end method

.method private getStateName(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    const-string p0, ""

    .line 5
    return-object p0

    .line 7
    :pswitch_0
    const-string/jumbo p0, "state_playback_completed"

    .line 8
    return-object p0

    .line 11
    :pswitch_1
    const-string/jumbo p0, "state_paused"

    .line 12
    return-object p0

    .line 15
    :pswitch_2
    const-string/jumbo p0, "state_playing"

    .line 16
    return-object p0

    .line 19
    :pswitch_3
    const-string/jumbo p0, "state_prepared"

    .line 20
    return-object p0

    .line 23
    :pswitch_4
    const-string/jumbo p0, "state_preparing"

    .line 24
    return-object p0

    .line 27
    :pswitch_5
    const-string/jumbo p0, "state_idle"

    .line 28
    return-object p0

    .line 31
    :pswitch_6
    const-string/jumbo p0, "state_error"

    .line 32
    return-object p0

    .line 35
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 36
.end method

.method private initIndexedVariable(Lcom/miui/maml/data/Variables;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mName:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    iget-object v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mName:Ljava/lang/String;

    .line 17
    const-string v3, ".duration"

    .line 19
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 26
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mDurationVar:Lcom/miui/maml/data/IndexedVariable;

    .line 29
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    iget-object v3, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mName:Ljava/lang/String;

    .line 38
    const-string v4, ".position"

    .line 40
    invoke-static {v1, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 45
    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 46
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mPositionVar:Lcom/miui/maml/data/IndexedVariable;

    .line 49
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    iget-object v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mName:Ljava/lang/String;

    .line 58
    const-string v3, ".playState"

    .line 60
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-direct {v0, v1, p1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 67
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mStateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 70
    iget p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCurrentState:I

    .line 72
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->getStateName(I)Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 77
    invoke-virtual {v0, p0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    return-void
    .line 81
.end method

.method private openVideo()V
    .locals 7

    .line 1
    const-string v0, "Unable to open content: "

    .line 2
    const-string v1, "BaseVideoView"

    .line 4
    iget-object v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mDataSource:Landroid/media/MediaDataSource;

    .line 6
    if-eqz v2, :cond_2

    .line 8
    iget-object v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSurface:Landroid/view/Surface;

    .line 10
    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    .line 14
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    goto/16 :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 22
    invoke-virtual {p0, v2}, Lcom/miui/maml/elements/video/BaseVideoView;->releaseMedia(Z)V

    .line 23
    const/4 v3, 0x1

    .line 26
    const/4 v4, -0x1

    .line 27
    :try_start_0
    new-instance v5, Landroid/media/MediaPlayer;

    .line 28
    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    .line 30
    iput-object v5, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 33
    iget-object v6, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 35
    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 37
    iget-object v5, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 40
    iget-object v6, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 42
    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 44
    iget-object v5, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 47
    iget-object v6, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 49
    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 51
    iget-object v5, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 54
    iget-object v6, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 56
    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 58
    iget-object v5, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 61
    iget-object v6, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 63
    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 65
    iget-object v5, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 68
    iget-object v6, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mDataSource:Landroid/media/MediaDataSource;

    .line 70
    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 72
    iget v5, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mScaleMode:I

    .line 75
    const/4 v6, 0x2

    .line 77
    if-ne v5, v6, :cond_1

    .line 78
    iget-object v5, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 80
    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    .line 82
    :cond_1
    iget-object v5, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 85
    const/4 v6, 0x3

    .line 87
    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 88
    iget-object v5, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 91
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    .line 93
    iget-object v5, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 96
    iget-object v6, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSurface:Landroid/view/Surface;

    .line 98
    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 100
    invoke-direct {p0, v3}, Lcom/miui/maml/elements/video/BaseVideoView;->updateStateVar(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    return-void

    .line 106
    :catch_0
    move-exception v5

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    .line 108
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mDataSource:Landroid/media/MediaDataSource;

    .line 113
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 121
    invoke-static {v1, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    iput v4, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCurrentState:I

    .line 125
    iput v4, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    .line 127
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 129
    iget-object p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 131
    invoke-interface {v0, p0, v3, v2}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 133
    return-void

    .line 136
    :catch_1
    move-exception v5

    .line 137
    new-instance v6, Ljava/lang/StringBuilder;

    .line 138
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mDataSource:Landroid/media/MediaDataSource;

    .line 143
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v0

    .line 151
    invoke-static {v1, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    iput v4, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCurrentState:I

    .line 155
    iput v4, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    .line 157
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 159
    iget-object p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 161
    invoke-interface {v0, p0, v3, v2}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 163
    :cond_2
    :goto_0
    return-void
    .line 166
.end method

.method private updateDurationVar(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mDurationVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    int-to-double v0, p1

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 7
    :cond_0
    return-void
    .line 10
.end method

.method private updatePositionVar(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mPositionVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    int-to-double v0, p1

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 7
    :cond_0
    return-void
    .line 10
.end method

.method private updateStateVar(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCurrentState:I

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mStateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->getStateName(I)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 12
    :cond_0
    return-void
    .line 15
.end method


# virtual methods
.method public abstract addSurfaceHolderCallback()V
.end method

.method public doTick()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->isPlaying()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->getCurrentPosition()I

    .line 8
    move-result v0

    .line 11
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->updatePositionVar(I)V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->isInPlaybackState()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

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
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->isInPlaybackState()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

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

.method public init(Lcom/miui/maml/data/Variables;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->addSurfaceHolderCallback()V

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->initIndexedVariable(Lcom/miui/maml/data/Variables;)V

    .line 5
    return-void
    .line 8
.end method

.method public isInPlaybackState()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCurrentState:I

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

.method public isPlaying()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->isInPlaybackState()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

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

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->releaseMedia(Z)V

    .line 3
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 6
    return-void
    .line 9
.end method

.method public abstract onSurfaceCreated(Landroid/view/SurfaceHolder;)V
.end method

.method public abstract onSurfaceDestroyed()V
.end method

.method public pause()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->isInPlaybackState()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 9
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 17
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 19
    invoke-direct {p0, v1}, Lcom/miui/maml/elements/video/BaseVideoView;->updateStateVar(I)V

    .line 22
    :cond_0
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    .line 25
    return-void
    .line 27
.end method

.method public releaseMedia(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 6
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 10
    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCurrentState:I

    .line 13
    if-eqz p1, :cond_0

    .line 15
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    .line 17
    :cond_0
    iget p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioFocusType:I

    .line 19
    if-eqz p1, :cond_1

    .line 21
    iget-object p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 23
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 25
    :cond_1
    return-void
    .line 28
.end method

.method public seekTo(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->isInPlaybackState()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mCurrentState:I

    .line 8
    const/4 v1, 0x4

    .line 10
    const/4 v2, 0x0

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 14
    int-to-long v3, p1

    .line 16
    invoke-virtual {v0, v3, v4, v2}, Landroid/media/MediaPlayer;->seekTo(JI)V

    .line 17
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 21
    int-to-long v3, p1

    .line 23
    const/4 p1, 0x2

    .line 24
    invoke-virtual {v0, v3, v4, p1}, Landroid/media/MediaPlayer;->seekTo(JI)V

    .line 25
    :goto_0
    iput v2, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSeekWhenPrepared:I

    .line 28
    goto :goto_1

    .line 30
    :cond_1
    iput p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSeekWhenPrepared:I

    .line 31
    :goto_1
    return-void
    .line 33
.end method

.method public abstract setFormat(I)V
.end method

.method public setLooping(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mLooping:Z

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 10
    :cond_0
    iput-boolean p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mLooping:Z

    .line 13
    :cond_1
    return-void
    .line 15
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mName:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public setScaleMode(I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    if-gt p1, v0, :cond_0

    .line 3
    const/4 v0, 0x1

    .line 5
    if-lt p1, v0, :cond_0

    .line 6
    iput p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mScaleMode:I

    .line 8
    :cond_0
    return-void
    .line 10
.end method

.method public setVideoDataSource(Landroid/media/MediaDataSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mDataSource:Landroid/media/MediaDataSource;

    .line 2
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSeekWhenPrepared:I

    .line 5
    invoke-direct {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->openVideo()V

    .line 7
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 10
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 13
    return-void
    .line 16
.end method

.method public setVolume(F)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    if-gez v1, :cond_0

    .line 5
    move p1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    cmpl-float v2, p1, v1

    .line 11
    if-lez v2, :cond_1

    .line 13
    move p1, v1

    .line 15
    :cond_1
    :goto_0
    cmpl-float v0, p1, v0

    .line 16
    if-nez v0, :cond_2

    .line 18
    const/4 v0, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_2
    const/4 v0, 0x1

    .line 22
    :goto_1
    iget v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioFocusType:I

    .line 23
    if-eq v0, v1, :cond_3

    .line 25
    iput v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioFocusType:I

    .line 27
    :cond_3
    invoke-direct {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->checkAudioFocus()V

    .line 29
    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVolume:F

    .line 32
    cmpl-float v0, v0, p1

    .line 34
    if-eqz v0, :cond_5

    .line 36
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 38
    if-eqz v0, :cond_4

    .line 40
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 42
    :cond_4
    iput p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVolume:F

    .line 45
    :cond_5
    return-void
    .line 47
.end method

.method public start()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->isInPlaybackState()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-eqz v0, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->checkAudioFocus()V

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 12
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 14
    invoke-direct {p0, v1}, Lcom/miui/maml/elements/video/BaseVideoView;->updateStateVar(I)V

    .line 17
    :cond_0
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    .line 20
    return-void
    .line 22
.end method

.method public stopPlayback()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 6
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 9
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 11
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 15
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0, v1}, Lcom/miui/maml/elements/video/BaseVideoView;->updateStateVar(I)V

    .line 18
    iput v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mTargetState:I

    .line 21
    iget-object p0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 23
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 25
    :cond_0
    return-void
    .line 28
.end method

.method public abstract updateVideoSize()V
.end method
