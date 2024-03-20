.class public final Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BluetoothController;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public mAudioProfileOnly:Z

.field public final mBgHandler:Landroid/os/Handler;

.field public volatile mBluetoothBattery:I

.field public mBoostFrameworkClass:Ljava/lang/Class;

.field public mBoostFrameworkInstance:Ljava/lang/Object;

.field public final mConnectedDevices:Ljava/util/List;

.field public mConnectionState:I

.field public final mContext:Landroid/content/Context;

.field public final mCurrentUser:I

.field public mEnabled:Z

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

.field public volatile mInoutState:I

.field public final mIntentReceiver:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$2;

.field public mIsActive:Z

.field public mLastActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field public final mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public final mLogger:Lcom/android/systemui/bluetooth/BluetoothLogger;

.field public mPerfHintFunc:Ljava/lang/reflect/Method;

.field public volatile mRestrictState:Z

.field public mState:I

.field public final mUpdateConnectedRunnable:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "BluetoothController"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/bluetooth/BluetoothLogger;Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl;Landroid/os/Looper;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Landroid/bluetooth/BluetoothAdapter;Landroid/os/Handler;)V
    .locals 8

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object/from16 v2, p8

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectedDevices:Ljava/util/List;

    .line 14
    const/4 v3, 0x0

    .line 16
    iput v3, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    .line 17
    const/16 v3, 0xa

    .line 19
    iput v3, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mState:I

    .line 21
    const/4 v3, -0x1

    .line 23
    iput v3, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mBluetoothBattery:I

    .line 24
    const/4 v3, 0x0

    .line 26
    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mBoostFrameworkClass:Ljava/lang/Class;

    .line 27
    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mBoostFrameworkInstance:Ljava/lang/Object;

    .line 29
    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mPerfHintFunc:Ljava/lang/reflect/Method;

    .line 31
    new-instance v3, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;

    .line 33
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    .line 35
    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mUpdateConnectedRunnable:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;

    .line 38
    new-instance v3, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$2;

    .line 40
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    .line 42
    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mIntentReceiver:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$2;

    .line 45
    move-object v4, p2

    .line 47
    iput-object v4, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 48
    move-object v4, p5

    .line 50
    iput-object v4, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLogger:Lcom/android/systemui/bluetooth/BluetoothLogger;

    .line 51
    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 53
    new-instance v4, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    .line 55
    move-object v5, p7

    .line 57
    invoke-direct {v4, p0, p7}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/os/Looper;)V

    .line 58
    iput-object v4, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    .line 61
    if-eqz v2, :cond_1

    .line 63
    iget-object v4, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 65
    iget-object v4, v4, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    .line 67
    check-cast v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 69
    invoke-virtual {v4, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v4, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 74
    iget-object v4, v4, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    .line 76
    check-cast v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 78
    invoke-virtual {v4, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v2, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 83
    monitor-enter v2

    .line 85
    :try_start_0
    iget-object v4, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 86
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    .line 88
    move-result v5

    .line 91
    iget v6, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mState:I

    .line 92
    if-eq v5, v6, :cond_0

    .line 94
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    .line 96
    move-result v4

    .line 99
    invoke-virtual {v2, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 100
    :cond_0
    iget v4, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit v2

    .line 105
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->onBluetoothStateChanged(I)V

    .line 106
    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    monitor-exit v2

    .line 111
    throw v0

    .line 112
    :cond_1
    :goto_0
    const-string/jumbo v2, "user"

    .line 113
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    move-result-object v2

    .line 119
    check-cast v2, Landroid/os/UserManager;

    .line 120
    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mUserManager:Landroid/os/UserManager;

    .line 122
    move-object v2, p3

    .line 124
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 125
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 127
    move-result v2

    .line 130
    iput v2, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCurrentUser:I

    .line 131
    const-string v2, "BluetoothController"

    .line 133
    move-object v4, p4

    .line 135
    invoke-virtual {p4, v2, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 136
    move-object/from16 v2, p9

    .line 139
    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 141
    move-object/from16 v2, p10

    .line 143
    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mBgHandler:Landroid/os/Handler;

    .line 145
    new-instance v4, Landroid/content/IntentFilter;

    .line 147
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 149
    const-string v5, "com.android.bluetooth.opp.BLUETOOTH_OPP_INBOUND_START"

    .line 152
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v5, "com.android.bluetooth.opp.BLUETOOTH_OPP_INBOUND_END"

    .line 157
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v5, "com.android.bluetooth.opp.BLUETOOTH_OPP_OUTBOUND_START"

    .line 162
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v5, "com.android.bluetooth.opp.BLUETOOTH_OPP_OUTBOUND_END"

    .line 167
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v5, "android.intent.action.BLUETOOTH_HANDSFREE_BATTERY_CHANGED"

    .line 172
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 177
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 182
    const/4 v6, 0x0

    .line 184
    const/4 v7, 0x2

    .line 185
    move-object p2, p1

    .line 186
    move-object p3, v3

    .line 187
    move-object p4, v5

    .line 188
    move-object p5, v4

    .line 189
    move-object p6, v6

    .line 190
    move-object/from16 p7, p10

    .line 191
    move/from16 p8, v7

    .line 193
    invoke-virtual/range {p2 .. p8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 195
    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    .line 198
    return-void
    .line 200
.end method

.method public static connectionStateToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_3

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    packed-switch p0, :pswitch_data_0

    .line 13
    const-string v0, "UNKNOWN("

    .line 16
    const-string v1, ")"

    .line 18
    invoke-static {v0, p0, v1}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :pswitch_0
    const-string p0, "TURNING_OFF"

    .line 25
    return-object p0

    .line 27
    :pswitch_1
    const-string p0, "ON"

    .line 28
    return-object p0

    .line 30
    :pswitch_2
    const-string p0, "TURNING_ON"

    .line 31
    return-object p0

    .line 33
    :pswitch_3
    const-string p0, "OFF"

    .line 34
    return-object p0

    .line 36
    :cond_0
    const-string p0, "DISCONNECTING"

    .line 37
    return-object p0

    .line 39
    :cond_1
    const-string p0, "CONNECTED"

    .line 40
    return-object p0

    .line 42
    :cond_2
    const-string p0, "CONNECTING"

    .line 43
    return-object p0

    .line 45
    :cond_3
    const-string p0, "DISCONNECTED"

    .line 46
    return-object p0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 50
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    .line 4
    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 7
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 11
    const/4 p1, 0x2

    .line 14
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 15
    return-void
    .line 18
.end method

.method public final canConfigBluetooth()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mCurrentUser:I

    .line 2
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 4
    move-result-object v1

    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mUserManager:Landroid/os/UserManager;

    .line 8
    const-string v2, "no_config_bluetooth"

    .line 10
    invoke-virtual {p0, v2, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 12
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    const-string v1, "no_bluetooth"

    .line 18
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 20
    move-result-object v0

    .line 23
    invoke-virtual {p0, v1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 24
    move-result p0

    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 p0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    :goto_0
    return p0
    .line 33
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string p2, "BluetoothController state:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    const-string p2, "  mLocalBluetoothManager="

    .line 7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 14
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 17
    if-nez p2, :cond_0

    .line 19
    return-void

    .line 21
    :cond_0
    const-string p2, "  mEnabled="

    .line 22
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    .line 27
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 29
    const-string p2, "  mRestrictState="

    .line 32
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 34
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mRestrictState:Z

    .line 37
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 39
    const-string p2, "  mConnectionState="

    .line 42
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    iget p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    .line 47
    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->connectionStateToString(I)Ljava/lang/String;

    .line 49
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    const-string p2, "  mAudioProfileOnly="

    .line 56
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAudioProfileOnly:Z

    .line 61
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 63
    const-string p2, "  mIsActive="

    .line 66
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mIsActive:Z

    .line 71
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 73
    const-string p2, "  mConnectedDevices="

    .line 76
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 78
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectedDevices:Ljava/util/List;

    .line 81
    monitor-enter p2

    .line 83
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 84
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectedDevices:Ljava/util/List;

    .line 86
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 92
    const-string p2, "  mCallbacks.size="

    .line 95
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    .line 100
    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    .line 102
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 104
    move-result p2

    .line 107
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 108
    const-string p2, "  Bluetooth Devices:"

    .line 111
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getDevices()Ljava/util/Collection;

    .line 116
    move-result-object p0

    .line 119
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 120
    move-result-object p0

    .line 123
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    move-result p2

    .line 127
    if-eqz p2, :cond_2

    .line 128
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    move-result-object p2

    .line 133
    check-cast p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    .line 136
    const-string v1, "    "

    .line 138
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    .line 143
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    .line 148
    move-result-object v2

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v2, " profiles="

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    new-instance v2, Ljava/util/ArrayList;

    .line 160
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 162
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    .line 165
    move-result-object v3

    .line 168
    check-cast v3, Ljava/util/ArrayList;

    .line 169
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 171
    move-result-object v3

    .line 174
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    move-result v4

    .line 178
    if-eqz v4, :cond_1

    .line 179
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    move-result-object v4

    .line 184
    check-cast v4, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 185
    invoke-interface {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    .line 187
    move-result v4

    .line 190
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 191
    move-result-object v4

    .line 194
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    goto :goto_1

    .line 198
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 199
    const-string v4, "["

    .line 201
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    const-string v4, ","

    .line 206
    invoke-static {v4, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 208
    move-result-object v2

    .line 211
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v2, "]"

    .line 215
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object v2

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v2, " connected="

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    .line 232
    move-result v2

    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 236
    const-string v2, " active[A2DP]="

    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const/4 v2, 0x2

    .line 244
    invoke-virtual {p2, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    .line 245
    move-result v2

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 249
    const-string v2, " active[HEADSET]="

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const/4 v2, 0x1

    .line 257
    invoke-virtual {p2, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    .line 258
    move-result v2

    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 262
    const-string v2, " active[HEARING_AID]="

    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const/16 v2, 0x15

    .line 270
    invoke-virtual {p2, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    .line 272
    move-result v2

    .line 275
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 276
    const-string v2, " active[LE_AUDIO]="

    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const/16 v2, 0x16

    .line 284
    invoke-virtual {p2, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    .line 286
    move-result p2

    .line 289
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    move-result-object p2

    .line 296
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    move-result-object p2

    .line 303
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    goto/16 :goto_0

    .line 307
    :cond_2
    return-void

    .line 309
    :catchall_0
    move-exception p0

    .line 310
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    throw p0
    .line 312
.end method

.method public final findBrAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object p0

    .line 9
    const-string v1, "ble_audio_address"

    .line 10
    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 15
    if-eqz p0, :cond_3

    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 18
    move-result v1

    .line 21
    const/4 v2, -0x1

    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    return-object v0

    .line 25
    :cond_0
    div-int/lit8 v2, v1, 0x12

    .line 26
    rem-int/lit8 v2, v2, 0x3

    .line 28
    if-nez v2, :cond_1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    div-int/lit8 p1, v1, 0x12

    .line 33
    rem-int/lit8 p1, p1, 0x3

    .line 35
    const/4 v2, 0x1

    .line 37
    if-ne p1, v2, :cond_2

    .line 38
    add-int/lit8 p1, v1, -0x12

    .line 40
    sub-int/2addr v1, v2

    .line 42
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    div-int/lit8 p1, v1, 0x12

    .line 48
    rem-int/lit8 p1, p1, 0x3

    .line 50
    const/4 v3, 0x2

    .line 52
    if-ne p1, v3, :cond_3

    .line 53
    add-int/lit8 p1, v1, -0x24

    .line 55
    add-int/lit8 v1, v1, -0x12

    .line 57
    sub-int/2addr v1, v2

    .line 59
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 60
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    move-object p1, v0

    .line 65
    :goto_0
    move-object v0, p1

    .line 66
    goto :goto_1

    .line 67
    :catch_0
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    :goto_1
    return-object v0
    .line 72
.end method

.method public final getBluetoothRestrictState(Landroid/content/Context;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothRestrictState(Landroid/content/Context;)Z

    .line 11
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
    .line 17
.end method

.method public final getConnectedDeviceName()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectedDevices:Ljava/util/List;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectedDevices:Ljava/util/List;

    .line 5
    check-cast v1, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectedDevices:Ljava/util/List;

    .line 16
    check-cast p0, Ljava/util/ArrayList;

    .line 18
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 24
    check-cast p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 25
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 30
    monitor-exit v0

    .line 31
    return-object p0

    .line 32
    :cond_0
    monitor-exit v0

    .line 33
    const/4 p0, 0x0

    .line 34
    return-object p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
    .line 38
.end method

.method public final getDevices()Ljava/util/Collection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 6
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    .line 8
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 13
    move-result-object p0

    .line 16
    :goto_0
    return-object p0
    .line 17
.end method

.method public final onAclConnectionStateChanged(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "ACLConnectionStateChanged="

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, " "

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->connectionStateToString(I)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 35
    const-string v1, "BluetoothController"

    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    .line 41
    move-result-object p2

    .line 44
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->connectionStateToString(I)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLogger:Lcom/android/systemui/bluetooth/BluetoothLogger;

    .line 49
    invoke-virtual {v0, p2, p1}, Lcom/android/systemui/bluetooth/BluetoothLogger;->logAclConnectionStateChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V

    .line 57
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    .line 60
    const/4 p1, 0x2

    .line 62
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 63
    return-void
    .line 66
.end method

.method public final onActiveDeviceChanged(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    if-eqz p2, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "ActiveDeviceChanged="

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, " profileId="

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 33
    const-string v1, "BluetoothController"

    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 39
    if-nez p2, :cond_1

    .line 40
    move-object v1, v0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 47
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLogger:Lcom/android/systemui/bluetooth/BluetoothLogger;

    .line 48
    invoke-virtual {v2, p1, v1}, Lcom/android/systemui/bluetooth/BluetoothLogger;->logActiveDeviceChanged(ILjava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getDevices()Ljava/util/Collection;

    .line 53
    move-result-object p1

    .line 56
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object p1

    .line 60
    const/4 v1, 0x0

    .line 61
    move v2, v1

    .line 62
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result v3

    .line 66
    const/4 v4, 0x2

    .line 67
    if-eqz v3, :cond_4

    .line 68
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v3

    .line 73
    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 74
    const/4 v5, 0x1

    .line 76
    invoke-virtual {v3, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    .line 77
    move-result v6

    .line 80
    if-nez v6, :cond_3

    .line 81
    invoke-virtual {v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    .line 83
    move-result v4

    .line 86
    if-nez v4, :cond_3

    .line 87
    const/16 v4, 0x15

    .line 89
    invoke-virtual {v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    .line 91
    move-result v4

    .line 94
    if-nez v4, :cond_3

    .line 95
    const/16 v4, 0x16

    .line 97
    invoke-virtual {v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    .line 99
    move-result v6

    .line 102
    if-nez v6, :cond_3

    .line 103
    invoke-virtual {v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    .line 105
    move-result v3

    .line 108
    if-eqz v3, :cond_2

    .line 109
    goto :goto_2

    .line 111
    :cond_2
    move v5, v1

    .line 112
    :cond_3
    :goto_2
    or-int/2addr v2, v5

    .line 113
    goto :goto_1

    .line 114
    :cond_4
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mIsActive:Z

    .line 115
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    .line 117
    if-eq p1, v2, :cond_5

    .line 119
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mIsActive:Z

    .line 121
    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 123
    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mIsActive:Z

    .line 126
    if-eqz p1, :cond_6

    .line 128
    if-eqz p2, :cond_6

    .line 130
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 132
    goto :goto_3

    .line 134
    :cond_6
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 135
    :goto_3
    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 137
    return-void
    .line 140
.end method

.method public final onBluetoothStateChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLogger:Lcom/android/systemui/bluetooth/BluetoothLogger;

    .line 2
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/systemui/bluetooth/BluetoothLogger;->logStateChange(Ljava/lang/String;)V

    .line 8
    const/16 v0, 0xc

    .line 11
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    const/16 v0, 0xb

    .line 17
    if-ne p1, v0, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    move v0, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    move v0, v1

    .line 24
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    .line 25
    iput p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mState:I

    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isSupportBluetoothRestrict(Landroid/content/Context;)Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getBluetoothRestrictState(Landroid/content/Context;)Z

    .line 39
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    goto :goto_2

    .line 45
    :cond_2
    move v1, v2

    .line 46
    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mRestrictState:Z

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    const-string v1, "onBluetoothStateChanged() bluetoothState: "

    .line 51
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->connectionStateToString(I)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 66
    const-string v0, "BluetoothController"

    .line 67
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V

    .line 72
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    .line 75
    if-nez p1, :cond_3

    .line 77
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->setInoutState(I)V

    .line 79
    const/4 p1, -0x1

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->setBluetoothBattery(I)V

    .line 83
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    .line 86
    const/4 p1, 0x2

    .line 88
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 89
    return-void
    .line 92
.end method

.method public final onConnectionStateChanged(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    if-eqz p2, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "ConnectionStateChanged="

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, " "

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->connectionStateToString(I)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 37
    const-string v1, "BluetoothController"

    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    if-nez p2, :cond_1

    .line 43
    const/4 p2, 0x0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    .line 47
    move-result-object p2

    .line 50
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->connectionStateToString(I)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLogger:Lcom/android/systemui/bluetooth/BluetoothLogger;

    .line 55
    invoke-virtual {v0, p2, p1}, Lcom/android/systemui/bluetooth/BluetoothLogger;->logDeviceConnectionStateChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V

    .line 60
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    .line 63
    const/4 p1, 0x2

    .line 65
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 66
    return-void
    .line 69
.end method

.method public final onConnectionStatusFetched(Lcom/android/systemui/statusbar/policy/bluetooth/ConnectionStatusModel;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/bluetooth/ConnectionStatusModel;->connectedDevices:Ljava/util/List;

    .line 2
    iget p1, p1, Lcom/android/systemui/statusbar/policy/bluetooth/ConnectionStatusModel;->maxConnectionState:I

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectedDevices:Ljava/util/List;

    .line 6
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectedDevices:Ljava/util/List;

    .line 9
    check-cast v2, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 13
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectedDevices:Ljava/util/List;

    .line 16
    check-cast v2, Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    .line 24
    const/4 v1, 0x2

    .line 26
    if-eq p1, v0, :cond_0

    .line 27
    iput p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    .line 29
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getDevices()Ljava/util/Collection;

    .line 36
    move-result-object p1

    .line 39
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object p1

    .line 43
    const/4 v0, 0x0

    .line 44
    move v2, v0

    .line 45
    move v3, v2

    .line 46
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v4

    .line 50
    const/4 v5, 0x1

    .line 51
    if-eqz v4, :cond_4

    .line 52
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v4

    .line 57
    check-cast v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 58
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    .line 60
    move-result-object v6

    .line 63
    check-cast v6, Ljava/util/ArrayList;

    .line 64
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 66
    move-result-object v6

    .line 69
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result v7

    .line 73
    if-eqz v7, :cond_1

    .line 74
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v7

    .line 79
    check-cast v7, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 80
    invoke-interface {v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    .line 82
    move-result v8

    .line 85
    invoke-virtual {v4, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    .line 86
    move-result v7

    .line 89
    if-eq v8, v5, :cond_3

    .line 90
    if-eq v8, v1, :cond_3

    .line 92
    const/16 v9, 0x15

    .line 94
    if-eq v8, v9, :cond_3

    .line 96
    const/16 v9, 0x16

    .line 98
    if-ne v8, v9, :cond_2

    .line 100
    goto :goto_1

    .line 102
    :cond_2
    or-int/2addr v3, v7

    .line 103
    goto :goto_0

    .line 104
    :cond_3
    :goto_1
    or-int/2addr v2, v7

    .line 105
    goto :goto_0

    .line 106
    :cond_4
    if-eqz v2, :cond_5

    .line 107
    if-nez v3, :cond_5

    .line 109
    move v0, v5

    .line 111
    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAudioProfileOnly:Z

    .line 112
    if-eq v0, p1, :cond_6

    .line 114
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAudioProfileOnly:Z

    .line 116
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    .line 118
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 120
    :cond_6
    return-void

    .line 123
    :catchall_0
    move-exception p0

    .line 124
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    throw p0
    .line 126
.end method

.method public final onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "DeviceAdded="

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    const-string v1, "BluetoothController"

    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLogger:Lcom/android/systemui/bluetooth/BluetoothLogger;

    .line 33
    invoke-virtual {v1, v0}, Lcom/android/systemui/bluetooth/BluetoothLogger;->logDeviceAdded(Ljava/lang/String;)V

    .line 35
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    .line 38
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 40
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    .line 48
    const/4 p1, 0x1

    .line 50
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 51
    return-void
    .line 54
.end method

.method public final onDeviceAttributesChanged()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-string v0, "BluetoothController"

    .line 6
    const-string v1, "DeviceAttributesChanged"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLogger:Lcom/android/systemui/bluetooth/BluetoothLogger;

    .line 13
    invoke-virtual {v0}, Lcom/android/systemui/bluetooth/BluetoothLogger;->logDeviceAttributesChanged()V

    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mBgHandler:Landroid/os/Handler;

    .line 18
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mUpdateConnectedRunnable:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;

    .line 20
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    return-void
    .line 28
.end method

.method public final onDeviceBondStateChanged(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "DeviceBondStateChanged="

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    const-string v1, "BluetoothController"

    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLogger:Lcom/android/systemui/bluetooth/BluetoothLogger;

    .line 29
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 34
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/bluetooth/BluetoothLogger;->logBondStateChange(ILjava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V

    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    .line 41
    const/4 p1, 0x1

    .line 43
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 44
    return-void
    .line 47
.end method

.method public final onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "DeviceDeleted="

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 25
    const-string v1, "BluetoothController"

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLogger:Lcom/android/systemui/bluetooth/BluetoothLogger;

    .line 31
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, Lcom/android/systemui/bluetooth/BluetoothLogger;->logDeviceDeleted(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    .line 43
    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 46
    return-void
    .line 49
.end method

.method public final onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->DEBUG:Z

    .line 4
    const-string v2, "BluetoothController"

    .line 6
    if-eqz v1, :cond_0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    const-string v3, "ProfileConnectionStateChanged="

    .line 12
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v3, " "

    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->connectionStateToString(I)Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v3, " profileId="

    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 47
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 54
    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->connectionStateToString(I)Ljava/lang/String;

    .line 55
    move-result-object p2

    .line 58
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLogger:Lcom/android/systemui/bluetooth/BluetoothLogger;

    .line 59
    invoke-virtual {v3, v1, p2, p3}, Lcom/android/systemui/bluetooth/BluetoothLogger;->logProfileConnectionStateChanged(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    :try_start_0
    sget-boolean p2, Lcom/miui/utils/configs/MiuiConfigs;->SUPPORT_LEAUDIO_CG:Z

    .line 64
    if-eqz p2, :cond_4

    .line 66
    const/16 p2, 0x16

    .line 68
    if-eq p3, p2, :cond_1

    .line 70
    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 76
    if-eqz p1, :cond_4

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result p2

    .line 82
    if-nez p2, :cond_4

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->findBrAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object p2

    .line 88
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result p3

    .line 92
    if-nez p3, :cond_2

    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result p2

    .line 98
    if-nez p2, :cond_2

    .line 99
    const/4 p2, 0x1

    .line 101
    goto :goto_0

    .line 102
    :cond_2
    const/4 p2, 0x0

    .line 103
    :goto_0
    if-eqz p2, :cond_4

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->findBrAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 109
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 110
    move-result-object p2

    .line 113
    if-eqz p2, :cond_4

    .line 114
    if-eqz p1, :cond_4

    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    if-nez p3, :cond_4

    .line 122
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 124
    if-nez p3, :cond_3

    .line 126
    goto :goto_1

    .line 128
    :cond_3
    :try_start_1
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    goto :goto_1

    .line 132
    :catch_0
    move-exception p1

    .line 133
    const-string p2, "checkAndUpdateBrDevice Exception "

    .line 134
    invoke-static {p2, p1, v2}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 136
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V

    .line 139
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    .line 142
    const/4 p1, 0x2

    .line 144
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 145
    return-void
    .line 148
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    .line 4
    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    return-void
    .line 14
.end method

.method public final setBluetoothBattery(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p1, -0x1

    .line 6
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mBluetoothBattery:I

    .line 7
    if-eq p1, v0, :cond_1

    .line 9
    iput p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mBluetoothBattery:I

    .line 11
    const-string/jumbo v0, "setBluetoothBattery: "

    .line 13
    const-string v1, "BluetoothController"

    .line 16
    invoke-static {v0, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    .line 21
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 23
    move-result-object p1

    .line 26
    const/16 v0, 0x65

    .line 27
    iput v0, p1, Landroid/os/Message;->what:I

    .line 29
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    .line 31
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 33
    :cond_1
    return-void
    .line 36
.end method

.method public final setBluetoothEnabled(Z)V
    .locals 11

    .line 1
    const-string v0, "BluetoothController"

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 4
    if-eqz v1, :cond_a

    .line 6
    const-string v2, "BluetoothApp="

    .line 8
    const-string/jumbo v3, "support_bluetooth_boost"

    .line 10
    const/4 v4, 0x0

    .line 13
    invoke-static {v3, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 14
    move-result v3

    .line 17
    if-eqz v3, :cond_5

    .line 18
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mBoostFrameworkClass:Ljava/lang/Class;

    .line 20
    const/4 v5, 0x3

    .line 22
    const/4 v6, 0x4

    .line 23
    const/4 v7, 0x1

    .line 24
    const/4 v8, 0x2

    .line 25
    if-eqz v3, :cond_0

    .line 26
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mBoostFrameworkInstance:Ljava/lang/Object;

    .line 28
    if-eqz v3, :cond_0

    .line 30
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mPerfHintFunc:Ljava/lang/reflect/Method;

    .line 32
    if-nez v3, :cond_1

    .line 34
    :cond_0
    const-string v3, "android.util.BoostFramework"

    .line 36
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 38
    move-result-object v3

    .line 41
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mBoostFrameworkClass:Ljava/lang/Class;

    .line 42
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 47
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mBoostFrameworkInstance:Ljava/lang/Object;

    .line 48
    new-array v3, v6, [Ljava/lang/Class;

    .line 50
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 52
    aput-object v9, v3, v4

    .line 54
    const-class v10, Ljava/lang/String;

    .line 56
    aput-object v10, v3, v7

    .line 58
    aput-object v9, v3, v8

    .line 60
    aput-object v9, v3, v5

    .line 62
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mBoostFrameworkClass:Ljava/lang/Class;

    .line 64
    const-string v10, "perfHint"

    .line 66
    invoke-virtual {v9, v10, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 68
    move-result-object v3

    .line 71
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mPerfHintFunc:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    :cond_1
    const-string v3, "bluetooth_boost_value"

    .line 74
    invoke-static {v3}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v3

    .line 79
    if-nez v3, :cond_2

    .line 80
    const-string p0, "invokePerfHintFunc: boostValue null"

    .line 82
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 88
    move-result v9

    .line 91
    if-ge v9, v7, :cond_3

    .line 92
    const-string p0, "invokePerfHintFunc: boostValue error"

    .line 94
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    goto :goto_0

    .line 99
    :cond_3
    :try_start_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mBoostFrameworkInstance:Ljava/lang/Object;

    .line 100
    if-eqz v9, :cond_5

    .line 102
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mPerfHintFunc:Ljava/lang/reflect/Method;

    .line 104
    if-eqz v9, :cond_5

    .line 106
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 108
    move-result v9

    .line 111
    if-le v9, v8, :cond_4

    .line 112
    const-string v9, "0x"

    .line 114
    invoke-virtual {v3, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 116
    move-result-object v10

    .line 119
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 120
    move-result v9

    .line 123
    if-eqz v9, :cond_4

    .line 124
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 126
    move-result-object v3

    .line 129
    :cond_4
    const/16 v9, 0x10

    .line 130
    invoke-static {v3, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 132
    move-result v3

    .line 135
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mPerfHintFunc:Ljava/lang/reflect/Method;

    .line 136
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mBoostFrameworkInstance:Ljava/lang/Object;

    .line 138
    new-array v6, v6, [Ljava/lang/Object;

    .line 140
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    move-result-object v3

    .line 145
    aput-object v3, v6, v4

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    .line 148
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    .line 153
    move-result-object v2

    .line 156
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v2

    .line 163
    aput-object v2, v6, v7

    .line 164
    const/4 v2, -0x1

    .line 166
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    move-result-object v2

    .line 170
    aput-object v2, v6, v8

    .line 171
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    move-result-object v2

    .line 176
    aput-object v2, v6, v5

    .line 177
    invoke-virtual {v9, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    move-result-object p0

    .line 182
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    goto :goto_0

    .line 186
    :catch_0
    const-string p0, "invokePerfHintFunc: invoke exception"

    .line 187
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    goto :goto_0

    .line 192
    :catch_1
    const-string p0, "invokePerfHintFunc: android.util.BoostFramework not found"

    .line 193
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_5
    :goto_0
    iget-object p0, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 198
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 200
    if-eqz p1, :cond_6

    .line 202
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 204
    move-result v1

    .line 207
    goto :goto_1

    .line 208
    :cond_6
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 209
    move-result v1

    .line 212
    :goto_1
    if-eqz v1, :cond_8

    .line 213
    if-eqz p1, :cond_7

    .line 215
    const/16 v2, 0xb

    .line 217
    goto :goto_2

    .line 219
    :cond_7
    const/16 v2, 0xd

    .line 220
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 222
    goto :goto_3

    .line 225
    :cond_8
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 226
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    .line 228
    move-result v3

    .line 231
    iget v4, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mState:I

    .line 232
    if-eq v3, v4, :cond_9

    .line 234
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    .line 236
    move-result v2

    .line 239
    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 240
    :cond_9
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 243
    const-string/jumbo v2, "setBluetoothEnabled("

    .line 245
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 251
    const-string p1, "), result: "

    .line 254
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    move-result-object p0

    .line 265
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    goto :goto_4

    .line 269
    :cond_a
    const-string/jumbo p0, "setBluetoothEnabled() mLocalBluetoothManager is null"

    .line 270
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_4
    return-void
    .line 276
.end method

.method public final setInoutState(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p1, 0x0

    .line 6
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mInoutState:I

    .line 7
    if-eq v0, p1, :cond_1

    .line 9
    iput p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mInoutState:I

    .line 11
    const-string/jumbo v0, "setInoutState: "

    .line 13
    const-string v1, "BluetoothController"

    .line 16
    invoke-static {v0, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    .line 21
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 23
    move-result-object p1

    .line 26
    const/16 v0, 0x64

    .line 27
    iput v0, p1, Landroid/os/Message;->what:I

    .line 29
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    .line 31
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 33
    :cond_1
    return-void
    .line 36
.end method

.method public final updateConnected()V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 9
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 11
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 13
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    .line 15
    move-result v0

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getDevices()Ljava/util/Collection;

    .line 24
    move-result-object v2

    .line 27
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v2

    .line 31
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v3

    .line 35
    const/4 v4, 0x0

    .line 36
    if-eqz v3, :cond_5

    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 42
    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 43
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    .line 45
    move-result v5

    .line 48
    if-le v5, v0, :cond_1

    .line 49
    move v0, v5

    .line 51
    :cond_1
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    .line 52
    move-result v6

    .line 55
    if-eqz v6, :cond_2

    .line 56
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    const/4 v4, 0x1

    .line 61
    :cond_2
    if-nez v5, :cond_0

    .line 62
    if-nez v4, :cond_0

    .line 64
    iget-object v4, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    .line 66
    :try_start_0
    check-cast v4, Ljava/util/HashSet;

    .line 68
    invoke-virtual {v4}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    .line 70
    move-result-object v4

    .line 73
    check-cast v4, Ljava/util/HashSet;

    .line 74
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 76
    move-result-object v4

    .line 79
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    move-result v5

    .line 83
    if-eqz v5, :cond_0

    .line 84
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    move-result-object v5

    .line 89
    check-cast v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 90
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    .line 92
    move-result v6

    .line 95
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    .line 96
    move-result v5

    .line 99
    if-le v6, v0, :cond_4

    .line 100
    move v0, v6

    .line 102
    :cond_4
    if-eqz v5, :cond_3

    .line 103
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_0

    .line 108
    :catch_0
    move-exception v3

    .line 109
    const-string v4, "Exception "

    .line 110
    const-string v5, "BluetoothController"

    .line 112
    invoke-static {v4, v3, v5}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 114
    goto :goto_0

    .line 117
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 118
    move-result v2

    .line 121
    if-eqz v2, :cond_6

    .line 122
    const/4 v2, 0x2

    .line 124
    if-ne v0, v2, :cond_6

    .line 125
    move v0, v4

    .line 127
    :cond_6
    new-instance v2, Lcom/android/systemui/statusbar/policy/bluetooth/ConnectionStatusModel;

    .line 128
    invoke-direct {v2, v0, v1}, Lcom/android/systemui/statusbar/policy/bluetooth/ConnectionStatusModel;-><init>(ILjava/util/List;)V

    .line 130
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->onConnectionStatusFetched(Lcom/android/systemui/statusbar/policy/bluetooth/ConnectionStatusModel;)V

    .line 133
    return-void
    .line 136
.end method
