.class public final Lcom/android/bluetooth/ble/app/ShareNetwork$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/bluetooth/ble/app/ShareNetwork;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/ble/app/ShareNetwork;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$1;->this$0:Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .line 1
    const-string p1, "ShareNetwork"

    .line 2
    const-string v0, "EasyTetherCoreService connected"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$1;->this$0:Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 9
    sget v1, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->$r8$clinit:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    const/4 v1, 0x0

    .line 13
    const-string v2, "com.android.bluetooth.ble.app.IMiuiNearbyApiService"

    .line 14
    if-nez p2, :cond_0

    .line 16
    move-object v3, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_1
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 20
    move-result-object v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    instance-of v4, v3, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    .line 26
    if-eqz v4, :cond_1

    .line 28
    check-cast v3, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    new-instance v3, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy;

    .line 33
    invoke-direct {v3, p2}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 35
    :goto_0
    iput-object v3, v0, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    .line 38
    iget-object p2, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$1;->this$0:Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 40
    iget-object v0, p2, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    .line 42
    if-nez v0, :cond_2

    .line 44
    const-string p0, "mEasyTetherCoreService is null."

    .line 46
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void

    .line 51
    :cond_2
    new-instance v0, Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;

    .line 52
    iget-object v3, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$1;->this$0:Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 54
    invoke-direct {v0, v3}, Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;-><init>(Lcom/android/bluetooth/ble/app/ShareNetwork;)V

    .line 56
    iput-object v0, p2, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherCoreCallback:Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;

    .line 59
    iget-object p2, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$1;->this$0:Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 61
    iget-object v0, p2, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    .line 63
    iget-object p2, p2, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherCoreCallback:Lcom/android/bluetooth/ble/app/ShareNetwork$EasyTetherCoreCallback;

    .line 65
    check-cast v0, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy;

    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 72
    move-result-object v3

    .line 75
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 76
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    :try_start_2
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 80
    if-eqz p2, :cond_3

    .line 83
    move-object v1, p2

    .line 85
    :cond_3
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 86
    iget-object p2, v0, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 89
    const/16 v0, 0x12

    .line 91
    const/4 v1, 0x0

    .line 93
    invoke-interface {p2, v0, v3, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 94
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    :try_start_3
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 100
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 103
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$1;->this$0:Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 106
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherInterface:Lcom/android/bluetooth/ble/app/EasyTetherInterface;

    .line 108
    if-eqz p0, :cond_4

    .line 110
    check-cast p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 112
    const-string p2, "ShareNetworkControllerImpl"

    .line 114
    const-string/jumbo v0, "service connected"

    .line 116
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object p2, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->callback:Lcom/android/systemui/qs/tiles/MiuiWifiTile$ShareNetworkCallback;

    .line 122
    if-eqz p2, :cond_4

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->getHotspotList()Ljava/util/List;

    .line 126
    move-result-object v0

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->getConnectedHotspot()Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;

    .line 130
    move-result-object p0

    .line 133
    invoke-virtual {p2, v0, p0}, Lcom/android/systemui/qs/tiles/MiuiWifiTile$ShareNetworkCallback;->onHotspotUpdate(Ljava/util/List;Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;)V

    .line 134
    goto :goto_1

    .line 137
    :catchall_0
    move-exception p0

    .line 138
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 139
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 142
    throw p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 145
    :catch_0
    move-exception p0

    .line 146
    const-string p2, "EasyTetherCoreService register error"

    .line 147
    invoke-static {p2, p0, p1}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 149
    :cond_4
    :goto_1
    return-void
    .line 152
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const-string p1, "ShareNetwork"

    .line 2
    const-string v0, "EasyTetherCoreService disconnected"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/ShareNetwork$1;->this$0:Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 9
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    .line 12
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherInterface:Lcom/android/bluetooth/ble/app/EasyTetherInterface;

    .line 14
    if-eqz p0, :cond_0

    .line 16
    check-cast p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    const-string p0, "ShareNetworkControllerImpl"

    .line 23
    const-string/jumbo p1, "service disconnected"

    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    return-void
    .line 31
.end method
