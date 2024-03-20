.class public Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "RingerVolumeFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sound/RingerVolumeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultUri:Landroid/net/Uri;

.field private mDegreePerVolume:D

.field private mHandler:Landroid/os/Handler;

.field private mLastVolume:I

.field private mMaxVolume:I

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMinVolume:I

.field private mRequestFocus:Z

.field private mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

.field private mStreamType:I

.field private mVolumeBeforeMute:I

.field private mVolumeObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Lcom/android/settings/sound/RingerVolumeFragment;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSeekBar(Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;)Lmiuix/androidbasewidget/widget/SeekBar;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStreamType(Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mStreamType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmLastVolume(Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mLastVolume:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMediaPlayer(Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/sound/RingerVolumeFragment;Landroid/content/Context;Lmiuix/androidbasewidget/widget/SeekBar;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 391
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;-><init>(Lcom/android/settings/sound/RingerVolumeFragment;Landroid/content/Context;Lmiuix/androidbasewidget/widget/SeekBar;ILandroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/sound/RingerVolumeFragment;Landroid/content/Context;Lmiuix/androidbasewidget/widget/SeekBar;ILandroid/net/Uri;)V
    .locals 1

    .line 394
    iput-object p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->this$0:Lcom/android/settings/sound/RingerVolumeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 p1, -0x1

    .line 365
    iput p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mLastVolume:I

    .line 367
    iput p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 374
    new-instance p1, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer$1;

    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer$1;-><init>(Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    .line 395
    iput-object p2, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mContext:Landroid/content/Context;

    const-string p1, "audio"

    .line 396
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 397
    iput p4, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mStreamType:I

    .line 398
    iput-object p3, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 399
    invoke-virtual {p1, p4}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mMinVolume:I

    .line 400
    iget-object p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget p2, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mMaxVolume:I

    .line 402
    invoke-direct {p0, p3, p5}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->initSeekBar(Lmiuix/androidbasewidget/widget/SeekBar;Landroid/net/Uri;)V

    return-void
.end method

.method private abandonAudioFocus()V
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 566
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 567
    iput-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 569
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mRequestFocus:Z

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, 0x0

    .line 571
    iput-boolean v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mRequestFocus:Z

    :cond_1
    return-void
.end method

.method private initSeekBar(Lmiuix/androidbasewidget/widget/SeekBar;Landroid/net/Uri;)V
    .locals 4

    const/16 v0, 0x64

    .line 428
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 429
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v0

    iput-wide v2, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mDegreePerVolume:D

    .line 430
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->getProgress(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 431
    invoke-virtual {p1, p0}, Lmiuix/androidbasewidget/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 433
    iget-object p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mStreamType:I

    aget-object v0, v0, v1

    .line 434
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    .line 433
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    if-nez p2, :cond_3

    .line 438
    iget p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mStreamType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 439
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 441
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 443
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    :cond_2
    :goto_0
    if-nez p2, :cond_3

    .line 446
    iget-object p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->this$0:Lcom/android/settings/sound/RingerVolumeFragment;

    invoke-static {p1}, Lcom/android/settings/sound/RingerVolumeFragment;->-$$Nest$mgetMediaVolumeUri(Lcom/android/settings/sound/RingerVolumeFragment;)Landroid/net/Uri;

    move-result-object p2

    .line 449
    :cond_3
    iput-object p2, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method getProgress(I)I
    .locals 4

    int-to-double v0, p1

    .line 406
    iget-wide v2, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mDegreePerVolume:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 407
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "ringer_volume_progress"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 409
    sget-object v2, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mStreamType:I

    aget-object v2, v2, v3

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 410
    invoke-virtual {p0, v1}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->getVolume(I)I

    move-result p0

    if-ne p1, p0, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method getVolume(I)I
    .locals 6

    int-to-double v0, p1

    .line 418
    iget-wide v2, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mDegreePerVolume:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v4, v2, v4

    add-double/2addr v0, v4

    div-double/2addr v0, v2

    double-to-int v0, v0

    if-lez p1, :cond_0

    if-nez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    if-ge p1, v1, :cond_1

    .line 421
    iget p0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mMaxVolume:I

    if-ne v0, p0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public isSamplePlaying()Z
    .locals 0

    .line 520
    iget-object p0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 604
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->abandonAudioFocus()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    if-nez p3, :cond_0

    return-void

    :cond_0
    int-to-double v0, p2

    .line 480
    iget-wide v2, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mDegreePerVolume:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v4, v2, v4

    add-double/2addr v0, v4

    div-double/2addr v0, v2

    iget p3, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mMinVolume:I

    int-to-double v2, p3

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 481
    invoke-virtual {p0, p3}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->getProgress(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void

    .line 485
    :cond_1
    iget-object p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mContext:Landroid/content/Context;

    const-string/jumbo p3, "ringer_volume_progress"

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 487
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object p3, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mStreamType:I

    aget-object p3, p3, v0

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 489
    invoke-virtual {p0, p2}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->postSetVolume(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 509
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->isSamplePlaying()Z

    move-result p1

    if-nez p1, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->startSample()V

    :cond_0
    return-void
.end method

.method postSetVolume(I)V
    .locals 0

    .line 498
    invoke-virtual {p0, p1}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->setLastVolume(I)V

    .line 499
    iget-object p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 500
    iget-object p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public revertStreamVolume()V
    .locals 5

    .line 459
    iget v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mStreamType:I

    invoke-static {v0}, Lcom/android/settings/PlatformUtils;->getDefaultStreamVolume(I)I

    move-result v0

    .line 460
    iget v1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mStreamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 461
    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v1

    and-int/lit8 v1, v1, 0xc

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->this$0:Lcom/android/settings/sound/RingerVolumeFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "integer"

    const-string v3, "android"

    const-string v4, "config_safe_media_volume_index"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 464
    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->this$0:Lcom/android/settings/sound/RingerVolumeFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-le v0, v1, :cond_0

    move v0, v1

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mStreamType:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 470
    iput v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mLastVolume:I

    return-void
.end method

.method public run()V
    .locals 3

    .line 515
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mStreamType:I

    iget p0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mLastVolume:I

    const/16 v2, 0x400

    invoke-virtual {v0, v1, p0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method setLastVolume(I)V
    .locals 0

    .line 493
    invoke-virtual {p0, p1}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->getVolume(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mLastVolume:I

    return-void
.end method

.method public startSample()V
    .locals 4

    .line 524
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->this$0:Lcom/android/settings/sound/RingerVolumeFragment;

    invoke-virtual {v0, p0}, Lcom/android/settings/sound/RingerVolumeFragment;->onSampleStarting(Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;)V

    .line 525
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 526
    iput-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void

    .line 530
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 531
    new-instance v2, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer$2;

    invoke-direct {v2, p0}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer$2;-><init>(Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 542
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 543
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v2, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 544
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 545
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 546
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 548
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    const/4 v0, 0x1

    .line 549
    iput-boolean v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mRequestFocus:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 553
    :catch_0
    iput-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 551
    :catch_1
    iput-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mMediaPlayer:Landroid/media/MediaPlayer;

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->stopSample()V

    .line 454
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 455
    iget-object p0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mSeekBar:Lmiuix/androidbasewidget/widget/SeekBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/androidbasewidget/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public stopSample()V
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 559
    invoke-direct {p0}, Lcom/android/settings/sound/RingerVolumeFragment$SeekBarVolumizer;->abandonAudioFocus()V

    :cond_0
    return-void
.end method
