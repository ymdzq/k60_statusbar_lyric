.class public final Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAudioRecord:Landroid/media/AudioRecord;

.field public mAudioRecordMic:Landroid/media/AudioRecord;

.field public mCodec:Landroid/media/MediaCodec;

.field public final mConfig:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;

.field public final mMic:Z

.field public final mMuxer:Landroid/media/MediaMuxer;

.field public mPresentationTime:J

.field public mStarted:Z

.field public mThread:Ljava/lang/Thread;

.field public mTotalBytes:J

.field public mTrackId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/media/projection/MediaProjection;Z)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;

    .line 5
    invoke-direct {v0}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mConfig:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;

    .line 10
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mTrackId:I

    .line 13
    iput-boolean p3, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMic:Z

    .line 15
    new-instance v0, Landroid/media/MediaMuxer;

    .line 17
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, p1, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMuxer:Landroid/media/MediaMuxer;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    const-string v2, "creating audio file "

    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 38
    const-string v0, "ScreenAudioRecorder"

    .line 39
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const p1, 0xac44

    .line 44
    const/16 v2, 0x10

    .line 47
    const/4 v3, 0x2

    .line 49
    invoke-static {p1, v2, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    .line 50
    move-result v2

    .line 53
    mul-int/2addr v2, v3

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    const-string v5, "audio buffer size: "

    .line 57
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v4

    .line 68
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v0, Landroid/media/AudioFormat$Builder;

    .line 72
    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 74
    invoke-virtual {v0, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 77
    move-result-object v0

    .line 80
    invoke-virtual {v0, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 81
    move-result-object v0

    .line 84
    const/4 v4, 0x4

    .line 85
    invoke-virtual {v0, v4}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 86
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 90
    move-result-object v0

    .line 93
    new-instance v4, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    .line 94
    invoke-direct {v4, p2}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;-><init>(Landroid/media/projection/MediaProjection;)V

    .line 96
    const/4 p2, 0x1

    .line 99
    invoke-virtual {v4, p2}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    .line 100
    move-result-object v4

    .line 103
    invoke-virtual {v4, v1}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    .line 104
    move-result-object v1

    .line 107
    const/16 v4, 0xe

    .line 108
    invoke-virtual {v1, v4}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    .line 110
    move-result-object v1

    .line 113
    invoke-virtual {v1}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->build()Landroid/media/AudioPlaybackCaptureConfiguration;

    .line 114
    move-result-object v1

    .line 117
    new-instance v4, Landroid/media/AudioRecord$Builder;

    .line 118
    invoke-direct {v4}, Landroid/media/AudioRecord$Builder;-><init>()V

    .line 120
    invoke-virtual {v4, v0}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    .line 123
    move-result-object v0

    .line 126
    invoke-virtual {v0, v1}, Landroid/media/AudioRecord$Builder;->setAudioPlaybackCaptureConfig(Landroid/media/AudioPlaybackCaptureConfiguration;)Landroid/media/AudioRecord$Builder;

    .line 127
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    .line 131
    move-result-object v0

    .line 134
    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    .line 135
    if-eqz p3, :cond_0

    .line 137
    new-instance p3, Landroid/media/AudioRecord;

    .line 139
    const/4 v5, 0x7

    .line 141
    const v6, 0xac44

    .line 142
    const/16 v7, 0x10

    .line 145
    const/4 v8, 0x2

    .line 147
    move-object v4, p3

    .line 148
    move v9, v2

    .line 149
    invoke-direct/range {v4 .. v9}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 150
    iput-object p3, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecordMic:Landroid/media/AudioRecord;

    .line 153
    :cond_0
    const-string p3, "audio/mp4a-latm"

    .line 155
    invoke-static {p3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 157
    move-result-object v0

    .line 160
    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    .line 161
    invoke-static {p3, p1, p2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    .line 163
    move-result-object p1

    .line 166
    const-string p3, "aac-profile"

    .line 167
    invoke-virtual {p1, p3, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 169
    const p3, 0x2fda0

    .line 172
    const-string v0, "bitrate"

    .line 175
    invoke-virtual {p1, v0, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 177
    const-string p3, "pcm-encoding"

    .line 180
    invoke-virtual {p1, p3, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 182
    iget-object p3, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    .line 185
    const/4 v0, 0x0

    .line 187
    invoke-virtual {p3, p1, v0, v0, p2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 188
    new-instance p1, Ljava/lang/Thread;

    .line 191
    new-instance p2, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$$ExternalSyntheticLambda0;

    .line 193
    invoke-direct {p2, p0, v2}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;I)V

    .line 195
    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 198
    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mThread:Ljava/lang/Thread;

    .line 201
    return-void
    .line 203
.end method


# virtual methods
.method public final writeOutput()V
    .locals 5

    .line 1
    :goto_0
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    .line 2
    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    .line 7
    const-wide/16 v2, 0x1f4

    .line 9
    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 11
    move-result v1

    .line 14
    const/4 v2, -0x2

    .line 15
    iget-object v3, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMuxer:Landroid/media/MediaMuxer;

    .line 16
    if-ne v1, v2, :cond_0

    .line 18
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    .line 20
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    .line 22
    move-result-object v0

    .line 25
    invoke-virtual {v3, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    .line 26
    move-result v0

    .line 29
    iput v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mTrackId:I

    .line 30
    invoke-virtual {v3}, Landroid/media/MediaMuxer;->start()V

    .line 32
    goto :goto_0

    .line 35
    :cond_0
    const/4 v2, -0x1

    .line 36
    if-ne v1, v2, :cond_1

    .line 37
    return-void

    .line 39
    :cond_1
    iget v2, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mTrackId:I

    .line 40
    if-gez v2, :cond_2

    .line 42
    return-void

    .line 44
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    .line 45
    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 47
    move-result-object v2

    .line 50
    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 51
    and-int/lit8 v4, v4, 0x2

    .line 53
    if-eqz v4, :cond_3

    .line 55
    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 57
    if-nez v4, :cond_4

    .line 59
    :cond_3
    iget v4, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mTrackId:I

    .line 61
    invoke-virtual {v3, v4, v2, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 63
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    .line 66
    const/4 v2, 0x0

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 69
    goto :goto_0
    .line 72
.end method
