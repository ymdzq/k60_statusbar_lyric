.class public Lsrc/com/android/settings/emergency/util/AudioRecordManager;
.super Ljava/lang/Object;
.source "AudioRecordManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsrc/com/android/settings/emergency/util/AudioRecordManager$ConvertToMp3AndSendRunnable;
    }
.end annotation


# static fields
.field private static final mObject:Ljava/lang/Object;


# instance fields
.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mFolderName:Ljava/lang/String;

.field private mIsRecording:Z

.field private mRecordBufsize:I

.field private mVoiceListener:Lcom/android/settings/emergency/service/LocationService$ISosVoiceListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAudioRecord(Lsrc/com/android/settings/emergency/util/AudioRecordManager;)Landroid/media/AudioRecord;
    .locals 0

    .line 0
    iget-object p0, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->mAudioRecord:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFolderName(Lsrc/com/android/settings/emergency/util/AudioRecordManager;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->mFolderName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRecording(Lsrc/com/android/settings/emergency/util/AudioRecordManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->mIsRecording:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecordBufsize(Lsrc/com/android/settings/emergency/util/AudioRecordManager;)I
    .locals 0

    .line 0
    iget p0, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->mRecordBufsize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVoiceListener(Lsrc/com/android/settings/emergency/util/AudioRecordManager;)Lcom/android/settings/emergency/service/LocationService$ISosVoiceListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->mVoiceListener:Lcom/android/settings/emergency/service/LocationService$ISosVoiceListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetmObject()Ljava/lang/Object;
    .locals 1

    .line 0
    sget-object v0, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->mObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/emergency/service/LocationService$ISosVoiceListener;Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->mAudioRecord:Landroid/media/AudioRecord;

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->mRecordBufsize:I

    .line 36
    iput-boolean v0, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->mIsRecording:Z

    .line 41
    iput-object p2, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->mFolderName:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->mVoiceListener:Lcom/android/settings/emergency/service/LocationService$ISosVoiceListener;

    .line 43
    invoke-direct {p0}, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->createAudioRecord()V

    return-void
.end method

.method private createAudioRecord()V
    .locals 7

    const/16 v0, 0x10

    const/4 v1, 0x2

    const/16 v2, 0x1f40

    .line 49
    invoke-static {v2, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->mRecordBufsize:I

    .line 52
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v2, 0x1

    const/16 v3, 0x1f40

    const/16 v4, 0x10

    const/4 v5, 0x2

    iget v6, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->mRecordBufsize:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->mAudioRecord:Landroid/media/AudioRecord;

    return-void
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 1

    .line 201
    new-instance v0, Lsrc/com/android/settings/emergency/util/AudioRecordManager$2;

    invoke-direct {v0, p0}, Lsrc/com/android/settings/emergency/util/AudioRecordManager$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lsrc/com/android/settings/emergency/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public convertAudioFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 114
    new-instance v0, Lsrc/com/android/settings/emergency/util/AudioRecordManager$ConvertToMp3AndSendRunnable;

    invoke-direct {v0, p0, p1, p2}, Lsrc/com/android/settings/emergency/util/AudioRecordManager$ConvertToMp3AndSendRunnable;-><init>(Lsrc/com/android/settings/emergency/util/AudioRecordManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {v0}, Lsrc/com/android/settings/emergency/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startRecord()V
    .locals 2

    .line 60
    iget-boolean v0, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->mIsRecording:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->mIsRecording:Z

    .line 64
    iget-object v0, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    const-string v0, "SOS-AudioRecordManager"

    const-string v1, "startRecord"

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v0, Lsrc/com/android/settings/emergency/util/AudioRecordManager$1;

    invoke-direct {v0, p0}, Lsrc/com/android/settings/emergency/util/AudioRecordManager$1;-><init>(Lsrc/com/android/settings/emergency/util/AudioRecordManager;)V

    invoke-static {v0}, Lsrc/com/android/settings/emergency/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopRecordAndSend()V
    .locals 4

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->mIsRecording:Z

    .line 104
    iget-object v0, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    const-string v0, "SOS-AudioRecordManager"

    const-string v1, "stop record"

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->mFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sosvoice.pcm"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->mFolderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sosvoice.mp3"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->convertAudioFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->mAudioRecord:Landroid/media/AudioRecord;

    :cond_0
    return-void
.end method
