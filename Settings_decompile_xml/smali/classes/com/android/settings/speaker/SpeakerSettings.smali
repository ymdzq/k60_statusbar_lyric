.class public Lcom/android/settings/speaker/SpeakerSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SpeakerSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/speaker/SpeakerSettings$MainThreadHandler;
    }
.end annotation


# instance fields
.field private isDialogShow:Z

.field private mAm:Landroid/media/AudioManager;

.field private mHeadSetHelper:Lcom/android/settings/speaker/HeadSetHelper;

.field private mMainThreadHandler:Lcom/android/settings/speaker/SpeakerSettings$MainThreadHandler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mProgressCountdownTimer:Landroid/os/CountDownTimer;

.field private mProgressValueCountdownTimer:Landroid/os/CountDownTimer;

.field private mSpeakerPreference:Landroidx/preference/Preference;


# direct methods
.method public static synthetic $r8$lambda$FY-1EacOy0FlvOKY1lFoDhDpb6I(Lcom/android/settings/speaker/SpeakerSettings;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/speaker/SpeakerSettings;->lambda$onCreateDialog$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HqvSYibdzR9G7_RmqS4qr2NS6CI(Lcom/android/settings/speaker/SpeakerSettings;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/speaker/SpeakerSettings;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jub439V0n6ORnH8gsRGTLesMcjU(Lcom/android/settings/speaker/SpeakerSettings;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/speaker/SpeakerSettings;->lambda$onCreate$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$QgprWcPooiQC64bVy7m1-Sz0VM0(Lcom/android/settings/speaker/SpeakerSettings;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/speaker/SpeakerSettings;->lambda$onCreateDialog$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a_bDeOqbXpSsgc75QPmhNsYGWBM(Lcom/android/settings/speaker/SpeakerSettings;Lcom/android/settings/speaker/SpeakerProgressDialog;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/speaker/SpeakerSettings;->lambda$onCreateDialog$5(Lcom/android/settings/speaker/SpeakerProgressDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d4bS6kVsQyvsmU_MUrcDIVeUAcs(Lcom/android/settings/speaker/SpeakerSettings;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/speaker/SpeakerSettings;->lambda$onCreateDialog$4(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmMediaPlayer(Lcom/android/settings/speaker/SpeakerSettings;)Landroid/media/MediaPlayer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/speaker/SpeakerSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstopCleanSound(Lcom/android/settings/speaker/SpeakerSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/speaker/SpeakerSettings;->stopCleanSound()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/android/settings/speaker/SpeakerSettings;->isDialogShow:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/speaker/SpeakerSettings;I)V
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroidx/preference/Preference;)Z
    .locals 2

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/speaker/HeadSetHelper;->isHeadsetOn(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->toast_disconnect_earphone:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 112
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v0

    .line 115
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/speaker/SpeakerSettings;->isDialogShow:Z

    if-eqz p1, :cond_1

    return v0

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/speaker/SpeakerSettings;->needShowTip()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return v0
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 166
    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/speaker/SpeakerSettings;->setNoShowTipAnyMore()V

    :cond_0
    const/4 p1, 0x0

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 170
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/speaker/HeadSetHelper;->isHeadsetOn(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->toast_disconnect_earphone:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 171
    invoke-static {p2, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 173
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 176
    :cond_1
    iget-object p0, p0, Lcom/android/settings/speaker/SpeakerSettings;->mMainThreadHandler:Lcom/android/settings/speaker/SpeakerSettings$MainThreadHandler;

    const/4 p1, 0x2

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private synthetic lambda$onCreateDialog$2(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 182
    iput-boolean p1, p0, Lcom/android/settings/speaker/SpeakerSettings;->isDialogShow:Z

    return-void
.end method

.method private synthetic lambda$onCreateDialog$3(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x1

    .line 185
    iput-boolean p1, p0, Lcom/android/settings/speaker/SpeakerSettings;->isDialogShow:Z

    return-void
.end method

.method private synthetic lambda$onCreateDialog$4(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lcom/android/settings/speaker/SpeakerSettings;->isDialogShow:Z

    .line 197
    instance-of p1, p1, Lcom/android/settings/speaker/SpeakerProgressDialog;

    if-eqz p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/android/settings/speaker/SpeakerSettings;->mMainThreadHandler:Lcom/android/settings/speaker/SpeakerSettings$MainThreadHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    invoke-direct {p0}, Lcom/android/settings/speaker/SpeakerSettings;->stopCleanSound()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreateDialog$5(Lcom/android/settings/speaker/SpeakerProgressDialog;Landroid/content/DialogInterface;)V
    .locals 13

    const/4 p2, 0x1

    .line 203
    iput-boolean p2, p0, Lcom/android/settings/speaker/SpeakerSettings;->isDialogShow:Z

    .line 204
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lmiuix/appcompat/R$color;->miuix_appcompat_dialog_default_progress_percent_color:I

    .line 205
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 204
    invoke-virtual {p1, p2}, Lcom/android/settings/speaker/SpeakerProgressDialog;->setProgressPercentViewTextColor(I)V

    .line 206
    new-instance p2, Lcom/android/settings/speaker/SpeakerSettings$2;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x12c

    move-object v0, p2

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/speaker/SpeakerSettings$2;-><init>(Lcom/android/settings/speaker/SpeakerSettings;JJLcom/android/settings/speaker/SpeakerProgressDialog;)V

    iput-object p2, p0, Lcom/android/settings/speaker/SpeakerSettings;->mProgressCountdownTimer:Landroid/os/CountDownTimer;

    .line 222
    new-instance p2, Lcom/android/settings/speaker/SpeakerSettings$3;

    const-wide/16 v8, 0x7530

    const-wide/16 v10, 0x3e8

    move-object v6, p2

    move-object v7, p0

    move-object v12, p1

    invoke-direct/range {v6 .. v12}, Lcom/android/settings/speaker/SpeakerSettings$3;-><init>(Lcom/android/settings/speaker/SpeakerSettings;JJLcom/android/settings/speaker/SpeakerProgressDialog;)V

    iput-object p2, p0, Lcom/android/settings/speaker/SpeakerSettings;->mProgressValueCountdownTimer:Landroid/os/CountDownTimer;

    .line 238
    iget-object p1, p0, Lcom/android/settings/speaker/SpeakerSettings;->mProgressCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 239
    iget-object p1, p0, Lcom/android/settings/speaker/SpeakerSettings;->mProgressValueCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 240
    invoke-direct {p0}, Lcom/android/settings/speaker/SpeakerSettings;->playCleanSound()V

    return-void
.end method

.method private playCleanSound()V
    .locals 10

    .line 257
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$raw;->speaker_clean_sound:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/settings/speaker/SpeakerSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 262
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 263
    iget-object v1, p0, Lcom/android/settings/speaker/SpeakerSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 264
    iget-object v1, p0, Lcom/android/settings/speaker/SpeakerSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 265
    iget-object v1, p0, Lcom/android/settings/speaker/SpeakerSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/android/settings/speaker/SpeakerSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/speaker/SpeakerSettings$4;-><init>(Lcom/android/settings/speaker/SpeakerSettings;)V

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 272
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/speaker/SpeakerSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 273
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 274
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 275
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 276
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 277
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerSettings;->mMainThreadHandler:Lcom/android/settings/speaker/SpeakerSettings$MainThreadHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 278
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerSettings;->mMainThreadHandler:Lcom/android/settings/speaker/SpeakerSettings$MainThreadHandler;

    const-wide/16 v1, 0x7530

    invoke-static {v0, v1, v2}, Lcom/android/settings/speaker/SpeakerSettings$MainThreadHandler;->-$$Nest$mstopCleanSoundDelayed(Lcom/android/settings/speaker/SpeakerSettings$MainThreadHandler;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SpeakerSettings"

    const-string/jumbo v2, "play speaker clean sound failed!"

    .line 280
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    :goto_0
    iget-object p0, p0, Lcom/android/settings/speaker/SpeakerSettings;->mAm:Landroid/media/AudioManager;

    const-string/jumbo v0, "status_earpiece_clean=on"

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void

    .line 259
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "afd == NULL,  the file exists but is compressed. "

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private stopCleanSound()V
    .locals 2

    const/4 v0, 0x1

    .line 286
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 287
    invoke-direct {p0}, Lcom/android/settings/speaker/SpeakerSettings;->stopPlayer()V

    .line 288
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerSettings;->mAm:Landroid/media/AudioManager;

    const-string/jumbo v1, "status_earpiece_clean=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerSettings;->mProgressCountdownTimer:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 291
    iput-object v1, p0, Lcom/android/settings/speaker/SpeakerSettings;->mProgressCountdownTimer:Landroid/os/CountDownTimer;

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerSettings;->mProgressValueCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 295
    iput-object v1, p0, Lcom/android/settings/speaker/SpeakerSettings;->mProgressValueCountdownTimer:Landroid/os/CountDownTimer;

    :cond_1
    return-void
.end method

.method private stopPlayer()V
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 304
    :cond_0
    monitor-enter p0

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerSettings;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 307
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    :try_start_2
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 312
    :goto_0
    iput-object v1, p0, Lcom/android/settings/speaker/SpeakerSettings;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v0, "SpeakerSettings"

    const-string v2, "IllegalStateException while stop clean sound!"

    .line 309
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 311
    :try_start_4
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lcom/android/settings/speaker/SpeakerSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 312
    iput-object v1, p0, Lcom/android/settings/speaker/SpeakerSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 313
    throw v0

    .line 315
    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 301
    :cond_2
    :goto_3
    iput-object v1, p0, Lcom/android/settings/speaker/SpeakerSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "SpeakerSettings"

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 53
    sget p0, Lcom/android/settings/R$xml;->speaker_settings:I

    return p0
.end method

.method public needShowTip()Z
    .locals 2

    .line 319
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "speaker_need_show_tip"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/settings/utils/MiuiSharedPreferencesUtils;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "key_speaker_auto_clean"

    .line 107
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/speaker/SpeakerSettings;->mSpeakerPreference:Landroidx/preference/Preference;

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->auto_clean_summary_new:I

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 109
    iget-object p1, p0, Lcom/android/settings/speaker/SpeakerSettings;->mSpeakerPreference:Landroidx/preference/Preference;

    new-instance v0, Lcom/android/settings/speaker/SpeakerSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/speaker/SpeakerSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/speaker/SpeakerSettings;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "audio"

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/speaker/SpeakerSettings;->mAm:Landroid/media/AudioManager;

    .line 122
    new-instance p1, Lcom/android/settings/speaker/SpeakerSettings$MainThreadHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v1}, Lcom/android/settings/speaker/SpeakerSettings$MainThreadHandler;-><init>(Landroid/os/Looper;Lcom/android/settings/speaker/SpeakerSettings;Lcom/android/settings/speaker/SpeakerSettings$MainThreadHandler-IA;)V

    iput-object p1, p0, Lcom/android/settings/speaker/SpeakerSettings;->mMainThreadHandler:Lcom/android/settings/speaker/SpeakerSettings$MainThreadHandler;

    .line 123
    new-instance p1, Lcom/android/settings/speaker/HeadSetHelper;

    new-instance v0, Lcom/android/settings/speaker/SpeakerSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/speaker/SpeakerSettings$1;-><init>(Lcom/android/settings/speaker/SpeakerSettings;)V

    invoke-direct {p1, v0}, Lcom/android/settings/speaker/HeadSetHelper;-><init>(Lcom/android/settings/speaker/HeadSetHelper$OnHeadSetChangeListener;)V

    iput-object p1, p0, Lcom/android/settings/speaker/SpeakerSettings;->mHeadSetHelper:Lcom/android/settings/speaker/HeadSetHelper;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    .line 189
    new-instance p1, Lcom/android/settings/speaker/SpeakerProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/android/settings/speaker/SpeakerProgressDialog;-><init>(Landroid/content/Context;)V

    .line 190
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->progress_dialog_speaker_auto_clean_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/speaker/SpeakerProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/16 v2, 0x64

    .line 191
    invoke-virtual {p1, v2}, Lcom/android/settings/speaker/SpeakerProgressDialog;->setMax(I)V

    .line 192
    invoke-virtual {p1, v1}, Lcom/android/settings/speaker/SpeakerProgressDialog;->setProgressStyle(I)V

    .line 193
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 194
    invoke-virtual {p1, v0}, Lcom/android/settings/speaker/SpeakerProgressDialog;->setAutoUpdateProgressPercentView(Z)V

    .line 195
    new-instance v0, Lcom/android/settings/speaker/SpeakerSettings$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/settings/speaker/SpeakerSettings$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/speaker/SpeakerSettings;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 202
    new-instance v0, Lcom/android/settings/speaker/SpeakerSettings$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/speaker/SpeakerSettings$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/speaker/SpeakerSettings;Lcom/android/settings/speaker/SpeakerProgressDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1

    .line 245
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 161
    :cond_1
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->dialog_speaker_auto_clean_title_new:I

    .line 162
    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v2, Lcom/android/settings/R$string;->dialog_speaker_auto_clean_content_new:I

    .line 163
    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->wifi_off_airplane_on_not_remind:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->dialog_speaker_auto_clean_button:I

    new-instance v2, Lcom/android/settings/speaker/SpeakerSettings$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/settings/speaker/SpeakerSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/speaker/SpeakerSettings;)V

    .line 165
    invoke-virtual {p1, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 179
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 180
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 181
    new-instance v0, Lcom/android/settings/speaker/SpeakerSettings$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/speaker/SpeakerSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/speaker/SpeakerSettings;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 184
    new-instance v0, Lcom/android/settings/speaker/SpeakerSettings$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/settings/speaker/SpeakerSettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/speaker/SpeakerSettings;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 152
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 153
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerSettings;->mHeadSetHelper:Lcom/android/settings/speaker/HeadSetHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/speaker/HeadSetHelper;->unregisterHeadsetReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 146
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 147
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerSettings;->mHeadSetHelper:Lcom/android/settings/speaker/HeadSetHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/speaker/HeadSetHelper;->registerHeadsetReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 64
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 65
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 251
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    const/4 v0, 0x1

    .line 252
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 253
    invoke-direct {p0}, Lcom/android/settings/speaker/SpeakerSettings;->stopPlayer()V

    return-void
.end method

.method public setNoShowTipAnyMore()V
    .locals 2

    .line 324
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "speaker_need_show_tip"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/settings/utils/MiuiSharedPreferencesUtils;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
