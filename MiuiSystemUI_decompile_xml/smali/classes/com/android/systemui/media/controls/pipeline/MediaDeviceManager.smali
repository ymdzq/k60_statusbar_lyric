.class public final Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final bgExecutor:Ljava/util/concurrent/Executor;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final context:Landroid/content/Context;

.field public final controllerFactory:Lcom/android/systemui/media/controls/util/MediaControllerFactory;

.field public final entries:Ljava/util/Map;

.field public final fgExecutor:Ljava/util/concurrent/Executor;

.field public final listeners:Ljava/util/Set;

.field public final localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public final localMediaManagerFactory:Lcom/android/systemui/media/controls/pipeline/LocalMediaManagerFactory;

.field public final mr2manager:Landroid/media/MediaRouter2Manager;

.field public final muteAwaitConnectionManagerFactory:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/controls/util/MediaControllerFactory;Lcom/android/systemui/media/controls/pipeline/LocalMediaManagerFactory;Landroid/media/MediaRouter2Manager;Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->controllerFactory:Lcom/android/systemui/media/controls/util/MediaControllerFactory;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->localMediaManagerFactory:Lcom/android/systemui/media/controls/pipeline/LocalMediaManagerFactory;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->mr2manager:Landroid/media/MediaRouter2Manager;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->muteAwaitConnectionManagerFactory:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 17
    iput-object p8, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->fgExecutor:Ljava/util/concurrent/Executor;

    .line 19
    iput-object p9, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->bgExecutor:Ljava/util/concurrent/Executor;

    .line 21
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 23
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->listeners:Ljava/util/Set;

    .line 28
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 30
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->entries:Ljava/util/Map;

    .line 35
    const-class p1, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 42
    sget-object p2, Lcom/android/systemui/dump/DumpPriority;->CRITICAL:Lcom/android/systemui/dump/DumpPriority;

    .line 43
    invoke-virtual {p10, p1, p0, p2}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;Lcom/android/systemui/dump/DumpPriority;)V

    .line 45
    return-void
    .line 48
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string p2, "MediaDeviceManager state:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->entries:Ljava/util/Map;

    .line 7
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 9
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 11
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result p2

    .line 22
    if-eqz p2, :cond_5

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object p2

    .line 28
    check-cast p2, Ljava/util/Map$Entry;

    .line 29
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/String;

    .line 35
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 37
    move-result-object p2

    .line 40
    check-cast p2, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;

    .line 41
    const-string v1, "  key="

    .line 43
    invoke-static {v1, v0, p1}, Lcom/android/keyguard/FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 45
    iget-object v0, p2, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    .line 48
    const/4 v1, 0x0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    iget-object v2, p2, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;

    .line 53
    iget-object v2, v2, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->mr2manager:Landroid/media/MediaRouter2Manager;

    .line 55
    invoke-virtual {v2, v0}, Landroid/media/MediaRouter2Manager;->getRoutingSessionForMediaController(Landroid/media/session/MediaController;)Landroid/media/RoutingSessionInfo;

    .line 57
    move-result-object v0

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    move-object v0, v1

    .line 62
    :goto_1
    if-eqz v0, :cond_1

    .line 63
    iget-object v2, p2, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;

    .line 65
    iget-object v2, v2, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->mr2manager:Landroid/media/MediaRouter2Manager;

    .line 67
    invoke-virtual {v2, v0}, Landroid/media/MediaRouter2Manager;->getSelectedRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    .line 69
    move-result-object v2

    .line 72
    goto :goto_2

    .line 73
    :cond_1
    move-object v2, v1

    .line 74
    :goto_2
    iget-object v3, p2, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->current:Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

    .line 75
    if-eqz v3, :cond_2

    .line 77
    iget-object v3, v3, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;->name:Ljava/lang/CharSequence;

    .line 79
    goto :goto_3

    .line 81
    :cond_2
    move-object v3, v1

    .line 82
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 83
    const-string v5, "    current device is "

    .line 85
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v3

    .line 96
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    iget-object v3, p2, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    .line 100
    if-eqz v3, :cond_3

    .line 102
    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    .line 104
    move-result-object v3

    .line 107
    if-eqz v3, :cond_3

    .line 108
    invoke-virtual {v3}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    .line 110
    move-result v3

    .line 113
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    move-result-object v3

    .line 117
    goto :goto_4

    .line 118
    :cond_3
    move-object v3, v1

    .line 119
    :goto_4
    iget v4, p2, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->playbackType:I

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    .line 122
    const-string v6, "    PlaybackType="

    .line 124
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    const-string v3, " (1 for local, 2 for remote) cached="

    .line 132
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v3

    .line 143
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    iget-object v3, p2, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    .line 147
    if-eqz v3, :cond_4

    .line 149
    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    .line 151
    move-result-object v3

    .line 154
    if-eqz v3, :cond_4

    .line 155
    invoke-virtual {v3}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControlId()Ljava/lang/String;

    .line 157
    move-result-object v1

    .line 160
    :cond_4
    iget-object p2, p2, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->playbackVolumeControlId:Ljava/lang/String;

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    .line 163
    const-string v4, "    volumeControlId="

    .line 165
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v1, " cached= "

    .line 173
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object p2

    .line 184
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    .line 188
    const-string v1, "    routingSession="

    .line 190
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    move-result-object p2

    .line 201
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    new-instance p2, Ljava/lang/StringBuilder;

    .line 205
    const-string v0, "    selectedRoutes="

    .line 207
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    move-result-object p2

    .line 218
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    goto/16 :goto_0

    .line 222
    :cond_5
    return-void
    .line 224
.end method

.method public final onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;ZIZ)V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    move-object/from16 v8, p1

    .line 4
    move-object/from16 v3, p2

    .line 6
    move-object/from16 v0, p3

    .line 8
    iget-object v9, v7, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->entries:Ljava/util/Map;

    .line 10
    const/4 v1, 0x0

    .line 12
    if-eqz v3, :cond_0

    .line 13
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    invoke-interface {v9, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;

    .line 25
    if-eqz v2, :cond_0

    .line 27
    iget-object v4, v2, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;

    .line 29
    iget-object v5, v4, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->bgExecutor:Ljava/util/concurrent/Executor;

    .line 31
    new-instance v6, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;

    .line 33
    invoke-direct {v6, v2, v4, v1}, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;I)V

    .line 35
    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 38
    :cond_0
    move-object v2, v9

    .line 41
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 42
    invoke-virtual {v2, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 47
    check-cast v2, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;

    .line 48
    iget-object v4, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->token:Landroid/media/session/MediaSession$Token;

    .line 50
    const/4 v5, 0x0

    .line 52
    if-eqz v2, :cond_2

    .line 53
    iget-object v6, v2, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    .line 55
    if-eqz v6, :cond_1

    .line 57
    invoke-virtual {v6}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 59
    move-result-object v6

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move-object v6, v5

    .line 64
    :goto_0
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    move-result v6

    .line 68
    if-nez v6, :cond_7

    .line 69
    :cond_2
    if-eqz v2, :cond_3

    .line 71
    iget-object v6, v2, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;

    .line 73
    iget-object v10, v6, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->bgExecutor:Ljava/util/concurrent/Executor;

    .line 75
    new-instance v11, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;

    .line 77
    invoke-direct {v11, v2, v6, v1}, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;I)V

    .line 79
    invoke-interface {v10, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 82
    :cond_3
    iget-object v1, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->device:Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

    .line 85
    if-eqz v1, :cond_4

    .line 87
    invoke-virtual {v7, v8, v3, v1}, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->processDevice(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaDeviceData;)V

    .line 89
    return-void

    .line 92
    :cond_4
    if-eqz v4, :cond_5

    .line 93
    iget-object v1, v7, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->controllerFactory:Lcom/android/systemui/media/controls/util/MediaControllerFactory;

    .line 95
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    new-instance v2, Landroid/media/session/MediaController;

    .line 100
    iget-object v1, v1, Lcom/android/systemui/media/controls/util/MediaControllerFactory;->mContext:Landroid/content/Context;

    .line 102
    invoke-direct {v2, v1, v4}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 104
    move-object v4, v2

    .line 107
    goto :goto_1

    .line 108
    :cond_5
    move-object v4, v5

    .line 109
    :goto_1
    iget-object v1, v7, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->localMediaManagerFactory:Lcom/android/systemui/media/controls/pipeline/LocalMediaManagerFactory;

    .line 110
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    new-instance v2, Lcom/android/settingslib/media/InfoMediaManager;

    .line 115
    iget-object v6, v1, Lcom/android/systemui/media/controls/pipeline/LocalMediaManagerFactory;->context:Landroid/content/Context;

    .line 117
    iget-object v0, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    .line 119
    iget-object v1, v1, Lcom/android/systemui/media/controls/pipeline/LocalMediaManagerFactory;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 121
    invoke-direct {v2, v6, v0, v1}, Lcom/android/settingslib/media/InfoMediaManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    .line 123
    new-instance v15, Lcom/android/settingslib/media/LocalMediaManager;

    .line 126
    invoke-direct {v15, v6, v1, v2, v0}, Lcom/android/settingslib/media/LocalMediaManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/media/InfoMediaManager;Ljava/lang/String;)V

    .line 128
    iget-object v0, v7, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->muteAwaitConnectionManagerFactory:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;

    .line 131
    iget-object v1, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    .line 133
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    sget-object v2, Lcom/android/systemui/flags/Flags;->MEDIA_MUTE_AWAIT:Lcom/android/systemui/flags/ReleasedFlag;

    .line 138
    iget-object v1, v1, Lcom/android/systemui/media/controls/util/MediaFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 140
    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 142
    invoke-virtual {v1, v2}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 144
    move-result v1

    .line 147
    if-nez v1, :cond_6

    .line 148
    move-object v6, v5

    .line 150
    move-object v5, v15

    .line 151
    goto :goto_2

    .line 152
    :cond_6
    new-instance v1, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    .line 153
    iget-object v11, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 155
    iget-object v13, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;->context:Landroid/content/Context;

    .line 157
    iget-object v14, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;->deviceIconUtil:Lcom/android/settingslib/media/DeviceIconUtil;

    .line 159
    iget-object v0, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManagerFactory;->logger:Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger;

    .line 161
    move-object v10, v1

    .line 163
    move-object v12, v15

    .line 164
    move-object v5, v15

    .line 165
    move-object v15, v0

    .line 166
    invoke-direct/range {v10 .. v15}, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;-><init>(Ljava/util/concurrent/Executor;Lcom/android/settingslib/media/LocalMediaManager;Landroid/content/Context;Lcom/android/settingslib/media/DeviceIconUtil;Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger;)V

    .line 167
    move-object v6, v1

    .line 170
    :goto_2
    new-instance v10, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;

    .line 171
    move-object v0, v10

    .line 173
    move-object/from16 v1, p0

    .line 174
    move-object/from16 v2, p1

    .line 176
    move-object/from16 v3, p2

    .line 178
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;Ljava/lang/String;Ljava/lang/String;Landroid/media/session/MediaController;Lcom/android/settingslib/media/LocalMediaManager;Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;)V

    .line 180
    invoke-interface {v9, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;

    .line 186
    const/4 v1, 0x1

    .line 188
    invoke-direct {v0, v10, v7, v1}, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;I)V

    .line 189
    iget-object v1, v7, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->bgExecutor:Ljava/util/concurrent/Executor;

    .line 192
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 194
    :cond_7
    return-void
    .line 197
.end method

.method public final onMediaDataRemoved(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->entries:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;

    .line 12
    iget-object v2, v1, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->bgExecutor:Ljava/util/concurrent/Executor;

    .line 14
    new-instance v3, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;

    .line 16
    const/4 v4, 0x0

    .line 18
    invoke-direct {v3, v0, v1, v4}, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;I)V

    .line 19
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 22
    :cond_0
    if-eqz v0, :cond_1

    .line 25
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->listeners:Ljava/util/Set;

    .line 27
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p0

    .line 32
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/systemui/media/controls/pipeline/MediaDataCombineLatest;

    .line 43
    invoke-virtual {v0, p1}, Lcom/android/systemui/media/controls/pipeline/MediaDataCombineLatest;->remove(Ljava/lang/String;)V

    .line 45
    goto :goto_0

    .line 48
    :cond_1
    return-void
    .line 49
.end method

.method public final onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final processDevice(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaDeviceData;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->listeners:Ljava/util/Set;

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/systemui/media/controls/pipeline/MediaDataCombineLatest;

    .line 18
    iget-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataCombineLatest;->entries:Ljava/util/Map;

    .line 20
    const/4 v2, 0x0

    .line 22
    if-eqz p2, :cond_1

    .line 23
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 31
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 40
    check-cast v3, Lkotlin/Pair;

    .line 41
    if-eqz v3, :cond_0

    .line 43
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 48
    check-cast v2, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 49
    :cond_0
    new-instance v3, Lkotlin/Pair;

    .line 51
    invoke-direct {v3, v2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/media/controls/pipeline/MediaDataCombineLatest;->update(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    goto :goto_0

    .line 62
    :cond_1
    move-object v3, v1

    .line 63
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 64
    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object v3

    .line 69
    check-cast v3, Lkotlin/Pair;

    .line 70
    if-eqz v3, :cond_2

    .line 72
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 74
    move-result-object v2

    .line 77
    check-cast v2, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 78
    :cond_2
    new-instance v3, Lkotlin/Pair;

    .line 80
    invoke-direct {v3, v2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {v0, p1, p1}, Lcom/android/systemui/media/controls/pipeline/MediaDataCombineLatest;->update(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    goto :goto_0

    .line 91
    :cond_3
    return-void
    .line 92
.end method
