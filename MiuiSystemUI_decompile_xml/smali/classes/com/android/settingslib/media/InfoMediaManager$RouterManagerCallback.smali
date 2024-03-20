.class public final Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/media/MediaRouter2Manager$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/media/InfoMediaManager;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/media/InfoMediaManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPreferredFeaturesChanged(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    .line 2
    iget-object p2, p2, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    .line 4
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    .line 12
    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->refreshDevices()V

    .line 14
    :cond_0
    return-void
    .line 17
.end method

.method public final onRequestFailed(I)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    iget-object p0, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    .line 9
    invoke-direct {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_3

    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;

    .line 28
    iget-object v1, v0, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    .line 30
    iget-object v1, v1, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevicesLock:Ljava/lang/Object;

    .line 32
    monitor-enter v1

    .line 34
    :try_start_0
    iget-object v2, v0, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    .line 35
    iget-object v2, v2, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    .line 37
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v2

    .line 42
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 52
    check-cast v3, Lcom/android/settingslib/media/MediaDevice;

    .line 53
    iget v4, v3, Lcom/android/settingslib/media/MediaDevice;->mState:I

    .line 55
    const/4 v5, 0x1

    .line 57
    if-ne v4, v5, :cond_1

    .line 58
    const/4 v4, 0x3

    .line 60
    iput v4, v3, Lcom/android/settingslib/media/MediaDevice;->mState:I

    .line 61
    goto :goto_0

    .line 63
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object v0, v0, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    .line 65
    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->getCallbacks()Ljava/util/Collection;

    .line 67
    move-result-object v0

    .line 70
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 71
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 73
    move-result-object v0

    .line 76
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    move-result v1

    .line 80
    if-eqz v1, :cond_0

    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    move-result-object v1

    .line 86
    check-cast v1, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;

    .line 87
    invoke-interface {v1, p1}, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;->onRequestFailed(I)V

    .line 89
    goto :goto_1

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    throw p0

    .line 95
    :cond_3
    return-void
    .line 96
.end method

.method public final onRouteListingPreferenceUpdated(Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    .line 2
    iget-object v0, v0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    .line 4
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    move-result p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    .line 12
    iget-object p1, p1, Lcom/android/settingslib/media/InfoMediaManager;->mPreferenceItemMap:Ljava/util/Map;

    .line 14
    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 18
    if-eqz p2, :cond_0

    .line 21
    invoke-virtual {p2}, Landroid/media/RouteListingPreference;->getItems()Ljava/util/List;

    .line 23
    move-result-object p2

    .line 26
    new-instance v0, Lcom/android/settingslib/media/InfoMediaManager$Api34Impl$$ExternalSyntheticLambda0;

    .line 27
    invoke-direct {v0, p1}, Lcom/android/settingslib/media/InfoMediaManager$Api34Impl$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    .line 29
    invoke-interface {p2, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    .line 35
    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->refreshDevices()V

    .line 37
    :cond_1
    return-void
    .line 40
.end method

.method public final onRoutesUpdated()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    .line 2
    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->refreshDevices()V

    .line 4
    return-void
    .line 7
.end method

.method public final onSessionReleased(Landroid/media/RoutingSessionInfo;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    .line 2
    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->refreshDevices()V

    .line 4
    return-void
    .line 7
.end method

.method public final onSessionUpdated(Landroid/media/RoutingSessionInfo;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    .line 2
    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->refreshDevices()V

    .line 4
    return-void
    .line 7
.end method

.method public final onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/settingslib/media/InfoMediaManager;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "onTransferred() oldSession : "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getName()Ljava/lang/CharSequence;

    .line 13
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    const-string p1, ", newSession : "

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getName()Ljava/lang/CharSequence;

    .line 25
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 35
    const-string p2, "InfoMediaManager"

    .line 36
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    .line 41
    iget-object p1, p1, Lcom/android/settingslib/media/MediaManager;->mMediaDevices:Ljava/util/List;

    .line 43
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 45
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 47
    iget-object p1, p0, Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    .line 50
    const/4 p2, 0x0

    .line 52
    iput-object p2, p1, Lcom/android/settingslib/media/InfoMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 53
    iget-object p1, p1, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    move-result p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    iget-object p1, p0, Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    .line 63
    invoke-virtual {p1}, Lcom/android/settingslib/media/InfoMediaManager;->buildAllRoutes()V

    .line 65
    goto :goto_0

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    .line 69
    invoke-virtual {p1}, Lcom/android/settingslib/media/InfoMediaManager;->buildAvailableRoutes()V

    .line 71
    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    .line 74
    iget-object p1, p1, Lcom/android/settingslib/media/InfoMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 76
    if-eqz p1, :cond_2

    .line 78
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    .line 80
    move-result-object p2

    .line 83
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 89
    iget-object p0, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    .line 91
    invoke-direct {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 93
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 96
    move-result-object p0

    .line 99
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    move-result p1

    .line 103
    if-eqz p1, :cond_5

    .line 104
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    move-result-object p1

    .line 109
    check-cast p1, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;

    .line 110
    iget-object p1, p1, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    .line 112
    invoke-virtual {p1, p2}, Lcom/android/settingslib/media/LocalMediaManager;->getMediaDeviceById(Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;

    .line 114
    move-result-object v0

    .line 117
    if-eqz v0, :cond_4

    .line 118
    goto :goto_1

    .line 120
    :cond_4
    invoke-virtual {p1}, Lcom/android/settingslib/media/LocalMediaManager;->updateCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;

    .line 121
    move-result-object v0

    .line 124
    :goto_1
    iput-object v0, p1, Lcom/android/settingslib/media/LocalMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 125
    if-eqz v0, :cond_3

    .line 127
    const/4 v1, 0x0

    .line 129
    iput v1, v0, Lcom/android/settingslib/media/MediaDevice;->mState:I

    .line 130
    invoke-virtual {p1}, Lcom/android/settingslib/media/LocalMediaManager;->getCallbacks()Ljava/util/Collection;

    .line 132
    move-result-object p1

    .line 135
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 136
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 138
    move-result-object p1

    .line 141
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    move-result v1

    .line 145
    if-eqz v1, :cond_3

    .line 146
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    move-result-object v1

    .line 151
    check-cast v1, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;

    .line 152
    invoke-interface {v1, v0}, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;->onSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;)V

    .line 154
    goto :goto_2

    .line 157
    :cond_5
    return-void
    .line 158
.end method
