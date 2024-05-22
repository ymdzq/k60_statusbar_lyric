.class public final Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/controlcenter/policy/ShareNetworkController;
.implements Lcom/android/bluetooth/ble/app/EasyTetherInterface;


# static fields
.field public static final CELLULAR_ENABLED:Z

.field public static final URI_DATA_USAGE:Landroid/net/Uri;

.field public static final WIFI_ENABLED:Z


# instance fields
.field public final callbacks:Ljava/util/ArrayList;

.field public final configCellularSharedSupport$delegate:Lkotlin/Lazy;

.field public connectingHotspot:Z

.field public final context:Landroid/content/Context;

.field public final settingsObserver:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$settingsObserver$1;

.field public final shareNetwork$delegate:Lkotlin/Lazy;

.field public started:Z

.field public final wifiManager$delegate:Lkotlin/Lazy;

.field public final wifiStateChangedReceiver:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$wifiStateChangedReceiver$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    sget-boolean v0, Lmiui/util/DeviceLevel;->IS_MIUI_LITE_VERSION:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_1

    .line 6
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI_LITE_VERSION:Z

    .line 8
    if-nez v0, :cond_1

    .line 10
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->MIUI_LITE_V2:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    move v0, v1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    move v0, v2

    .line 19
    :goto_1
    sget-boolean v3, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 20
    if-eqz v3, :cond_2

    .line 22
    if-nez v0, :cond_2

    .line 24
    move v4, v2

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move v4, v1

    .line 28
    :goto_2
    sput-boolean v4, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->WIFI_ENABLED:Z

    .line 29
    if-eqz v3, :cond_3

    .line 31
    sget-boolean v3, Lcom/miui/utils/configs/MiuiConfigs;->IS_INTERNATIONAL_BUILD:Z

    .line 33
    if-nez v3, :cond_3

    .line 35
    if-nez v0, :cond_3

    .line 37
    move v1, v2

    .line 39
    :cond_3
    sput-boolean v1, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->CELLULAR_ENABLED:Z

    .line 40
    const-string v0, "network_relay_data_usage_info"

    .line 42
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 44
    move-result-object v0

    .line 47
    sput-object v0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->URI_DATA_USAGE:Landroid/net/Uri;

    .line 48
    return-void
    .line 50
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->context:Landroid/content/Context;

    .line 5
    new-instance p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$shareNetwork$2;

    .line 7
    invoke-direct {p1, p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$shareNetwork$2;-><init>(Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;)V

    .line 9
    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 12
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->shareNetwork$delegate:Lkotlin/Lazy;

    .line 16
    new-instance p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$wifiManager$2;

    .line 18
    invoke-direct {p1, p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$wifiManager$2;-><init>(Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;)V

    .line 20
    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 23
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->wifiManager$delegate:Lkotlin/Lazy;

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->callbacks:Ljava/util/ArrayList;

    .line 34
    new-instance p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$configCellularSharedSupport$2;

    .line 36
    invoke-direct {p1, p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$configCellularSharedSupport$2;-><init>(Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;)V

    .line 38
    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 41
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->configCellularSharedSupport$delegate:Lkotlin/Lazy;

    .line 45
    new-instance p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$settingsObserver$1;

    .line 47
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$settingsObserver$1;-><init>(Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;Landroid/os/Handler;)V

    .line 49
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->settingsObserver:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$settingsObserver$1;

    .line 52
    new-instance p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$wifiStateChangedReceiver$1;

    .line 54
    invoke-direct {p1, p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$wifiStateChangedReceiver$1;-><init>(Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;)V

    .line 56
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->wifiStateChangedReceiver:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$wifiStateChangedReceiver$1;

    .line 59
    return-void
    .line 61
.end method


# virtual methods
.method public final getCelluarTetherDeviceInfo()Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->supportCellular()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->getShareNetwork()Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    :try_start_0
    iget-object v0, v0, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    .line 17
    if-eqz v0, :cond_3

    .line 19
    check-cast v0, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy;

    .line 21
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 23
    move-result-object v2

    .line 26
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 27
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :try_start_1
    const-string v4, "com.android.bluetooth.ble.app.IMiuiNearbyApiService"

    .line 31
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 33
    iget-object v0, v0, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 36
    const/16 v4, 0x1a

    .line 38
    const/4 v5, 0x0

    .line 40
    invoke-interface {v0, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 41
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    sget v0, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->$r8$clinit:I

    .line 47
    :cond_1
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 49
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 52
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    sget-object v0, Lcom/android/bluetooth/ble/app/CelluarTetherDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 58
    invoke-interface {v0, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 63
    check-cast v0, Lcom/android/bluetooth/ble/app/CelluarTetherDeviceInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    goto :goto_0

    .line 66
    :cond_2
    move-object v0, v1

    .line 67
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 68
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 71
    goto :goto_1

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 76
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 79
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    :cond_3
    move-object v0, v1

    .line 87
    :goto_1
    if-nez v0, :cond_4

    .line 88
    return-object v1

    .line 90
    :cond_4
    iget v2, v0, Lcom/android/bluetooth/ble/app/CelluarTetherDeviceInfo;->state:I

    .line 91
    const/4 v3, 0x3

    .line 93
    if-ne v2, v3, :cond_6

    .line 94
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->context:Landroid/content/Context;

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 98
    move-result-object p0

    .line 101
    const-string v2, "network_relay_data_usage_info"

    .line 102
    invoke-static {p0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 107
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    move-result v2

    .line 111
    if-eqz v2, :cond_5

    .line 112
    goto :goto_2

    .line 114
    :cond_5
    :try_start_3
    new-instance v2, Lcom/google/gson/Gson;

    .line 115
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 117
    const-class v3, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;

    .line 120
    invoke-virtual {v2, v3, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    move-result-object p0

    .line 125
    check-cast p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 126
    move-object v1, p0

    .line 128
    goto :goto_2

    .line 129
    :catchall_1
    move-exception p0

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    .line 131
    const-string v3, "getDataUsage "

    .line 133
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object p0

    .line 144
    const-string v2, "ShareNetworkControllerImpl"

    .line 145
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_6
    :goto_2
    new-instance p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;

    .line 150
    iget-object v2, v0, Lcom/android/bluetooth/ble/app/CelluarTetherDeviceInfo;->deviceId:Ljava/lang/String;

    .line 152
    iget-object v3, v0, Lcom/android/bluetooth/ble/app/CelluarTetherDeviceInfo;->deviceName:Ljava/lang/String;

    .line 154
    iget v0, v0, Lcom/android/bluetooth/ble/app/CelluarTetherDeviceInfo;->state:I

    .line 156
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;)V

    .line 158
    return-object p0
    .line 161
.end method

.method public final getConnectedHotspot()Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->WIFI_ENABLED:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->getShareNetwork()Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    .line 15
    if-eqz p0, :cond_3

    .line 17
    check-cast p0, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy;

    .line 19
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 21
    move-result-object v0

    .line 24
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 25
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :try_start_1
    const-string v3, "com.android.bluetooth.ble.app.IMiuiNearbyApiService"

    .line 29
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 31
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 34
    const/16 v3, 0x16

    .line 36
    const/4 v4, 0x0

    .line 38
    invoke-interface {p0, v3, v0, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 39
    move-result p0

    .line 42
    if-nez p0, :cond_1

    .line 43
    sget p0, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->$r8$clinit:I

    .line 45
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 47
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    .line 50
    move-result p0

    .line 53
    if-eqz p0, :cond_2

    .line 54
    sget-object p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 56
    invoke-interface {p0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 58
    move-result-object p0

    .line 61
    check-cast p0, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    goto :goto_0

    .line 64
    :cond_2
    move-object p0, v1

    .line 65
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 66
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 69
    goto :goto_1

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 74
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 77
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    :catch_0
    move-exception p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    :cond_3
    move-object p0, v1

    .line 85
    :goto_1
    if-eqz p0, :cond_4

    .line 86
    new-instance v1, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;

    .line 88
    invoke-direct {v1, p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;-><init>(Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;)V

    .line 90
    :cond_4
    return-object v1
    .line 93
.end method

.method public final getHotspotList()Ljava/util/List;
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->WIFI_ENABLED:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 6
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->getShareNetwork()Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 14
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    const/4 v1, 0x0

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    .line 22
    if-eqz p0, :cond_3

    .line 24
    check-cast p0, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy;

    .line 26
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 28
    move-result-object v2

    .line 31
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 32
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :try_start_1
    const-string v4, "com.android.bluetooth.ble.app.IMiuiNearbyApiService"

    .line 36
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 38
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 41
    const/16 v4, 0x14

    .line 43
    const/4 v5, 0x0

    .line 45
    invoke-interface {p0, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 46
    move-result p0

    .line 49
    if-nez p0, :cond_1

    .line 50
    sget p0, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->$r8$clinit:I

    .line 52
    :cond_1
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 54
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    .line 57
    move-result p0

    .line 60
    if-gez p0, :cond_2

    .line 61
    move-object v4, v1

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    .line 65
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 67
    :goto_0
    invoke-static {v5, p0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    .line 70
    move-result-object p0

    .line 73
    new-instance v5, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy$$ExternalSyntheticLambda0;

    .line 74
    invoke-direct {v5, v3, v4}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 76
    invoke-interface {p0, v5}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :try_start_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 82
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 85
    move-object v1, v4

    .line 88
    goto :goto_1

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 91
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 94
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 97
    :catch_0
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 102
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 104
    move-result-object p0

    .line 107
    if-eqz p0, :cond_4

    .line 108
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 110
    move-result-object p0

    .line 113
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    move-result v1

    .line 117
    if-eqz v1, :cond_4

    .line 118
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    move-result-object v1

    .line 123
    check-cast v1, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    .line 124
    new-instance v2, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;

    .line 126
    invoke-direct {v2, v1}, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;-><init>(Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;)V

    .line 128
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    goto :goto_2

    .line 134
    :cond_4
    return-object v0
    .line 135
.end method

.method public final getShareNetwork()Lcom/android/bluetooth/ble/app/ShareNetwork;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->shareNetwork$delegate:Lkotlin/Lazy;

    .line 2
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 8
    return-object p0
    .line 10
.end method

.method public final onApInfoUpdate(Ljava/util/Map;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->WIFI_ENABLED:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 9
    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    const-string v2, "onApInfoUpdate "

    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 32
    const-string v1, "ShareNetworkControllerImpl"

    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    if-eqz p1, :cond_2

    .line 43
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 45
    move-result-object p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object p1

    .line 54
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v1

    .line 64
    check-cast v1, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    .line 65
    new-instance v2, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;

    .line 67
    invoke-direct {v2, v1}, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;-><init>(Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;)V

    .line 69
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->getConnectedHotspot()Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;

    .line 76
    move-result-object p1

    .line 79
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->onHotspotUpdateCallback(Ljava/util/List;Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;)V

    .line 80
    return-void
    .line 83
.end method

.method public final onCelluarTetherStateChanged(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->supportCellular()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$Companion;->getTetherStateString(Ljava/lang/Integer;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    const-string v1, "onCelluarTetherStateChanged "

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    const-string v1, "ShareNetworkControllerImpl"

    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->getCelluarTetherDeviceInfo()Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;

    .line 28
    move-result-object v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->onCellularTetherStateUpdateCallback(Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;)V

    .line 35
    goto :goto_0

    .line 38
    :cond_1
    new-instance v1, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;

    .line 39
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->deviceName:Ljava/lang/String;

    .line 41
    iget-object v3, v0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->dataUsage:Lcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;

    .line 43
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->deviceId:Ljava/lang/String;

    .line 45
    invoke-direct {v1, v0, v2, p1, v3}, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/systemui/controlcenter/policy/ShareNetworkController$DataUsage;)V

    .line 47
    invoke-virtual {p0, v1}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->onCellularTetherStateUpdateCallback(Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;)V

    .line 50
    :goto_0
    return-void
    .line 53
.end method

.method public final onCellularTetherStateUpdateCallback(Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->supportCellular()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->callbacks:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    xor-int/2addr v0, v1

    .line 16
    if-eqz v0, :cond_4

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    const-string v2, "onCellularTetherStateUpdateCallback "

    .line 21
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 32
    const-string v2, "ShareNetworkControllerImpl"

    .line 33
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object p0

    .line 41
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v0

    .line 45
    if-eqz v0, :cond_4

    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 51
    check-cast v0, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Callback;

    .line 52
    instance-of v2, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$3;

    .line 54
    if-eqz v2, :cond_1

    .line 56
    check-cast v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$3;

    .line 58
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$3;->this$0:Lcom/android/systemui/qs/tiles/MiuiCellularTile;

    .line 60
    iget-object v2, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mCellular:Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;

    .line 62
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    move-result v2

    .line 67
    if-nez v2, :cond_1

    .line 68
    iput-object p1, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mCellular:Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;

    .line 70
    if-eqz p1, :cond_3

    .line 72
    iget v2, p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;->state:I

    .line 74
    const/4 v3, 0x5

    .line 76
    if-ne v2, v3, :cond_2

    .line 77
    move v2, v1

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const/4 v2, 0x0

    .line 81
    :goto_1
    if-eqz v2, :cond_3

    .line 82
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 84
    const v3, 0x7f130936    # @string/qs_control_big_tile_connect_share_network_fail 'Couldn't connect to mobile data network. Wait a minute or two and try again.'

    .line 86
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    move-result-object v2

    .line 92
    new-instance v3, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda4;

    .line 93
    invoke-direct {v3, v0, v2}, Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/tiles/MiuiCellularTile;Ljava/lang/String;)V

    .line 95
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    .line 98
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    :cond_3
    const/4 v2, 0x0

    .line 103
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 104
    goto :goto_0

    .line 107
    :cond_4
    return-void
    .line 108
.end method

.method public final onHotspotUpdateCallback(Ljava/util/List;Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->WIFI_ENABLED:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->callbacks:Ljava/util/ArrayList;

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    xor-int/2addr v0, v1

    .line 14
    if-eqz v0, :cond_5

    .line 15
    const/4 v0, 0x0

    .line 17
    if-eqz p1, :cond_1

    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    move-result v2

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v2

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object v2, v0

    .line 29
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    const-string v4, "onHotspotUpdateCallback "

    .line 32
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 43
    const-string v3, "ShareNetworkControllerImpl"

    .line 44
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object p0

    .line 52
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v2

    .line 56
    if-eqz v2, :cond_5

    .line 57
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v2

    .line 62
    check-cast v2, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Callback;

    .line 63
    instance-of v3, v2, Lcom/android/systemui/qs/tiles/MiuiWifiTile$ShareNetworkCallback;

    .line 65
    if-eqz v3, :cond_2

    .line 67
    check-cast v2, Lcom/android/systemui/qs/tiles/MiuiWifiTile$ShareNetworkCallback;

    .line 69
    iget-object v2, v2, Lcom/android/systemui/qs/tiles/MiuiWifiTile$ShareNetworkCallback;->this$0:Lcom/android/systemui/qs/tiles/MiuiWifiTile;

    .line 71
    iput-object p1, v2, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->hotspotList:Ljava/util/List;

    .line 73
    iget-object v3, v2, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->connectedHotspot:Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;

    .line 75
    if-eqz v3, :cond_3

    .line 77
    invoke-virtual {v3, p2}, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v3

    .line 82
    if-ne v3, v1, :cond_3

    .line 83
    move v3, v1

    .line 85
    goto :goto_2

    .line 86
    :cond_3
    const/4 v3, 0x0

    .line 87
    :goto_2
    if-eqz v3, :cond_4

    .line 88
    goto :goto_3

    .line 90
    :cond_4
    iput-object p2, v2, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->connectedHotspot:Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;

    .line 91
    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 93
    :goto_3
    iget-object v2, v2, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->detailAdapter:Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;

    .line 96
    invoke-virtual {v2}, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;->updateItems()V

    .line 98
    goto :goto_1

    .line 101
    :cond_5
    return-void
    .line 102
.end method

.method public final start()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-boolean v2, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->WIFI_ENABLED:Z

    .line 4
    if-nez v2, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->supportCellular()Z

    .line 8
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    move v3, v0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    move v3, v1

    .line 17
    :goto_1
    if-nez v3, :cond_2

    .line 18
    return-void

    .line 20
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->started:Z

    .line 21
    if-eqz v3, :cond_3

    .line 23
    return-void

    .line 25
    :cond_3
    const-string v3, "ShareNetworkControllerImpl"

    .line 26
    const-string/jumbo v4, "start"

    .line 28
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iput-boolean v1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->started:Z

    .line 34
    iget-object v3, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->callbacks:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 38
    iput-boolean v0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->connectingHotspot:Z

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->getShareNetwork()Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 43
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    :try_start_0
    iget-object v4, v3, Lcom/android/bluetooth/ble/app/ShareNetwork;->mConnection:Lcom/android/bluetooth/ble/app/ShareNetwork$1;

    .line 50
    if-nez v4, :cond_4

    .line 52
    new-instance v4, Lcom/android/bluetooth/ble/app/ShareNetwork$1;

    .line 54
    invoke-direct {v4, v3}, Lcom/android/bluetooth/ble/app/ShareNetwork$1;-><init>(Lcom/android/bluetooth/ble/app/ShareNetwork;)V

    .line 56
    iput-object v4, v3, Lcom/android/bluetooth/ble/app/ShareNetwork;->mConnection:Lcom/android/bluetooth/ble/app/ShareNetwork$1;

    .line 59
    const-string v4, "ShareNetwork"

    .line 61
    const-string/jumbo v5, "registerEasyTetherCoreService start to get the binder"

    .line 63
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v4, Landroid/content/Intent;

    .line 69
    const-string v5, "miui.bluetooth.mible.EasyTetherCoreService"

    .line 71
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    const-string v5, "com.xiaomi.bluetooth"

    .line 76
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    iget-object v5, v3, Lcom/android/bluetooth/ble/app/ShareNetwork;->mContext:Landroid/content/Context;

    .line 81
    iget-object v3, v3, Lcom/android/bluetooth/ble/app/ShareNetwork;->mConnection:Lcom/android/bluetooth/ble/app/ShareNetwork$1;

    .line 83
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 85
    move-result-object v6

    .line 88
    invoke-virtual {v5, v4, v3, v1, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_2

    .line 92
    :catch_0
    move-exception v1

    .line 93
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->context:Landroid/content/Context;

    .line 97
    if-eqz v2, :cond_5

    .line 99
    new-instance v2, Landroid/content/IntentFilter;

    .line 101
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 103
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 105
    const-string v3, "android.net.wifi.STATE_CHANGE"

    .line 108
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v3, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->wifiStateChangedReceiver:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$wifiStateChangedReceiver$1;

    .line 113
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->supportCellular()Z

    .line 118
    move-result v2

    .line 121
    if-eqz v2, :cond_6

    .line 122
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 124
    move-result-object v1

    .line 127
    sget-object v2, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->URI_DATA_USAGE:Landroid/net/Uri;

    .line 128
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->settingsObserver:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$settingsObserver$1;

    .line 130
    invoke-virtual {v1, v2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 132
    :cond_6
    return-void
    .line 135
.end method

.method public final stop()V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->WIFI_ENABLED:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->supportCellular()Z

    .line 7
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    move v2, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 16
    :goto_1
    if-nez v2, :cond_2

    .line 17
    return-void

    .line 19
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->started:Z

    .line 20
    if-nez v2, :cond_3

    .line 22
    return-void

    .line 24
    :cond_3
    const-string v2, "ShareNetworkControllerImpl"

    .line 25
    const-string/jumbo v3, "stop"

    .line 27
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iput-boolean v1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->started:Z

    .line 33
    iget-object v2, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->callbacks:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 37
    iput-boolean v1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->connectingHotspot:Z

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->getShareNetwork()Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 42
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    :try_start_0
    iget-object v3, v2, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    .line 49
    const/4 v4, 0x0

    .line 51
    if-eqz v3, :cond_6

    .line 52
    iget-object v5, v2, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherCoreCallback:Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;

    .line 54
    check-cast v3, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy;

    .line 56
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 58
    move-result-object v6

    .line 61
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 62
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :try_start_1
    const-string v8, "com.android.bluetooth.ble.app.IMiuiNearbyApiService"

    .line 66
    invoke-virtual {v6, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 68
    if-eqz v5, :cond_4

    .line 71
    goto :goto_2

    .line 73
    :cond_4
    move-object v5, v4

    .line 74
    :goto_2
    invoke-virtual {v6, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 75
    iget-object v3, v3, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 78
    const/16 v5, 0x13

    .line 80
    invoke-interface {v3, v5, v6, v7, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 82
    move-result v1

    .line 85
    if-nez v1, :cond_5

    .line 86
    sget v1, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->$r8$clinit:I

    .line 88
    :cond_5
    invoke-virtual {v7}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :try_start_2
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 93
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 96
    iput-object v4, v2, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherCoreCallback:Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;

    .line 99
    goto :goto_3

    .line 101
    :catchall_0
    move-exception v1

    .line 102
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 103
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 106
    throw v1

    .line 109
    :cond_6
    :goto_3
    iget-object v1, v2, Lcom/android/bluetooth/ble/app/ShareNetwork;->mConnection:Lcom/android/bluetooth/ble/app/ShareNetwork$1;

    .line 110
    if-eqz v1, :cond_7

    .line 112
    iget-object v3, v2, Lcom/android/bluetooth/ble/app/ShareNetwork;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 116
    iput-object v4, v2, Lcom/android/bluetooth/ble/app/ShareNetwork;->mConnection:Lcom/android/bluetooth/ble/app/ShareNetwork$1;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 119
    goto :goto_4

    .line 121
    :catch_0
    move-exception v1

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    const-string v3, "mService.unregister error: "

    .line 125
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    const-string v3, "ShareNetwork"

    .line 130
    invoke-static {v1, v2, v3}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 132
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->context:Landroid/content/Context;

    .line 135
    if-eqz v0, :cond_8

    .line 137
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->wifiStateChangedReceiver:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$wifiStateChangedReceiver$1;

    .line 139
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->supportCellular()Z

    .line 144
    move-result v0

    .line 147
    if-eqz v0, :cond_9

    .line 148
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 150
    move-result-object v0

    .line 153
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->settingsObserver:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$settingsObserver$1;

    .line 154
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 156
    :cond_9
    return-void
    .line 159
.end method

.method public final supportCellular()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->CELLULAR_ENABLED:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->configCellularSharedSupport$delegate:Lkotlin/Lazy;

    .line 6
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/Boolean;

    .line 12
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
    .line 23
.end method
