.class public final Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

.field public mA2dpSinkProfile:Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

.field public mBCProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

.field public mBroadcastProfileObject:Ljava/lang/Object;

.field public final mContext:Landroid/content/Context;

.field public mCsipSetCoordinatorProfile:Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;

.field public final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field public mDunProfile:Lcom/android/settingslib/bluetooth/DunServerProfile;

.field public final mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

.field public mGroupClientProfile:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

.field public mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

.field public mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

.field public mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

.field public mHfpClientProfile:Lcom/android/settingslib/bluetooth/HfpClientProfile;

.field public mHidDeviceProfile:Lcom/android/settingslib/bluetooth/HidDeviceProfile;

.field public mHidProfile:Lcom/android/settingslib/bluetooth/HidProfile;

.field public mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

.field public mLeAudioBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

.field public mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

.field public mMapClientProfile:Lcom/android/settingslib/bluetooth/MapClientProfile;

.field public mMapProfile:Lcom/android/settingslib/bluetooth/MapProfile;

.field public mOppProfile:Lcom/android/settingslib/bluetooth/OppProfile;

.field public mPanProfile:Lcom/android/settingslib/bluetooth/PanProfile;

.field public mPbapClientProfile:Lcom/android/settingslib/bluetooth/PbapClientProfile;

.field public mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

.field public final mProfileNameMap:Ljava/util/Map;

.field public mSapProfile:Lcom/android/settingslib/bluetooth/SapProfile;

.field public final mServiceListeners:Ljava/util/Collection;

.field public mVcpProfile:Lcom/android/settingslib/bluetooth/VcpProfile;

.field public mVolumeControlProfile:Lcom/android/settingslib/bluetooth/VolumeControlProfile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    .line 17
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    .line 19
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 21
    iput-object p4, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 23
    iput-object p0, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 25
    const-string p0, "LocalBluetoothProfileManager"

    .line 27
    const-string p1, "LocalBluetoothProfileManager construction complete"

    .line 29
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
    .line 34
.end method

.method public static isBASeeker(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    const-string p0, "LocalBluetoothProfileManager"

    .line 5
    const-string v1, "isBASeeker: device is null"

    .line 7
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    return v0

    .line 12
    :cond_0
    const-string v1, "com.android.settingslib.bluetooth.BCProfile"

    .line 13
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    move-result-object v1

    .line 18
    const-string v2, "isBASeeker"

    .line 19
    const/4 v3, 0x1

    .line 21
    new-array v3, v3, [Ljava/lang/Class;

    .line 22
    const-class v4, Landroid/bluetooth/BluetoothDevice;

    .line 24
    aput-object v4, v3, v0

    .line 26
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 28
    move-result-object v1

    .line 31
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v1, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 40
    check-cast p0, Ljava/lang/Boolean;

    .line 41
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 49
    :goto_0
    return v0
    .line 52
.end method


# virtual methods
.method public final addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 4
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 7
    invoke-virtual {v1, p3, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 9
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    .line 12
    check-cast p0, Ljava/util/HashMap;

    .line 14
    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    return-void
    .line 19
.end method

.method public final callServiceConnectedListeners()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    .line 4
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 23
    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 25
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V

    .line 27
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    .line 30
    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 33
    goto :goto_0

    .line 36
    :cond_0
    return-void
    .line 37
.end method

.method public final callServiceDisconnectedListeners()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    .line 4
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    return-void
    .line 29
.end method

.method public getHidDeviceProfile()Lcom/android/settingslib/bluetooth/HidDeviceProfile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidDeviceProfile:Lcom/android/settingslib/bluetooth/HidDeviceProfile;

    .line 2
    return-object p0
    .line 4
.end method

.method public getHidProfile()Lcom/android/settingslib/bluetooth/HidProfile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settingslib/bluetooth/HidProfile;

    .line 2
    return-object p0
    .line 4
.end method

.method public final updateLocalProfiles()V
    .locals 12

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getSupportedProfiles()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 10
    move-result v1

    .line 13
    const-string v2, "LocalBluetoothProfileManager"

    .line 14
    if-eqz v1, :cond_0

    .line 16
    const-string/jumbo p0, "supportedList is null"

    .line 18
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 25
    const/4 v3, 0x2

    .line 27
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 28
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    .line 30
    if-nez v1, :cond_1

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v1

    .line 37
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    const-string v1, "Adding local A2DP profile"

    .line 44
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 49
    invoke-direct {v1, v5, v4, p0}, Lcom/android/settingslib/bluetooth/A2dpProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    .line 51
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 54
    const-string v6, "A2DP"

    .line 56
    const-string v7, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 58
    invoke-virtual {p0, v1, v6, v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    .line 63
    if-nez v1, :cond_2

    .line 65
    const/16 v1, 0xb

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v1

    .line 72
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 73
    move-result v1

    .line 76
    if-eqz v1, :cond_2

    .line 77
    const-string v1, "Adding local A2DP SINK profile"

    .line 79
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v1, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    .line 84
    invoke-direct {v1, v5, v4}, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;)V

    .line 86
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    .line 89
    const-string v6, "A2DPSink"

    .line 91
    const-string v7, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    .line 93
    invoke-virtual {p0, v1, v6, v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .line 98
    iget-object v6, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    .line 100
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 102
    const/4 v8, 0x1

    .line 104
    if-nez v1, :cond_3

    .line 105
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    move-result-object v1

    .line 110
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 111
    move-result v1

    .line 114
    if-eqz v1, :cond_3

    .line 115
    const-string v1, "Adding local HEADSET profile"

    .line 117
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v1, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .line 122
    invoke-direct {v1, v5, v4, p0}, Lcom/android/settingslib/bluetooth/HeadsetProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    .line 124
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .line 127
    new-instance v9, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$HeadsetStateChangeHandler;

    .line 129
    invoke-direct {v9, p0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$HeadsetStateChangeHandler;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/android/settingslib/bluetooth/HeadsetProfile;)V

    .line 131
    const-string v10, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 134
    invoke-virtual {v7, v10, v9}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 136
    const-string v10, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 139
    invoke-virtual {v7, v10, v9}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 141
    move-object v9, v6

    .line 144
    check-cast v9, Ljava/util/HashMap;

    .line 145
    const-string v10, "HEADSET"

    .line 147
    invoke-virtual {v9, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_3
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    .line 152
    if-nez v1, :cond_4

    .line 154
    const/16 v1, 0x10

    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    move-result-object v1

    .line 161
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 162
    move-result v1

    .line 165
    if-eqz v1, :cond_4

    .line 166
    const-string v1, "Adding local HfpClient profile"

    .line 168
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v1, Lcom/android/settingslib/bluetooth/HfpClientProfile;

    .line 173
    invoke-direct {v1, v5, v4}, Lcom/android/settingslib/bluetooth/HfpClientProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;)V

    .line 175
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    .line 178
    const-string v9, "HEADSET_CLIENT"

    .line 180
    const-string v10, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    .line 182
    invoke-virtual {p0, v1, v9, v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_4
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapClientProfile:Lcom/android/settingslib/bluetooth/MapClientProfile;

    .line 187
    if-nez v1, :cond_5

    .line 189
    const/16 v1, 0x12

    .line 191
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    move-result-object v1

    .line 196
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 197
    move-result v1

    .line 200
    if-eqz v1, :cond_5

    .line 201
    const-string v1, "Adding local MAP CLIENT profile"

    .line 203
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v1, Lcom/android/settingslib/bluetooth/MapClientProfile;

    .line 208
    invoke-direct {v1, v5, v4, p0}, Lcom/android/settingslib/bluetooth/MapClientProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    .line 210
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapClientProfile:Lcom/android/settingslib/bluetooth/MapClientProfile;

    .line 213
    const-string v9, "MAP Client"

    .line 215
    const-string v10, "android.bluetooth.mapmce.profile.action.CONNECTION_STATE_CHANGED"

    .line 217
    invoke-virtual {p0, v1, v9, v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_5
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settingslib/bluetooth/MapProfile;

    .line 222
    if-nez v1, :cond_6

    .line 224
    const/16 v1, 0x9

    .line 226
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    move-result-object v1

    .line 231
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 232
    move-result v1

    .line 235
    if-eqz v1, :cond_6

    .line 236
    const-string v1, "Adding local MAP profile"

    .line 238
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v1, Lcom/android/settingslib/bluetooth/MapProfile;

    .line 243
    invoke-direct {v1, v5, v4, p0}, Lcom/android/settingslib/bluetooth/MapProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    .line 245
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settingslib/bluetooth/MapProfile;

    .line 248
    const-string v9, "MAP"

    .line 250
    const-string v10, "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

    .line 252
    invoke-virtual {p0, v1, v9, v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_6
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settingslib/bluetooth/OppProfile;

    .line 257
    if-nez v1, :cond_7

    .line 259
    const/16 v1, 0x14

    .line 261
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    move-result-object v1

    .line 266
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 267
    move-result v1

    .line 270
    if-eqz v1, :cond_7

    .line 271
    const-string v1, "Adding local OPP profile"

    .line 273
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v1, Lcom/android/settingslib/bluetooth/OppProfile;

    .line 278
    invoke-direct {v1}, Lcom/android/settingslib/bluetooth/OppProfile;-><init>()V

    .line 280
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settingslib/bluetooth/OppProfile;

    .line 283
    const-string v9, "OPP"

    .line 285
    move-object v10, v6

    .line 287
    check-cast v10, Ljava/util/HashMap;

    .line 288
    invoke-virtual {v10, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_7
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    .line 293
    if-nez v1, :cond_8

    .line 295
    const/16 v1, 0x15

    .line 297
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 299
    move-result-object v1

    .line 302
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 303
    move-result v1

    .line 306
    if-eqz v1, :cond_8

    .line 307
    const-string v1, "Adding local Hearing Aid profile"

    .line 309
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v1, Lcom/android/settingslib/bluetooth/HearingAidProfile;

    .line 314
    invoke-direct {v1, v5, v4, p0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    .line 316
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    .line 319
    const-string v9, "HearingAid"

    .line 321
    const-string v10, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    .line 323
    invoke-virtual {p0, v1, v9, v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_8
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    .line 328
    if-nez v1, :cond_9

    .line 330
    const/16 v1, 0x1c

    .line 332
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 334
    move-result-object v1

    .line 337
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 338
    move-result v1

    .line 341
    if-eqz v1, :cond_9

    .line 342
    const-string v1, "Adding local HAP_CLIENT profile"

    .line 344
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v1, Lcom/android/settingslib/bluetooth/HapClientProfile;

    .line 349
    invoke-direct {v1, v5, v4, p0}, Lcom/android/settingslib/bluetooth/HapClientProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    .line 351
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    .line 354
    const-string v9, "HapClient"

    .line 356
    const-string v10, "android.bluetooth.action.HAP_CONNECTION_STATE_CHANGED"

    .line 358
    invoke-virtual {p0, v1, v9, v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_9
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settingslib/bluetooth/HidProfile;

    .line 363
    if-nez v1, :cond_a

    .line 365
    const/4 v1, 0x4

    .line 367
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 368
    move-result-object v1

    .line 371
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 372
    move-result v1

    .line 375
    if-eqz v1, :cond_a

    .line 376
    const-string v1, "Adding local HID_HOST profile"

    .line 378
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    new-instance v1, Lcom/android/settingslib/bluetooth/HidProfile;

    .line 383
    invoke-direct {v1, v5, v4}, Lcom/android/settingslib/bluetooth/HidProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;)V

    .line 385
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settingslib/bluetooth/HidProfile;

    .line 388
    const-string v9, "HID"

    .line 390
    const-string v10, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    .line 392
    invoke-virtual {p0, v1, v9, v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_a
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidDeviceProfile:Lcom/android/settingslib/bluetooth/HidDeviceProfile;

    .line 397
    if-nez v1, :cond_b

    .line 399
    const/16 v1, 0x13

    .line 401
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 403
    move-result-object v1

    .line 406
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 407
    move-result v1

    .line 410
    if-eqz v1, :cond_b

    .line 411
    const-string v1, "Adding local HID_DEVICE profile"

    .line 413
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    new-instance v1, Lcom/android/settingslib/bluetooth/HidDeviceProfile;

    .line 418
    invoke-direct {v1, v5, v4}, Lcom/android/settingslib/bluetooth/HidDeviceProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;)V

    .line 420
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidDeviceProfile:Lcom/android/settingslib/bluetooth/HidDeviceProfile;

    .line 423
    const-string v9, "HID DEVICE"

    .line 425
    const-string v10, "android.bluetooth.hiddevice.profile.action.CONNECTION_STATE_CHANGED"

    .line 427
    invoke-virtual {p0, v1, v9, v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_b
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settingslib/bluetooth/PanProfile;

    .line 432
    if-nez v1, :cond_c

    .line 434
    const/4 v1, 0x5

    .line 436
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 437
    move-result-object v1

    .line 440
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 441
    move-result v1

    .line 444
    if-eqz v1, :cond_c

    .line 445
    const-string v1, "Adding local PAN profile"

    .line 447
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    new-instance v1, Lcom/android/settingslib/bluetooth/PanProfile;

    .line 452
    invoke-direct {v1, v5}, Lcom/android/settingslib/bluetooth/PanProfile;-><init>(Landroid/content/Context;)V

    .line 454
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settingslib/bluetooth/PanProfile;

    .line 457
    new-instance v9, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;

    .line 459
    invoke-direct {v9, p0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/android/settingslib/bluetooth/PanProfile;)V

    .line 461
    const-string v10, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    .line 464
    invoke-virtual {v7, v10, v9}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 466
    move-object v9, v6

    .line 469
    check-cast v9, Ljava/util/HashMap;

    .line 470
    const-string v10, "PAN"

    .line 472
    invoke-virtual {v9, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    :cond_c
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    .line 477
    if-nez v1, :cond_d

    .line 479
    const/4 v1, 0x6

    .line 481
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 482
    move-result-object v1

    .line 485
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 486
    move-result v1

    .line 489
    if-eqz v1, :cond_d

    .line 490
    const-string v1, "Adding local PBAP profile"

    .line 492
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    new-instance v1, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    .line 497
    invoke-direct {v1, v5}, Lcom/android/settingslib/bluetooth/PbapServerProfile;-><init>(Landroid/content/Context;)V

    .line 499
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    .line 502
    const-string v9, "PBAP Server"

    .line 504
    const-string v10, "android.bluetooth.pbap.profile.action.CONNECTION_STATE_CHANGED"

    .line 506
    invoke-virtual {p0, v1, v9, v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_d
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    .line 511
    if-nez v1, :cond_e

    .line 513
    const/16 v1, 0x11

    .line 515
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 517
    move-result-object v1

    .line 520
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 521
    move-result v1

    .line 524
    if-eqz v1, :cond_e

    .line 525
    const-string v1, "Adding local PBAP Client profile"

    .line 527
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    new-instance v1, Lcom/android/settingslib/bluetooth/PbapClientProfile;

    .line 532
    invoke-direct {v1, v5, v4}, Lcom/android/settingslib/bluetooth/PbapClientProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;)V

    .line 534
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    .line 537
    const-string v9, "PbapClient"

    .line 539
    const-string v10, "android.bluetooth.pbapclient.profile.action.CONNECTION_STATE_CHANGED"

    .line 541
    invoke-virtual {p0, v1, v9, v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_e
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mBCProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 546
    const/4 v9, 0x0

    .line 548
    if-nez v1, :cond_f

    .line 549
    const/16 v1, 0x23

    .line 551
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 553
    move-result-object v1

    .line 556
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 557
    move-result v1

    .line 560
    if-eqz v1, :cond_f

    .line 561
    const-string v1, "Adding local BC profile"

    .line 563
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :try_start_0
    const-string v1, "com.android.settingslib.bluetooth.BCProfile"

    .line 568
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 570
    move-result-object v1

    .line 573
    const/4 v10, 0x3

    .line 574
    new-array v10, v10, [Ljava/lang/Class;

    .line 575
    const-class v11, Landroid/content/Context;

    .line 577
    aput-object v11, v10, v9

    .line 579
    const-class v11, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 581
    aput-object v11, v10, v8

    .line 583
    const-class v11, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 585
    aput-object v11, v10, v3

    .line 587
    invoke-virtual {v1, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 589
    move-result-object v1

    .line 592
    filled-new-array {v5, v4, p0}, [Ljava/lang/Object;

    .line 593
    move-result-object v3

    .line 596
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    move-result-object v1

    .line 600
    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 601
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mBCProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 603
    const-string v3, "BCProfile"

    .line 605
    const-string v10, "android.bluetooth.bc.profile.action.CONNECTION_STATE_CHANGED"

    .line 607
    invoke-virtual {p0, v1, v3, v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    goto :goto_0

    .line 612
    :catch_0
    move-exception v1

    .line 613
    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 614
    :cond_f
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mSapProfile:Lcom/android/settingslib/bluetooth/SapProfile;

    .line 617
    if-nez v1, :cond_10

    .line 619
    const/16 v1, 0xa

    .line 621
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 623
    move-result-object v1

    .line 626
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 627
    move-result v1

    .line 630
    if-eqz v1, :cond_10

    .line 631
    const-string v1, "Adding local SAP profile"

    .line 633
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    new-instance v1, Lcom/android/settingslib/bluetooth/SapProfile;

    .line 638
    invoke-direct {v1, v5, v4, p0}, Lcom/android/settingslib/bluetooth/SapProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    .line 640
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mSapProfile:Lcom/android/settingslib/bluetooth/SapProfile;

    .line 643
    const-string v3, "SAP"

    .line 645
    const-string v10, "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

    .line 647
    invoke-virtual {p0, v1, v3, v10}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    :cond_10
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mBroadcastProfileObject:Ljava/lang/Object;

    .line 652
    if-nez v1, :cond_11

    .line 654
    const/16 v1, 0x21

    .line 656
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 658
    move-result-object v1

    .line 661
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 662
    move-result v1

    .line 665
    if-eqz v1, :cond_11

    .line 666
    const-string v1, "Adding local Broadcast profile"

    .line 668
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :try_start_1
    const-string v1, "com.android.settingslib.bluetooth.BroadcastProfile"

    .line 673
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 675
    move-result-object v1

    .line 678
    new-array v3, v8, [Ljava/lang/Class;

    .line 679
    const-class v8, Landroid/content/Context;

    .line 681
    aput-object v8, v3, v9

    .line 683
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 685
    move-result-object v1

    .line 688
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 689
    move-result-object v3

    .line 692
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    move-result-object v1

    .line 696
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mBroadcastProfileObject:Ljava/lang/Object;

    .line 697
    const-string v3, "Broadcast"

    .line 699
    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 701
    move-object v8, v6

    .line 703
    check-cast v8, Ljava/util/HashMap;

    .line 704
    invoke-virtual {v8, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 706
    goto :goto_1

    .line 709
    :catch_1
    move-exception v1

    .line 710
    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 711
    :cond_11
    :goto_1
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDunProfile:Lcom/android/settingslib/bluetooth/DunServerProfile;

    .line 714
    if-nez v1, :cond_12

    .line 716
    const/16 v1, 0x1f

    .line 718
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 720
    move-result-object v1

    .line 723
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 724
    move-result v1

    .line 727
    if-eqz v1, :cond_12

    .line 728
    const-string v1, "Adding local DUN profile"

    .line 730
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    new-instance v1, Lcom/android/settingslib/bluetooth/DunServerProfile;

    .line 735
    invoke-direct {v1, v5}, Lcom/android/settingslib/bluetooth/DunServerProfile;-><init>(Landroid/content/Context;)V

    .line 737
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDunProfile:Lcom/android/settingslib/bluetooth/DunServerProfile;

    .line 740
    const-string v3, "DUN Server"

    .line 742
    const-string v8, "codeaurora.bluetooth.dun.profile.action.CONNECTION_STATE_CHANGED"

    .line 744
    invoke-virtual {p0, v1, v3, v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    :cond_12
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mGroupClientProfile:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    .line 749
    if-nez v1, :cond_13

    .line 751
    const/16 v1, 0x20

    .line 753
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 755
    move-result-object v1

    .line 758
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 759
    move-result v1

    .line 762
    if-eqz v1, :cond_13

    .line 763
    const-string v1, "Adding local GROUP CLIENT profile"

    .line 765
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    new-instance v1, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    .line 770
    invoke-direct {v1, v5, v4, p0}, Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    .line 772
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mGroupClientProfile:Lcom/android/settingslib/bluetooth/DeviceGroupClientProfile;

    .line 775
    const-string v3, "DeviceGroup Client"

    .line 777
    const-string v8, "android.bluetooth.group.profile.action.CONNECTION_STATE_CHANGED"

    .line 779
    invoke-virtual {p0, v1, v3, v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :cond_13
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mVcpProfile:Lcom/android/settingslib/bluetooth/VcpProfile;

    .line 784
    const-string v3, "VCP"

    .line 786
    if-nez v1, :cond_14

    .line 788
    const/16 v1, 0x22

    .line 790
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 792
    move-result-object v1

    .line 795
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 796
    move-result v1

    .line 799
    if-eqz v1, :cond_14

    .line 800
    const-string v1, "Adding local VCP profile"

    .line 802
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    new-instance v1, Lcom/android/settingslib/bluetooth/VcpProfile;

    .line 807
    invoke-direct {v1, v5, p0}, Lcom/android/settingslib/bluetooth/VcpProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    .line 809
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mVcpProfile:Lcom/android/settingslib/bluetooth/VcpProfile;

    .line 812
    const-string v8, "android.bluetooth.vcp.profile.action.CONNECTION_STATE_CHANGED"

    .line 814
    invoke-virtual {p0, v1, v3, v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    :cond_14
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mVolumeControlProfile:Lcom/android/settingslib/bluetooth/VolumeControlProfile;

    .line 819
    if-nez v1, :cond_15

    .line 821
    const/16 v1, 0x17

    .line 823
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 825
    move-result-object v1

    .line 828
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 829
    move-result v1

    .line 832
    if-eqz v1, :cond_15

    .line 833
    const-string v1, "Adding local Volume Control profile"

    .line 835
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    new-instance v1, Lcom/android/settingslib/bluetooth/VolumeControlProfile;

    .line 840
    invoke-direct {v1, v5, v4, p0}, Lcom/android/settingslib/bluetooth/VolumeControlProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    .line 842
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mVolumeControlProfile:Lcom/android/settingslib/bluetooth/VolumeControlProfile;

    .line 845
    const-string v8, "android.bluetooth.volume-control.profile.action.CONNECTION_STATE_CHANGED"

    .line 847
    invoke-virtual {p0, v1, v3, v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    :cond_15
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    .line 852
    if-nez v1, :cond_16

    .line 854
    const/16 v1, 0x16

    .line 856
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 858
    move-result-object v1

    .line 861
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 862
    move-result v1

    .line 865
    if-eqz v1, :cond_16

    .line 866
    const-string v1, "Adding local LE_AUDIO profile"

    .line 868
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    new-instance v1, Lcom/android/settingslib/bluetooth/LeAudioProfile;

    .line 873
    invoke-direct {v1, v5, v4, p0}, Lcom/android/settingslib/bluetooth/LeAudioProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    .line 875
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    .line 878
    const-string v3, "LE_AUDIO"

    .line 880
    const-string v8, "android.bluetooth.action.LE_AUDIO_CONNECTION_STATE_CHANGED"

    .line 882
    invoke-virtual {p0, v1, v3, v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    :cond_16
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 887
    const-string v3, "LE_AUDIO_BROADCAST"

    .line 889
    if-nez v1, :cond_17

    .line 891
    const/16 v1, 0x1a

    .line 893
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 895
    move-result-object v1

    .line 898
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 899
    move-result v1

    .line 902
    if-eqz v1, :cond_17

    .line 903
    const-string v1, "Adding local LE_AUDIO_BROADCAST profile"

    .line 905
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    new-instance v1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 910
    invoke-direct {v1, v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;-><init>(Landroid/content/Context;)V

    .line 912
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 915
    check-cast v6, Ljava/util/HashMap;

    .line 917
    invoke-virtual {v6, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    :cond_17
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    .line 922
    if-nez v1, :cond_18

    .line 924
    const/16 v1, 0x1d

    .line 926
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 928
    move-result-object v1

    .line 931
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 932
    move-result v1

    .line 935
    if-eqz v1, :cond_18

    .line 936
    const-string v1, "Adding local LE_AUDIO_BROADCAST_ASSISTANT profile"

    .line 938
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    new-instance v1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    .line 943
    invoke-direct {v1, v5, v4, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    .line 945
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    .line 948
    const-string v6, "android.bluetooth.action.CONNECTION_STATE_CHANGED"

    .line 950
    invoke-virtual {p0, v1, v3, v6}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    :cond_18
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mCsipSetCoordinatorProfile:Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;

    .line 955
    if-nez v1, :cond_19

    .line 957
    const/16 v1, 0x19

    .line 959
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 961
    move-result-object v1

    .line 964
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 965
    move-result v0

    .line 968
    if-eqz v0, :cond_19

    .line 969
    const-string v0, "Adding local CSIP set coordinator profile"

    .line 971
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    new-instance v0, Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;

    .line 976
    invoke-direct {v0, v5, v4, p0}, Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    .line 978
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mCsipSetCoordinatorProfile:Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;

    .line 981
    const-string v1, "CSIP Set Coordinator"

    .line 983
    const-string v2, "android.bluetooth.action.CSIS_CONNECTION_STATE_CHANGED"

    .line 985
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    :cond_19
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerProfileIntentReceiver()V

    .line 990
    return-void
    .line 993
.end method

.method public final declared-synchronized updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 1
    const-string v0, "New Profiles"

    .line 2
    const-string v1, "Current Profiles"

    .line 4
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-interface {p4}, Ljava/util/Collection;->clear()V

    .line 7
    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 10
    const-string v2, "LocalBluetoothProfileManager"

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 23
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 30
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-interface {p3}, Ljava/util/Collection;->clear()V

    .line 34
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->LE_AUDIO:Landroid/os/ParcelUuid;

    .line 37
    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    .line 45
    if-eqz v1, :cond_0

    .line 47
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    .line 52
    invoke-interface {p4, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .line 57
    const/4 v2, 0x2

    .line 59
    if-eqz v1, :cond_4

    .line 60
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    .line 62
    invoke-static {p2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    .line 70
    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    move-result v1

    .line 75
    if-nez v1, :cond_3

    .line 76
    :cond_1
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HFP_AG:Landroid/os/ParcelUuid;

    .line 78
    invoke-static {p2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    move-result v1

    .line 83
    if-eqz v1, :cond_2

    .line 84
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HFP:Landroid/os/ParcelUuid;

    .line 86
    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    move-result v1

    .line 91
    if-nez v1, :cond_3

    .line 92
    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .line 94
    invoke-virtual {v1, p6}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    .line 96
    move-result v1

    .line 99
    if-ne v1, v2, :cond_4

    .line 100
    :cond_3
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .line 102
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .line 107
    invoke-interface {p4, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 109
    :cond_4
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    .line 112
    if-eqz v1, :cond_5

    .line 114
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HFP_AG:Landroid/os/ParcelUuid;

    .line 116
    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    move-result v1

    .line 121
    if-eqz v1, :cond_5

    .line 122
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HFP:Landroid/os/ParcelUuid;

    .line 124
    invoke-static {p2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    move-result p2

    .line 129
    if-eqz p2, :cond_5

    .line 130
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    .line 132
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    .line 137
    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 139
    :cond_5
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 142
    if-eqz p2, :cond_7

    .line 144
    sget-object p2, Lcom/android/settingslib/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    .line 146
    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    .line 148
    move-result p2

    .line 151
    if-nez p2, :cond_6

    .line 152
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 154
    invoke-virtual {p2, p6}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    .line 156
    move-result p2

    .line 159
    if-ne p2, v2, :cond_7

    .line 160
    :cond_6
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 162
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 167
    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 169
    :cond_7
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .line 172
    if-eqz p2, :cond_a

    .line 174
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->ADVANCE_VOICE_P_UUID:Landroid/os/ParcelUuid;

    .line 176
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    move-result p2

    .line 181
    if-nez p2, :cond_8

    .line 182
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->ADVANCE_VOICE_T_UUID:Landroid/os/ParcelUuid;

    .line 184
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    move-result p2

    .line 189
    if-nez p2, :cond_8

    .line 190
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->ADVANCE_HEARINGAID_UUID:Landroid/os/ParcelUuid;

    .line 192
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    move-result p2

    .line 197
    if-nez p2, :cond_8

    .line 198
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .line 200
    invoke-virtual {p2, p6}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    .line 202
    move-result p2

    .line 205
    if-ne p2, v2, :cond_a

    .line 206
    :cond_8
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .line 208
    invoke-interface {p3, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 210
    move-result p2

    .line 213
    if-nez p2, :cond_9

    .line 214
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .line 216
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .line 221
    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 223
    const-string p2, "LocalBluetoothProfileManager"

    .line 226
    const-string v1, "Advance Audio Voice supported"

    .line 228
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    goto :goto_0

    .line 233
    :cond_9
    const-string p2, "LocalBluetoothProfileManager"

    .line 234
    const-string v1, "HeadsetProfile already added"

    .line 236
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_a
    :goto_0
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 241
    if-eqz p2, :cond_d

    .line 243
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->ADVANCE_MEDIA_T_UUID:Landroid/os/ParcelUuid;

    .line 245
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 247
    move-result p2

    .line 250
    if-nez p2, :cond_b

    .line 251
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->ADVANCE_HEARINGAID_UUID:Landroid/os/ParcelUuid;

    .line 253
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 255
    move-result p2

    .line 258
    if-nez p2, :cond_b

    .line 259
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->ADVANCE_MEDIA_P_UUID:Landroid/os/ParcelUuid;

    .line 261
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 263
    move-result p2

    .line 266
    if-nez p2, :cond_b

    .line 267
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->ADVANCE_MEDIA_G_UUID:Landroid/os/ParcelUuid;

    .line 269
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 271
    move-result p2

    .line 274
    if-nez p2, :cond_b

    .line 275
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->ADVANCE_MEDIA_W_UUID:Landroid/os/ParcelUuid;

    .line 277
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 279
    move-result p2

    .line 282
    if-nez p2, :cond_b

    .line 283
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 285
    invoke-virtual {p2, p6}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    .line 287
    move-result p2

    .line 290
    if-ne p2, v2, :cond_d

    .line 291
    :cond_b
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 293
    invoke-interface {p3, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 295
    move-result p2

    .line 298
    if-nez p2, :cond_c

    .line 299
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 301
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 306
    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 308
    const-string p2, "LocalBluetoothProfileManager"

    .line 311
    const-string v1, "Advance Audio Media supported"

    .line 313
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    goto :goto_1

    .line 318
    :cond_c
    const-string p2, "LocalBluetoothProfileManager"

    .line 319
    const-string v1, "A2dpProfile already added"

    .line 321
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_d
    :goto_1
    sget-object p2, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->SRC_UUIDS:[Landroid/os/ParcelUuid;

    .line 326
    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    .line 328
    move-result p2

    .line 331
    if-eqz p2, :cond_e

    .line 332
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    .line 334
    if-eqz p2, :cond_e

    .line 336
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    .line 341
    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 343
    :cond_e
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->OBEX_OBJECT_PUSH:Landroid/os/ParcelUuid;

    .line 346
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 348
    move-result p2

    .line 351
    if-eqz p2, :cond_f

    .line 352
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settingslib/bluetooth/OppProfile;

    .line 354
    if-eqz p2, :cond_f

    .line 356
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settingslib/bluetooth/OppProfile;

    .line 361
    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 363
    :cond_f
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->HID:Landroid/os/ParcelUuid;

    .line 366
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 368
    move-result p2

    .line 371
    if-nez p2, :cond_10

    .line 372
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->HOGP:Landroid/os/ParcelUuid;

    .line 374
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 376
    move-result p2

    .line 379
    if-eqz p2, :cond_11

    .line 380
    :cond_10
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settingslib/bluetooth/HidProfile;

    .line 382
    if-eqz p2, :cond_11

    .line 384
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settingslib/bluetooth/HidProfile;

    .line 389
    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 391
    :cond_11
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidDeviceProfile:Lcom/android/settingslib/bluetooth/HidDeviceProfile;

    .line 394
    if-eqz p2, :cond_12

    .line 396
    invoke-virtual {p2, p6}, Lcom/android/settingslib/bluetooth/HidDeviceProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    .line 398
    move-result p2

    .line 401
    if-eqz p2, :cond_12

    .line 402
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidDeviceProfile:Lcom/android/settingslib/bluetooth/HidDeviceProfile;

    .line 404
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidDeviceProfile:Lcom/android/settingslib/bluetooth/HidDeviceProfile;

    .line 409
    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 411
    :cond_12
    if-eqz p5, :cond_13

    .line 414
    const-string p2, "LocalBluetoothProfileManager"

    .line 416
    const-string v1, "Valid PAN-NAP connection exists."

    .line 418
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_13
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    .line 423
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 425
    move-result p2

    .line 428
    if-eqz p2, :cond_14

    .line 429
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settingslib/bluetooth/PanProfile;

    .line 431
    if-nez p2, :cond_15

    .line 433
    :cond_14
    if-eqz p5, :cond_16

    .line 435
    :cond_15
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settingslib/bluetooth/PanProfile;

    .line 437
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settingslib/bluetooth/PanProfile;

    .line 442
    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 444
    :cond_16
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settingslib/bluetooth/MapProfile;

    .line 447
    const/4 p5, 0x1

    .line 449
    if-eqz p2, :cond_17

    .line 450
    invoke-virtual {p2, p6}, Lcom/android/settingslib/bluetooth/MapProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    .line 452
    move-result p2

    .line 455
    if-ne p2, v2, :cond_17

    .line 456
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settingslib/bluetooth/MapProfile;

    .line 458
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settingslib/bluetooth/MapProfile;

    .line 463
    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 465
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settingslib/bluetooth/MapProfile;

    .line 468
    invoke-virtual {p2, p6, p5}, Lcom/android/settingslib/bluetooth/MapProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 470
    :cond_17
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    .line 473
    if-eqz p2, :cond_18

    .line 475
    sget-object p2, Lcom/android/settingslib/bluetooth/PbapServerProfile;->PBAB_CLIENT_UUIDS:[Landroid/os/ParcelUuid;

    .line 477
    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    .line 479
    move-result p2

    .line 482
    if-eqz p2, :cond_18

    .line 483
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    .line 485
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 487
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    .line 490
    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 492
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    .line 495
    invoke-virtual {p2, p6, p5}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 497
    :cond_18
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapClientProfile:Lcom/android/settingslib/bluetooth/MapClientProfile;

    .line 500
    if-eqz p2, :cond_19

    .line 502
    sget-object p2, Lcom/android/settingslib/bluetooth/MapClientProfile;->UUIDS:[Landroid/os/ParcelUuid;

    .line 504
    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    .line 506
    move-result p2

    .line 509
    if-eqz p2, :cond_19

    .line 510
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapClientProfile:Lcom/android/settingslib/bluetooth/MapClientProfile;

    .line 512
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 514
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapClientProfile:Lcom/android/settingslib/bluetooth/MapClientProfile;

    .line 517
    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 519
    :cond_19
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    .line 522
    if-eqz p2, :cond_1a

    .line 524
    sget-object p2, Lcom/android/settingslib/bluetooth/PbapClientProfile;->SRC_UUIDS:[Landroid/os/ParcelUuid;

    .line 526
    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    .line 528
    move-result p2

    .line 531
    if-eqz p2, :cond_1a

    .line 532
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    .line 534
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 536
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    .line 539
    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 541
    :cond_1a
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->HEARING_AID:Landroid/os/ParcelUuid;

    .line 544
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 546
    move-result p2

    .line 549
    if-eqz p2, :cond_1b

    .line 550
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    .line 552
    if-eqz p2, :cond_1b

    .line 554
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 556
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    .line 559
    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 561
    :cond_1b
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    .line 564
    if-eqz p2, :cond_1c

    .line 566
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->HAS:Landroid/os/ParcelUuid;

    .line 568
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 570
    move-result p2

    .line 573
    if-eqz p2, :cond_1c

    .line 574
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    .line 576
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 578
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    .line 581
    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 583
    :cond_1c
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mSapProfile:Lcom/android/settingslib/bluetooth/SapProfile;

    .line 586
    if-eqz p2, :cond_1d

    .line 588
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    .line 590
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 592
    move-result p2

    .line 595
    if-eqz p2, :cond_1d

    .line 596
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mSapProfile:Lcom/android/settingslib/bluetooth/SapProfile;

    .line 598
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 600
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mSapProfile:Lcom/android/settingslib/bluetooth/SapProfile;

    .line 603
    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 605
    :cond_1d
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mBCProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 608
    if-eqz p2, :cond_1e

    .line 610
    invoke-static {p6}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isBASeeker(Landroid/bluetooth/BluetoothDevice;)Z

    .line 612
    move-result p2

    .line 615
    if-eqz p2, :cond_1e

    .line 616
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mBCProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 618
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 620
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mBCProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 623
    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 625
    const-string p2, "LocalBluetoothProfileManager"

    .line 628
    const-string p5, "BC profile added"

    .line 630
    invoke-static {p2, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_1e
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mVolumeControlProfile:Lcom/android/settingslib/bluetooth/VolumeControlProfile;

    .line 635
    if-eqz p2, :cond_1f

    .line 637
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->VOLUME_CONTROL:Landroid/os/ParcelUuid;

    .line 639
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 641
    move-result p2

    .line 644
    if-eqz p2, :cond_1f

    .line 645
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mVolumeControlProfile:Lcom/android/settingslib/bluetooth/VolumeControlProfile;

    .line 647
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 649
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mVolumeControlProfile:Lcom/android/settingslib/bluetooth/VolumeControlProfile;

    .line 652
    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 654
    :cond_1f
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mCsipSetCoordinatorProfile:Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;

    .line 657
    if-eqz p2, :cond_20

    .line 659
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->COORDINATED_SET:Landroid/os/ParcelUuid;

    .line 661
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 663
    move-result p1

    .line 666
    if-eqz p1, :cond_20

    .line 667
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mCsipSetCoordinatorProfile:Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;

    .line 669
    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 671
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mCsipSetCoordinatorProfile:Lcom/android/settingslib/bluetooth/CsipSetCoordinatorProfile;

    .line 674
    invoke-interface {p4, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 676
    :cond_20
    const-string p1, "LocalBluetoothProfileManager"

    .line 679
    new-instance p2, Ljava/lang/StringBuilder;

    .line 681
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 686
    move-result-object p3

    .line 689
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 693
    move-result-object p2

    .line 696
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    monitor-exit p0

    .line 700
    return-void

    .line 701
    :catchall_0
    move-exception p1

    .line 702
    monitor-exit p0

    .line 703
    throw p1
    .line 704
.end method
