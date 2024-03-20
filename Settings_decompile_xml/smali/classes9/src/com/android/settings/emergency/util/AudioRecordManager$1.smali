.class Lsrc/com/android/settings/emergency/util/AudioRecordManager$1;
.super Ljava/lang/Object;
.source "AudioRecordManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsrc/com/android/settings/emergency/util/AudioRecordManager;->startRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsrc/com/android/settings/emergency/util/AudioRecordManager;


# direct methods
.method constructor <init>(Lsrc/com/android/settings/emergency/util/AudioRecordManager;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager$1;->this$0:Lsrc/com/android/settings/emergency/util/AudioRecordManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 69
    invoke-static {}, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->-$$Nest$sfgetmObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager$1;->this$0:Lsrc/com/android/settings/emergency/util/AudioRecordManager;

    invoke-static {v1}, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->-$$Nest$fgetmRecordBufsize(Lsrc/com/android/settings/emergency/util/AudioRecordManager;)I

    move-result v1

    new-array v1, v1, [B

    .line 71
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager$1;->this$0:Lsrc/com/android/settings/emergency/util/AudioRecordManager;

    invoke-static {v4}, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->-$$Nest$fgetmFolderName(Lsrc/com/android/settings/emergency/util/AudioRecordManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "sosvoice.pcm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x0

    .line 74
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 77
    :cond_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    :cond_1
    :goto_0
    :try_start_2
    iget-object v2, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager$1;->this$0:Lsrc/com/android/settings/emergency/util/AudioRecordManager;

    invoke-static {v2}, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->-$$Nest$fgetmIsRecording(Lsrc/com/android/settings/emergency/util/AudioRecordManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    iget-object v2, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager$1;->this$0:Lsrc/com/android/settings/emergency/util/AudioRecordManager;

    invoke-static {v2}, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->-$$Nest$fgetmAudioRecord(Lsrc/com/android/settings/emergency/util/AudioRecordManager;)Landroid/media/AudioRecord;

    move-result-object v2

    iget-object v3, p0, Lsrc/com/android/settings/emergency/util/AudioRecordManager$1;->this$0:Lsrc/com/android/settings/emergency/util/AudioRecordManager;

    invoke-static {v3}, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->-$$Nest$fgetmRecordBufsize(Lsrc/com/android/settings/emergency/util/AudioRecordManager;)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v2

    const/4 v3, -0x3

    if-eq v3, v2, :cond_1

    .line 82
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 90
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_4
    const-string v1, "SOS-AudioRecordManager"

    .line 93
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v3, v4

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v3, v4

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    :goto_2
    :try_start_5
    const-string v1, "SOS-AudioRecordManager"

    .line 86
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_3

    .line 90
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catch_3
    move-exception p0

    :try_start_7
    const-string v1, "SOS-AudioRecordManager"

    .line 93
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 97
    :cond_3
    :goto_3
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    return-void

    :goto_4
    if-eqz v3, :cond_4

    .line 90
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_5

    :catch_4
    move-exception v1

    :try_start_9
    const-string v2, "SOS-AudioRecordManager"

    .line 93
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_4
    :goto_5
    throw p0

    :catchall_2
    move-exception p0

    .line 97
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p0
.end method
