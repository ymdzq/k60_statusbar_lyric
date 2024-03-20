.class public Lcom/android/settings/haptic/HapticDemoVideoPreference;
.super Landroidx/preference/Preference;
.source "HapticDemoVideoPreference.java"

# interfaces
.implements Lmiuix/preference/PreferenceExtraPadding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/haptic/HapticDemoVideoPreference$IVideoState;,
        Lcom/android/settings/haptic/HapticDemoVideoPreference$BgHandler;
    }
.end annotation


# instance fields
.field private VideoContainer:Landroid/view/View;

.field private mBgHandler:Lcom/android/settings/haptic/HapticDemoVideoPreference$BgHandler;

.field private mBgHandlerThread:Landroid/os/HandlerThread;

.field private mHapticCompat:Lmiui/util/HapticFeedbackUtil;

.field private mIsFinish:Z

.field private mIsFinishRenderingStart:Z

.field private mIsVisible:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPerformExtHapticFeedback:Ljava/lang/Runnable;

.field private mPlayBtn:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mSupportLinearMotorVibrate:Z

.field private mSurface:Landroid/view/Surface;

.field private mTextureView:Landroid/view/TextureView;

.field private mVideoBgImgHolder:Landroid/view/View;

.field private mVideoBgImgItem:Landroid/view/View;

.field private mVideoState:Lcom/android/settings/haptic/HapticDemoVideoPreference$IVideoState;


# direct methods
.method public static synthetic $r8$lambda$0DQS2KqnzJA6zetw88cVub3Kr1E(Lcom/android/settings/haptic/HapticDemoVideoPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->lambda$performHapticFeedback$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$8mcm1LsPjq4qst5eTAxl-GA_nAI(Lcom/android/settings/haptic/HapticDemoVideoPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->lambda$playMedia$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$8pjdTaXkGsPjuxnk6nYqYqK21MM(Lcom/android/settings/haptic/HapticDemoVideoPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->lambda$stopPlayingVideo$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$BVMfjSOK0RgWISse3NnZT5mc1wA(Lcom/android/settings/haptic/HapticDemoVideoPreference;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->lambda$initMedia$1(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GSRZijyD25Z_diEwr13imJ75GJE(Lcom/android/settings/haptic/HapticDemoVideoPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$_cPStgqI0WjCT0VwCuA9ot6xn6U(Lcom/android/settings/haptic/HapticDemoVideoPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->lambda$showVideoBgImgHolder$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$xDSQ9GbHmpaebvFqNhN3422Y8zg(Lcom/android/settings/haptic/HapticDemoVideoPreference;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->lambda$playMedia$5(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBgHandler(Lcom/android/settings/haptic/HapticDemoVideoPreference;)Lcom/android/settings/haptic/HapticDemoVideoPreference$BgHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mBgHandler:Lcom/android/settings/haptic/HapticDemoVideoPreference$BgHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFinishRenderingStart(Lcom/android/settings/haptic/HapticDemoVideoPreference;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mIsFinishRenderingStart:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsVisible(Lcom/android/settings/haptic/HapticDemoVideoPreference;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mIsVisible:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoBgImgHolder(Lcom/android/settings/haptic/HapticDemoVideoPreference;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mVideoBgImgHolder:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsFinishRenderingStart(Lcom/android/settings/haptic/HapticDemoVideoPreference;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mIsFinishRenderingStart:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSurface(Lcom/android/settings/haptic/HapticDemoVideoPreference;Landroid/view/Surface;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method static bridge synthetic -$$Nest$minitMedia(Lcom/android/settings/haptic/HapticDemoVideoPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->initMedia()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mperformHapticFeedback(Lcom/android/settings/haptic/HapticDemoVideoPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->performHapticFeedback()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mplayMedia(Lcom/android/settings/haptic/HapticDemoVideoPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->playMedia()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseMedia(Lcom/android/settings/haptic/HapticDemoVideoPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->releaseMedia()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopPlayingVideo(Lcom/android/settings/haptic/HapticDemoVideoPreference;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->stopPlayingVideo()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 170
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 57
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "IS_FIRST_START_HAPTIC_SP"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mIsFinish:Z

    .line 62
    new-instance p2, Lcom/android/settings/haptic/HapticDemoVideoPreference$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/haptic/HapticDemoVideoPreference;)V

    iput-object p2, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mPerformExtHapticFeedback:Ljava/lang/Runnable;

    .line 171
    sget p2, Lcom/android/settings/R$layout;->haptic_demo_main_video_layout:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 172
    new-instance p2, Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mHapticCompat:Lmiui/util/HapticFeedbackUtil;

    .line 173
    invoke-static {}, Lcom/android/settings/haptic/utils/UiUtils;->isSupportLinearMotorVibrate()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mSupportLinearMotorVibrate:Z

    .line 174
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "haptic_video"

    const/4 v0, 0x5

    invoke-direct {p1, p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mBgHandlerThread:Landroid/os/HandlerThread;

    .line 175
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 176
    new-instance p1, Lcom/android/settings/haptic/HapticDemoVideoPreference$BgHandler;

    iget-object p2, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mBgHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/settings/haptic/HapticDemoVideoPreference$BgHandler;-><init>(Lcom/android/settings/haptic/HapticDemoVideoPreference;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mBgHandler:Lcom/android/settings/haptic/HapticDemoVideoPreference$BgHandler;

    return-void
.end method

.method private initMedia()V
    .locals 3

    const-string v0, "HapticDemoVideoPreferen"

    const-string v1, "initMedia"

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/settings/R$raw;->main_haptic_video:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/settings/haptic/HapticDemoVideoPreference$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/haptic/HapticDemoVideoPreference;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 163
    :try_start_1
    iget-object p0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 165
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$initMedia$1(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 153
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v0, "IS_FIRST_START_HAPTIC"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "HapticDemoVideoPreferen"

    if-eqz p1, :cond_0

    const-string/jumbo p0, "no need to play video"

    .line 154
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mVideoBgImgHolder:Landroid/view/View;

    if-eqz p1, :cond_1

    const-string p1, "first play video"

    .line 158
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->playMedia()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/16 v0, 0xc0

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->playExtPatternById(I)V

    return-void
.end method

.method private synthetic lambda$performHapticFeedback$6()V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mPlayBtn:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mVideoState:Lcom/android/settings/haptic/HapticDemoVideoPreference$IVideoState;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 341
    invoke-interface {v0, v1}, Lcom/android/settings/haptic/HapticDemoVideoPreference$IVideoState;->onHapticVideoStateChange(Z)V

    .line 343
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mPerformExtHapticFeedback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 344
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mPerformExtHapticFeedback:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$playMedia$4()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mPlayBtn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mVideoState:Lcom/android/settings/haptic/HapticDemoVideoPreference$IVideoState;

    if-eqz v0, :cond_0

    .line 303
    invoke-interface {v0, v1}, Lcom/android/settings/haptic/HapticDemoVideoPreference$IVideoState;->onHapticVideoStateChange(Z)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mVideoBgImgItem:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$drawable;->img_main_video_bg:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$playMedia$5(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 p1, 0x1

    .line 298
    iput-boolean p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mIsFinish:Z

    .line 299
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 300
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mPlayBtn:Landroid/view/View;

    new-instance v0, Lcom/android/settings/haptic/HapticDemoVideoPreference$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/haptic/HapticDemoVideoPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$showVideoBgImgHolder$2()V
    .locals 1

    .line 251
    iget-object p0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mVideoBgImgHolder:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$stopPlayingVideo$3()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mPlayBtn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mVideoState:Lcom/android/settings/haptic/HapticDemoVideoPreference$IVideoState;

    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v0, v1}, Lcom/android/settings/haptic/HapticDemoVideoPreference$IVideoState;->onHapticVideoStateChange(Z)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mVideoBgImgItem:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$drawable;->img_main_video_bg:I

    .line 274
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 273
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private performHapticFeedback()V
    .locals 3

    .line 332
    iget-boolean v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mIsFinishRenderingStart:Z

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "IS_FIRST_START_HAPTIC"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x1

    .line 335
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 336
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 338
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/haptic/HapticDemoVideoPreference$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/haptic/HapticDemoVideoPreference;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 346
    const-class p0, Lcom/android/settings/haptic/HapticFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "haptic_main_video"

    invoke-static {p0, v0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackPreferenceClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private playMedia()V
    .locals 2

    .line 287
    invoke-direct {p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->stopPlayingVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 290
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mIsFinish:Z

    if-nez v0, :cond_1

    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_2

    .line 294
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 297
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/settings/haptic/HapticDemoVideoPreference$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/haptic/HapticDemoVideoPreference;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    const/4 v0, 0x0

    .line 308
    iput-boolean v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mIsFinish:Z

    .line 309
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 310
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/settings/haptic/HapticDemoVideoPreference$3;

    invoke-direct {v1, p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference$3;-><init>(Lcom/android/settings/haptic/HapticDemoVideoPreference;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 325
    invoke-direct {p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->performHapticFeedback()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 327
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private releaseMedia()V
    .locals 2

    .line 230
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->showVideoBgImgHolder()V

    .line 231
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 237
    iput-object v1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mIsFinishRenderingStart:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseMedia error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HapticDemoVideoPreferen"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private showVideoBgImgHolder()V
    .locals 2

    .line 250
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/haptic/HapticDemoVideoPreference$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/haptic/HapticDemoVideoPreference;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private stopPlayingVideo()Z
    .locals 3

    const-string v0, "HapticDemoVideoPreferen"

    const-string/jumbo v1, "stopPlayingVideo"

    .line 266
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mPlayBtn:Landroid/view/View;

    new-instance v2, Lcom/android/settings/haptic/HapticDemoVideoPreference$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/haptic/HapticDemoVideoPreference;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 276
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mPerformExtHapticFeedback:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 277
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 278
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x1

    .line 279
    iput-boolean v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mIsFinish:Z

    .line 280
    iget-object p0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mHapticCompat:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0}, Lmiui/util/HapticFeedbackUtil;->release()V

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 181
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 182
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mRootView:Landroid/view/View;

    const/4 v0, 0x0

    .line 183
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 184
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 185
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->video_card_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->VideoContainer:Landroid/view/View;

    .line 186
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->tv_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mTextureView:Landroid/view/TextureView;

    .line 187
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->img_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mVideoBgImgItem:Landroid/view/View;

    .line 188
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->img_main_video_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 189
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->img_holder:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mVideoBgImgHolder:Landroid/view/View;

    .line 190
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mTextureView:Landroid/view/TextureView;

    new-instance v0, Lcom/android/settings/haptic/HapticDemoVideoPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference$1;-><init>(Lcom/android/settings/haptic/HapticDemoVideoPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 217
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mRootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->play_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mPlayBtn:Landroid/view/View;

    .line 218
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->VideoContainer:Landroid/view/View;

    new-instance v0, Lcom/android/settings/haptic/HapticDemoVideoPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference$2;-><init>(Lcom/android/settings/haptic/HapticDemoVideoPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onPreferenceExtraPadding(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 2

    .line 91
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->miuix_preference_checkable_item_mask_padding_start:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    int-to-float p2, p2

    add-float/2addr p1, p2

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->miuix_preference_checkable_item_bg_padding_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr v0, p2

    float-to-int p1, p1

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 246
    invoke-direct {p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->showVideoBgImgHolder()V

    return-void
.end method

.method public onStop()V
    .locals 2

    const/4 v0, 0x0

    .line 258
    iput-boolean v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mIsVisible:Z

    const-string v0, "HapticDemoVideoPreferen"

    const-string/jumbo v1, "onStop"

    .line 259
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object p0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mBgHandler:Lcom/android/settings/haptic/HapticDemoVideoPreference$BgHandler;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 261
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onVisible()V
    .locals 1

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mIsVisible:Z

    return-void
.end method

.method onVisible(Z)V
    .locals 1

    .line 72
    iput-boolean p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mIsVisible:Z

    if-eqz p1, :cond_0

    .line 74
    iget-object p0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mBgHandler:Lcom/android/settings/haptic/HapticDemoVideoPreference$BgHandler;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    .line 75
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-string p1, "HapticDemoVideoPreferen"

    const-string/jumbo v0, "onVisible false"

    .line 78
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mBgHandler:Lcom/android/settings/haptic/HapticDemoVideoPreference$BgHandler;

    if-eqz p0, :cond_1

    const/4 p1, 0x4

    .line 80
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public playExtPatternById(I)V
    .locals 4

    const-string v0, "HapticDemoVideoPreferen"

    .line 354
    :try_start_0
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 356
    iget-object v1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mHapticCompat:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v1, p1}, Lmiui/util/HapticFeedbackUtil;->isSupportExtHapticFeedback(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performExtHapticFeedback id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mHapticCompat:Lmiui/util/HapticFeedbackUtil;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(IIZ)Z

    .line 359
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNoveltyHaptic()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/sound/HapticMiddleEnabledSeekBarPreference;->getHapticLevel(Landroid/content/Context;)F

    move-result v1

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/sound/HapticSeekBarPreference;->getHapticLevel(Landroid/content/Context;)F

    move-result v1

    .line 362
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/sound/VibratorFeatureUtil;->getInstance(Landroid/content/Context;)Lcom/android/settings/sound/VibratorFeatureUtil;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/settings/sound/VibratorFeatureUtil;->setAmplitude(F)V

    goto :goto_1

    .line 365
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not support this rtp:$rtpEffectId! id:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 368
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not support linearMotor! id:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 371
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not support this id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " exception:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setVideoState(Lcom/android/settings/haptic/HapticDemoVideoPreference$IVideoState;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference;->mVideoState:Lcom/android/settings/haptic/HapticDemoVideoPreference$IVideoState;

    return-void
.end method
