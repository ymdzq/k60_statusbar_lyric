.class public final synthetic Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 5
    iput p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    iput-boolean p3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda0;->f$2:Z

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 2
    iget v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda0;->f$2:Z

    .line 6
    iget-object v2, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    .line 8
    iget-object v3, v2, Lcom/android/systemui/util/CarrierConfigTracker;->mCarrierProvisionsWifiMergedNetworks:Landroid/util/SparseBooleanArray;

    .line 10
    monitor-enter v3

    .line 12
    :try_start_0
    iget-object v4, v2, Lcom/android/systemui/util/CarrierConfigTracker;->mCarrierProvisionsWifiMergedNetworks:Landroid/util/SparseBooleanArray;

    .line 13
    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 15
    move-result v4

    .line 18
    const/4 v5, 0x1

    .line 19
    if-ltz v4, :cond_0

    .line 20
    iget-object v2, v2, Lcom/android/systemui/util/CarrierConfigTracker;->mCarrierProvisionsWifiMergedNetworks:Landroid/util/SparseBooleanArray;

    .line 22
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 24
    move-result v1

    .line 27
    monitor-exit v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    iget-boolean v1, v2, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultCarrierProvisionsWifiMergedNetworksLoaded:Z

    .line 31
    if-nez v1, :cond_1

    .line 33
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    .line 35
    move-result-object v1

    .line 38
    const-string v3, "carrier_provisions_wifi_merged_networks_bool"

    .line 39
    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 41
    move-result v1

    .line 44
    iput-boolean v1, v2, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultCarrierProvisionsWifiMergedNetworks:Z

    .line 45
    iput-boolean v5, v2, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultCarrierProvisionsWifiMergedNetworksLoaded:Z

    .line 47
    :cond_1
    iget-boolean v1, v2, Lcom/android/systemui/util/CarrierConfigTracker;->mDefaultCarrierProvisionsWifiMergedNetworks:Z

    .line 49
    :goto_0
    if-eqz v1, :cond_2

    .line 51
    goto :goto_1

    .line 53
    :cond_2
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    .line 54
    check-cast v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 56
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->getMergedCarrierEntry()Lcom/android/wifitrackerlib/MergedCarrierEntry;

    .line 58
    move-result-object v0

    .line 61
    if-nez v0, :cond_3

    .line 62
    sget-boolean p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->DEBUG:Z

    .line 64
    if-eqz p0, :cond_4

    .line 66
    const-string p0, "InternetDialogController"

    .line 68
    const-string v0, "MergedCarrierEntry is null, can not set the status."

    .line 70
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    goto :goto_1

    .line 75
    :cond_3
    iget v1, v0, Lcom/android/wifitrackerlib/MergedCarrierEntry;->mSubscriptionId:I

    .line 76
    iget-object v0, v0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 78
    invoke-virtual {v0, v1, v5, p0}, Landroid/net/wifi/WifiManager;->setCarrierNetworkOffloadEnabled(IZZ)V

    .line 80
    if-nez p0, :cond_4

    .line 83
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->stopRestrictingAutoJoinToSubscriptionId()V

    .line 85
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 88
    :cond_4
    :goto_1
    return-void

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    throw p0
    .line 94
.end method
