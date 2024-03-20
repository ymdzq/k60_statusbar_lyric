.class public Lcom/android/settings/emergency/service/AudioTrackManager;
.super Ljava/lang/Object;
.source "AudioTrackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/emergency/service/AudioTrackManager$OnPlayCompleteListener;
    }
.end annotation


# static fields
.field private static IS_DEVICE_ONCE:Z

.field private static IS_DEVICE_SAKURA:Z

.field private static mInstance:Lcom/android/settings/emergency/service/AudioTrackManager;


# instance fields
.field private audioTrack:Landroid/media/AudioTrack;

.field private audioTrackBuilder:Landroid/media/AudioTrack$Builder;

.field private bufferSize:I

.field private dis:Ljava/io/DataInputStream;

.field private isCancelled:Z

.field private isStart:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCompleteListener:Lcom/android/settings/emergency/service/AudioTrackManager$OnPlayCompleteListener;

.field recordRunnable:Ljava/lang/Runnable;

.field private recordThread:Ljava/lang/Thread;


# direct methods
.method static bridge synthetic -$$Nest$fgetaudioTrack(Lcom/android/settings/emergency/service/AudioTrackManager;)Landroid/media/AudioTrack;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->audioTrack:Landroid/media/AudioTrack;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetaudioTrackBuilder(Lcom/android/settings/emergency/service/AudioTrackManager;)Landroid/media/AudioTrack$Builder;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->audioTrackBuilder:Landroid/media/AudioTrack$Builder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbufferSize(Lcom/android/settings/emergency/service/AudioTrackManager;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->bufferSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdis(Lcom/android/settings/emergency/service/AudioTrackManager;)Ljava/io/DataInputStream;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->dis:Ljava/io/DataInputStream;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisCancelled(Lcom/android/settings/emergency/service/AudioTrackManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->isCancelled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/android/settings/emergency/service/AudioTrackManager;)Landroid/media/AudioManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCompleteListener(Lcom/android/settings/emergency/service/AudioTrackManager;)Lcom/android/settings/emergency/service/AudioTrackManager$OnPlayCompleteListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->mCompleteListener:Lcom/android/settings/emergency/service/AudioTrackManager$OnPlayCompleteListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputaudioTrack(Lcom/android/settings/emergency/service/AudioTrackManager;Landroid/media/AudioTrack;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->audioTrack:Landroid/media/AudioTrack;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisCancelled(Lcom/android/settings/emergency/service/AudioTrackManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->isCancelled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTelephonyDevice(Lcom/android/settings/emergency/service/AudioTrackManager;Landroid/media/AudioManager;)Landroid/media/AudioDeviceInfo;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/emergency/service/AudioTrackManager;->getTelephonyDevice(Landroid/media/AudioManager;)Landroid/media/AudioDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 39
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "onc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/emergency/service/AudioTrackManager;->IS_DEVICE_ONCE:Z

    const-string/jumbo v1, "sakura"

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/emergency/service/AudioTrackManager;->IS_DEVICE_SAKURA:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->isCancelled:Z

    .line 37
    iput-boolean v0, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->isStart:Z

    .line 119
    new-instance v0, Lcom/android/settings/emergency/service/AudioTrackManager$1;

    invoke-direct {v0, p0}, Lcom/android/settings/emergency/service/AudioTrackManager$1;-><init>(Lcom/android/settings/emergency/service/AudioTrackManager;)V

    iput-object v0, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->recordRunnable:Ljava/lang/Runnable;

    .line 43
    sget-boolean v0, Lcom/android/settings/emergency/service/AudioTrackManager;->IS_DEVICE_ONCE:Z

    if-nez v0, :cond_1

    sget-boolean v1, Lcom/android/settings/emergency/service/AudioTrackManager;->IS_DEVICE_SAKURA:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x3e80

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x1f40

    :goto_1
    if-nez v0, :cond_3

    .line 44
    sget-boolean v0, Lcom/android/settings/emergency/service/AudioTrackManager;->IS_DEVICE_SAKURA:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x4

    goto :goto_3

    :cond_3
    :goto_2
    const/16 v0, 0xc

    :goto_3
    const/4 v2, 0x2

    .line 47
    invoke-static {v1, v0, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v3

    iput v3, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->bufferSize:I

    .line 49
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/high16 v4, -0x80000000

    .line 50
    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 51
    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 52
    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 53
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    .line 55
    new-instance v5, Landroid/media/AudioFormat$Builder;

    invoke-direct {v5}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 56
    invoke-virtual {v5, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    .line 61
    new-instance v1, Landroid/media/AudioTrack$Builder;

    invoke-direct {v1}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 62
    invoke-virtual {v1, v3}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->bufferSize:I

    mul-int/2addr v3, v2

    .line 63
    invoke-virtual {v1, v3}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    .line 64
    invoke-virtual {v1, v4}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    .line 65
    invoke-virtual {v1, v0}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->audioTrackBuilder:Landroid/media/AudioTrack$Builder;

    .line 67
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private destroyThread()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 87
    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->isStart:Z

    .line 88
    iget-object v0, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->recordThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v2, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v0, :cond_0

    const-wide/16 v2, 0x1f4

    .line 90
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->recordThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 93
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 98
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->recordThread:Ljava/lang/Thread;

    return-void

    :goto_1
    iput-object v1, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->recordThread:Ljava/lang/Thread;

    .line 101
    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings/emergency/service/AudioTrackManager;
    .locals 2

    const-class v0, Lcom/android/settings/emergency/service/AudioTrackManager;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-object v1, Lcom/android/settings/emergency/service/AudioTrackManager;->mInstance:Lcom/android/settings/emergency/service/AudioTrackManager;

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Lcom/android/settings/emergency/service/AudioTrackManager;

    invoke-direct {v1, p0}, Lcom/android/settings/emergency/service/AudioTrackManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/emergency/service/AudioTrackManager;->mInstance:Lcom/android/settings/emergency/service/AudioTrackManager;

    .line 79
    :cond_0
    sget-object p0, Lcom/android/settings/emergency/service/AudioTrackManager;->mInstance:Lcom/android/settings/emergency/service/AudioTrackManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getTelephonyDevice(Landroid/media/AudioManager;)Landroid/media/AudioDeviceInfo;
    .locals 4

    const/4 p0, 0x2

    .line 164
    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    .line 165
    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p0, v0

    .line 166
    invoke-virtual {v1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v2

    const/16 v3, 0x12

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private setPath(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    new-instance p1, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->dis:Ljava/io/DataInputStream;

    return-void
.end method

.method private startThread()V
    .locals 2

    .line 108
    invoke-direct {p0}, Lcom/android/settings/emergency/service/AudioTrackManager;->destroyThread()V

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->isStart:Z

    .line 110
    iget-object v0, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->recordThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->recordRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->recordThread:Ljava/lang/Thread;

    .line 112
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelPlay()V
    .locals 2

    const-string v0, "AudioTrackManager"

    const-string v1, "SOS AUDIO CANCELED..."

    .line 224
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 225
    iput-boolean v0, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->isCancelled:Z

    return-void
.end method

.method public setOnCompleteListener(Lcom/android/settings/emergency/service/AudioTrackManager$OnPlayCompleteListener;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->mCompleteListener:Lcom/android/settings/emergency/service/AudioTrackManager$OnPlayCompleteListener;

    return-void
.end method

.method public startPlay(Ljava/lang/String;)V
    .locals 0

    .line 191
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/emergency/service/AudioTrackManager;->setPath(Ljava/lang/String;)V

    .line 192
    invoke-direct {p0}, Lcom/android/settings/emergency/service/AudioTrackManager;->startThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 194
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopPlay()V
    .locals 3

    const-string v0, "AudioTrackManager"

    .line 203
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/emergency/service/AudioTrackManager;->destroyThread()V

    .line 204
    iget-object v1, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_1

    .line 205
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 206
    iget-object v1, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    :cond_0
    const-string v1, "RELEASE SOS AUDIO TRACK ..."

    .line 208
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v1, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    const/4 v1, 0x0

    .line 210
    iput-object v1, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->audioTrack:Landroid/media/AudioTrack;

    .line 212
    :cond_1
    iget-object p0, p0, Lcom/android/settings/emergency/service/AudioTrackManager;->dis:Ljava/io/DataInputStream;

    if-eqz p0, :cond_2

    .line 213
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "exception when stop sos audio :"

    .line 216
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method
