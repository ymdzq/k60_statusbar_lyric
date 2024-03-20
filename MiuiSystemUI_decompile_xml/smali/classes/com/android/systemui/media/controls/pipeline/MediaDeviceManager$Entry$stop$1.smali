.class public final Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;

.field public final synthetic this$1:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;->this$1:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;

    .line 9
    iget-boolean v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->started:Z

    .line 11
    if-eqz v2, :cond_2

    .line 13
    iput-boolean v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->started:Z

    .line 15
    iget-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    .line 17
    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v1, v0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;

    .line 24
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 26
    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->stopScan()V

    .line 28
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;

    .line 31
    iget-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 33
    iget-object v1, v1, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    .line 35
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;

    .line 42
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->muteAwaitConnectionManager:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    .line 44
    if-eqz v0, :cond_1

    .line 46
    iget-object v1, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->muteAwaitConnectionChangeListener:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;

    .line 48
    iget-object v0, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->audioManager:Landroid/media/AudioManager;

    .line 50
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMuteAwaitConnectionCallback(Landroid/media/AudioManager$MuteAwaitConnectionCallback;)V

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;->this$1:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;

    .line 55
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 57
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;

    .line 59
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->configListener:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$configListener$1;

    .line 61
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 63
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 65
    :cond_2
    return-void

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;

    .line 69
    iget-boolean v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->started:Z

    .line 71
    if-nez v2, :cond_7

    .line 73
    iget-object v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 75
    iget-object v2, v2, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    .line 77
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 79
    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;

    .line 84
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 86
    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->startScan()V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;

    .line 91
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->muteAwaitConnectionManager:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    .line 93
    if-eqz v0, :cond_3

    .line 95
    iget-object v2, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 97
    iget-object v3, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->audioManager:Landroid/media/AudioManager;

    .line 99
    iget-object v4, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->muteAwaitConnectionChangeListener:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;

    .line 101
    invoke-virtual {v3, v2, v4}, Landroid/media/AudioManager;->registerMuteAwaitConnectionCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$MuteAwaitConnectionCallback;)V

    .line 103
    invoke-virtual {v3}, Landroid/media/AudioManager;->getMutingExpectedDevice()Landroid/media/AudioDeviceAttributes;

    .line 106
    move-result-object v2

    .line 109
    if-eqz v2, :cond_3

    .line 110
    iput-object v2, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->currentMutedDevice:Landroid/media/AudioDeviceAttributes;

    .line 112
    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    .line 114
    move-result-object v3

    .line 117
    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getName()Ljava/lang/String;

    .line 118
    move-result-object v4

    .line 121
    invoke-virtual {v0, v2}, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->getIcon(Landroid/media/AudioDeviceAttributes;)Landroid/graphics/drawable/Drawable;

    .line 122
    move-result-object v2

    .line 125
    iget-object v0, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 126
    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->getCallbacks()Ljava/util/Collection;

    .line 128
    move-result-object v0

    .line 131
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 132
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 134
    move-result-object v0

    .line 137
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    move-result v5

    .line 141
    if-eqz v5, :cond_3

    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    move-result-object v5

    .line 147
    check-cast v5, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;

    .line 148
    invoke-interface {v5, v2, v3, v4}, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;->onAboutToConnectDeviceAdded(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    goto :goto_1

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;

    .line 154
    iget-object v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    .line 156
    if-eqz v2, :cond_4

    .line 158
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    .line 160
    move-result-object v2

    .line 163
    if-eqz v2, :cond_4

    .line 164
    invoke-virtual {v2}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    .line 166
    move-result v1

    .line 169
    :cond_4
    iput v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->playbackType:I

    .line 170
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;

    .line 172
    iget-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    .line 174
    if-eqz v1, :cond_5

    .line 176
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    .line 178
    move-result-object v1

    .line 181
    if-eqz v1, :cond_5

    .line 182
    invoke-virtual {v1}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControlId()Ljava/lang/String;

    .line 184
    move-result-object v1

    .line 187
    goto :goto_2

    .line 188
    :cond_5
    const/4 v1, 0x0

    .line 189
    :goto_2
    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->playbackVolumeControlId:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;

    .line 192
    iget-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->controller:Landroid/media/session/MediaController;

    .line 194
    if-eqz v1, :cond_6

    .line 196
    invoke-virtual {v1, v0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 198
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;

    .line 201
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->updateCurrent()V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;

    .line 206
    const/4 v1, 0x1

    .line 208
    iput-boolean v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->started:Z

    .line 209
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$stop$1;->this$1:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;

    .line 211
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 213
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->configListener:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$configListener$1;

    .line 215
    check-cast p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 217
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 219
    :cond_7
    return-void

    .line 222
    nop

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 224
.end method
