.class public Lcom/android/settings/sound/SeekBarVolumizer;
.super Ljava/lang/Object;
.source "SeekBarVolumizer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sound/SeekBarVolumizer$Receiver;
    }
.end annotation


# static fields
.field public static final VOICE_XIAOMI_ASSISTANT_URI:Landroid/net/Uri;

.field private static sIS_SAMPLE_PLAY:Z


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDegreePerVolume:D

.field private mHandler:Landroid/os/Handler;

.field private volatile mIsUpdate:Z

.field private mLastRecordVolume:I

.field private mLastVolume:I

.field private mMinProgress:I

.field private mMinVolume:I

.field private mPreference:Lcom/android/settings/sound/VolumeSeekBarPreference;

.field private mReceiver:Lcom/android/settings/sound/SeekBarVolumizer$Receiver;

.field private mRequestFocus:Z

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mStream:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/android/settings/sound/SeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/sound/SeekBarVolumizer;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/sound/SeekBarVolumizer;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsUpdate(Lcom/android/settings/sound/SeekBarVolumizer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mIsUpdate:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastRecordVolume(Lcom/android/settings/sound/SeekBarVolumizer;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mLastRecordVolume:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/android/settings/sound/SeekBarVolumizer;)Lcom/android/settings/sound/VolumeSeekBarPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mPreference:Lcom/android/settings/sound/VolumeSeekBarPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSeekBar(Lcom/android/settings/sound/SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStream(Lcom/android/settings/sound/SeekBarVolumizer;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mStream:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsUpdate(Lcom/android/settings/sound/SeekBarVolumizer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mIsUpdate:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastRecordVolume(Lcom/android/settings/sound/SeekBarVolumizer;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mLastRecordVolume:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://com.android.settings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/settings/R$raw;->xiaoai_mitang_volume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/sound/SeekBarVolumizer;->VOICE_XIAOMI_ASSISTANT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/sound/VolumeSeekBarPreference;)V
    .locals 4

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 70
    iput v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mLastVolume:I

    const/4 v1, 0x1

    .line 71
    iput-boolean v1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mIsUpdate:Z

    const/4 v1, 0x0

    .line 76
    iput v1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mMinVolume:I

    .line 77
    iput v1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mMinProgress:I

    .line 78
    iput v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mLastRecordVolume:I

    .line 82
    iput-object p1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mPreference:Lcom/android/settings/sound/VolumeSeekBarPreference;

    .line 83
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {p1}, Lcom/android/settings/sound/VolumeSeekBarPreference;->getStream()I

    move-result p1

    iput p1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mStream:I

    .line 85
    iget-object p1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 86
    iget v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mStream:I

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x4090e00000000000L    # 1080.0

    div-double/2addr v2, v0

    iput-wide v2, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mDegreePerVolume:D

    .line 87
    new-instance p1, Lcom/android/settings/sound/SeekBarVolumizer$Receiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/sound/SeekBarVolumizer$Receiver;-><init>(Lcom/android/settings/sound/SeekBarVolumizer;Lcom/android/settings/sound/SeekBarVolumizer$Receiver-IA;)V

    iput-object p1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mReceiver:Lcom/android/settings/sound/SeekBarVolumizer$Receiver;

    .line 88
    iget-object p1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 89
    iget-object p1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mStream:I

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMinVolumeInt(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mMinVolume:I

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/settings/sound/SeekBarVolumizer;->volumeToProgress(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mMinProgress:I

    return-void
.end method

.method private fadeVolumeTo(FFI)V
    .locals 7

    sub-float v0, p2, p1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    move v3, p1

    :goto_0
    add-int/lit8 v4, p3, 0x1

    const-wide/16 v5, 0xa

    if-ge v2, v4, :cond_4

    if-lez v1, :cond_2

    cmpl-float v4, v3, p2

    if-ltz v4, :cond_1

    goto :goto_2

    :cond_1
    int-to-float v3, v2

    int-to-float v4, p3

    div-float/2addr v3, v4

    mul-float/2addr v3, v3

    goto :goto_1

    :cond_2
    cmpg-float v4, v3, p2

    if-gtz v4, :cond_3

    goto :goto_2

    :cond_3
    int-to-float v3, v2

    int-to-float v4, p3

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float/2addr v3, v3

    sub-float v3, v4, v3

    :goto_1
    mul-float/2addr v3, v0

    add-float/2addr v3, p1

    .line 489
    iget-object v4, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4, v3}, Landroid/media/Ringtone;->setVolume(F)V

    .line 491
    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    cmpl-float p1, v3, p2

    if-eqz p1, :cond_5

    .line 497
    iget-object p0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {p0, p2}, Landroid/media/Ringtone;->setVolume(F)V

    .line 499
    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_5
    return-void
.end method

.method private getDefaultUri()Landroid/net/Uri;
    .locals 2

    .line 296
    iget v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mStream:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 297
    sget-object p0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    return-object p0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 299
    sget-object p0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    return-object p0

    :cond_1
    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 301
    sget-object p0, Lcom/android/settings/sound/SeekBarVolumizer;->VOICE_XIAOMI_ASSISTANT_URI:Landroid/net/Uri;

    return-object p0

    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 303
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 304
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_4

    .line 305
    iget-object p0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "notification_sound"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 306
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    move-object v0, p0

    :cond_4
    return-object v0

    .line 310
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 311
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/android/settings/R$raw;->media_volume:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 310
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private handleRingerModeChange()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    iget v1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mStream:I

    invoke-virtual {v0}, Landroid/media/AudioManager;->getUiSoundsStreamType()I

    move-result v0

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 256
    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->isSilentEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 257
    invoke-direct {p0, v0}, Lcom/android/settings/sound/SeekBarVolumizer;->postStopSample(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onDisableLoop()V
    .locals 1

    .line 432
    iget-object p0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 433
    invoke-virtual {p0, v0}, Landroid/media/Ringtone;->setLooping(Z)V

    :cond_0
    return-void
.end method

.method private onSetVolume()V
    .locals 4

    .line 420
    iget v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mStream:I

    iget-object v1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getUiSoundsStreamType()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mStream:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mLastVolume:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x400

    goto :goto_1

    :cond_1
    :goto_0
    const v0, 0x100400

    .line 424
    :goto_1
    iget-object v1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mStream:I

    iget v3, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mLastVolume:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 426
    iget-object p0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mPreference:Lcom/android/settings/sound/VolumeSeekBarPreference;

    if-eqz p0, :cond_2

    .line 427
    invoke-virtual {p0}, Lcom/android/settings/sound/VolumeSeekBarPreference;->refreshIconState()V

    :cond_2
    return-void
.end method

.method private onStartSample(Z)V
    .locals 6

    const-string/jumbo v0, "onStartSample"

    const-string v1, "SeekBarVolumizer"

    .line 334
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "volume_sample_stream"

    iget v3, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mStream:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    const-string/jumbo v2, "startLocalPlayer"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    .line 340
    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "onStartSample isPlaying"

    .line 341
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object p0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {p0, v3}, Landroid/media/Ringtone;->setLooping(Z)V

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "onStartSample restart ringtone"

    .line 344
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object p1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {p1, v3}, Landroid/media/Ringtone;->setLooping(Z)V

    .line 347
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {p0, v5, v2, v5, p1}, Lcom/android/settings/utils/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 349
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_0
    return-void

    .line 355
    :cond_2
    iget v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mStream:I

    invoke-static {v0, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "onStartSample isStreamActive"

    .line 356
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    const-wide/16 v0, 0xc8

    .line 359
    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings/sound/SeekBarVolumizer;->postStartSampleDelay(JZ)V

    :cond_3
    return-void

    .line 364
    :cond_4
    iget-object p1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mStream:I

    const/4 v1, 0x2

    invoke-virtual {p1, v5, v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 365
    iput-boolean v3, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mRequestFocus:Z

    .line 366
    iget-object p1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/sound/SeekBarVolumizer;->getDefaultUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz p1, :cond_5

    .line 368
    iget v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mStream:I

    invoke-virtual {p1, v0}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 369
    iget-object p1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {p1, v3}, Landroid/media/Ringtone;->setLooping(Z)V

    .line 372
    :try_start_1
    iget-object p0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {p0, v5, v2, v5, p1}, Lcom/android/settings/utils/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 374
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method private onStopSample(Z)V
    .locals 3

    const-string v0, "SeekBarVolumizer"

    const-string/jumbo v1, "onStopSample"

    .line 396
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/16 v0, 0x64

    const/high16 v1, 0x3f800000    # 1.0f

    .line 399
    invoke-direct {p0, v1, p1, v0}, Lcom/android/settings/sound/SeekBarVolumizer;->fadeVolumeTo(FFI)V

    .line 401
    :cond_0
    iget-object p1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {p1}, Landroid/media/Ringtone;->stop()V

    const/4 p1, 0x0

    .line 402
    iput-object p1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 403
    iget-boolean v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mRequestFocus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 405
    iput-boolean v1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mRequestFocus:Z

    .line 407
    :cond_1
    iget-object p1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v0, "volume_sample_stream"

    iget v2, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mStream:I

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget p0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mStream:I

    if-ne p1, p0, :cond_2

    sput-boolean v1, Lcom/android/settings/sound/SeekBarVolumizer;->sIS_SAMPLE_PLAY:Z

    :cond_2
    return-void
.end method

.method private postSetVolume()V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 413
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 414
    iget-object p0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private postStartSample(Z)V
    .locals 2

    .line 316
    iget v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mStream:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 317
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/4 v0, 0x1

    .line 319
    sput-boolean v0, Lcom/android/settings/sound/SeekBarVolumizer;->sIS_SAMPLE_PLAY:Z

    const-wide/16 v0, 0x0

    .line 320
    invoke-direct {p0, v0, v1, p1}, Lcom/android/settings/sound/SeekBarVolumizer;->postStartSampleDelay(JZ)V

    return-void
.end method

.method private postStartSampleDelay(JZ)V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const/4 v1, 0x2

    .line 326
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 329
    iget-object p0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method private postStopSample(Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 380
    invoke-direct {p0, v0, v1, p1}, Lcom/android/settings/sound/SeekBarVolumizer;->postStopSampleDelay(JZ)V

    return-void
.end method

.method private postStopSampleDelay(JZ)V
    .locals 5

    .line 384
    iget-object v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 385
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1f4

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 386
    iget-object v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 387
    iget-object p0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method private refreshVolume()V
    .locals 3

    .line 506
    iget-object v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mStream:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    .line 507
    iget-object v1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mPreference:Lcom/android/settings/sound/VolumeSeekBarPreference;

    invoke-virtual {v1}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/sound/SeekBarVolumizer;->progressToVolume(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 508
    iget-object v1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/SeekBarVolumizer;->volumeToProgress(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 509
    iget-object v1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mPreference:Lcom/android/settings/sound/VolumeSeekBarPreference;

    iget-object v2, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/SeekBarVolumizer;->volumeToProgress(I)I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {v1, v2, p0, v0}, Lcom/android/settings/sound/VolumeSeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 445
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sound/SeekBarVolumizer;->handleRingerModeChange()V

    goto :goto_0

    .line 456
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/sound/SeekBarVolumizer;->onDisableLoop()V

    goto :goto_0

    .line 453
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/sound/SeekBarVolumizer;->onStopSample(Z)V

    goto :goto_0

    .line 450
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/sound/SeekBarVolumizer;->onStartSample(Z)V

    goto :goto_0

    .line 447
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/sound/SeekBarVolumizer;->onSetVolume()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_3

    .line 142
    sget-boolean v0, Lcom/android/settings/sound/SeekBarVolumizer;->sIS_SAMPLE_PLAY:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 143
    invoke-direct {p0, v0}, Lcom/android/settings/sound/SeekBarVolumizer;->postStartSample(Z)V

    .line 145
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings/sound/SeekBarVolumizer;->progressToVolume(I)I

    move-result v0

    .line 146
    iget v1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mLastVolume:I

    if-eq v1, v0, :cond_2

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0, v1}, Lcom/android/settings/sound/SeekBarVolumizer;->postStartSample(Z)V

    .line 150
    :cond_1
    iput v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mLastVolume:I

    .line 151
    invoke-direct {p0}, Lcom/android/settings/sound/SeekBarVolumizer;->postSetVolume()V

    .line 153
    :cond_2
    iget-object p0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mPreference:Lcom/android/settings/sound/VolumeSeekBarPreference;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/sound/VolumeSeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_3
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo p1, "volume_sample_stream"

    .line 289
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mStream:I

    .line 290
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget p2, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mStream:I

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    .line 291
    invoke-direct {p0, p1}, Lcom/android/settings/sound/SeekBarVolumizer;->postStopSample(Z)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 159
    invoke-direct {p0, p1}, Lcom/android/settings/sound/SeekBarVolumizer;->postStartSample(Z)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 164
    iget p1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mLastVolume:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 165
    invoke-direct {p0, p1}, Lcom/android/settings/sound/SeekBarVolumizer;->postStopSample(Z)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x7d0

    const/4 p1, 0x1

    .line 167
    invoke-direct {p0, v0, v1, p1}, Lcom/android/settings/sound/SeekBarVolumizer;->postStopSampleDelay(JZ)V

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 273
    invoke-direct {p0, v0}, Lcom/android/settings/sound/SeekBarVolumizer;->postStopSample(Z)V

    .line 274
    iget-object v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 275
    iget-object p0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mReceiver:Lcom/android/settings/sound/SeekBarVolumizer$Receiver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/SeekBarVolumizer$Receiver;->setListening(Z)V

    return-void
.end method

.method public progressToVolume(I)I
    .locals 8

    int-to-double v0, p1

    .line 172
    iget-wide v2, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mDegreePerVolume:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v6, v2, v4

    add-double/2addr v6, v0

    div-double/2addr v6, v2

    double-to-int p0, v6

    if-lez p1, :cond_0

    div-double v6, v2, v4

    cmpg-double v6, v0, v6

    if-gez v6, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/16 v6, 0x438

    if-ge p1, v6, :cond_1

    const-wide v6, 0x4090e00000000000L    # 1080.0

    div-double/2addr v2, v4

    sub-double/2addr v6, v2

    cmpl-double p1, v0, v6

    if-lez p1, :cond_1

    add-int/lit8 p0, p0, -0x1

    :cond_1
    :goto_0
    return p0
.end method

.method public resume()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SeekBarVolumizerHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 265
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mReceiver:Lcom/android/settings/sound/SeekBarVolumizer$Receiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/sound/SeekBarVolumizer$Receiver;->setListening(Z)V

    .line 268
    iget-object v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 269
    invoke-direct {p0}, Lcom/android/settings/sound/SeekBarVolumizer;->refreshVolume()V

    return-void
.end method

.method public setSeekBar(Landroid/widget/SeekBar;)V
    .locals 2

    .line 94
    iput-object p1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 95
    iget-object v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mStream:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mPreference:Lcom/android/settings/sound/VolumeSeekBarPreference;

    invoke-virtual {v1}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/sound/SeekBarVolumizer;->progressToVolume(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/SeekBarVolumizer;->volumeToProgress(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/android/settings/sound/SeekBarVolumizer$1;

    invoke-direct {v1, p0}, Lcom/android/settings/sound/SeekBarVolumizer$1;-><init>(Lcom/android/settings/sound/SeekBarVolumizer;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 117
    move-object v0, p1

    check-cast v0, Lmiuix/androidbasewidget/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mMinProgress:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lmiuix/androidbasewidget/widget/SeekBar;->setDraggableMinPercentProgress(F)V

    .line 118
    iget-object p1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->isSupportSettingsHaptic(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 119
    iget-object p1, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v0, Lcom/android/settings/sound/SeekBarVolumizer$2;

    invoke-direct {v0, p0}, Lcom/android/settings/sound/SeekBarVolumizer$2;-><init>(Lcom/android/settings/sound/SeekBarVolumizer;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/sound/SeekBarVolumizer;->pause()V

    .line 280
    iget-object v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public volumeToProgress(I)I
    .locals 2

    int-to-double v0, p1

    .line 182
    iget-wide p0, p0, Lcom/android/settings/sound/SeekBarVolumizer;->mDegreePerVolume:D

    mul-double/2addr v0, p0

    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p0

    double-to-int p0, v0

    return p0
.end method
