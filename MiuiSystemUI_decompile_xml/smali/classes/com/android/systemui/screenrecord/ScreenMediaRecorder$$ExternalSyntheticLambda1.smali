.class public final synthetic Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Landroid/media/projection/MediaProjection;

    .line 10
    invoke-virtual {p0}, Landroid/media/projection/MediaProjection;->stop()V

    .line 12
    return-void

    .line 15
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 16
    check-cast p0, Landroid/hardware/display/VirtualDisplay;

    .line 18
    invoke-virtual {p0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 20
    return-void

    .line 23
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 24
    check-cast p0, Landroid/view/Surface;

    .line 26
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    .line 28
    return-void

    .line 31
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 32
    check-cast p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    .line 34
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 36
    sget-object v1, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 38
    if-eq v0, v1, :cond_0

    .line 40
    sget-object v1, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 42
    if-ne v0, v1, :cond_3

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudio:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

    .line 46
    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    .line 48
    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 50
    iget-boolean v1, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMic:Z

    .line 53
    if-eqz v1, :cond_1

    .line 55
    iget-object v2, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecordMic:Landroid/media/AudioRecord;

    .line 57
    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    .line 59
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    .line 62
    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 64
    if-eqz v1, :cond_2

    .line 67
    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecordMic:Landroid/media/AudioRecord;

    .line 69
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 71
    :cond_2
    :try_start_0
    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mThread:Ljava/lang/Thread;

    .line 74
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_1

    .line 79
    :catch_0
    move-exception v1

    .line 80
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 81
    :goto_1
    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    .line 84
    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 86
    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    .line 89
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 91
    iget-object v1, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMuxer:Landroid/media/MediaMuxer;

    .line 94
    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V

    .line 96
    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    .line 99
    const/4 v1, 0x0

    .line 102
    iput-object v1, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mThread:Ljava/lang/Thread;

    .line 103
    iput-object v1, p0, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->mAudio:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;

    .line 105
    :cond_3
    return-void

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 108
.end method
