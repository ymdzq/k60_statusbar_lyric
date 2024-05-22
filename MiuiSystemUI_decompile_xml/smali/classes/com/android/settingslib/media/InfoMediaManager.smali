.class public final Lcom/android/settingslib/media/InfoMediaManager;
.super Lcom/android/settingslib/media/MediaManager;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

.field final mExecutor:Ljava/util/concurrent/Executor;

.field public mIsScanning:Z

.field final mMediaRouterCallback:Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;

.field mPackageName:Ljava/lang/String;

.field public final mPreferenceItemMap:Ljava/util/Map;

.field mRouterManager:Landroid/media/MediaRouter2Manager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "InfoMediaManager"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/settingslib/media/InfoMediaManager;->DEBUG:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/settingslib/media/MediaManager;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;-><init>(Lcom/android/settingslib/media/InfoMediaManager;)V

    .line 7
    iput-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mMediaRouterCallback:Lcom/android/settingslib/media/InfoMediaManager$RouterManagerCallback;

    .line 10
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 12
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 16
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mIsScanning:Z

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPreferenceItemMap:Ljava/util/Map;

    .line 26
    invoke-static {p1}, Landroid/media/MediaRouter2Manager;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2Manager;

    .line 28
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    .line 32
    iput-object p3, p0, Lcom/android/settingslib/media/InfoMediaManager;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 34
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result p1

    .line 39
    if-nez p1, :cond_0

    .line 40
    iput-object p2, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    .line 42
    :cond_0
    return-void
    .line 44
.end method


# virtual methods
.method public addMediaDevice(Landroid/media/MediaRoute2Info;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaRoute2Info;->getType()I

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x4

    .line 8
    iget-object v3, v0, Lcom/android/settingslib/media/InfoMediaManager;->mPreferenceItemMap:Ljava/util/Map;

    .line 9
    if-eqz v1, :cond_4

    .line 11
    const/16 v4, 0x1a

    .line 13
    const/4 v5, 0x0

    .line 15
    if-eq v1, v4, :cond_2

    .line 16
    const/16 v4, 0x7d0

    .line 18
    if-eq v1, v4, :cond_4

    .line 20
    const/4 v4, 0x2

    .line 22
    if-eq v1, v4, :cond_0

    .line 23
    const/4 v4, 0x3

    .line 25
    if-eq v1, v4, :cond_0

    .line 26
    if-eq v1, v2, :cond_0

    .line 28
    const/16 v4, 0x8

    .line 30
    if-eq v1, v4, :cond_2

    .line 32
    const/16 v4, 0x9

    .line 34
    if-eq v1, v4, :cond_0

    .line 36
    const/16 v4, 0x16

    .line 38
    if-eq v1, v4, :cond_0

    .line 40
    const/16 v4, 0x17

    .line 42
    if-eq v1, v4, :cond_2

    .line 44
    packed-switch v1, :pswitch_data_0

    .line 46
    packed-switch v1, :pswitch_data_1

    .line 49
    goto :goto_0

    .line 52
    :pswitch_0
    new-instance v5, Lcom/android/settingslib/media/ComplexMediaDevice;

    .line 53
    iget-object v7, v0, Lcom/android/settingslib/media/MediaManager;->mContext:Landroid/content/Context;

    .line 55
    iget-object v8, v0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    .line 57
    iget-object v10, v0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    .line 59
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 61
    move-result-object v4

    .line 64
    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-result-object v3

    .line 70
    move-object v11, v3

    .line 71
    check-cast v11, Landroid/media/RouteListingPreference$Item;

    .line 72
    move-object v6, v5

    .line 74
    move-object/from16 v9, p1

    .line 75
    invoke-direct/range {v6 .. v11}, Lcom/android/settingslib/media/ComplexMediaDevice;-><init>(Landroid/content/Context;Landroid/media/MediaRouter2Manager;Landroid/media/MediaRoute2Info;Ljava/lang/String;Landroid/media/RouteListingPreference$Item;)V

    .line 77
    :goto_0
    const-string v3, "addMediaDevice() unknown device type : "

    .line 80
    const-string v4, "InfoMediaManager"

    .line 82
    invoke-static {v3, v1, v4}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    goto/16 :goto_2

    .line 87
    :cond_0
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 92
    move-object v4, v3

    .line 93
    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 96
    move-result v1

    .line 99
    if-eqz v1, :cond_1

    .line 100
    new-instance v1, Lcom/android/settingslib/media/PhoneMediaDevice;

    .line 102
    iget-object v5, v0, Lcom/android/settingslib/media/MediaManager;->mContext:Landroid/content/Context;

    .line 104
    iget-object v6, v0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    .line 106
    iget-object v8, v0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 110
    move-result-object v4

    .line 113
    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 114
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-result-object v3

    .line 119
    move-object v9, v3

    .line 120
    check-cast v9, Landroid/media/RouteListingPreference$Item;

    .line 121
    move-object v4, v1

    .line 123
    move-object/from16 v7, p1

    .line 124
    invoke-direct/range {v4 .. v9}, Lcom/android/settingslib/media/PhoneMediaDevice;-><init>(Landroid/content/Context;Landroid/media/MediaRouter2Manager;Landroid/media/MediaRoute2Info;Ljava/lang/String;Landroid/media/RouteListingPreference$Item;)V

    .line 126
    goto :goto_1

    .line 129
    :cond_1
    new-instance v1, Lcom/android/settingslib/media/PhoneMediaDevice;

    .line 130
    iget-object v11, v0, Lcom/android/settingslib/media/MediaManager;->mContext:Landroid/content/Context;

    .line 132
    iget-object v12, v0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    .line 134
    iget-object v14, v0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    .line 136
    const/4 v15, 0x0

    .line 138
    move-object v10, v1

    .line 139
    move-object/from16 v13, p1

    .line 140
    invoke-direct/range {v10 .. v15}, Lcom/android/settingslib/media/PhoneMediaDevice;-><init>(Landroid/content/Context;Landroid/media/MediaRouter2Manager;Landroid/media/MediaRoute2Info;Ljava/lang/String;Landroid/media/RouteListingPreference$Item;)V

    .line 142
    goto :goto_1

    .line 145
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 146
    move-result-object v1

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaRoute2Info;->getAddress()Ljava/lang/String;

    .line 150
    move-result-object v4

    .line 153
    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 154
    move-result-object v1

    .line 157
    iget-object v4, v0, Lcom/android/settingslib/media/InfoMediaManager;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 158
    iget-object v4, v4, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 160
    invoke-virtual {v4, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 162
    move-result-object v8

    .line 165
    if-eqz v8, :cond_5

    .line 166
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 168
    move-result-object v1

    .line 171
    move-object v4, v3

    .line 172
    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap;

    .line 173
    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 175
    move-result v1

    .line 178
    if-eqz v1, :cond_3

    .line 179
    new-instance v1, Lcom/android/settingslib/media/BluetoothMediaDevice;

    .line 181
    iget-object v7, v0, Lcom/android/settingslib/media/MediaManager;->mContext:Landroid/content/Context;

    .line 183
    iget-object v9, v0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    .line 185
    iget-object v11, v0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 189
    move-result-object v4

    .line 192
    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 193
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    move-result-object v3

    .line 198
    move-object v12, v3

    .line 199
    check-cast v12, Landroid/media/RouteListingPreference$Item;

    .line 200
    move-object v6, v1

    .line 202
    move-object/from16 v10, p1

    .line 203
    invoke-direct/range {v6 .. v12}, Lcom/android/settingslib/media/BluetoothMediaDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/media/MediaRouter2Manager;Landroid/media/MediaRoute2Info;Ljava/lang/String;Landroid/media/RouteListingPreference$Item;)V

    .line 205
    goto :goto_1

    .line 208
    :cond_3
    new-instance v1, Lcom/android/settingslib/media/BluetoothMediaDevice;

    .line 209
    iget-object v7, v0, Lcom/android/settingslib/media/MediaManager;->mContext:Landroid/content/Context;

    .line 211
    iget-object v9, v0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    .line 213
    iget-object v11, v0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    .line 215
    move-object v6, v1

    .line 217
    move-object/from16 v10, p1

    .line 218
    invoke-direct/range {v6 .. v11}, Lcom/android/settingslib/media/BluetoothMediaDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/media/MediaRouter2Manager;Landroid/media/MediaRoute2Info;Ljava/lang/String;)V

    .line 220
    :goto_1
    move-object v5, v1

    .line 223
    goto :goto_2

    .line 224
    :cond_4
    :pswitch_2
    new-instance v5, Lcom/android/settingslib/media/InfoMediaDevice;

    .line 225
    iget-object v7, v0, Lcom/android/settingslib/media/MediaManager;->mContext:Landroid/content/Context;

    .line 227
    iget-object v8, v0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    .line 229
    iget-object v10, v0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 233
    move-result-object v1

    .line 236
    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 237
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    move-result-object v1

    .line 242
    move-object v11, v1

    .line 243
    check-cast v11, Landroid/media/RouteListingPreference$Item;

    .line 244
    move-object v6, v5

    .line 246
    move-object/from16 v9, p1

    .line 247
    invoke-direct/range {v6 .. v11}, Lcom/android/settingslib/media/InfoMediaDevice;-><init>(Landroid/content/Context;Landroid/media/MediaRouter2Manager;Landroid/media/MediaRoute2Info;Ljava/lang/String;Landroid/media/RouteListingPreference$Item;)V

    .line 249
    :cond_5
    :goto_2
    if-eqz v5, :cond_6

    .line 252
    iget-object v1, v0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    .line 254
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 256
    move-result v1

    .line 259
    if-nez v1, :cond_6

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/media/InfoMediaManager;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    .line 262
    move-result-object v1

    .line 265
    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    .line 266
    move-result-object v1

    .line 269
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 270
    move-result-object v3

    .line 273
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 274
    move-result v1

    .line 277
    if-eqz v1, :cond_6

    .line 278
    iput v2, v5, Lcom/android/settingslib/media/MediaDevice;->mState:I

    .line 280
    iget-object v1, v0, Lcom/android/settingslib/media/InfoMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 282
    if-nez v1, :cond_6

    .line 284
    iput-object v5, v0, Lcom/android/settingslib/media/InfoMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 286
    :cond_6
    if-eqz v5, :cond_7

    .line 288
    iget-object v0, v0, Lcom/android/settingslib/media/MediaManager;->mMediaDevices:Ljava/util/List;

    .line 290
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 292
    invoke-virtual {v0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_7
    return-void

    .line 297
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 298
    :pswitch_data_1
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
    .line 308
.end method

.method public final buildAllRoutes()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaRouter2Manager;->getAllRoutes()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 22
    sget-boolean v2, Lcom/android/settingslib/media/InfoMediaManager;->DEBUG:Z

    .line 24
    if-eqz v2, :cond_1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    const-string v3, "buildAllRoutes() route : "

    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    .line 35
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    const-string v3, ", volume : "

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getVolume()I

    .line 47
    move-result v3

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v3, ", type : "

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getType()I

    .line 59
    move-result v3

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 69
    const-string v3, "InfoMediaManager"

    .line 70
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    .line 75
    move-result v2

    .line 78
    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {p0, v1}, Lcom/android/settingslib/media/InfoMediaManager;->addMediaDevice(Landroid/media/MediaRoute2Info;)V

    .line 81
    goto :goto_0

    .line 84
    :cond_2
    return-void
    .line 85
.end method

.method public final declared-synchronized buildAvailableRoutes()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/settingslib/media/InfoMediaManager;->getAvailableRoutes(Ljava/lang/String;)Ljava/util/List;

    .line 5
    move-result-object v0

    .line 8
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 24
    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 25
    sget-boolean v2, Lcom/android/settingslib/media/InfoMediaManager;->DEBUG:Z

    .line 27
    if-eqz v2, :cond_0

    .line 29
    const-string v2, "InfoMediaManager"

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    const-string v4, "buildAvailableRoutes() route : "

    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    .line 43
    move-result-object v4

    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    const-string v4, ", volume : "

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getVolume()I

    .line 55
    move-result v4

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const-string v4, ", type : "

    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getType()I

    .line 67
    move-result v4

    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v3

    .line 77
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settingslib/media/InfoMediaManager;->addMediaDevice(Landroid/media/MediaRoute2Info;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    goto :goto_0

    .line 84
    :cond_1
    monitor-exit p0

    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    monitor-exit p0

    .line 88
    throw v0
    .line 89
.end method

.method public final declared-synchronized getAvailableRoutes(Ljava/lang/String;)Ljava/util/List;
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/InfoMediaManager;->getRoutingSessionInfo(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    .line 8
    move-result-object v1

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    if-eqz v1, :cond_0

    .line 17
    iget-object v2, p0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    .line 19
    invoke-virtual {v2, v1}, Landroid/media/MediaRouter2Manager;->getSelectedRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    .line 21
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 25
    iget-object v3, p0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    .line 28
    invoke-virtual {v3, v1}, Landroid/media/MediaRouter2Manager;->getSelectableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    .line 30
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    .line 37
    invoke-virtual {v1, p1}, Landroid/media/MediaRouter2Manager;->getTransferableRoutes(Ljava/lang/String;)Ljava/util/List;

    .line 39
    move-result-object v1

    .line 42
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v1

    .line 46
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v3

    .line 50
    const/4 v4, 0x0

    .line 51
    if-eqz v3, :cond_4

    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 57
    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object v5

    .line 63
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v6

    .line 67
    if-eqz v6, :cond_3

    .line 68
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v6

    .line 73
    check-cast v6, Landroid/media/MediaRoute2Info;

    .line 74
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 76
    move-result-object v7

    .line 79
    invoke-virtual {v6}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 80
    move-result-object v6

    .line 83
    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 84
    move-result v6

    .line 87
    if-eqz v6, :cond_2

    .line 88
    const/4 v4, 0x1

    .line 90
    :cond_3
    if-nez v4, :cond_1

    .line 91
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    goto :goto_0

    .line 96
    :cond_4
    iget-object v1, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    .line 97
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 99
    move-result v1

    .line 102
    if-nez v1, :cond_8

    .line 103
    iget-object v1, p0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    .line 105
    iget-object v3, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    .line 107
    invoke-virtual {v1, v3}, Landroid/media/MediaRouter2Manager;->getRouteListingPreference(Ljava/lang/String;)Landroid/media/RouteListingPreference;

    .line 109
    move-result-object v1

    .line 112
    if-eqz v1, :cond_7

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    .line 115
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-virtual {v1}, Landroid/media/RouteListingPreference;->getItems()Ljava/util/List;

    .line 120
    move-result-object v1

    .line 123
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 124
    move-result-object v1

    .line 127
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    move-result v3

    .line 131
    if-eqz v3, :cond_6

    .line 132
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    move-result-object v3

    .line 137
    check-cast v3, Landroid/media/RouteListingPreference$Item;

    .line 138
    invoke-virtual {v3}, Landroid/media/RouteListingPreference$Item;->getFlags()I

    .line 140
    move-result v5

    .line 143
    and-int/lit8 v5, v5, 0x4

    .line 144
    if-eqz v5, :cond_5

    .line 146
    invoke-virtual {v0, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 148
    goto :goto_1

    .line 151
    :cond_5
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    goto :goto_1

    .line 155
    :cond_6
    iget-object v1, p0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    .line 156
    invoke-virtual {v1, p1}, Landroid/media/MediaRouter2Manager;->getAvailableRoutes(Ljava/lang/String;)Ljava/util/List;

    .line 158
    move-result-object p1

    .line 161
    invoke-static {v2, p1, v0}, Lcom/android/settingslib/media/InfoMediaManager$Api34Impl;->arrangeRouteListByPreference(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 162
    move-result-object v0

    .line 165
    :cond_7
    invoke-static {v0}, Lcom/android/settingslib/media/InfoMediaManager$Api34Impl;->filterDuplicatedIds(Ljava/util/List;)Ljava/util/List;

    .line 166
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    .line 170
    return-object p1

    .line 171
    :cond_8
    monitor-exit p0

    .line 172
    return-object v0

    .line 173
    :catchall_0
    move-exception p1

    .line 174
    monitor-exit p0

    .line 175
    throw p1
    .line 176
.end method

.method public final getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/media/InfoMediaManager;->getRoutingSessionInfo(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getRoutingSessionInfo(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    .line 3
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter2Manager;->getRoutingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/RoutingSessionInfo;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized refreshDevices()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/media/MediaManager;->mMediaDevices:Ljava/util/List;

    .line 3
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 7
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 11
    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->buildAllRoutes()V

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->buildAvailableRoutes()V

    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaManager;->dispatchDeviceListAdded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    monitor-exit p0

    .line 34
    throw v0
    .line 35
.end method
