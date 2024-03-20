.class public final Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;
.super Landroid/media/session/MediaController$Callback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final controller:Landroid/media/session/MediaController;

.field public name:Ljava/lang/String;

.field public sentRemote:Z

.field public final synthetic this$0:Lcom/android/settingslib/volume/MediaSessions;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/volume/MediaSessions;Landroid/media/session/MediaController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->this$0:Lcom/android/settingslib/volume/MediaSessions;

    .line 2
    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->controller:Landroid/media/session/MediaController;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final cb(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, " "

    .line 2
    invoke-static {p1, v0}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->controller:Landroid/media/session/MediaController;

    .line 8
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 13
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/android/settingslib/volume/D;->BUG:Z

    .line 2
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_6

    .line 6
    sget-object v0, Lcom/android/settingslib/volume/MediaSessions;->TAG:Ljava/lang/String;

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v4, "onAudioInfoChanged"

    .line 15
    invoke-virtual {p0, v4}, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->cb(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v4

    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    if-nez p1, :cond_0

    .line 24
    const/4 v4, 0x0

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    .line 28
    move-result v4

    .line 31
    if-eq v4, v2, :cond_2

    .line 32
    if-eq v4, v1, :cond_1

    .line 34
    const-string v5, "UNKNOWN_"

    .line 36
    invoke-static {v5, v4}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 38
    move-result-object v4

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-string v4, "REMOTE"

    .line 43
    goto :goto_0

    .line 45
    :cond_2
    const-string v4, "LOCAL"

    .line 46
    :goto_0
    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    .line 48
    move-result v5

    .line 51
    if-eqz v5, :cond_5

    .line 52
    if-eq v5, v2, :cond_4

    .line 54
    if-eq v5, v1, :cond_3

    .line 56
    const-string v6, "VOLUME_CONTROL_UNKNOWN_"

    .line 58
    invoke-static {v6, v5}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 60
    move-result-object v5

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    const-string v5, "VOLUME_CONTROL_ABSOLUTE"

    .line 65
    goto :goto_1

    .line 67
    :cond_4
    const-string v5, "VOLUME_CONTROL_RELATIVE"

    .line 68
    goto :goto_1

    .line 70
    :cond_5
    const-string v5, "VOLUME_CONTROL_FIXED"

    .line 71
    :goto_1
    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    .line 73
    move-result v6

    .line 76
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v6

    .line 80
    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    .line 81
    move-result v7

    .line 84
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object v7

    .line 88
    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 89
    move-result-object v8

    .line 92
    filled-new-array {v6, v7, v4, v5, v8}, [Ljava/lang/Object;

    .line 93
    move-result-object v4

    .line 96
    const-string v5, "PlaybackInfo[vol=%s,max=%s,type=%s,vc=%s],atts=%s"

    .line 97
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    move-result-object v4

    .line 102
    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v4, " sentRemote="

    .line 106
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-boolean v4, p0, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->sentRemote:Z

    .line 111
    invoke-static {v3, v4, v0}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 113
    :cond_6
    const/4 v0, 0x0

    .line 116
    if-eqz p1, :cond_7

    .line 117
    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    .line 119
    move-result v3

    .line 122
    if-ne v3, v1, :cond_7

    .line 123
    move v1, v2

    .line 125
    goto :goto_3

    .line 126
    :cond_7
    move v1, v0

    .line 127
    :goto_3
    if-nez v1, :cond_8

    .line 128
    iget-boolean v3, p0, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->sentRemote:Z

    .line 130
    if-eqz v3, :cond_8

    .line 132
    iget-object p1, p0, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->this$0:Lcom/android/settingslib/volume/MediaSessions;

    .line 134
    iget-object p1, p1, Lcom/android/settingslib/volume/MediaSessions;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    .line 136
    iget-object v1, p0, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->controller:Landroid/media/session/MediaController;

    .line 138
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 140
    move-result-object v1

    .line 143
    invoke-virtual {p1, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->onRemoteRemoved(Landroid/media/session/MediaSession$Token;)V

    .line 144
    iput-boolean v0, p0, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->sentRemote:Z

    .line 147
    goto :goto_4

    .line 149
    :cond_8
    if-eqz v1, :cond_9

    .line 150
    iget-object v0, p0, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->this$0:Lcom/android/settingslib/volume/MediaSessions;

    .line 152
    iget-object v1, p0, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->controller:Landroid/media/session/MediaController;

    .line 154
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 156
    move-result-object v1

    .line 159
    iget-object v3, p0, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->name:Ljava/lang/String;

    .line 160
    invoke-virtual {v0, v1, v3, p1}, Lcom/android/settingslib/volume/MediaSessions;->updateRemoteH(Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/media/session/MediaController$PlaybackInfo;)V

    .line 162
    iput-boolean v2, p0, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->sentRemote:Z

    .line 165
    :cond_9
    :goto_4
    return-void
    .line 167
.end method

.method public final onExtrasChanged(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/settingslib/volume/D;->BUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/settingslib/volume/MediaSessions;->TAG:Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v2, "onExtrasChanged"

    .line 13
    invoke-virtual {p0, v2}, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->cb(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 28
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    return-void
    .line 32
.end method

.method public final onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/settingslib/volume/D;->BUG:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/android/settingslib/volume/MediaSessions;->TAG:Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v2, "onMetadataChanged"

    .line 13
    invoke-virtual {p0, v2}, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->cb(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    if-nez p1, :cond_0

    .line 22
    const/4 p0, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    .line 26
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Landroid/media/MediaDescription;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 33
    :goto_0
    invoke-static {v1, p0, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_1
    return-void
    .line 37
.end method

.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/settingslib/volume/D;->BUG:Z

    .line 2
    if-eqz v0, :cond_5

    .line 4
    sget-object v0, Lcom/android/settingslib/volume/MediaSessions;->TAG:Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v2, "onPlaybackStateChanged"

    .line 13
    invoke-virtual {p0, v2}, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->cb(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    if-nez p1, :cond_0

    .line 22
    const/4 p0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    .line 31
    move-result v2

    .line 34
    if-eqz v2, :cond_4

    .line 35
    const/4 v3, 0x1

    .line 37
    if-eq v2, v3, :cond_3

    .line 38
    const/4 v3, 0x2

    .line 40
    if-eq v2, v3, :cond_2

    .line 41
    const/4 v3, 0x3

    .line 43
    if-eq v2, v3, :cond_1

    .line 44
    const-string v3, "UNKNOWN_"

    .line 46
    invoke-static {v3, v2}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const-string v2, "STATE_PLAYING"

    .line 53
    goto :goto_0

    .line 55
    :cond_2
    const-string v2, "STATE_PAUSED"

    .line 56
    goto :goto_0

    .line 58
    :cond_3
    const-string v2, "STATE_STOPPED"

    .line 59
    goto :goto_0

    .line 61
    :cond_4
    const-string v2, "STATE_NONE"

    .line 62
    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v2, " "

    .line 67
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 78
    :goto_1
    invoke-static {v1, p0, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_5
    return-void
    .line 82
.end method

.method public final onQueueChanged(Ljava/util/List;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/settingslib/volume/D;->BUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/settingslib/volume/MediaSessions;->TAG:Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v2, "onQueueChanged"

    .line 13
    invoke-virtual {p0, v2}, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->cb(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 28
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    return-void
    .line 32
.end method

.method public final onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/settingslib/volume/D;->BUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/settingslib/volume/MediaSessions;->TAG:Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v2, "onQueueTitleChanged"

    .line 13
    invoke-virtual {p0, v2}, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->cb(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 28
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    return-void
    .line 32
.end method

.method public final onSessionDestroyed()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/settingslib/volume/D;->BUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/settingslib/volume/MediaSessions;->TAG:Ljava/lang/String;

    .line 6
    const-string v1, "onSessionDestroyed"

    .line 8
    invoke-virtual {p0, v1}, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->cb(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 13
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_0
    return-void
    .line 17
.end method

.method public final onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/settingslib/volume/D;->BUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/settingslib/volume/MediaSessions;->TAG:Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v2, "onSessionEvent"

    .line 13
    invoke-virtual {p0, v2}, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->cb(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string p0, "event="

    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string p0, " extras="

    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 41
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    return-void
    .line 45
.end method
