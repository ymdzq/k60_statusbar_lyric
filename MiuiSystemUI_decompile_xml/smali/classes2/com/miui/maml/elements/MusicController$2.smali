.class Lcom/miui/maml/elements/MusicController$2;
.super Landroid/media/session/MediaController$Callback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/MusicController;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/MusicController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    .line 2
    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V

    .line 2
    return-void
    .line 5
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 2
    return-void
    .line 5
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    .line 2
    const-string v0, "MAML_MusicController"

    .line 5
    const-string v1, "onMetadataChanged"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    .line 12
    invoke-static {v0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 14
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    iget-object p0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    .line 20
    invoke-static {p0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 22
    move-result-object p0

    .line 25
    invoke-interface {p0, p1}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientMetadataUpdate(Landroid/media/MediaMetadata;)V

    .line 26
    :cond_0
    return-void
    .line 29
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    .line 2
    const-string v0, "MAML_MusicController"

    .line 5
    const-string v1, "onPlaybackStateChanged"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    .line 12
    invoke-static {v0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 14
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    if-eqz p1, :cond_0

    .line 20
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    .line 22
    invoke-static {v0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 24
    move-result-object v0

    .line 27
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    .line 28
    move-result v1

    .line 31
    invoke-interface {v0, v1}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    .line 32
    iget-object p0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    .line 35
    invoke-static {p0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 37
    move-result-object p0

    .line 40
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getActions()J

    .line 41
    move-result-wide v0

    .line 44
    invoke-interface {p0, v0, v1}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientPlaybackActionUpdate(J)V

    .line 45
    goto :goto_0

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    .line 49
    invoke-static {p0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 51
    move-result-object p0

    .line 54
    const/4 p1, 0x0

    .line 55
    invoke-interface {p0, p1}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    .line 56
    :cond_1
    :goto_0
    return-void
    .line 59
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onQueueChanged(Ljava/util/List;)V

    .line 2
    return-void
    .line 5
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    .line 2
    return-void
    .line 5
.end method

.method public onSessionDestroyed()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/media/session/MediaController$Callback;->onSessionDestroyed()V

    .line 2
    const-string v0, "MAML_MusicController"

    .line 5
    const-string v1, "onSessionDestroyed"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    .line 12
    invoke-static {v0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 14
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    iget-object p0, p0, Lcom/miui/maml/elements/MusicController$2;->this$0:Lcom/miui/maml/elements/MusicController;

    .line 20
    invoke-static {p0}, Lcom/miui/maml/elements/MusicController;->access$100(Lcom/miui/maml/elements/MusicController;)Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;

    .line 22
    move-result-object p0

    .line 25
    invoke-interface {p0}, Lcom/miui/maml/elements/MusicController$OnClientUpdateListener;->onSessionDestroyed()V

    .line 26
    :cond_0
    return-void
    .line 29
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/media/session/MediaController$Callback;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2
    const-string p0, "MAML_MusicController"

    .line 5
    const-string p1, "onSessionEvent"

    .line 7
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    return-void
    .line 12
.end method
