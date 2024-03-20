.class public Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;
.super Ljava/lang/Object;
.source "SlaveWifiP2pUtils.java"


# instance fields
.field private mSlaveWifiP2pManager:Ljava/lang/Object;

.field private method_cancelConnect:Ljava/lang/reflect/Method;

.field private method_channelClose:Ljava/lang/reflect/Method;

.field private method_connect:Ljava/lang/reflect/Method;

.field private method_deletePersistentGroup:Ljava/lang/reflect/Method;

.field private method_discoverPeers:Ljava/lang/reflect/Method;

.field private method_initialize:Ljava/lang/reflect/Method;

.field private method_isP2p1Up:Ljava/lang/reflect/Method;

.field private method_removeGroup:Ljava/lang/reflect/Method;

.field private method_requestConnectionInfo:Ljava/lang/reflect/Method;

.field private method_requestDeviceInfo:Ljava/lang/reflect/Method;

.field private method_requestNetworkInfo:Ljava/lang/reflect/Method;

.field private method_requestPeers:Ljava/lang/reflect/Method;

.field private method_requestPersistentGroupInfo:Ljava/lang/reflect/Method;

.field private method_setDeviceName:Ljava/lang/reflect/Method;

.field private method_stopPeerDiscovery:Ljava/lang/reflect/Method;

.field private method_tearDownP2p1:Ljava/lang/reflect/Method;

.field private sChannel:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->sChannel:Ljava/lang/Object;

    .line 48
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->mSlaveWifiP2pManager:Ljava/lang/Object;

    .line 49
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_stopPeerDiscovery:Ljava/lang/reflect/Method;

    .line 50
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_requestDeviceInfo:Ljava/lang/reflect/Method;

    .line 51
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_requestPersistentGroupInfo:Ljava/lang/reflect/Method;

    .line 52
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_setDeviceName:Ljava/lang/reflect/Method;

    .line 53
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_removeGroup:Ljava/lang/reflect/Method;

    .line 54
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_cancelConnect:Ljava/lang/reflect/Method;

    .line 55
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_deletePersistentGroup:Ljava/lang/reflect/Method;

    .line 56
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_requestPeers:Ljava/lang/reflect/Method;

    .line 57
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_connect:Ljava/lang/reflect/Method;

    .line 58
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_requestConnectionInfo:Ljava/lang/reflect/Method;

    .line 59
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_discoverPeers:Ljava/lang/reflect/Method;

    .line 60
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_initialize:Ljava/lang/reflect/Method;

    .line 61
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_requestNetworkInfo:Ljava/lang/reflect/Method;

    .line 62
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_channelClose:Ljava/lang/reflect/Method;

    .line 63
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_isP2p1Up:Ljava/lang/reflect/Method;

    .line 64
    iput-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_tearDownP2p1:Ljava/lang/reflect/Method;

    :try_start_0
    const-string v1, "android.net.wifi.SlaveWifiP2pManager"

    .line 68
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "android.net.wifi.SlaveWifiP2pManager$Channel"

    .line 69
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "SlaveWifiP2pService"

    .line 71
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->mSlaveWifiP2pManager:Ljava/lang/Object;

    const-string/jumbo p1, "stopPeerDiscovery"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 72
    const-class v6, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    const/4 v7, 0x1

    aput-object v6, v4, v7

    invoke-virtual {v1, p1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_stopPeerDiscovery:Ljava/lang/reflect/Method;

    const-string p1, "requestDeviceInfo"

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v2, v4, v5

    .line 74
    const-class v6, Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;

    aput-object v6, v4, v7

    invoke-virtual {v1, p1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_requestDeviceInfo:Ljava/lang/reflect/Method;

    const-string p1, "requestPersistentGroupInfo"

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v2, v4, v5

    .line 76
    const-class v6, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;

    aput-object v6, v4, v7

    invoke-virtual {v1, p1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_requestPersistentGroupInfo:Ljava/lang/reflect/Method;

    const-string/jumbo p1, "setDeviceName"

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v2, v6, v5

    .line 78
    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const-class v8, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    aput-object v8, v6, v3

    invoke-virtual {v1, p1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_setDeviceName:Ljava/lang/reflect/Method;

    const-string p1, "removeGroup"

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v2, v6, v5

    .line 80
    const-class v8, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    aput-object v8, v6, v7

    invoke-virtual {v1, p1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_removeGroup:Ljava/lang/reflect/Method;

    const-string p1, "cancelConnect"

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v2, v6, v5

    .line 82
    const-class v8, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    aput-object v8, v6, v7

    invoke-virtual {v1, p1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_cancelConnect:Ljava/lang/reflect/Method;

    const-string p1, "deletePersistentGroup"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v2, v6, v5

    .line 84
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const-class v8, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    aput-object v8, v6, v3

    invoke-virtual {v1, p1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_deletePersistentGroup:Ljava/lang/reflect/Method;

    const-string p1, "requestPeers"

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v2, v6, v5

    .line 86
    const-class v8, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    aput-object v8, v6, v7

    invoke-virtual {v1, p1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_requestPeers:Ljava/lang/reflect/Method;

    const-string p1, "connect"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v2, v6, v5

    .line 88
    const-class v8, Landroid/net/wifi/p2p/WifiP2pConfig;

    aput-object v8, v6, v7

    const-class v8, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    aput-object v8, v6, v3

    invoke-virtual {v1, p1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_connect:Ljava/lang/reflect/Method;

    const-string p1, "requestConnectionInfo"

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v2, v6, v5

    .line 90
    const-class v8, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    aput-object v8, v6, v7

    invoke-virtual {v1, p1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_requestConnectionInfo:Ljava/lang/reflect/Method;

    const-string p1, "discoverPeers"

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v2, v6, v5

    .line 92
    const-class v8, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    aput-object v8, v6, v7

    invoke-virtual {v1, p1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_discoverPeers:Ljava/lang/reflect/Method;

    const-string p1, "initialize"

    new-array v4, v4, [Ljava/lang/Class;

    .line 94
    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const-class v6, Landroid/os/Looper;

    aput-object v6, v4, v7

    const-class v6, Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    aput-object v6, v4, v3

    invoke-virtual {v1, p1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_initialize:Ljava/lang/reflect/Method;

    const-string p1, "requestNetworkInfo"

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v2, v3, v5

    .line 96
    const-class v4, Landroid/net/wifi/p2p/WifiP2pManager$NetworkInfoListener;

    aput-object v4, v3, v7

    invoke-virtual {v1, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_requestNetworkInfo:Ljava/lang/reflect/Method;

    const-string p1, "isP2p1Up"

    .line 98
    invoke-virtual {v1, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_isP2p1Up:Ljava/lang/reflect/Method;

    const-string/jumbo p1, "tearDownP2p1"

    .line 99
    invoke-virtual {v1, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_tearDownP2p1:Ljava/lang/reflect/Method;

    const-string p1, "close"

    .line 102
    invoke-virtual {v2, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_channelClose:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "the device don\'t support dual p2p, return "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SlaveWifiP2pUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelConnect(Ljava/lang/Object;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 1

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_cancelConnect:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->mSlaveWifiP2pManager:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "removeGroup Exception"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SlaveWifiP2pUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public channelClose()V
    .locals 2

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_channelClose:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->sChannel:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize Exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SlaveWifiP2pUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public connect(Ljava/lang/Object;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 1

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_connect:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->mSlaveWifiP2pManager:Ljava/lang/Object;

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "connect Exception"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SlaveWifiP2pUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public deletePersistentGroup(Ljava/lang/Object;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 3

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_deletePersistentGroup:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->mSlaveWifiP2pManager:Ljava/lang/Object;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "deletePersistentGroup Exception"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SlaveWifiP2pUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public discoverPeers(Ljava/lang/Object;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 1

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_discoverPeers:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->mSlaveWifiP2pManager:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "discoverPeers Exception"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SlaveWifiP2pUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Ljava/lang/Object;
    .locals 2

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_initialize:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->mSlaveWifiP2pManager:Ljava/lang/Object;

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->sChannel:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 209
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "initialize Exception"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SlaveWifiP2pUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->sChannel:Ljava/lang/Object;

    return-object p0
.end method

.method public isP2p1Up()Z
    .locals 3

    .line 223
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_isP2p1Up:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->mSlaveWifiP2pManager:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize Exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SlaveWifiP2pUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public removeGroup(Ljava/lang/Object;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_removeGroup:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->mSlaveWifiP2pManager:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "removeGroup Exception"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SlaveWifiP2pUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public requestConnectionInfo(Ljava/lang/Object;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V
    .locals 1

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_requestConnectionInfo:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->mSlaveWifiP2pManager:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "requestConnectionInfo Exception"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SlaveWifiP2pUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public requestDeviceInfo(Ljava/lang/Object;Landroid/net/wifi/p2p/WifiP2pManager$DeviceInfoListener;)V
    .locals 1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_requestDeviceInfo:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->mSlaveWifiP2pManager:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "requestDeviceInfo Exception"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SlaveWifiP2pUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public requestNetworkInfo(Ljava/lang/Object;Landroid/net/wifi/p2p/WifiP2pManager$NetworkInfoListener;)V
    .locals 1

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_requestNetworkInfo:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->mSlaveWifiP2pManager:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "requestNetworkInfo Exception"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SlaveWifiP2pUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public requestPeers(Ljava/lang/Object;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V
    .locals 1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_requestPeers:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->mSlaveWifiP2pManager:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "requestPeers Exception"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SlaveWifiP2pUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public requestPersistentGroupInfo(Ljava/lang/Object;Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;)V
    .locals 1

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_requestPersistentGroupInfo:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->mSlaveWifiP2pManager:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "requestPersistentGroupInfo Exception"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SlaveWifiP2pUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setDeviceName(Ljava/lang/Object;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 1

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_setDeviceName:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->mSlaveWifiP2pManager:Ljava/lang/Object;

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setDeviceName Exception"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SlaveWifiP2pUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public stopPeerDiscovery(Ljava/lang/Object;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_stopPeerDiscovery:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->mSlaveWifiP2pManager:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "stopPeerDiscovery Exception"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SlaveWifiP2pUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public tearDownP2p1()V
    .locals 2

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->method_tearDownP2p1:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/SlaveWifiP2pUtils;->mSlaveWifiP2pManager:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tearDownP2p1 Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SlaveWifiP2pUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
