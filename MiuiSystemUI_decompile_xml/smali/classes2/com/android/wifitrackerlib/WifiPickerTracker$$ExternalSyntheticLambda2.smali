.class public final synthetic Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/Map;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda2;->f$1:Ljava/util/Map;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Ljava/util/Set;

    .line 10
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda2;->f$1:Ljava/util/Map;

    .line 12
    check-cast p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    .line 14
    iget-object v1, p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mKey:Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;

    .line 16
    iget-wide v1, v1, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;->mDeviceId:J

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 24
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 30
    check-cast p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    .line 31
    monitor-enter p1

    .line 33
    :try_start_0
    iput-object p0, p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mHotspotNetworkData:Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    .line 34
    new-instance v0, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;

    .line 36
    invoke-direct {v0, p0}, Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;-><init>(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V

    .line 38
    iput-object v0, p1, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->mKey:Lcom/android/wifitrackerlib/HotspotNetworkEntry$HotspotNetworkEntryKey;

    .line 41
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p1

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    monitor-exit p1

    .line 49
    throw p0

    .line 50
    :pswitch_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 51
    check-cast v0, Ljava/util/Set;

    .line 53
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda2;->f$1:Ljava/util/Map;

    .line 55
    check-cast p1, Lcom/android/wifitrackerlib/StandardWifiEntry;

    .line 57
    iget-object v1, p1, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 59
    iget-object v1, v1, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    .line 61
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 63
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object p0

    .line 69
    check-cast p0, Ljava/util/List;

    .line 70
    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    .line 72
    return-void

    .line 75
    :pswitch_2
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 76
    check-cast v0, Ljava/util/Set;

    .line 78
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda2;->f$1:Ljava/util/Map;

    .line 80
    check-cast p1, Lcom/android/wifitrackerlib/KnownNetworkEntry;

    .line 82
    iget-object v1, p1, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 84
    iget-object v1, v1, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    .line 86
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 88
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    move-result-object p0

    .line 94
    check-cast p0, Ljava/util/List;

    .line 95
    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    .line 97
    return-void

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 101
    check-cast v0, Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 103
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda2;->f$1:Ljava/util/Map;

    .line 105
    check-cast p1, Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    iget-object v1, p1, Lcom/android/wifitrackerlib/OsuWifiEntry;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    .line 112
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    move-result-object p0

    .line 117
    check-cast p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 118
    if-nez p0, :cond_0

    .line 120
    monitor-enter p1

    .line 122
    const/4 p0, 0x0

    .line 123
    :try_start_1
    iput-boolean p0, p1, Lcom/android/wifitrackerlib/OsuWifiEntry;->mIsAlreadyProvisioned:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    monitor-exit p1

    .line 126
    goto :goto_1

    .line 127
    :catchall_1
    move-exception p0

    .line 128
    monitor-exit p1

    .line 129
    throw p0

    .line 130
    :cond_0
    monitor-enter p1

    .line 131
    const/4 v1, 0x1

    .line 132
    :try_start_2
    iput-boolean v1, p1, Lcom/android/wifitrackerlib/OsuWifiEntry;->mIsAlreadyProvisioned:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 133
    monitor-exit p1

    .line 135
    iget-object v0, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointWifiEntryCache:Ljava/util/Map;

    .line 136
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUniqueId()Ljava/lang/String;

    .line 138
    move-result-object p0

    .line 141
    invoke-static {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    move-result-object p0

    .line 145
    check-cast v0, Landroid/util/ArrayMap;

    .line 146
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    move-result-object p0

    .line 151
    check-cast p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    .line 152
    if-nez p0, :cond_1

    .line 154
    goto :goto_1

    .line 156
    :cond_1
    monitor-enter p0

    .line 157
    :try_start_3
    iput-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mOsuWifiEntry:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 158
    monitor-enter p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 160
    :try_start_4
    iput-object p0, p1, Lcom/android/wifitrackerlib/WifiEntry;->mListener:Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 161
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 163
    monitor-exit p0

    .line 164
    :goto_1
    return-void

    .line 165
    :catchall_2
    move-exception v0

    .line 166
    :try_start_6
    monitor-exit p1

    .line 167
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 168
    :catchall_3
    move-exception p1

    .line 169
    monitor-exit p0

    .line 170
    throw p1

    .line 171
    :catchall_4
    move-exception p0

    .line 172
    monitor-exit p1

    .line 173
    throw p0

    .line 174
    nop

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 176
.end method
