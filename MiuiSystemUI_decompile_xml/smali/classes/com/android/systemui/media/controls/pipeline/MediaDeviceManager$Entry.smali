.class public final Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;
.super Landroid/media/session/MediaController$Callback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;
.implements Landroid/bluetooth/BluetoothLeBroadcast$Callback;


# instance fields
.field public aboutToConnectDeviceOverride:Lcom/android/systemui/media/controls/pipeline/AboutToConnectDevice;

.field public broadcastDescription:Ljava/lang/String;

.field public final configListener:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$configListener$1;

.field public final controller:Landroid/media/session/MediaController;

.field public current:Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

.field public final key:Ljava/lang/String;

.field public final localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

.field public final muteAwaitConnectionManager:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

.field public final oldKey:Ljava/lang/String;

.field public playbackType:I

.field public playbackVolumeControlId:Ljava/lang/String;

.field public started:Z

.field public final synthetic this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;Ljava/lang/String;Ljava/lang/String;Landroid/media/session/MediaController;Lcom/android/settingslib/media/LocalMediaManager;Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;

    .line 2
    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->key:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->oldKey:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->muteAwaitConnectionManager:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    .line 15
    new-instance p1, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$configListener$1;

    .line 17
    invoke-direct {p1, p0}, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$configListener$1;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;)V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->configListener:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$configListener$1;

    .line 22
    return-void
    .line 24
.end method


# virtual methods
.method public final onAboutToConnectDeviceAdded(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    new-instance v0, Lcom/android/systemui/media/controls/pipeline/AboutToConnectDevice;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 4
    invoke-virtual {v1, p2}, Lcom/android/settingslib/media/LocalMediaManager;->getMediaDeviceById(Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;

    .line 6
    move-result-object p2

    .line 9
    new-instance v9, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

    .line 10
    const/4 v2, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    const/16 v8, 0x18

    .line 16
    move-object v1, v9

    .line 18
    move-object v3, p1

    .line 19
    move-object v4, p3

    .line 20
    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;-><init>(ZLandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/String;ZI)V

    .line 21
    invoke-direct {v0, p2, v9}, Lcom/android/systemui/media/controls/pipeline/AboutToConnectDevice;-><init>(Lcom/android/settingslib/media/MediaDevice;Lcom/android/systemui/media/controls/models/player/MediaDeviceData;)V

    .line 24
    iput-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->aboutToConnectDeviceOverride:Lcom/android/systemui/media/controls/pipeline/AboutToConnectDevice;

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->updateCurrent()V

    .line 29
    return-void
    .line 32
.end method

.method public final onAboutToConnectDeviceRemoved()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->aboutToConnectDeviceOverride:Lcom/android/systemui/media/controls/pipeline/AboutToConnectDevice;

    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->updateCurrent()V

    .line 5
    return-void
    .line 8
.end method

.method public final onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    .line 4
    move-result v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControlId()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    const/4 p1, 0x0

    .line 17
    :goto_1
    iget v1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->playbackType:I

    .line 18
    if-ne v0, v1, :cond_2

    .line 20
    iget-object v1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->playbackVolumeControlId:Ljava/lang/String;

    .line 22
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    return-void

    .line 30
    :cond_2
    iput v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->playbackType:I

    .line 31
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->playbackVolumeControlId:Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->updateCurrent()V

    .line 35
    return-void
    .line 38
.end method

.method public final onBroadcastMetadataChanged(ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "onBroadcastMetadataChanged(), broadcastId = "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string p1, " , metadata = "

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 23
    const-string p2, "MediaDeviceManager"

    .line 24
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->updateCurrent()V

    .line 29
    return-void
    .line 32
.end method

.method public final onBroadcastStartFailed(I)V
    .locals 1

    .line 1
    const-string p0, "onBroadcastStartFailed(), reason = "

    .line 2
    const-string v0, "MediaDeviceManager"

    .line 4
    invoke-static {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method

.method public final onBroadcastStarted(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "onBroadcastStarted(), reason = "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string p1, " , broadcastId = "

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 23
    const-string p2, "MediaDeviceManager"

    .line 24
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->updateCurrent()V

    .line 29
    return-void
    .line 32
.end method

.method public final onBroadcastStopFailed(I)V
    .locals 1

    .line 1
    const-string p0, "onBroadcastStopFailed(), reason = "

    .line 2
    const-string v0, "MediaDeviceManager"

    .line 4
    invoke-static {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method

.method public final onBroadcastStopped(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "onBroadcastStopped(), reason = "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string p1, " , broadcastId = "

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 23
    const-string p2, "MediaDeviceManager"

    .line 24
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->updateCurrent()V

    .line 29
    return-void
    .line 32
.end method

.method public final onBroadcastUpdateFailed(II)V
    .locals 2

    .line 1
    const-string p0, "onBroadcastUpdateFailed(), reason = "

    .line 2
    const-string v0, " , broadcastId = "

    .line 4
    const-string v1, "MediaDeviceManager"

    .line 6
    invoke-static {p0, p1, v0, p2, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 8
    return-void
    .line 11
.end method

.method public final onBroadcastUpdated(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "onBroadcastUpdated(), reason = "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string p1, " , broadcastId = "

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 23
    const-string p2, "MediaDeviceManager"

    .line 24
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->updateCurrent()V

    .line 29
    return-void
    .line 32
.end method

.method public final onDeviceListUpdate(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->bgExecutor:Ljava/util/concurrent/Executor;

    .line 4
    new-instance v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$onDeviceListUpdate$1;

    .line 6
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$onDeviceListUpdate$1;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;I)V

    .line 9
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    return-void
    .line 15
.end method

.method public final onPlaybackStarted(II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onPlaybackStopped(II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->bgExecutor:Ljava/util/concurrent/Executor;

    .line 4
    new-instance v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$onDeviceListUpdate$1;

    .line 6
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$onDeviceListUpdate$1;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;I)V

    .line 9
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    return-void
    .line 15
.end method

.method public final setCurrent(Lcom/android/systemui/media/controls/models/player/MediaDeviceData;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->current:Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

    .line 5
    const/4 v2, 0x1

    .line 7
    if-nez v1, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v3, p1, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;->enabled:Z

    .line 11
    iget-boolean v4, v1, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;->enabled:Z

    .line 13
    if-ne v3, v4, :cond_1

    .line 15
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;->name:Ljava/lang/CharSequence;

    .line 17
    iget-object v4, v1, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;->name:Ljava/lang/CharSequence;

    .line 19
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;->intent:Landroid/app/PendingIntent;

    .line 27
    iget-object v4, v1, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;->intent:Landroid/app/PendingIntent;

    .line 29
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    iget-object v3, p1, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;->id:Ljava/lang/String;

    .line 37
    iget-object v4, v1, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;->id:Ljava/lang/String;

    .line 39
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    iget-boolean v3, p1, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;->showBroadcastButton:Z

    .line 47
    iget-boolean v1, v1, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;->showBroadcastButton:Z

    .line 49
    if-ne v3, v1, :cond_1

    .line 51
    move v1, v2

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    move v1, v0

    .line 55
    :goto_1
    if-eqz v1, :cond_2

    .line 56
    move v0, v2

    .line 58
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->started:Z

    .line 59
    if-eqz v1, :cond_3

    .line 61
    if-nez v0, :cond_4

    .line 63
    :cond_3
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->current:Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;

    .line 67
    iget-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->fgExecutor:Ljava/util/concurrent/Executor;

    .line 69
    new-instance v2, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$current$1;

    .line 71
    invoke-direct {v2, v0, p0, p1}, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$current$1;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;Lcom/android/systemui/media/controls/models/player/MediaDeviceData;)V

    .line 73
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 76
    :cond_4
    return-void
    .line 79
.end method

.method public final updateCurrent()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 4
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const-string v3, "MediaDeviceManager"

    .line 8
    if-eqz v0, :cond_4

    .line 10
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 12
    if-eqz v0, :cond_3

    .line 14
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 16
    if-eqz v0, :cond_2

    .line 18
    iget-object v4, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mService:Landroid/bluetooth/BluetoothLeBroadcast;

    .line 20
    if-nez v4, :cond_0

    .line 22
    move v4, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothLeBroadcast;->getAllBroadcastMetadata()Ljava/util/List;

    .line 26
    move-result-object v4

    .line 29
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 30
    move-result v4

    .line 33
    xor-int/2addr v4, v1

    .line 34
    :goto_0
    if-eqz v4, :cond_2

    .line 35
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mAppSourceName:Ljava/lang/String;

    .line 37
    iget-object v3, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;

    .line 39
    iget-object v3, v3, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->context:Landroid/content/Context;

    .line 41
    iget-object v4, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 43
    iget-object v4, v4, Lcom/android/settingslib/media/LocalMediaManager;->mPackageName:Ljava/lang/String;

    .line 45
    const v5, 0x7f13021f    # @string/bt_le_audio_broadcast_dialog_unknown_name 'Unknown'

    .line 47
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    move-result-object v5

    .line 53
    invoke-static {v3, v4, v5}, Lcom/android/systemui/media/controls/util/MediaDataUtils;->getAppLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 57
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 58
    move-result v3

    .line 61
    if-eqz v3, :cond_1

    .line 62
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;

    .line 64
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->context:Landroid/content/Context;

    .line 66
    const v3, 0x7f130217    # @string/broadcasting_description_is_broadcasting 'Broadcasting'

    .line 68
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->broadcastDescription:Ljava/lang/String;

    .line 75
    goto :goto_1

    .line 77
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->broadcastDescription:Ljava/lang/String;

    .line 78
    :goto_1
    move v0, v1

    .line 80
    goto :goto_3

    .line 81
    :cond_2
    const-string v0, "Can not get LocalBluetoothLeBroadcast"

    .line 82
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    goto :goto_2

    .line 87
    :cond_3
    const-string v0, "Can not get LocalBluetoothProfileManager"

    .line 88
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    goto :goto_2

    .line 93
    :cond_4
    const-string v0, "Can not get LocalBluetoothManager"

    .line 94
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_2
    move v0, v2

    .line 99
    :goto_3
    if-eqz v0, :cond_5

    .line 100
    new-instance v0, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

    .line 102
    const/4 v4, 0x1

    .line 104
    iget-object v1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;

    .line 105
    iget-object v1, v1, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->context:Landroid/content/Context;

    .line 107
    const v2, 0x7f0817ae    # @drawable/settings_input_antenna 'res/drawable/settings_input_antenna.xml'

    .line 109
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 112
    move-result-object v5

    .line 115
    iget-object v6, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->broadcastDescription:Ljava/lang/String;

    .line 116
    const/4 v7, 0x0

    .line 118
    const/4 v8, 0x0

    .line 119
    const/4 v9, 0x1

    .line 120
    const/16 v10, 0x10

    .line 121
    move-object v3, v0

    .line 123
    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;-><init>(ZLandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/String;ZI)V

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->setCurrent(Lcom/android/systemui/media/controls/models/player/MediaDeviceData;)V

    .line 127
    goto/16 :goto_8

    .line 130
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->aboutToConnectDeviceOverride:Lcom/android/systemui/media/controls/pipeline/AboutToConnectDevice;

    .line 132
    if-eqz v0, :cond_6

    .line 134
    iget-object v3, v0, Lcom/android/systemui/media/controls/pipeline/AboutToConnectDevice;->fullMediaDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 136
    if-nez v3, :cond_6

    .line 138
    iget-object v3, v0, Lcom/android/systemui/media/controls/pipeline/AboutToConnectDevice;->backupMediaDeviceData:Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

    .line 140
    if-eqz v3, :cond_6

    .line 142
    invoke-virtual {p0, v3}, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->setCurrent(Lcom/android/systemui/media/controls/models/player/MediaDeviceData;)V

    .line 144
    return-void

    .line 147
    :cond_6
    if-eqz v0, :cond_7

    .line 148
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/AboutToConnectDevice;->fullMediaDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 150
    if-nez v0, :cond_8

    .line 152
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 154
    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->getCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;

    .line 156
    move-result-object v0

    .line 159
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    .line 160
    const/4 v4, 0x0

    .line 162
    if-eqz v3, :cond_9

    .line 163
    iget-object v5, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;

    .line 165
    iget-object v5, v5, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->mr2manager:Landroid/media/MediaRouter2Manager;

    .line 167
    invoke-virtual {v5, v3}, Landroid/media/MediaRouter2Manager;->getRoutingSessionForMediaController(Landroid/media/session/MediaController;)Landroid/media/RoutingSessionInfo;

    .line 169
    move-result-object v3

    .line 172
    goto :goto_4

    .line 173
    :cond_9
    move-object v3, v4

    .line 174
    :goto_4
    if-eqz v0, :cond_b

    .line 175
    iget-object v5, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    .line 177
    if-eqz v5, :cond_a

    .line 179
    if-eqz v3, :cond_b

    .line 181
    :cond_a
    move v7, v1

    .line 183
    goto :goto_5

    .line 184
    :cond_b
    move v7, v2

    .line 185
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    .line 186
    if-eqz v1, :cond_c

    .line 188
    if-eqz v3, :cond_f

    .line 190
    :cond_c
    if-eqz v3, :cond_d

    .line 192
    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo;->getName()Ljava/lang/CharSequence;

    .line 194
    move-result-object v1

    .line 197
    if-eqz v1, :cond_d

    .line 198
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 200
    move-result-object v1

    .line 203
    if-nez v1, :cond_e

    .line 204
    :cond_d
    if-eqz v0, :cond_f

    .line 206
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    .line 208
    move-result-object v1

    .line 211
    :cond_e
    move-object v9, v1

    .line 212
    goto :goto_6

    .line 213
    :cond_f
    move-object v9, v4

    .line 214
    :goto_6
    new-instance v1, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

    .line 215
    if-eqz v0, :cond_10

    .line 217
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getIconWithoutBackground()Landroid/graphics/drawable/Drawable;

    .line 219
    move-result-object v2

    .line 222
    move-object v8, v2

    .line 223
    goto :goto_7

    .line 224
    :cond_10
    move-object v8, v4

    .line 225
    :goto_7
    const/4 v10, 0x0

    .line 226
    if-eqz v0, :cond_11

    .line 227
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    .line 229
    move-result-object v4

    .line 232
    :cond_11
    move-object v11, v4

    .line 233
    const/4 v12, 0x0

    .line 234
    const/16 v13, 0x8

    .line 235
    move-object v6, v1

    .line 237
    invoke-direct/range {v6 .. v13}, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;-><init>(ZLandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/String;ZI)V

    .line 238
    invoke-virtual {p0, v1}, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->setCurrent(Lcom/android/systemui/media/controls/models/player/MediaDeviceData;)V

    .line 241
    :goto_8
    return-void
    .line 244
.end method
