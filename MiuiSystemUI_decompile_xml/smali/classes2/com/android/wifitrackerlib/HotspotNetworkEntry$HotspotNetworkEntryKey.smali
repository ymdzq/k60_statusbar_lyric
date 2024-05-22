.class public final Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mBssid:Ljava/lang/String;

.field public final mDeviceId:J

.field public final mIsVirtualEntry:Z

.field public final mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;


# direct methods
.method public constructor <init>(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getDeviceId()J

    .line 5
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mDeviceId:J

    .line 9
    invoke-virtual {p1}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getHotspotSsid()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p1}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getHotspotBssid()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p1}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getHotspotSecurityTypes()Ljava/util/Set;

    .line 23
    move-result-object v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mIsVirtualEntry:Z

    .line 31
    invoke-virtual {p1}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getHotspotBssid()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mBssid:Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    .line 39
    invoke-virtual {p1}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getHotspotSsid()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    .line 45
    invoke-virtual {p1}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getHotspotSecurityTypes()Ljava/util/Set;

    .line 47
    move-result-object p1

    .line 50
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 51
    invoke-direct {v0, v1, v2}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 54
    iput-object v0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    .line 57
    goto :goto_1

    .line 59
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mIsVirtualEntry:Z

    .line 61
    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mBssid:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    .line 66
    :goto_1
    return-void
    .line 68
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    :try_start_0
    const-string v1, "IS_VIRTUAL_ENTRY_KEY"

    .line 7
    iget-boolean v2, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mIsVirtualEntry:Z

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 11
    const-string v1, "DEVICE_ID_KEY"

    .line 14
    iget-wide v2, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mDeviceId:J

    .line 16
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 18
    iget-object v1, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mBssid:Ljava/lang/String;

    .line 21
    if-eqz v1, :cond_0

    .line 23
    const-string v2, "BSSID_KEY"

    .line 25
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    .line 30
    if-eqz p0, :cond_1

    .line 32
    const-string v1, "SCAN_RESULT_KEY"

    .line 34
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 39
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    const-string v2, "JSONException while converting HotspotNetworkEntryKey to string: "

    .line 47
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 58
    const-string v1, "HotspotNetworkEntry"

    .line 59
    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 64
    const-string v1, "HotspotNetworkEntry:"

    .line 66
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 81
    return-object p0
    .line 82
.end method
