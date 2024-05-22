.class public abstract Lcom/android/settingslib/media/MediaManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mCallbacks:Ljava/util/Collection;

.field public final mContext:Landroid/content/Context;

.field public final mMediaDevices:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    .line 10
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/settingslib/media/MediaManager;->mMediaDevices:Ljava/util/List;

    .line 17
    iput-object p1, p0, Lcom/android/settingslib/media/MediaManager;->mContext:Landroid/content/Context;

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public final dispatchDeviceListAdded()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    iget-object v1, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 16
    if-eqz v1, :cond_7

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    .line 25
    iget-object v3, p0, Lcom/android/settingslib/media/MediaManager;->mMediaDevices:Ljava/util/List;

    .line 27
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    iget-object v3, v1, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    .line 32
    iget-object v3, v3, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevicesLock:Ljava/lang/Object;

    .line 34
    monitor-enter v3

    .line 36
    :try_start_0
    iget-object v4, v1, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    .line 37
    iget-object v4, v4, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    .line 39
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 41
    iget-object v4, v1, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    .line 44
    iget-object v4, v4, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    .line 46
    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object v2

    .line 54
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v4

    .line 58
    if-eqz v4, :cond_3

    .line 59
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v4

    .line 64
    check-cast v4, Lcom/android/settingslib/media/MediaDevice;

    .line 65
    iget v4, v4, Lcom/android/settingslib/media/MediaDevice;->mType:I

    .line 67
    const/4 v5, 0x2

    .line 69
    if-eq v4, v5, :cond_2

    .line 70
    const/4 v5, 0x3

    .line 72
    if-eq v4, v5, :cond_2

    .line 73
    const/4 v5, 0x1

    .line 75
    if-ne v4, v5, :cond_1

    .line 76
    :cond_2
    invoke-virtual {v1}, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->getMutingExpectedDevice()Lcom/android/settingslib/media/BluetoothMediaDevice;

    .line 78
    move-result-object v2

    .line 81
    if-eqz v2, :cond_3

    .line 82
    iget-object v4, v1, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    .line 84
    iget-object v4, v4, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    .line 86
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v2, v1, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    .line 92
    iget-object v3, v2, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    .line 94
    iget-object v3, v3, Lcom/android/settingslib/media/InfoMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 96
    if-eqz v3, :cond_4

    .line 98
    goto :goto_1

    .line 100
    :cond_4
    invoke-virtual {v2}, Lcom/android/settingslib/media/LocalMediaManager;->updateCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;

    .line 101
    move-result-object v3

    .line 104
    :goto_1
    iput-object v3, v2, Lcom/android/settingslib/media/LocalMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 105
    iget-object v2, v1, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    .line 107
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    new-instance v3, Ljava/util/ArrayList;

    .line 112
    iget-object v4, v2, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    .line 114
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 116
    invoke-virtual {v2}, Lcom/android/settingslib/media/LocalMediaManager;->getCallbacks()Ljava/util/Collection;

    .line 119
    move-result-object v2

    .line 122
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 123
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    move-result-object v2

    .line 128
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    move-result v4

    .line 132
    if-eqz v4, :cond_5

    .line 133
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    move-result-object v4

    .line 138
    check-cast v4, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;

    .line 139
    invoke-interface {v4, v3}, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;->onDeviceListUpdate(Ljava/util/List;)V

    .line 141
    goto :goto_2

    .line 144
    :cond_5
    iget-object v2, v1, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    .line 145
    iget-object v2, v2, Lcom/android/settingslib/media/LocalMediaManager;->mOnTransferBluetoothDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 147
    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {v2}, Lcom/android/settingslib/media/MediaDevice;->isConnected()Z

    .line 151
    move-result v2

    .line 154
    if-eqz v2, :cond_0

    .line 155
    iget-object v2, v1, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    .line 157
    iget-object v3, v2, Lcom/android/settingslib/media/LocalMediaManager;->mOnTransferBluetoothDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 159
    invoke-virtual {v2, v3}, Lcom/android/settingslib/media/LocalMediaManager;->connectDevice(Lcom/android/settingslib/media/MediaDevice;)V

    .line 161
    iget-object v2, v1, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    .line 164
    iget-object v3, v2, Lcom/android/settingslib/media/LocalMediaManager;->mOnTransferBluetoothDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 166
    const/4 v4, 0x0

    .line 168
    iput v4, v3, Lcom/android/settingslib/media/MediaDevice;->mState:I

    .line 169
    invoke-virtual {v2}, Lcom/android/settingslib/media/LocalMediaManager;->getCallbacks()Ljava/util/Collection;

    .line 171
    move-result-object v2

    .line 174
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 175
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 177
    move-result-object v2

    .line 180
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    move-result v4

    .line 184
    if-eqz v4, :cond_6

    .line 185
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    move-result-object v4

    .line 190
    check-cast v4, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;

    .line 191
    invoke-interface {v4, v3}, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;->onSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;)V

    .line 193
    goto :goto_3

    .line 196
    :cond_6
    iget-object v1, v1, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    .line 197
    const/4 v2, 0x0

    .line 199
    iput-object v2, v1, Lcom/android/settingslib/media/LocalMediaManager;->mOnTransferBluetoothDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 200
    goto/16 :goto_0

    .line 202
    :catchall_0
    move-exception p0

    .line 204
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    throw p0

    .line 206
    :cond_7
    return-void
    .line 207
.end method
