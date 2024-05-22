.class public final Lcom/android/systemui/util/CarrierConfigTracker;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# instance fields
.field public final mCallStrengthConfigs:Landroid/util/SparseBooleanArray;

.field public final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field public final mCarrierProvisionsWifiMergedNetworks:Landroid/util/SparseBooleanArray;

.field public final mDataListeners:Ljava/util/Set;

.field public mDefaultAlwaysShowPrimarySignalBarInOpportunisticNetworkConfig:Z

.field public mDefaultAlwaysShowPrimarySignalBarInOpportunisticNetworkConfigLoaded:Z

.field public mDefaultCarrierProvisionsWifiMergedNetworks:Z

.field public mDefaultCarrierProvisionsWifiMergedNetworksLoaded:Z

.field public final mListeners:Ljava/util/Set;

.field public final mNoCallingConfigs:Landroid/util/SparseBooleanArray;

.field public final mShowOperatorNameConfigs:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/telephony/CarrierConfigManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 5
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCallStrengthConfigs:Landroid/util/SparseBooleanArray;

    .line 10
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 12
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mNoCallingConfigs:Landroid/util/SparseBooleanArray;

    .line 17
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 19
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCarrierProvisionsWifiMergedNetworks:Landroid/util/SparseBooleanArray;

    .line 24
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 26
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mShowOperatorNameConfigs:Landroid/util/SparseBooleanArray;

    .line 31
    new-instance v0, Landroid/util/ArraySet;

    .line 33
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mListeners:Ljava/util/Set;

    .line 38
    new-instance v0, Landroid/util/ArraySet;

    .line 40
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDataListeners:Ljava/util/Set;

    .line 45
    iput-object p1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 47
    new-instance p1, Landroid/content/IntentFilter;

    .line 49
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 64
    return-void
    .line 67
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$2;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mListeners:Ljava/util/Set;

    .line 4
    check-cast p0, Landroid/util/ArraySet;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 8
    return-void
    .line 11
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    if-eqz v0, :cond_3

    .line 13
    const-string p1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 15
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 17
    move-result p1

    .line 20
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 21
    move-result p2

    .line 24
    if-nez p2, :cond_0

    .line 25
    goto/16 :goto_2

    .line 27
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 29
    invoke-virtual {p2, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    .line 31
    move-result-object p2

    .line 34
    if-nez p2, :cond_1

    .line 35
    goto/16 :goto_2

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCallStrengthConfigs:Landroid/util/SparseBooleanArray;

    .line 39
    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCallStrengthConfigs:Landroid/util/SparseBooleanArray;

    .line 42
    const-string v2, "display_call_strength_indicator_bool"

    .line 44
    invoke-virtual {p2, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 46
    move-result v2

    .line 49
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 50
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 53
    iget-object v1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mNoCallingConfigs:Landroid/util/SparseBooleanArray;

    .line 54
    monitor-enter v1

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mNoCallingConfigs:Landroid/util/SparseBooleanArray;

    .line 57
    const-string/jumbo v2, "use_ip_for_calling_indicator_bool"

    .line 59
    invoke-virtual {p2, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 62
    move-result v2

    .line 65
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 66
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 69
    iget-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCarrierProvisionsWifiMergedNetworks:Landroid/util/SparseBooleanArray;

    .line 70
    monitor-enter v0

    .line 72
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mCarrierProvisionsWifiMergedNetworks:Landroid/util/SparseBooleanArray;

    .line 73
    const-string v2, "carrier_provisions_wifi_merged_networks_bool"

    .line 75
    invoke-virtual {p2, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 77
    move-result v2

    .line 80
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 81
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    iget-object v1, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mShowOperatorNameConfigs:Landroid/util/SparseBooleanArray;

    .line 85
    monitor-enter v1

    .line 87
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mShowOperatorNameConfigs:Landroid/util/SparseBooleanArray;

    .line 88
    const-string/jumbo v2, "show_operator_name_in_statusbar_bool"

    .line 90
    invoke-virtual {p2, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 93
    move-result p2

    .line 96
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 97
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mListeners:Ljava/util/Set;

    .line 101
    check-cast p0, Landroid/util/ArraySet;

    .line 103
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 105
    move-result-object p0

    .line 108
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    move-result p1

    .line 112
    if-eqz p1, :cond_5

    .line 113
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    move-result-object p1

    .line 118
    check-cast p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$2;

    .line 119
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$2;->this$0:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;

    .line 121
    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOperatorNameViewController:Lcom/android/systemui/statusbar/OperatorNameViewController;

    .line 123
    if-nez p2, :cond_2

    .line 125
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->initOperatorName()V

    .line 127
    goto :goto_0

    .line 130
    :catchall_0
    move-exception p0

    .line 131
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 132
    throw p0

    .line 133
    :catchall_1
    move-exception p0

    .line 134
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 135
    throw p0

    .line 136
    :catchall_2
    move-exception p0

    .line 137
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 138
    throw p0

    .line 139
    :catchall_3
    move-exception p0

    .line 140
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 141
    throw p0

    .line 142
    :cond_3
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    move-result p1

    .line 148
    if-eqz p1, :cond_5

    .line 149
    const-string p1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 151
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 153
    iget-object p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mDataListeners:Ljava/util/Set;

    .line 156
    check-cast p0, Landroid/util/ArraySet;

    .line 158
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 160
    move-result-object p0

    .line 163
    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    move-result p1

    .line 167
    if-eqz p1, :cond_5

    .line 168
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    move-result-object p1

    .line 173
    check-cast p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$3;

    .line 174
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$3;->this$0:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;

    .line 176
    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOperatorNameViewController:Lcom/android/systemui/statusbar/OperatorNameViewController;

    .line 178
    if-nez p2, :cond_4

    .line 180
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->initOperatorName()V

    .line 182
    goto :goto_1

    .line 185
    :cond_5
    :goto_2
    return-void
    .line 186
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$2;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/util/CarrierConfigTracker;->mListeners:Ljava/util/Set;

    .line 4
    check-cast p0, Landroid/util/ArraySet;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 8
    return-void
    .line 11
.end method
