.class Lcom/android/settings/emergency/service/AudioTrackManager$1;
.super Ljava/lang/Object;
.source "AudioTrackManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/emergency/service/AudioTrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/emergency/service/AudioTrackManager;


# direct methods
.method constructor <init>(Lcom/android/settings/emergency/service/AudioTrackManager;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/settings/emergency/service/AudioTrackManager$1;->this$0:Lcom/android/settings/emergency/service/AudioTrackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "AudioTrackManager"

    :try_start_0
    const-string v1, "STAR PLAY SOS AUDIO ..."

    .line 123
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x13

    .line 124
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 125
    iget-object v1, p0, Lcom/android/settings/emergency/service/AudioTrackManager$1;->this$0:Lcom/android/settings/emergency/service/AudioTrackManager;

    invoke-static {v1}, Lcom/android/settings/emergency/service/AudioTrackManager;->-$$Nest$fgetaudioTrack(Lcom/android/settings/emergency/service/AudioTrackManager;)Landroid/media/AudioTrack;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/settings/emergency/service/AudioTrackManager$1;->this$0:Lcom/android/settings/emergency/service/AudioTrackManager;

    invoke-static {v1}, Lcom/android/settings/emergency/service/AudioTrackManager;->-$$Nest$fgetaudioTrackBuilder(Lcom/android/settings/emergency/service/AudioTrackManager;)Landroid/media/AudioTrack$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/settings/emergency/service/AudioTrackManager;->-$$Nest$fputaudioTrack(Lcom/android/settings/emergency/service/AudioTrackManager;Landroid/media/AudioTrack;)V

    .line 129
    iget-object v1, p0, Lcom/android/settings/emergency/service/AudioTrackManager$1;->this$0:Lcom/android/settings/emergency/service/AudioTrackManager;

    invoke-static {v1}, Lcom/android/settings/emergency/service/AudioTrackManager;->-$$Nest$fgetaudioTrack(Lcom/android/settings/emergency/service/AudioTrackManager;)Landroid/media/AudioTrack;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/emergency/service/AudioTrackManager$1;->this$0:Lcom/android/settings/emergency/service/AudioTrackManager;

    invoke-static {v3}, Lcom/android/settings/emergency/service/AudioTrackManager;->-$$Nest$fgetmAudioManager(Lcom/android/settings/emergency/service/AudioTrackManager;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/emergency/service/AudioTrackManager;->-$$Nest$mgetTelephonyDevice(Lcom/android/settings/emergency/service/AudioTrackManager;Landroid/media/AudioManager;)Landroid/media/AudioDeviceInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    .line 131
    iget-object v1, p0, Lcom/android/settings/emergency/service/AudioTrackManager$1;->this$0:Lcom/android/settings/emergency/service/AudioTrackManager;

    invoke-static {v1, v2}, Lcom/android/settings/emergency/service/AudioTrackManager;->-$$Nest$fputisCancelled(Lcom/android/settings/emergency/service/AudioTrackManager;Z)V

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/android/settings/emergency/service/AudioTrackManager$1;->this$0:Lcom/android/settings/emergency/service/AudioTrackManager;

    invoke-static {v1}, Lcom/android/settings/emergency/service/AudioTrackManager;->-$$Nest$fgetbufferSize(Lcom/android/settings/emergency/service/AudioTrackManager;)I

    move-result v1

    new-array v1, v1, [B

    .line 136
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/emergency/service/AudioTrackManager$1;->this$0:Lcom/android/settings/emergency/service/AudioTrackManager;

    invoke-static {v3}, Lcom/android/settings/emergency/service/AudioTrackManager;->-$$Nest$fgetdis(Lcom/android/settings/emergency/service/AudioTrackManager;)Ljava/io/DataInputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result v3

    if-lez v3, :cond_4

    .line 137
    iget-object v3, p0, Lcom/android/settings/emergency/service/AudioTrackManager$1;->this$0:Lcom/android/settings/emergency/service/AudioTrackManager;

    invoke-static {v3}, Lcom/android/settings/emergency/service/AudioTrackManager;->-$$Nest$fgetisCancelled(Lcom/android/settings/emergency/service/AudioTrackManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 140
    :cond_2
    iget-object v3, p0, Lcom/android/settings/emergency/service/AudioTrackManager$1;->this$0:Lcom/android/settings/emergency/service/AudioTrackManager;

    invoke-static {v3}, Lcom/android/settings/emergency/service/AudioTrackManager;->-$$Nest$fgetdis(Lcom/android/settings/emergency/service/AudioTrackManager;)Ljava/io/DataInputStream;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/io/DataInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x3

    if-eq v3, v4, :cond_1

    const/4 v4, -0x2

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 145
    iget-object v4, p0, Lcom/android/settings/emergency/service/AudioTrackManager$1;->this$0:Lcom/android/settings/emergency/service/AudioTrackManager;

    invoke-static {v4}, Lcom/android/settings/emergency/service/AudioTrackManager;->-$$Nest$fgetaudioTrack(Lcom/android/settings/emergency/service/AudioTrackManager;)Landroid/media/AudioTrack;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioTrack;->play()V

    .line 146
    iget-object v4, p0, Lcom/android/settings/emergency/service/AudioTrackManager$1;->this$0:Lcom/android/settings/emergency/service/AudioTrackManager;

    invoke-static {v4}, Lcom/android/settings/emergency/service/AudioTrackManager;->-$$Nest$fgetaudioTrack(Lcom/android/settings/emergency/service/AudioTrackManager;)Landroid/media/AudioTrack;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Landroid/media/AudioTrack;->write([BII)I

    goto :goto_0

    .line 150
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/settings/emergency/service/AudioTrackManager$1;->this$0:Lcom/android/settings/emergency/service/AudioTrackManager;

    invoke-static {v1}, Lcom/android/settings/emergency/service/AudioTrackManager;->-$$Nest$fgetmCompleteListener(Lcom/android/settings/emergency/service/AudioTrackManager;)Lcom/android/settings/emergency/service/AudioTrackManager$OnPlayCompleteListener;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/emergency/service/AudioTrackManager$1;->this$0:Lcom/android/settings/emergency/service/AudioTrackManager;

    invoke-static {v1}, Lcom/android/settings/emergency/service/AudioTrackManager;->-$$Nest$fgetisCancelled(Lcom/android/settings/emergency/service/AudioTrackManager;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 151
    iget-object v1, p0, Lcom/android/settings/emergency/service/AudioTrackManager$1;->this$0:Lcom/android/settings/emergency/service/AudioTrackManager;

    invoke-static {v1}, Lcom/android/settings/emergency/service/AudioTrackManager;->-$$Nest$fgetmCompleteListener(Lcom/android/settings/emergency/service/AudioTrackManager;)Lcom/android/settings/emergency/service/AudioTrackManager$OnPlayCompleteListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/emergency/service/AudioTrackManager$OnPlayCompleteListener;->onPlayComplete()V

    .line 154
    :cond_5
    iget-object p0, p0, Lcom/android/settings/emergency/service/AudioTrackManager$1;->this$0:Lcom/android/settings/emergency/service/AudioTrackManager;

    invoke-virtual {p0}, Lcom/android/settings/emergency/service/AudioTrackManager;->stopPlay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v1, "exception when play sos audio :"

    .line 157
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method
