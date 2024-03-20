.class public Lsrc/com/android/settings/emergency/util/AudioRecordManager$ConvertToMp3AndSendRunnable;
.super Ljava/lang/Object;
.source "AudioRecordManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsrc/com/android/settings/emergency/util/AudioRecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConvertToMp3AndSendRunnable"
.end annotation


# instance fields
.field private audioRecordManagerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lsrc/com/android/settings/emergency/util/AudioRecordManager;",
            ">;"
        }
    .end annotation
.end field

.field private src:Ljava/lang/String;

.field private target:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lsrc/com/android/settings/emergency/util/AudioRecordManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager$ConvertToMp3AndSendRunnable;->audioRecordManagerWeakReference:Ljava/lang/ref/WeakReference;

    .line 125
    iput-object p2, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager$ConvertToMp3AndSendRunnable;->src:Ljava/lang/String;

    .line 126
    iput-object p3, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager$ConvertToMp3AndSendRunnable;->target:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 131
    invoke-static {}, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->-$$Nest$sfgetmObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/16 v1, 0x1000

    :try_start_0
    new-array v1, v1, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v2, 0x0

    .line 139
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager$ConvertToMp3AndSendRunnable;->src:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 140
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager$ConvertToMp3AndSendRunnable;->target:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    :try_start_3
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, -0x1

    if-eq v2, v7, :cond_0

    add-int/2addr v6, v2

    .line 145
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 149
    new-instance v2, Lsrc/com/android/settings/emergency/util/WaveHeader;

    invoke-direct {v2}, Lsrc/com/android/settings/emergency/util/WaveHeader;-><init>()V

    add-int/lit8 v8, v6, 0x24

    .line 151
    iput v8, v2, Lsrc/com/android/settings/emergency/util/WaveHeader;->fileLength:I

    const/16 v8, 0x10

    .line 152
    iput v8, v2, Lsrc/com/android/settings/emergency/util/WaveHeader;->FmtHdrLeth:I

    .line 153
    iput-short v8, v2, Lsrc/com/android/settings/emergency/util/WaveHeader;->BitsPerSample:S

    const/4 v9, 0x1

    .line 154
    iput-short v9, v2, Lsrc/com/android/settings/emergency/util/WaveHeader;->Channels:S

    .line 155
    iput-short v9, v2, Lsrc/com/android/settings/emergency/util/WaveHeader;->FormatTag:S

    const/16 v10, 0x1f40

    .line 156
    iput v10, v2, Lsrc/com/android/settings/emergency/util/WaveHeader;->SamplesPerSec:I

    mul-int/2addr v9, v8

    .line 157
    div-int/lit8 v9, v9, 0x8

    int-to-short v8, v9

    iput-short v8, v2, Lsrc/com/android/settings/emergency/util/WaveHeader;->BlockAlign:S

    mul-int/2addr v8, v10

    .line 158
    iput v8, v2, Lsrc/com/android/settings/emergency/util/WaveHeader;->AvgBytesPerSec:I

    .line 159
    iput v6, v2, Lsrc/com/android/settings/emergency/util/WaveHeader;->DataHdrLeth:I

    .line 160
    invoke-virtual {v2}, Lsrc/com/android/settings/emergency/util/WaveHeader;->getHeader()[B

    move-result-object v2

    .line 163
    array-length v6, v2

    invoke-virtual {v4, v2, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 165
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v6, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager$ConvertToMp3AndSendRunnable;->src:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    :goto_1
    if-eq v3, v7, :cond_1

    .line 168
    invoke-virtual {v4, v1, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 169
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    goto :goto_1

    :cond_1
    const-string v1, "SOS-AudioRecordManager"

    const-string v3, "convert to mp3 is ok "

    .line 171
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object p0, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager$ConvertToMp3AndSendRunnable;->audioRecordManagerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager;

    if-eqz p0, :cond_2

    const-string v1, "SOS-AudioRecordManager"

    const-string v3, "executeSendVoice "

    .line 174
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {p0}, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->-$$Nest$fgetmVoiceListener(Lsrc/com/android/settings/emergency/util/AudioRecordManager;)Lcom/android/settings/emergency/service/LocationService$ISosVoiceListener;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->-$$Nest$fgetmFolderName(Lsrc/com/android/settings/emergency/util/AudioRecordManager;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "sosvoice.mp3"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/android/settings/emergency/service/LocationService$ISosVoiceListener;->executeSendVoice(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 183
    :cond_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_6
    const-string v1, "SOS-AudioRecordManager"

    .line 186
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 190
    :goto_2
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_8

    :catch_1
    move-exception p0

    :try_start_8
    const-string v1, "SOS-AudioRecordManager"

    .line 193
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_8

    :catch_2
    move-exception p0

    goto :goto_6

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception p0

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object v4, v2

    :goto_4
    move-object v2, v3

    goto :goto_9

    :catch_4
    move-exception p0

    move-object v4, v2

    :goto_5
    move-object v2, v3

    goto :goto_6

    :catchall_2
    move-exception p0

    move-object v4, v2

    goto :goto_9

    :catch_5
    move-exception p0

    move-object v4, v2

    :goto_6
    :try_start_9
    const-string v1, "SOS-AudioRecordManager"

    const-string v3, "convert to mp3 is error "

    .line 178
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SOS-AudioRecordManager"

    .line 179
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v2, :cond_3

    .line 183
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_7

    :catch_6
    move-exception p0

    :try_start_b
    const-string v1, "SOS-AudioRecordManager"

    .line 186
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :cond_3
    :goto_7
    if-eqz v4, :cond_4

    .line 190
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_8

    :catch_7
    move-exception p0

    :try_start_d
    const-string v1, "SOS-AudioRecordManager"

    .line 193
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 196
    :cond_4
    :goto_8
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    return-void

    :catchall_3
    move-exception p0

    :goto_9
    if-eqz v2, :cond_5

    .line 183
    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_a

    :catch_8
    move-exception v1

    :try_start_f
    const-string v2, "SOS-AudioRecordManager"

    .line 186
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :cond_5
    :goto_a
    if-eqz v4, :cond_6

    .line 190
    :try_start_10
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto :goto_b

    :catch_9
    move-exception v1

    :try_start_11
    const-string v2, "SOS-AudioRecordManager"

    .line 193
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_6
    :goto_b
    throw p0

    :catchall_4
    move-exception p0

    .line 196
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    throw p0
.end method
