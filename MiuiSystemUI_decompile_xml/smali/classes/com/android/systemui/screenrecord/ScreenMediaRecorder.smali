.class public final Lcom/android/systemui/screenrecord/ScreenMediaRecorder;
.super Landroid/media/projection/MediaProjection$Callback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAudio:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

.field public final mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

.field public final mCaptureRegion:Lcom/android/systemui/media/MediaProjectionCaptureTarget;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mInputSurface:Landroid/view/Surface;

.field public final mListener:Lcom/android/systemui/screenrecord/ScreenMediaRecorder$ScreenMediaRecorderListener;

.field public mMediaProjection:Landroid/media/projection/MediaProjection;

.field public mMediaRecorder:Landroid/media/MediaRecorder;

.field public mTempAudioFile:Ljava/io/File;

.field public mTempVideoFile:Ljava/io/File;

.field public final mUser:I

.field public mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILcom/android/systemui/screenrecord/ScreenRecordingAudioSource;Lcom/android/systemui/media/MediaProjectionCaptureTarget;Lcom/android/systemui/screenrecord/ScreenMediaRecorder$ScreenMediaRecorderListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/projection/MediaProjection$Callback;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mHandler:Landroid/os/Handler;

    .line 7
    iput p3, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mUser:I

    .line 9
    iput-object p5, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mCaptureRegion:Lcom/android/systemui/media/MediaProjectionCaptureTarget;

    .line 11
    iput-object p6, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mListener:Lcom/android/systemui/screenrecord/ScreenMediaRecorder$ScreenMediaRecorderListener;

    .line 13
    iput-object p4, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final end()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$Closer;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$Closer;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v2, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda0;

    .line 12
    const/4 v3, 0x0

    .line 14
    invoke-direct {v2, v1, v3}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaRecorder;I)V

    .line 15
    invoke-virtual {v0, v2}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$Closer;->register(Ljava/io/Closeable;)V

    .line 18
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 21
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v2, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda0;

    .line 26
    const/4 v4, 0x1

    .line 28
    invoke-direct {v2, v1, v4}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaRecorder;I)V

    .line 29
    invoke-virtual {v0, v2}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$Closer;->register(Ljava/io/Closeable;)V

    .line 32
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mInputSurface:Landroid/view/Surface;

    .line 35
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v2, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda1;

    .line 40
    invoke-direct {v2, v3, v1}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 42
    invoke-virtual {v0, v2}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$Closer;->register(Ljava/io/Closeable;)V

    .line 45
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 48
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v2, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda1;

    .line 53
    invoke-direct {v2, v4, v1}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 55
    invoke-virtual {v0, v2}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$Closer;->register(Ljava/io/Closeable;)V

    .line 58
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 61
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v2, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda1;

    .line 66
    const/4 v3, 0x2

    .line 68
    invoke-direct {v2, v3, v1}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 69
    invoke-virtual {v0, v2}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$Closer;->register(Ljava/io/Closeable;)V

    .line 72
    new-instance v1, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda1;

    .line 75
    const/4 v2, 0x3

    .line 77
    invoke-direct {v1, v2, p0}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 78
    invoke-virtual {v0, v1}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$Closer;->register(Ljava/io/Closeable;)V

    .line 81
    invoke-virtual {v0}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$Closer;->close()V

    .line 84
    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 88
    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 90
    const-string p0, "ScreenMediaRecorder"

    .line 92
    const-string v0, "end recording"

    .line 94
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
    .line 99
.end method

.method public final onStop()V
    .locals 2

    .line 1
    const-string v0, "ScreenMediaRecorder"

    .line 2
    const-string v1, "The system notified about stopping the projection"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mListener:Lcom/android/systemui/screenrecord/ScreenMediaRecorder$ScreenMediaRecorderListener;

    .line 9
    check-cast p0, Lcom/android/systemui/screenrecord/RecordingService;

    .line 11
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    .line 13
    monitor-enter v0

    .line 15
    :try_start_0
    iget-boolean v1, v0, Lcom/android/systemui/screenrecord/RecordingController;->mIsRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit v0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    const-string v0, "RecordingService"

    .line 21
    const-string v1, "Stopping recording because the system requested the stop"

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const/4 v0, -0x1

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/systemui/screenrecord/RecordingService;->stopService(I)V

    .line 29
    :cond_0
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0

    .line 34
    throw p0
    .line 35
.end method

.method public final save()Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;
    .locals 9

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    const-string v1, "\'screen-\'yyyyMMdd-HHmmss\'.mp4\'"

    .line 4
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/util/Date;

    .line 9
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 11
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    new-instance v1, Landroid/content/ContentValues;

    .line 18
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 20
    const-string v2, "_display_name"

    .line 23
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v0, "mime_type"

    .line 28
    const-string/jumbo v2, "video/mp4"

    .line 30
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    move-result-wide v2

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    move-result-object v0

    .line 43
    const-string v2, "date_added"

    .line 44
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    move-result-wide v2

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    move-result-object v0

    .line 56
    const-string v2, "datetaken"

    .line 57
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 59
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    move-result-object v0

    .line 67
    const-string v2, "external_primary"

    .line 68
    invoke-static {v2}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 70
    move-result-object v2

    .line 73
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 74
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 81
    const-string v3, "ScreenMediaRecorder"

    .line 82
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 87
    sget-object v4, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 89
    if-eq v2, v4, :cond_0

    .line 91
    sget-object v4, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 93
    if-ne v2, v4, :cond_1

    .line 95
    :cond_0
    :try_start_0
    const-string v2, "muxing recording"

    .line 97
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string/jumbo v2, "temp"

    .line 102
    const-string v4, ".mp4"

    .line 105
    iget-object v5, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 109
    move-result-object v5

    .line 112
    invoke-static {v2, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 113
    move-result-object v2

    .line 116
    new-instance v4, Lcom/android/systemui/screenrecord/ScreenRecordingMuxer;

    .line 117
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 119
    move-result-object v5

    .line 122
    const/4 v6, 0x2

    .line 123
    new-array v6, v6, [Ljava/lang/String;

    .line 124
    iget-object v7, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    .line 126
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 128
    move-result-object v7

    .line 131
    const/4 v8, 0x0

    .line 132
    aput-object v7, v6, v8

    .line 133
    iget-object v7, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempAudioFile:Ljava/io/File;

    .line 135
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 137
    move-result-object v7

    .line 140
    const/4 v8, 0x1

    .line 141
    aput-object v7, v6, v8

    .line 142
    invoke-direct {v4, v5, v6}, Lcom/android/systemui/screenrecord/ScreenRecordingMuxer;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 144
    invoke-virtual {v4}, Lcom/android/systemui/screenrecord/ScreenRecordingMuxer;->mux()V

    .line 147
    iget-object v4, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    .line 150
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 152
    iput-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_0

    .line 157
    :catch_0
    move-exception v2

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    .line 159
    const-string v5, "muxing recording "

    .line 161
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 166
    move-result-object v5

    .line 169
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object v4

    .line 176
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 180
    :cond_1
    :goto_0
    const-string/jumbo v2, "w"

    .line 183
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    .line 186
    move-result-object v0

    .line 189
    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    .line 190
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 192
    move-result-object v2

    .line 195
    invoke-static {v2, v0}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/io/OutputStream;)J

    .line 196
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 199
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempAudioFile:Ljava/io/File;

    .line 202
    if-eqz v0, :cond_2

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    .line 209
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 211
    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 215
    move-result-object v0

    .line 218
    new-instance v2, Landroid/util/Size;

    .line 219
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 221
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 223
    invoke-direct {v2, v3, v0}, Landroid/util/Size;-><init>(II)V

    .line 225
    new-instance v0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;

    .line 228
    iget-object v3, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    .line 230
    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;-><init>(Landroid/net/Uri;Ljava/io/File;Landroid/util/Size;)V

    .line 232
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    .line 235
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 237
    return-object v0
    .line 240
.end method

.method public final start()V
    .locals 15

    .line 1
    const-string v0, "ScreenMediaRecorder"

    .line 2
    const-string/jumbo v1, "start recording"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    const-string v0, "media_projection"

    .line 10
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 12
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    .line 16
    move-result-object v0

    .line 19
    iget v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mUser:I

    .line 20
    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    .line 22
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-interface {v0, v1, v2, v3, v3}, Landroid/media/projection/IMediaProjectionManager;->createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;

    .line 29
    move-result-object v0

    .line 32
    invoke-interface {v0}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    .line 33
    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    .line 37
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mCaptureRegion:Lcom/android/systemui/media/MediaProjectionCaptureTarget;

    .line 41
    if-eqz v1, :cond_0

    .line 43
    iget-object v1, v1, Lcom/android/systemui/media/MediaProjectionCaptureTarget;->launchCookie:Landroid/os/IBinder;

    .line 45
    invoke-interface {v0, v1}, Landroid/media/projection/IMediaProjection;->setLaunchCookie(Landroid/os/IBinder;)V

    .line 47
    :cond_0
    new-instance v1, Landroid/media/projection/MediaProjection;

    .line 50
    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    .line 52
    invoke-direct {v1, v2, v0}, Landroid/media/projection/MediaProjection;-><init>(Landroid/content/Context;Landroid/media/projection/IMediaProjection;)V

    .line 54
    iput-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mHandler:Landroid/os/Handler;

    .line 59
    invoke-virtual {v1, p0, v0}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    .line 61
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 66
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 70
    const-string v1, ".mp4"

    .line 73
    const-string/jumbo v2, "temp"

    .line 75
    invoke-static {v2, v1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 78
    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    .line 82
    new-instance v0, Landroid/media/MediaRecorder;

    .line 84
    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    .line 86
    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 89
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 91
    sget-object v4, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 93
    if-ne v1, v4, :cond_1

    .line 95
    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 100
    const/4 v1, 0x2

    .line 102
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 106
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 108
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 111
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    .line 116
    const-string/jumbo v5, "window"

    .line 118
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    move-result-object v1

    .line 124
    check-cast v1, Landroid/view/WindowManager;

    .line 125
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 127
    move-result-object v5

    .line 130
    invoke-virtual {v5, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 131
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 134
    move-result-object v1

    .line 137
    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    .line 138
    move-result v1

    .line 141
    float-to-int v1, v1

    .line 142
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 143
    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 145
    const-string/jumbo v7, "video/avc"

    .line 147
    invoke-static {v7}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 150
    move-result-object v8

    .line 153
    invoke-virtual {v8}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    .line 154
    move-result-object v9

    .line 157
    invoke-virtual {v9, v7}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 158
    move-result-object v7

    .line 161
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 162
    move-result-object v7

    .line 165
    invoke-virtual {v8}, Landroid/media/MediaCodec;->release()V

    .line 166
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    .line 169
    move-result-object v8

    .line 172
    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 173
    move-result-object v8

    .line 176
    check-cast v8, Ljava/lang/Integer;

    .line 177
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 179
    move-result v8

    .line 182
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    .line 183
    move-result-object v9

    .line 186
    invoke-virtual {v9}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 187
    move-result-object v9

    .line 190
    check-cast v9, Ljava/lang/Integer;

    .line 191
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 193
    move-result v9

    .line 196
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    .line 197
    move-result v10

    .line 200
    rem-int v10, v5, v10

    .line 201
    if-eqz v10, :cond_2

    .line 203
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    .line 205
    move-result v10

    .line 208
    rem-int v10, v5, v10

    .line 209
    sub-int v10, v5, v10

    .line 211
    goto :goto_0

    .line 213
    :cond_2
    move v10, v5

    .line 214
    :goto_0
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    .line 215
    move-result v11

    .line 218
    rem-int v11, v6, v11

    .line 219
    if-eqz v11, :cond_3

    .line 221
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    .line 223
    move-result v11

    .line 226
    rem-int v11, v6, v11

    .line 227
    sub-int v11, v6, v11

    .line 229
    goto :goto_1

    .line 231
    :cond_3
    move v11, v6

    .line 232
    :goto_1
    const-string v12, "ScreenMediaRecorder"

    .line 233
    if-lt v8, v10, :cond_5

    .line 235
    if-lt v9, v11, :cond_5

    .line 237
    invoke-virtual {v7, v10, v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    .line 239
    move-result v13

    .line 242
    if-eqz v13, :cond_5

    .line 243
    invoke-virtual {v7, v10, v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedFrameRatesFor(II)Landroid/util/Range;

    .line 245
    move-result-object v5

    .line 248
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 249
    move-result-object v5

    .line 252
    check-cast v5, Ljava/lang/Double;

    .line 253
    invoke-virtual {v5}, Ljava/lang/Double;->intValue()I

    .line 255
    move-result v5

    .line 258
    if-ge v5, v1, :cond_4

    .line 259
    move v1, v5

    .line 261
    :cond_4
    const-string v5, "Screen size supported at rate "

    .line 262
    invoke-static {v5, v1, v12}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 264
    filled-new-array {v10, v11, v1}, [I

    .line 267
    move-result-object v1

    .line 270
    goto :goto_2

    .line 271
    :cond_5
    int-to-double v10, v8

    .line 272
    int-to-double v13, v5

    .line 273
    div-double/2addr v10, v13

    .line 274
    int-to-double v8, v9

    .line 275
    int-to-double v5, v6

    .line 276
    div-double/2addr v8, v5

    .line 277
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(DD)D

    .line 278
    move-result-wide v8

    .line 281
    mul-double/2addr v13, v8

    .line 282
    double-to-int v3, v13

    .line 283
    mul-double/2addr v5, v8

    .line 284
    double-to-int v5, v5

    .line 285
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    .line 286
    move-result v6

    .line 289
    rem-int v6, v3, v6

    .line 290
    if-eqz v6, :cond_6

    .line 292
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    .line 294
    move-result v6

    .line 297
    rem-int v6, v3, v6

    .line 298
    sub-int/2addr v3, v6

    .line 300
    :cond_6
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    .line 301
    move-result v6

    .line 304
    rem-int v6, v5, v6

    .line 305
    if-eqz v6, :cond_7

    .line 307
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    .line 309
    move-result v6

    .line 312
    rem-int v6, v5, v6

    .line 313
    sub-int/2addr v5, v6

    .line 315
    :cond_7
    invoke-virtual {v7, v3, v5}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedFrameRatesFor(II)Landroid/util/Range;

    .line 316
    move-result-object v6

    .line 319
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 320
    move-result-object v6

    .line 323
    check-cast v6, Ljava/lang/Double;

    .line 324
    invoke-virtual {v6}, Ljava/lang/Double;->intValue()I

    .line 326
    move-result v6

    .line 329
    if-ge v6, v1, :cond_8

    .line 330
    move v1, v6

    .line 332
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    .line 333
    const-string v7, "Resized by "

    .line 335
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 340
    const-string v7, ": "

    .line 343
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 348
    const-string v7, ", "

    .line 351
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    move-result-object v6

    .line 368
    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    filled-new-array {v3, v5, v1}, [I

    .line 372
    move-result-object v1

    .line 375
    const/4 v3, 0x0

    .line 376
    :goto_2
    aget v7, v1, v3

    .line 377
    const/4 v14, 0x1

    .line 379
    aget v8, v1, v14

    .line 380
    const/4 v5, 0x2

    .line 382
    aget v1, v1, v5

    .line 383
    mul-int v6, v7, v8

    .line 385
    mul-int/2addr v6, v1

    .line 387
    div-int/lit8 v6, v6, 0x1e

    .line 388
    mul-int/lit8 v6, v6, 0x6

    .line 390
    iget-object v9, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 392
    invoke-virtual {v9, v5}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 394
    iget-object v5, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 397
    const/16 v9, 0x8

    .line 399
    const/16 v10, 0x100

    .line 401
    invoke-virtual {v5, v9, v10}, Landroid/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    .line 403
    iget-object v5, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 406
    invoke-virtual {v5, v7, v8}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 408
    iget-object v5, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 411
    invoke-virtual {v5, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 413
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 416
    invoke-virtual {v1, v6}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 418
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 421
    const v5, 0x36ee80

    .line 423
    invoke-virtual {v1, v5}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 426
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 429
    const-wide v5, 0x12a05f200L

    .line 431
    invoke-virtual {v1, v5, v6}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 436
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 439
    if-ne v1, v4, :cond_9

    .line 441
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 443
    const/4 v4, 0x4

    .line 445
    invoke-virtual {v1, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 446
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 449
    invoke-virtual {v1, v14}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 451
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 454
    const v4, 0x2fda0

    .line 456
    invoke-virtual {v1, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 459
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 462
    const v4, 0xac44

    .line 464
    invoke-virtual {v1, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 467
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 470
    iget-object v4, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempVideoFile:Ljava/io/File;

    .line 472
    invoke-virtual {v1, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/File;)V

    .line 474
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 477
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    .line 479
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 482
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    .line 484
    move-result-object v11

    .line 487
    iput-object v11, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mInputSurface:Landroid/view/Surface;

    .line 488
    iget-object v5, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 490
    const-string v6, "Recording Display"

    .line 492
    iget v9, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 494
    const/16 v10, 0x10

    .line 496
    new-instance v12, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$1;

    .line 498
    invoke-direct {v12, p0}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$1;-><init>(Lcom/android/systemui/screenrecord/ScreenMediaRecorder;)V

    .line 500
    iget-object v13, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mHandler:Landroid/os/Handler;

    .line 503
    invoke-virtual/range {v5 .. v13}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    .line 505
    move-result-object v0

    .line 508
    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 509
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 511
    new-instance v1, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda2;

    .line 513
    invoke-direct {v1, p0}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/screenrecord/ScreenMediaRecorder;)V

    .line 515
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 518
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 521
    sget-object v1, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 523
    sget-object v4, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 525
    if-eq v0, v1, :cond_a

    .line 527
    if-ne v0, v4, :cond_c

    .line 529
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mContext:Landroid/content/Context;

    .line 531
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 533
    move-result-object v0

    .line 536
    const-string v5, ".aac"

    .line 537
    invoke-static {v2, v5, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 539
    move-result-object v0

    .line 542
    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mTempAudioFile:Ljava/io/File;

    .line 543
    new-instance v2, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

    .line 545
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 547
    move-result-object v0

    .line 550
    iget-object v5, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 551
    iget-object v6, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 553
    if-ne v6, v4, :cond_b

    .line 555
    move v3, v14

    .line 557
    :cond_b
    invoke-direct {v2, v0, v5, v3}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;-><init>(Ljava/lang/String;Landroid/media/projection/MediaProjection;Z)V

    .line 558
    iput-object v2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudio:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

    .line 561
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 563
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 565
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 568
    if-eq v0, v1, :cond_d

    .line 570
    if-ne v0, v4, :cond_11

    .line 572
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudio:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

    .line 574
    const-string v0, "channel count "

    .line 576
    monitor-enter p0

    .line 578
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mStarted:Z

    .line 579
    if-eqz v1, :cond_f

    .line 581
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mThread:Ljava/lang/Thread;

    .line 583
    if-nez v0, :cond_e

    .line 585
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 587
    const-string v1, "Recording stopped and can\'t restart (single use)"

    .line 589
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 591
    throw v0

    .line 594
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 595
    const-string v1, "Recording already started"

    .line 597
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 599
    throw v0

    .line 602
    :cond_f
    iput-boolean v14, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mStarted:Z

    .line 603
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    .line 605
    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 607
    iget-boolean v1, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMic:Z

    .line 610
    if-eqz v1, :cond_10

    .line 612
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecordMic:Landroid/media/AudioRecord;

    .line 614
    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 616
    :cond_10
    const-string v1, "ScreenAudioRecorder"

    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    .line 621
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    .line 626
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getChannelCount()I

    .line 628
    move-result v0

    .line 631
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 635
    move-result-object v0

    .line 638
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    .line 642
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 644
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    .line 647
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    .line 649
    move-result v0

    .line 652
    const/4 v1, 0x3

    .line 653
    if-ne v0, v1, :cond_12

    .line 654
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mThread:Ljava/lang/Thread;

    .line 656
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    monitor-exit p0

    .line 661
    :cond_11
    return-void

    .line 662
    :cond_12
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 663
    const-string v1, "Audio recording failed to start"

    .line 665
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 667
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 670
    :catchall_0
    move-exception v0

    .line 671
    monitor-exit p0

    .line 672
    throw v0
    .line 673
.end method
