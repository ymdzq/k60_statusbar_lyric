.class public Lcom/android/settings/wifi/WifiStatusController;
.super Lcom/android/settings/BaseSettingsController;
.source "WifiStatusController.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEasyTetherConnection:Landroid/content/ServiceConnection;

.field private mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

.field private mHandler:Landroid/os/Handler;

.field private mHasRegister:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNetworkConnected:Z

.field private mNwIntentFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusViewText:Ljava/lang/String;

.field private mVerbose:Z

.field private mWifiEnabled:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEasyTetherCoreService(Lcom/android/settings/wifi/WifiStatusController;)Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusController;->mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkConnected(Lcom/android/settings/wifi/WifiStatusController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/wifi/WifiStatusController;->mNetworkConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatusViewText(Lcom/android/settings/wifi/WifiStatusController;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusController;->mStatusViewText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVerbose(Lcom/android/settings/wifi/WifiStatusController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/wifi/WifiStatusController;->mVerbose:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiEnabled(Lcom/android/settings/wifi/WifiStatusController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/wifi/WifiStatusController;->mWifiEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmEasyTetherCoreService(Lcom/android/settings/wifi/WifiStatusController;Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusController;->mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNetworkConnected(Lcom/android/settings/wifi/WifiStatusController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiStatusController;->mNetworkConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStatusViewText(Lcom/android/settings/wifi/WifiStatusController;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusController;->mStatusViewText:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiEnabled(Lcom/android/settings/wifi/WifiStatusController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiStatusController;->mWifiEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetWifiState(Lcom/android/settings/wifi/WifiStatusController;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusController;->getWifiState()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mregisterEasyTetherCoreService(Lcom/android/settings/wifi/WifiStatusController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusController;->registerEasyTetherCoreService()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 1

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/android/settings/BaseSettingsController;-><init>(Landroid/content/Context;Landroid/widget/TextView;)V

    const-string p2, ""

    .line 49
    iput-object p2, p0, Lcom/android/settings/wifi/WifiStatusController;->mStatusViewText:Ljava/lang/String;

    const/4 p2, 0x0

    .line 51
    iput-object p2, p0, Lcom/android/settings/wifi/WifiStatusController;->mEasyTetherConnection:Landroid/content/ServiceConnection;

    .line 52
    iput-object p2, p0, Lcom/android/settings/wifi/WifiStatusController;->mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    .line 53
    new-instance p2, Lcom/android/settings/wifi/WifiStatusController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/android/settings/wifi/WifiStatusController$1;-><init>(Lcom/android/settings/wifi/WifiStatusController;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settings/wifi/WifiStatusController;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 142
    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiStatusController;->mWifiEnabled:Z

    .line 143
    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiStatusController;->mNetworkConnected:Z

    .line 145
    new-instance p2, Lcom/android/settings/wifi/WifiStatusController$2;

    invoke-direct {p2, p0}, Lcom/android/settings/wifi/WifiStatusController$2;-><init>(Lcom/android/settings/wifi/WifiStatusController;)V

    iput-object p2, p0, Lcom/android/settings/wifi/WifiStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusController;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "wifi"

    .line 188
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 189
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isVerboseLoggingEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiStatusController;->mVerbose:Z

    .line 190
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusController;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 191
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusController;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusController;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.xiaomi.bluetooth.action.connectedDeviceNameChanged"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusController;->mNwIntentFilter:Landroid/content/IntentFilter;

    .line 198
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusController;->wakeUpWifiTrackerInjector()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiStatusController;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settings/BaseSettingsController;->mStatusView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiStatusController;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settings/BaseSettingsController;->mStatusView:Landroid/widget/TextView;

    return-object p0
.end method

.method private getWifiState()Ljava/lang/String;
    .locals 5

    .line 86
    iget-object v0, p0, Lcom/android/settings/BaseSettingsController;->mStatusView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const-string v1, "WifiStatusController"

    if-nez v0, :cond_2

    .line 91
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiStatusController;->mVerbose:Z

    if-eqz v0, :cond_1

    const-string v0, "WiFi is off."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wireless_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiStatusController;->mNwIntentFilter:Landroid/content/IntentFilter;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_4

    .line 97
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiStatusController;->mVerbose:Z

    if-eqz v0, :cond_3

    const-string v0, "Can\'t get network state intent"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_3
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wireless_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v2, "networkInfo"

    .line 100
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-eqz v0, :cond_b

    .line 101
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_1

    .line 106
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 107
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 108
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    if-eqz v2, :cond_a

    .line 109
    sget-boolean v2, Lcom/android/settings/utils/TabletUtils;->IS_TABLET:Z

    if-eqz v2, :cond_6

    .line 110
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wireless_connected:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 112
    :cond_6
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 115
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getPasspointProviderFriendlyName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 118
    :cond_7
    iget-object v3, p0, Lcom/android/settings/wifi/WifiStatusController;->mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    if-eqz v3, :cond_9

    .line 120
    :try_start_0
    invoke-interface {v3}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;->getEasyTetherConnectedHotspotEntry()Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 122
    iget-boolean p0, p0, Lcom/android/settings/wifi/WifiStatusController;->mVerbose:Z

    if-eqz p0, :cond_8

    .line 123
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wifiInfo.getBSSID() "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " easyTetherConnectedBssid "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v3}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getBssid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " easyTetherConnectedDeviceName "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v3}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getSsid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 123
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_8
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getBssid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 128
    invoke-virtual {v3}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getSsid()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "getEasyTetherConnectedHotspotEntry error."

    .line 132
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_0
    return-object v2

    .line 138
    :cond_a
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wireless_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 102
    :cond_b
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiStatusController;->mVerbose:Z

    if-eqz v0, :cond_c

    const-string v0, "WiFi is not connected."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_c
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wireless_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private registerEasyTetherCoreService()V
    .locals 5

    const-string v0, "WifiStatusController"

    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusController;->mEasyTetherConnection:Landroid/content/ServiceConnection;

    if-nez v1, :cond_0

    .line 260
    new-instance v1, Lcom/android/settings/wifi/WifiStatusController$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiStatusController$3;-><init>(Lcom/android/settings/wifi/WifiStatusController;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiStatusController;->mEasyTetherConnection:Landroid/content/ServiceConnection;

    const-string v1, "registerEasyTetherCoreService start to get the binder"

    .line 281
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.bluetooth.mible.EasyTetherCoreService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.xiaomi.bluetooth"

    .line 283
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    iget-object v2, p0, Lcom/android/settings/wifi/WifiStatusController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusController;->mEasyTetherConnection:Landroid/content/ServiceConnection;

    .line 285
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x1

    .line 284
    invoke-virtual {v2, v1, p0, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerEasyTetherCoreService error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private unregisterEasyTetherCoreService()V
    .locals 3

    const-string/jumbo v0, "unregisterEasyTetherCoreService"

    const-string v1, "WifiStatusController"

    .line 293
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusController;->mEasyTetherConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 296
    iget-object v2, p0, Lcom/android/settings/wifi/WifiStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusController;->mEasyTetherConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mService.unregister error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private wakeUpWifiTrackerInjector()V
    .locals 5

    :try_start_0
    const-string v0, "com.android.wifitrackerlib.WifiTrackerInjector"

    .line 208
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 209
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    .line 211
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusController;->mContext:Landroid/content/Context;

    aput-object p0, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "WifiStatusController"

    const-string v0, "Wake Up WifiTrackerInjector error."

    .line 213
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 0

    .line 0
    return-void
.end method

.method public resume()V
    .locals 0

    .line 0
    return-void
.end method

.method public start()V
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiStatusController;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiStatusController;->mHasRegister:Z

    .line 225
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiStatusController;->updateStatus()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 238
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiStatusController;->mHasRegister:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 240
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiStatusController;->mHasRegister:Z

    .line 242
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_1

    .line 243
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusController;->unregisterEasyTetherCoreService()V

    :cond_1
    return-void
.end method

.method protected updateStatus()V
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/android/settings/BaseSettingsController;->mStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 250
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusController;->mStatusViewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method
