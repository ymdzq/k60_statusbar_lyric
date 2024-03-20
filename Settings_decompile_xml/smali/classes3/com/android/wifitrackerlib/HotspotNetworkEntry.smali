.class public Lcom/android/wifitrackerlib/HotspotNetworkEntry;
.super Lcom/android/wifitrackerlib/WifiEntry;
.source "HotspotNetworkEntry.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x22
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHotspotNetworkData:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

.field private final mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

.field private mKey:Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;

.field private mServerInitiatedConnection:Z

.field private final mSharedConnectivityManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;


# direct methods
.method public static synthetic $r8$lambda$39MqpO_9z4VjqYwmBj1ArWVVbdU(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->lambda$connect$0(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Re3vjwHBwmiKDl9yEaFTkaIDgB0(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->lambda$disconnect$1(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dBZOwZbho8nhVz4juEiMUQlzZYs(Lcom/android/wifitrackerlib/HotspotNetworkEntry;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->lambda$onConnectionStatusChanged$2()V

    return-void
.end method

.method constructor <init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiManager;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p3, p4, v0}, Lcom/android/wifitrackerlib/WifiEntry;-><init>(Landroid/os/Handler;Landroid/net/wifi/WifiManager;Z)V

    .line 62
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mServerInitiatedConnection:Z

    .line 127
    iput-object p1, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    .line 128
    iput-object p2, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mContext:Landroid/content/Context;

    .line 129
    iput-object p5, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mSharedConnectivityManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    .line 130
    iput-object p6, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mHotspotNetworkData:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    .line 131
    new-instance p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;

    invoke-direct {p1, p6}, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;-><init>(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V

    iput-object p1, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mKey:Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;

    return-void
.end method

.method constructor <init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiManager;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;)V
    .locals 1

    const/4 v0, 0x0

    .line 143
    invoke-direct {p0, p3, p4, v0}, Lcom/android/wifitrackerlib/WifiEntry;-><init>(Landroid/os/Handler;Landroid/net/wifi/WifiManager;Z)V

    .line 62
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mServerInitiatedConnection:Z

    .line 144
    iput-object p1, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    .line 145
    iput-object p2, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mContext:Landroid/content/Context;

    .line 146
    iput-object p5, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mSharedConnectivityManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    const/4 p1, 0x0

    .line 147
    iput-object p1, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mHotspotNetworkData:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    .line 148
    iput-object p6, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mKey:Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;

    return-void
.end method

.method private static synthetic lambda$connect$0(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V
    .locals 1

    const/4 v0, 0x2

    .line 288
    invoke-interface {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;->onConnectResult(I)V

    return-void
.end method

.method private static synthetic lambda$disconnect$1(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 306
    invoke-interface {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;->onDisconnectResult(I)V

    return-void
.end method

.method private synthetic lambda$onConnectionStatusChanged$2()V
    .locals 1

    .line 338
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;->onConnectResult(I)V

    return-void
.end method


# virtual methods
.method public canConnect()Z
    .locals 0

    .line 280
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canDisconnect()Z
    .locals 0

    .line 298
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V
    .locals 1

    .line 285
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    .line 286
    iget-object v0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mSharedConnectivityManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 288
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/wifitrackerlib/HotspotNetworkEntry$$ExternalSyntheticLambda0;-><init>(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    .line 293
    :cond_1
    iget-object p0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mHotspotNetworkData:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    invoke-virtual {v0, p0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->connectHotspotNetwork(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)Z

    return-void
.end method

.method protected declared-synchronized connectionInfoMatches(Landroid/net/wifi/WifiInfo;)Z
    .locals 1

    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mKey:Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->isVirtualEntry()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 176
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 178
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mKey:Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->getBssid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public disconnect(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V
    .locals 1

    .line 303
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDisconnectCallback:Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;

    .line 304
    iget-object v0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mSharedConnectivityManager:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 306
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/wifitrackerlib/HotspotNetworkEntry$$ExternalSyntheticLambda1;-><init>(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    .line 311
    :cond_1
    iget-object p0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mHotspotNetworkData:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    invoke-virtual {v0, p0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->disconnectHotspotNetwork(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)Z

    return-void
.end method

.method public getHotspotNetworkEntryKey()Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mKey:Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mKey:Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary(Z)Ljava/lang/String;
    .locals 3

    .line 191
    iget-object p1, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mHotspotNetworkData:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mServerInitiatedConnection:Z

    if-eqz p1, :cond_1

    .line 195
    iget-object p0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_hotspot_network_connecting:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 197
    :cond_1
    iget-object p1, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_hotspot_network_summary:I

    .line 198
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mHotspotNetworkData:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    invoke-virtual {v2}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getNetworkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    iget-object p0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mHotspotNetworkData:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    .line 200
    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getNetworkProviderInfo()Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->getModelName()Ljava/lang/String;

    move-result-object p0

    .line 199
    invoke-virtual {v2, p0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 197
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mHotspotNetworkData:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 186
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getNetworkProviderInfo()Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onConnectionStatusChanged(I)V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 338
    :pswitch_0
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/wifitrackerlib/HotspotNetworkEntry$$ExternalSyntheticLambda2;-><init>(Lcom/android/wifitrackerlib/HotspotNetworkEntry;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 340
    iput-boolean p1, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mServerInitiatedConnection:Z

    .line 341
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    .line 327
    iput-boolean p1, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mServerInitiatedConnection:Z

    .line 328
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected declared-synchronized updateHotspotNetworkData(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V
    .locals 1

    monitor-enter p0

    .line 168
    :try_start_0
    iput-object p1, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mHotspotNetworkData:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    .line 169
    new-instance v0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;

    invoke-direct {v0, p1}, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;-><init>(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V

    iput-object v0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mKey:Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;

    .line 170
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
