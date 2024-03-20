.class public final synthetic Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/WifiPickerTracker;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda6;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_2

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda6;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 9
    check-cast p1, Ljava/util/Map$Entry;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 19
    check-cast p1, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    .line 20
    iget-object v0, p1, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mKey:Ljava/lang/String;

    .line 22
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mPasspointConfigCache:Ljava/util/Map;

    .line 24
    check-cast p0, Landroid/util/ArrayMap;

    .line 26
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 31
    check-cast p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 32
    monitor-enter p1

    .line 34
    :try_start_0
    iput-object p0, p1, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 35
    if-eqz p0, :cond_0

    .line 37
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getSubscriptionExpirationTimeMillis()J

    .line 39
    move-result-wide v2

    .line 42
    iput-wide v2, p1, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mSubscriptionExpirationTimeInMillis:J

    .line 43
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getMeteredOverride()I

    .line 45
    move-result p0

    .line 48
    iput p0, p1, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mMeteredOverride:I

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p1

    .line 54
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->isSubscription()Z

    .line 55
    move-result p0

    .line 58
    if-nez p0, :cond_1

    .line 59
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->isSuggestion()Z

    .line 61
    move-result p0

    .line 64
    if-nez p0, :cond_1

    .line 65
    goto :goto_0

    .line 67
    :cond_1
    const/4 v1, 0x0

    .line 68
    :goto_0
    return v1

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    monitor-exit p1

    .line 71
    throw p0

    .line 72
    :pswitch_1
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda6;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 73
    check-cast p1, Lcom/android/wifitrackerlib/StandardWifiEntry;

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    monitor-enter p1

    .line 80
    :try_start_1
    iget-boolean v0, p1, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsUserShareable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 81
    monitor-exit p1

    .line 83
    if-eqz v0, :cond_2

    .line 84
    goto :goto_1

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mLock:Ljava/lang/Object;

    .line 87
    monitor-enter v0

    .line 89
    :try_start_2
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mActiveWifiEntries:Ljava/util/List;

    .line 90
    check-cast p0, Ljava/util/ArrayList;

    .line 92
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 94
    move-result v1

    .line 97
    monitor-exit v0

    .line 98
    :goto_1
    return v1

    .line 99
    :catchall_1
    move-exception p0

    .line 100
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    throw p0

    .line 102
    :catchall_2
    move-exception p0

    .line 103
    monitor-exit p1

    .line 104
    throw p0

    .line 105
    :goto_2
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda6;->f$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 106
    check-cast p1, Lcom/android/wifitrackerlib/StandardWifiEntry;

    .line 108
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mSuggestedConfigCache:Ljava/util/Map;

    .line 110
    iget-object v0, p1, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    .line 112
    check-cast p0, Landroid/util/ArrayMap;

    .line 114
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-result-object p0

    .line 119
    check-cast p0, Ljava/util/List;

    .line 120
    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateConfig(Ljava/util/List;)V

    .line 122
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSuggestion()Z

    .line 125
    move-result p0

    .line 128
    xor-int/2addr p0, v1

    .line 129
    return p0

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 132
.end method
