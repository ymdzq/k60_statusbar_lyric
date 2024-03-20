.class public final Lcom/android/settingslib/bluetooth/BluetoothEventManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAdapterIntentFilter:Landroid/content/IntentFilter;

.field public final mBroadcastReceiver:Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;

.field public final mCallbacks:Ljava/util/Collection;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field public final mHandler:Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;

.field public final mHandlerMap:Ljava/util/Map;

.field public final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field public final mProfileBroadcastReceiver:Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;

.field public final mProfileIntentFilter:Landroid/content/IntentFilter;

.field public final mReceiverHandler:Landroid/os/Handler;

.field public final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "BluetoothEventManager"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->DEBUG:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    .line 7
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;

    .line 10
    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    .line 14
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileBroadcastReceiver:Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;

    .line 17
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    .line 24
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 26
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 28
    new-instance p1, Landroid/content/IntentFilter;

    .line 30
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    .line 35
    new-instance p1, Landroid/content/IntentFilter;

    .line 37
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    .line 42
    new-instance p1, Ljava/util/HashMap;

    .line 44
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    .line 49
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    .line 51
    iput-object p5, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mUserHandle:Landroid/os/UserHandle;

    .line 53
    iput-object p4, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    .line 55
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    .line 57
    const/4 p3, 0x0

    .line 59
    invoke-direct {p1, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler$$ExternalSynthetic$IA6;)V

    .line 60
    const-string p4, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 63
    invoke-virtual {p0, p4, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 65
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    .line 68
    invoke-direct {p1, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler$$ExternalSynthetic$IA11;)V

    .line 70
    const-string p4, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 73
    invoke-virtual {p0, p4, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 75
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    .line 78
    const/4 p4, 0x1

    .line 80
    invoke-direct {p1, p0, p4}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Z)V

    .line 81
    const-string p5, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 84
    invoke-virtual {p0, p5, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 86
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    .line 89
    const/4 p5, 0x0

    .line 91
    invoke-direct {p1, p0, p5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Z)V

    .line 92
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 95
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 97
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    .line 100
    invoke-direct {p1, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler$$ExternalSynthetic$IA4;)V

    .line 102
    const-string v0, "android.bluetooth.device.action.FOUND"

    .line 105
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 107
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    .line 110
    invoke-direct {p1, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler$$ExternalSynthetic$IA12;)V

    .line 112
    const-string v0, "android.bluetooth.device.action.NAME_CHANGED"

    .line 115
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 117
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    .line 120
    invoke-direct {p1, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler$$ExternalSynthetic$IA12;)V

    .line 122
    const-string v0, "android.bluetooth.device.action.ALIAS_CHANGED"

    .line 125
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 127
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    .line 130
    invoke-direct {p1, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler$$ExternalSynthetic$IA8;)V

    .line 132
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 135
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 137
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    .line 140
    invoke-direct {p1, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler$$ExternalSynthetic$IA16;)V

    .line 142
    const-string v0, "android.bluetooth.action.CSIS_DEVICE_AVAILABLE"

    .line 145
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 147
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    .line 150
    invoke-direct {p1, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler$$ExternalSynthetic$IA3;)V

    .line 152
    const-string v0, "android.bluetooth.device.action.CLASS_CHANGED"

    .line 155
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 157
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    .line 160
    invoke-direct {p1, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler$$ExternalSynthetic$IA5;)V

    .line 162
    const-string v0, "android.bluetooth.device.action.UUID"

    .line 165
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 167
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    .line 170
    invoke-direct {p1, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler$$ExternalSynthetic$IA0;)V

    .line 172
    const-string v0, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    .line 175
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 177
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    .line 180
    invoke-direct {p1, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler$$ExternalSynthetic$IA13;)V

    .line 182
    const-string v0, "android.bluetooth.headset.action.HF_TWSP_BATTERY_STATE_CHANGED"

    .line 185
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 187
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    .line 190
    invoke-direct {p1, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler$$ExternalSynthetic$IA9;)V

    .line 192
    const-string v0, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 195
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 197
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    .line 200
    invoke-direct {p1, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler$$ExternalSynthetic$IA9;)V

    .line 202
    const-string v0, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 205
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 207
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    .line 210
    invoke-direct {p1, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler$$ExternalSynthetic$IA9;)V

    .line 212
    const-string v0, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 215
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 217
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    .line 220
    invoke-direct {p1, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler$$ExternalSynthetic$IA9;)V

    .line 222
    const-string v0, "android.bluetooth.action.LE_AUDIO_ACTIVE_DEVICE_CHANGED"

    .line 225
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 227
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    .line 230
    invoke-direct {p1, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler$$ExternalSynthetic$IA10;)V

    .line 232
    const-string v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 235
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 237
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    .line 240
    invoke-direct {p1, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler$$ExternalSynthetic$IA10;)V

    .line 242
    const-string v0, "android.intent.action.PHONE_STATE"

    .line 245
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 247
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    .line 250
    invoke-direct {p1, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Ljava/lang/Object;)V

    .line 252
    const-string v0, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 255
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 257
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    .line 260
    invoke-direct {p1, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Ljava/lang/Object;)V

    .line 262
    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 265
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 267
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    .line 270
    invoke-direct {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    .line 272
    const-string v0, "android.bluetooth.a2dp.profile.action.CODEC_CONFIG_CHANGED"

    .line 275
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 277
    :try_start_0
    const-string p1, "com.android.settingslib.bluetooth.BroadcastSourceInfoHandler"

    .line 280
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 282
    move-result-object p1

    .line 285
    new-array p4, p4, [Ljava/lang/Class;

    .line 286
    const-class v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 288
    aput-object v0, p4, p5

    .line 290
    invoke-virtual {p1, p4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 292
    move-result-object p1

    .line 295
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 296
    move-result-object p2

    .line 299
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    goto :goto_0

    .line 304
    :catch_0
    move-exception p1

    .line 305
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 306
    move-object p1, p3

    .line 309
    :goto_0
    if-eqz p1, :cond_0

    .line 310
    const-string p2, "BluetoothEventManager"

    .line 312
    const-string p4, "adding SourceInfo Handler"

    .line 314
    invoke-static {p2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string p2, "android.bluetooth.BroadcastAudioSAManager.action.BROADCAST_SOURCE_INFO"

    .line 319
    check-cast p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;

    .line 321
    invoke-virtual {p0, p2, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 323
    :cond_0
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    .line 326
    invoke-direct {p1, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler$$ExternalSynthetic$IA14;)V

    .line 328
    const-string p2, "android.bluetooth.broadcast.profile.action.BROADCAST_STATE_CHANGED"

    .line 331
    invoke-virtual {p0, p2, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 333
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    .line 336
    invoke-direct {p1, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler$$ExternalSynthetic$IA2;)V

    .line 338
    const-string p2, "android.bluetooth.broadcast.profile.action.BROADCAST_ENCRYPTION_KEY_GENERATED"

    .line 341
    invoke-virtual {p0, p2, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 343
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    .line 346
    invoke-direct {p1, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler$$ExternalSynthetic$IA1;)V

    .line 348
    const-string p2, "android.bluetooth.vcp.profile.action.CONNECTION_MODE_CHANGED"

    .line 351
    invoke-virtual {p0, p2, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 353
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    .line 356
    invoke-direct {p1, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler$$ExternalSynthetic$IA7;)V

    .line 358
    const-string p2, "android.bluetooth.vcp.profile.action.VOLUME_CHANGED"

    .line 361
    invoke-virtual {p0, p2, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 363
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    .line 366
    invoke-direct {p1, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler$$ExternalSynthetic$IA15;)V

    .line 368
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 371
    invoke-virtual {p0, p2, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 373
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    .line 376
    invoke-direct {p1, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler$$ExternalSynthetic$IA15;)V

    .line 378
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 381
    invoke-virtual {p0, p2, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 383
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;

    .line 386
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    .line 388
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 390
    move-result-object p2

    .line 393
    invoke-direct {p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;-><init>(Landroid/os/Looper;)V

    .line 394
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mHandler:Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;

    .line 397
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerAdapterIntentReceiver()V

    .line 399
    return-void
    .line 402
.end method

.method public static updateCacheDeviceInfo(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 4

    .line 1
    iget-boolean v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsGroupDevice:Z

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string/jumbo v2, "updateCacheDeviceInfo groupId "

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v2, ", cachedDevice :"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, ", name :"

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v2, " isGroup :"

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    const-string v2, " qgroupId "

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget v2, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mQGroupId:I

    .line 48
    const-string v3, "BluetoothEventManager"

    .line 50
    invoke-static {v1, v2, v3}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 52
    if-eqz v0, :cond_1

    .line 55
    iget v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mQGroupId:I

    .line 57
    if-eq p0, v0, :cond_0

    .line 59
    new-instance p0, Ljava/lang/StringBuilder;

    .line 61
    const-string v0, "groupId mismatch ignore "

    .line 63
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    iget p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mQGroupId:I

    .line 68
    invoke-static {p0, p1, v3}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 70
    return-void

    .line 73
    :cond_0
    const-string/jumbo p0, "updateCacheDeviceInfo update ignored "

    .line 74
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setDeviceType(I)V

    .line 81
    :goto_0
    return-void
    .line 84
.end method


# virtual methods
.method public addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    .line 2
    check-cast v0, Ljava/util/HashMap;

    .line 4
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    .line 9
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    return-void
    .line 14
.end method

.method public addProfileHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    .line 2
    check-cast v0, Ljava/util/HashMap;

    .line 4
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    .line 9
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    return-void
    .line 14
.end method

.method public dispatchActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 2
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_d

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 24
    iget-object v2, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    .line 26
    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v3

    .line 31
    if-nez v3, :cond_1

    .line 32
    check-cast v2, Ljava/util/HashSet;

    .line 34
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 36
    move-result v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v2

    .line 45
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v4

    .line 49
    if-eqz v4, :cond_1

    .line 50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 55
    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 56
    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    move-result v3

    .line 61
    if-eqz v3, :cond_0

    .line 62
    const-string v2, "BluetoothEventManager"

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    .line 66
    const-string v5, "The active device is the member device "

    .line 68
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 73
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 78
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string p1, ". change activeDevice as main device "

    .line 82
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object p1, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 87
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 92
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 99
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    move-object p1, v1

    .line 103
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 104
    const-string v4, "onActiveDeviceChanged: profile "

    .line 106
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-static {p2}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    .line 111
    move-result-object v4

    .line 114
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v4, ", device "

    .line 118
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v4, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 123
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    .line 125
    move-result-object v4

    .line 128
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v4, ", isActive "

    .line 132
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v2

    .line 143
    const-string v4, "CachedBluetoothDevice"

    .line 144
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v2, 0x0

    .line 149
    const/4 v5, 0x1

    .line 150
    if-eq p2, v5, :cond_8

    .line 151
    const/4 v6, 0x2

    .line 153
    if-eq p2, v6, :cond_6

    .line 154
    const/16 v6, 0x15

    .line 156
    if-eq p2, v6, :cond_4

    .line 158
    const/16 v6, 0x16

    .line 160
    if-eq p2, v6, :cond_2

    .line 162
    new-instance v6, Ljava/lang/StringBuilder;

    .line 164
    const-string v7, "onActiveDeviceChanged: unknown profile "

    .line 166
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    const-string v7, " isActive "

    .line 174
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v3

    .line 185
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    move v4, v2

    .line 189
    goto :goto_5

    .line 190
    :cond_2
    iget-boolean v4, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceLeAudio:Z

    .line 191
    if-eq v4, v3, :cond_3

    .line 193
    move v4, v5

    .line 195
    goto :goto_1

    .line 196
    :cond_3
    move v4, v2

    .line 197
    :goto_1
    iput-boolean v3, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceLeAudio:Z

    .line 198
    goto :goto_5

    .line 200
    :cond_4
    iget-boolean v4, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    .line 201
    if-eq v4, v3, :cond_5

    .line 203
    move v4, v5

    .line 205
    goto :goto_2

    .line 206
    :cond_5
    move v4, v2

    .line 207
    :goto_2
    iput-boolean v3, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    .line 208
    goto :goto_5

    .line 210
    :cond_6
    iget-boolean v4, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    .line 211
    if-eq v4, v3, :cond_7

    .line 213
    move v4, v5

    .line 215
    goto :goto_3

    .line 216
    :cond_7
    move v4, v2

    .line 217
    :goto_3
    iput-boolean v3, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    .line 218
    goto :goto_5

    .line 220
    :cond_8
    iget-boolean v4, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    .line 221
    if-eq v4, v3, :cond_9

    .line 223
    move v4, v5

    .line 225
    goto :goto_4

    .line 226
    :cond_9
    move v4, v2

    .line 227
    :goto_4
    iput-boolean v3, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    .line 228
    :goto_5
    if-eqz v4, :cond_a

    .line 230
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 232
    :cond_a
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 235
    monitor-enter v3

    .line 237
    :try_start_0
    iget-object v4, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHearingAidInfo:Lcom/android/settingslib/bluetooth/HearingAidInfo;

    .line 238
    if-eqz v4, :cond_b

    .line 240
    move v2, v5

    .line 242
    :cond_b
    if-eqz v2, :cond_c

    .line 243
    iget-object v2, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDeviceManager:Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;

    .line 245
    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    goto :goto_6

    .line 250
    :catchall_0
    move-exception p0

    .line 251
    goto :goto_7

    .line 252
    :cond_c
    :goto_6
    monitor-exit v3

    .line 253
    goto/16 :goto_0

    .line 254
    :goto_7
    monitor-exit v3

    .line 256
    throw p0

    .line 257
    :cond_d
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    .line 258
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 260
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 262
    move-result-object p0

    .line 265
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 266
    move-result v0

    .line 269
    if-eqz v0, :cond_e

    .line 270
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 272
    move-result-object v0

    .line 275
    check-cast v0, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    .line 276
    invoke-interface {v0, p2, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onActiveDeviceChanged(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 278
    goto :goto_8

    .line 281
    :cond_e
    return-void
    .line 282
.end method

.method public final dispatchDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    .line 2
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    .line 20
    invoke-interface {v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    return-void
    .line 26
.end method

.method public final dispatchDeviceRemoved(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    .line 2
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    .line 20
    invoke-interface {v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    return-void
    .line 26
.end method

.method public final readPairedDevices()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 2
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 16
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 26
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 27
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 29
    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 31
    move-result-object v3

    .line 34
    if-nez v3, :cond_1

    .line 35
    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 37
    goto :goto_0

    .line 40
    :cond_2
    return-void
    .line 41
.end method

.method public registerAdapterIntentReceiver()V
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;

    .line 2
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    .line 4
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mUserHandle:Landroid/os/UserHandle;

    .line 6
    if-nez v2, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    .line 10
    const/4 v4, 0x0

    .line 12
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    .line 13
    const/4 v5, 0x2

    .line 15
    move-object v2, v3

    .line 16
    move-object v3, v4

    .line 17
    move-object v4, p0

    .line 18
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    .line 23
    const/4 v4, 0x0

    .line 25
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    .line 26
    const/4 v6, 0x2

    .line 28
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 29
    :goto_0
    return-void
    .line 32
.end method

.method public registerProfileIntentReceiver()V
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileBroadcastReceiver:Lcom/android/settingslib/bluetooth/BluetoothEventManager$BluetoothBroadcastReceiver;

    .line 2
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    .line 4
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mUserHandle:Landroid/os/UserHandle;

    .line 6
    if-nez v2, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    .line 10
    const/4 v4, 0x0

    .line 12
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    .line 13
    const/4 v5, 0x2

    .line 15
    move-object v2, v3

    .line 16
    move-object v3, v4

    .line 17
    move-object v4, p0

    .line 18
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    .line 23
    const/4 v4, 0x0

    .line 25
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    .line 26
    const/4 v6, 0x2

    .line 28
    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 29
    :goto_0
    return-void
    .line 32
.end method
