.class public Lcom/android/settings/network/InternetUpdater;
.super Ljava/lang/Object;
.source "InternetUpdater.java"

# interfaces
.implements Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/InternetUpdater$InternetChangeListener;
    }
.end annotation


# static fields
.field private static sTransportMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field mInternetAvailable:Z

.field private mInternetType:I

.field private mListener:Lcom/android/settings/network/InternetUpdater$InternetChangeListener;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field mTransport:I

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiStateFilter:Landroid/content/IntentFilter;

.field private final mWifiStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/android/settings/network/InternetUpdater;)Lcom/android/settings/network/InternetUpdater$InternetChangeListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/network/InternetUpdater;->mListener:Lcom/android/settings/network/InternetUpdater$InternetChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManager(Lcom/android/settings/network/InternetUpdater;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/network/InternetUpdater;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfetchActiveNetwork(Lcom/android/settings/network/InternetUpdater;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/network/InternetUpdater;->fetchActiveNetwork()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/network/InternetUpdater;->sTransportMap:Ljava/util/Map;

    const/4 v1, 0x1

    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/settings/network/InternetUpdater;->sTransportMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/settings/network/InternetUpdater;->sTransportMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lcom/android/settings/network/InternetUpdater$InternetChangeListener;)V
    .locals 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Lcom/android/settings/network/InternetUpdater$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/InternetUpdater$1;-><init>(Lcom/android/settings/network/InternetUpdater;)V

    iput-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 158
    new-instance v0, Lcom/android/settings/network/InternetUpdater$2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/InternetUpdater$2;-><init>(Lcom/android/settings/network/InternetUpdater;)V

    iput-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 184
    iput-object p1, p0, Lcom/android/settings/network/InternetUpdater;->mContext:Landroid/content/Context;

    .line 185
    new-instance v0, Lcom/android/settings/AirplaneModeEnabler;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;)V

    iput-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 186
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 187
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/network/InternetUpdater;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 188
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/network/InternetUpdater;->mWifiStateFilter:Landroid/content/IntentFilter;

    .line 189
    iput-object p3, p0, Lcom/android/settings/network/InternetUpdater;->mListener:Lcom/android/settings/network/InternetUpdater$InternetChangeListener;

    .line 190
    invoke-direct {p0}, Lcom/android/settings/network/InternetUpdater;->fetchActiveNetwork()V

    if-eqz p2, :cond_0

    .line 192
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private fetchActiveNetwork()V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 244
    iput-boolean v1, p0, Lcom/android/settings/network/InternetUpdater;->mInternetAvailable:Z

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/network/InternetUpdater;->updateInternetType()V

    return-void

    .line 249
    :cond_0
    iget-object v2, p0, Lcom/android/settings/network/InternetUpdater;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 250
    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    .line 252
    iput-boolean v1, p0, Lcom/android/settings/network/InternetUpdater;->mInternetAvailable:Z

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/network/InternetUpdater;->updateInternetType()V

    return-void

    .line 257
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/network/InternetUpdater;->updateInternetAvailable(Landroid/net/NetworkCapabilities;)V

    return-void
.end method


# virtual methods
.method public getInternetType()I
    .locals 0

    .line 311
    iget p0, p0, Lcom/android/settings/network/InternetUpdater;->mInternetType:I

    return p0
.end method

.method protected isCarrierWifiActive()Z
    .locals 1

    .line 299
    iget-object p0, p0, Lcom/android/settings/network/InternetUpdater;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 300
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->isCarrierMerged()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "InternetUpdater"

    const-string v0, "Detect a merged carrier Wi-Fi connected."

    .line 303
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    .line 235
    invoke-direct {p0}, Lcom/android/settings/network/InternetUpdater;->fetchActiveNetwork()V

    .line 236
    iget-object p0, p0, Lcom/android/settings/network/InternetUpdater;->mListener:Lcom/android/settings/network/InternetUpdater$InternetChangeListener;

    if-eqz p0, :cond_0

    .line 237
    invoke-interface {p0, p1}, Lcom/android/settings/network/InternetUpdater$InternetChangeListener;->onAirplaneModeChanged(Z)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 230
    iget-object p0, p0, Lcom/android/settings/network/InternetUpdater;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {p0}, Lcom/android/settings/network/GlobalSettingsChangeListener;->close()V

    return-void
.end method

.method public onPause()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->stop()V

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/network/InternetUpdater;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPause failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InternetUpdater"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_0
    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/network/InternetUpdater;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->start()V

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/network/InternetUpdater;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResume failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InternetUpdater"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/InternetUpdater;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/settings/network/InternetUpdater;->mWifiStateFilter:Landroid/content/IntentFilter;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method updateInternetAvailable(Landroid/net/NetworkCapabilities;)V
    .locals 6

    const/16 v0, 0xc

    .line 263
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    .line 264
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object p1

    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 266
    sget-object v4, Lcom/android/settings/network/InternetUpdater;->sTransportMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 267
    iput v3, p0, Lcom/android/settings/network/InternetUpdater;->mTransport:I

    .line 269
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Detect an internet available network with transport type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/network/InternetUpdater;->mTransport:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InternetUpdater"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    :cond_1
    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/network/InternetUpdater;->mInternetAvailable:Z

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/network/InternetUpdater;->updateInternetType()V

    return-void
.end method

.method updateInternetType()V
    .locals 3

    .line 282
    iget-boolean v0, p0, Lcom/android/settings/network/InternetUpdater;->mInternetAvailable:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 283
    sget-object v0, Lcom/android/settings/network/InternetUpdater;->sTransportMap:Ljava/util/Map;

    iget v2, p0, Lcom/android/settings/network/InternetUpdater;->mTransport:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/network/InternetUpdater;->isCarrierWifiActive()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_0

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/network/InternetUpdater;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 288
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 291
    :goto_0
    iput v1, p0, Lcom/android/settings/network/InternetUpdater;->mInternetType:I

    .line 293
    iget-object p0, p0, Lcom/android/settings/network/InternetUpdater;->mListener:Lcom/android/settings/network/InternetUpdater$InternetChangeListener;

    if-eqz p0, :cond_3

    .line 294
    invoke-interface {p0, v1}, Lcom/android/settings/network/InternetUpdater$InternetChangeListener;->onInternetTypeChanged(I)V

    :cond_3
    return-void
.end method
