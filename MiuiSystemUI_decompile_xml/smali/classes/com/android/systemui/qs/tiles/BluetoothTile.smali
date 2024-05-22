.class public final Lcom/android/systemui/qs/tiles/BluetoothTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mCallback:Lcom/android/systemui/qs/tiles/BluetoothTile$1;

.field public final mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mMetadataChangedListener:Lcom/android/systemui/qs/tiles/BluetoothTile$$ExternalSyntheticLambda0;

.field public mMetadataRegisteredDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    .line 4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v0, "BluetoothTile"

    .line 9
    sput-object v0, Lcom/android/systemui/qs/tiles/BluetoothTile;->TAG:Ljava/lang/String;

    .line 11
    return-void
    .line 13
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/BluetoothController;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mMetadataRegisteredDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 6
    new-instance p1, Lcom/android/systemui/qs/tiles/BluetoothTile$1;

    .line 8
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$1;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V

    .line 10
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mCallback:Lcom/android/systemui/qs/tiles/BluetoothTile$1;

    .line 13
    new-instance p2, Lcom/android/systemui/qs/tiles/BluetoothTile$$ExternalSyntheticLambda0;

    .line 15
    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V

    .line 17
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mMetadataChangedListener:Lcom/android/systemui/qs/tiles/BluetoothTile$$ExternalSyntheticLambda0;

    .line 20
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 22
    new-instance p2, Landroid/os/HandlerExecutor;

    .line 24
    invoke-direct {p2, p4}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 26
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mExecutor:Ljava/util/concurrent/Executor;

    .line 29
    invoke-virtual {p0, p10, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->observe(Lcom/android/systemui/statusbar/policy/CallbackController;Ljava/lang/Object;)V

    .line 31
    return-void
    .line 34
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    const-string v0, "android.settings.BLUETOOTH_SETTINGS"

    .line 4
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    return-object p0
    .line 9
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x71

    .line 2
    return p0
    .line 4
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    const v0, 0x7f130962    # @string/quick_settings_bluetooth_label 'Bluetooth'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 4
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 6
    if-eqz p1, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    .line 12
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 14
    xor-int/lit8 p1, p1, 0x1

    .line 17
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 19
    check-cast p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->setBluetoothEnabled(Z)V

    .line 23
    return-void
    .line 26
.end method

.method public final handleSecondaryClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 2
    move-object v0, p1

    .line 4
    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->canConfigBluetooth()Z

    .line 7
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    new-instance p1, Landroid/content/Intent;

    .line 13
    const-string v0, "android.settings.BLUETOOTH_SETTINGS"

    .line 15
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    const/4 v0, 0x0

    .line 20
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 21
    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 23
    return-void

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 27
    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 29
    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 31
    if-nez p0, :cond_1

    .line 33
    const/4 p0, 0x1

    .line 35
    check-cast p1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 36
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->setBluetoothEnabled(Z)V

    .line 38
    :cond_1
    return-void
    .line 41
.end method

.method public final handleSetListening(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 2
    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->stopListeningToStaleDeviceMetadata()V

    .line 7
    :cond_0
    return-void
    .line 10
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 13

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    const-string v0, "no_bluetooth"

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    .line 9
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne p2, v0, :cond_0

    .line 13
    move p2, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p2, v2

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 18
    if-nez p2, :cond_2

    .line 20
    move-object v3, v0

    .line 22
    check-cast v3, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 23
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    .line 25
    if-eqz v3, :cond_1

    .line 27
    goto :goto_1

    .line 29
    :cond_1
    move v3, v2

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    :goto_1
    move v3, v1

    .line 32
    :goto_2
    move-object v4, v0

    .line 33
    check-cast v4, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 34
    iget v5, v4, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    .line 36
    const/4 v6, 0x2

    .line 38
    if-ne v5, v6, :cond_3

    .line 39
    move v7, v1

    .line 41
    goto :goto_3

    .line 42
    :cond_3
    move v7, v2

    .line 43
    :goto_3
    if-ne v5, v1, :cond_4

    .line 44
    move v5, v1

    .line 46
    goto :goto_4

    .line 47
    :cond_4
    move v5, v2

    .line 48
    :goto_4
    if-nez p2, :cond_6

    .line 49
    if-nez v5, :cond_6

    .line 51
    iget p2, v4, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mState:I

    .line 53
    const/16 v8, 0xb

    .line 55
    if-ne p2, v8, :cond_5

    .line 57
    goto :goto_5

    .line 59
    :cond_5
    move p2, v2

    .line 60
    goto :goto_6

    .line 61
    :cond_6
    :goto_5
    move p2, v1

    .line 62
    :goto_6
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    .line 63
    if-eqz v3, :cond_7

    .line 65
    if-eqz v7, :cond_7

    .line 67
    if-eqz p2, :cond_8

    .line 69
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->stopListeningToStaleDeviceMetadata()V

    .line 71
    :cond_8
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 74
    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 76
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 78
    if-nez p2, :cond_9

    .line 80
    new-instance p2, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 82
    invoke-direct {p2}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    .line 84
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 87
    :cond_9
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 89
    xor-int/lit8 v8, v3, 0x1

    .line 91
    iput-boolean v8, p2, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 93
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 95
    const v8, 0x7f130962    # @string/quick_settings_bluetooth_label 'Bluetooth'

    .line 97
    invoke-virtual {p2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 100
    move-result-object v8

    .line 103
    iput-object v8, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 104
    iget-boolean v8, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    .line 106
    if-eqz v5, :cond_a

    .line 108
    const p0, 0x7f13098a    # @string/quick_settings_connecting 'Connecting...'

    .line 110
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 113
    move-result-object p0

    .line 116
    goto/16 :goto_a

    .line 117
    :cond_a
    if-eqz v8, :cond_b

    .line 119
    const p0, 0x7f130968    # @string/quick_settings_bluetooth_secondary_label_transient 'Turning on…'

    .line 121
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 124
    move-result-object p0

    .line 127
    goto/16 :goto_a

    .line 128
    :cond_b
    iget-object v5, v4, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectedDevices:Ljava/util/List;

    .line 130
    monitor-enter v5

    .line 132
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    .line 133
    iget-object v9, v4, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectedDevices:Ljava/util/List;

    .line 135
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 137
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    if-eqz v3, :cond_15

    .line 141
    if-eqz v7, :cond_15

    .line 143
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 145
    move-result v5

    .line 148
    if-nez v5, :cond_15

    .line 149
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 151
    move-result v5

    .line 154
    if-le v5, v1, :cond_c

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->stopListeningToStaleDeviceMetadata()V

    .line 157
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 160
    move-result-object p0

    .line 163
    const v0, 0x7f1309b8    # @string/quick_settings_hotspot_secondary_label_num_devices '{count, plural, =1 {# device} other {# devices} }'

    .line 164
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 167
    move-result v2

    .line 170
    invoke-static {p0, v0, v2}, Lcom/android/systemui/util/PluralMessageFormaterKt;->icuMessageFormat(Landroid/content/res/Resources;II)Ljava/lang/String;

    .line 171
    move-result-object p0

    .line 174
    goto/16 :goto_a

    .line 175
    :cond_c
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    move-result-object v5

    .line 180
    check-cast v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 181
    iget-object v8, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 183
    const/16 v9, 0x12

    .line 185
    invoke-static {v8, v9}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getIntMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    .line 187
    move-result v8

    .line 190
    const/4 v9, -0x1

    .line 191
    if-le v8, v9, :cond_f

    .line 192
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mMetadataRegisteredDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 194
    if-ne v5, v10, :cond_d

    .line 196
    goto :goto_8

    .line 198
    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->stopListeningToStaleDeviceMetadata()V

    .line 199
    :try_start_1
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mExecutor:Ljava/util/concurrent/Executor;

    .line 202
    iget-object v11, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mMetadataChangedListener:Lcom/android/systemui/qs/tiles/BluetoothTile$$ExternalSyntheticLambda0;

    .line 204
    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 206
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 208
    if-nez v0, :cond_e

    .line 210
    goto :goto_7

    .line 212
    :cond_e
    iget-object v12, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 213
    invoke-virtual {v0, v12, v10, v11}, Landroid/bluetooth/BluetoothAdapter;->addOnMetadataChangedListener(Landroid/bluetooth/BluetoothDevice;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)Z

    .line 215
    :goto_7
    iput-object v5, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mMetadataRegisteredDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 218
    goto :goto_8

    .line 220
    :catch_0
    sget-object p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->TAG:Ljava/lang/String;

    .line 221
    const-string v0, "Battery metadata listener already registered for device."

    .line 223
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    goto :goto_8

    .line 228
    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->stopListeningToStaleDeviceMetadata()V

    .line 229
    iget-object p0, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 232
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    .line 234
    move-result v8

    .line 237
    :goto_8
    if-le v8, v9, :cond_10

    .line 238
    int-to-double v8, v8

    .line 240
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    .line 241
    div-double/2addr v8, v10

    .line 243
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    .line 244
    move-result-object p0

    .line 247
    invoke-virtual {p0, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 248
    move-result-object p0

    .line 251
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 252
    move-result-object p0

    .line 255
    const v0, 0x7f130964    # @string/quick_settings_bluetooth_secondary_label_battery_level '%s battery'

    .line 256
    invoke-virtual {p2, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 259
    move-result-object p0

    .line 262
    goto :goto_a

    .line 263
    :cond_10
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    .line 264
    move-result-object p0

    .line 267
    if-eqz p0, :cond_15

    .line 268
    iget-object v0, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHearingAidInfo:Lcom/android/settingslib/bluetooth/HearingAidInfo;

    .line 270
    if-eqz v0, :cond_11

    .line 272
    move v0, v1

    .line 274
    goto :goto_9

    .line 275
    :cond_11
    move v0, v2

    .line 276
    :goto_9
    if-eqz v0, :cond_12

    .line 277
    const p0, 0x7f130966    # @string/quick_settings_bluetooth_secondary_label_hearing_aids 'Hearing Aids'

    .line 279
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 282
    move-result-object p0

    .line 285
    goto :goto_a

    .line 286
    :cond_12
    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    .line 287
    move-result v0

    .line 290
    if-eqz v0, :cond_13

    .line 291
    const p0, 0x7f130963    # @string/quick_settings_bluetooth_secondary_label_audio 'Audio'

    .line 293
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 296
    move-result-object p0

    .line 299
    goto :goto_a

    .line 300
    :cond_13
    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    .line 301
    move-result v0

    .line 304
    if-eqz v0, :cond_14

    .line 305
    const p0, 0x7f130965    # @string/quick_settings_bluetooth_secondary_label_headset 'Headset'

    .line 307
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 310
    move-result-object p0

    .line 313
    goto :goto_a

    .line 314
    :cond_14
    const/4 v0, 0x3

    .line 315
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    .line 316
    move-result p0

    .line 319
    if-eqz p0, :cond_15

    .line 320
    const p0, 0x7f130967    # @string/quick_settings_bluetooth_secondary_label_input 'Input'

    .line 322
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 325
    move-result-object p0

    .line 328
    goto :goto_a

    .line 329
    :cond_15
    const/4 p0, 0x0

    .line 330
    :goto_a
    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 331
    move-result-object p0

    .line 334
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 335
    const p0, 0x7f1300d3    # @string/accessibility_quick_settings_bluetooth 'Bluetooth.'

    .line 337
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 340
    move-result-object p0

    .line 343
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 344
    const-string p0, ""

    .line 346
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 348
    const p0, 0x7f081711    # @drawable/qs_bluetooth_icon_off 'res/drawable/qs_bluetooth_icon_off.xml'

    .line 350
    if-eqz v3, :cond_19

    .line 353
    if-eqz v7, :cond_17

    .line 355
    const p0, 0x7f081712    # @drawable/qs_bluetooth_icon_on 'res/drawable/qs_bluetooth_icon_on.xml'

    .line 357
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 360
    move-result-object p0

    .line 363
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 364
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getConnectedDeviceName()Ljava/lang/String;

    .line 366
    move-result-object p0

    .line 369
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 370
    move-result p0

    .line 373
    if-nez p0, :cond_16

    .line 374
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getConnectedDeviceName()Ljava/lang/String;

    .line 376
    move-result-object p0

    .line 379
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 380
    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 382
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 387
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 389
    move-result-object v0

    .line 392
    const v1, 0x7f13004f    # @string/accessibility_bluetooth_name 'Connected to %s.'

    .line 393
    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 396
    move-result-object p2

    .line 399
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const-string p2, ", "

    .line 403
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 408
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    move-result-object p0

    .line 416
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 417
    goto :goto_b

    .line 419
    :cond_17
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    .line 420
    if-eqz v0, :cond_18

    .line 422
    const p0, 0x7f081713    # @drawable/qs_bluetooth_icon_search 'res/drawable/qs_bluetooth_icon_search.xml'

    .line 424
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 427
    move-result-object p0

    .line 430
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 431
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 433
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 435
    goto :goto_b

    .line 437
    :cond_18
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 438
    move-result-object p0

    .line 441
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 442
    const p0, 0x7f1300b8    # @string/accessibility_not_connected 'Not connected.'

    .line 444
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 447
    move-result-object p0

    .line 450
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 451
    :goto_b
    iput v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 453
    goto :goto_c

    .line 455
    :cond_19
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 456
    move-result-object p0

    .line 459
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 460
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 462
    :goto_c
    const-class p0, Landroid/widget/Switch;

    .line 464
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 466
    move-result-object p0

    .line 469
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 470
    return-void

    .line 472
    :catchall_0
    move-exception p0

    .line 473
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 474
    throw p0
.end method

.method public final isAvailable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 2
    check-cast p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method

.method public final stopListeningToStaleDeviceMetadata()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mMetadataRegisteredDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 7
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mMetadataChangedListener:Lcom/android/systemui/qs/tiles/BluetoothTile$$ExternalSyntheticLambda0;

    .line 9
    check-cast v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 11
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 13
    if-nez v1, :cond_1

    .line 15
    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 18
    invoke-virtual {v1, v0, v2}, Landroid/bluetooth/BluetoothAdapter;->removeOnMetadataChangedListener(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)Z

    .line 20
    :goto_0
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->mMetadataRegisteredDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_1

    .line 26
    :catch_0
    sget-object p0, Lcom/android/systemui/qs/tiles/BluetoothTile;->TAG:Ljava/lang/String;

    .line 27
    const-string v0, "Battery metadata listener already unregistered for device."

    .line 29
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :goto_1
    return-void
    .line 34
.end method
