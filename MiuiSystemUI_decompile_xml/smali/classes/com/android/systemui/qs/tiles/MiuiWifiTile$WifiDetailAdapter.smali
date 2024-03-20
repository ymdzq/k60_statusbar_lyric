.class public final Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;
.super Lcom/android/systemui/qs/tileimpl/QSDetailAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;
.implements Lcom/android/systemui/qs/QSDetailContent$Callback;


# instance fields
.field public accessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

.field public items:Lcom/android/systemui/qs/QSDetailContent;

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/MiuiWifiTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/MiuiWifiTile;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiWifiTile;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSDetailAdapter;-><init>(Landroid/content/Context;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    .line 2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiWifiTile;

    .line 4
    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 8
    if-eqz p2, :cond_0

    .line 10
    const/4 v2, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    :goto_0
    const-string v3, "createDetailView convertView="

    .line 15
    invoke-static {v3, v2, v0}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;->accessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    .line 21
    sget-object v0, Lcom/android/systemui/qs/QSDetailContent;->Companion:Lcom/android/systemui/qs/QSDetailContent$Companion;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-static {p1, p2, p3}, Lcom/android/systemui/qs/QSDetailContent$Companion;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailContent;

    .line 28
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;->items:Lcom/android/systemui/qs/QSDetailContent;

    .line 32
    const-string p2, "Wifi"

    .line 34
    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/QSDetailContent;->setSuffix(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetailContent;->setCallback(Lcom/android/systemui/qs/QSDetailContent$Callback;)V

    .line 39
    iget-object p0, v1, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->accessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    .line 42
    check-cast p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->scanForAccessPoints()V

    .line 46
    return-object p1
    .line 49
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x98

    .line 2
    return p0
    .line 4
.end method

.method public final getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiWifiTile;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 4
    sget-object v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 6
    invoke-static {p0, v0}, Lcom/android/systemui/controlcenter/utils/ControlCenterUtils;->getSettingsSplitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiWifiTile;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->getTileLabel()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getToggleEnabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final getToggleState()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiWifiTile;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 4
    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 10
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    move-result-object p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return-object p0
    .line 18
.end method

.method public final hasHeader()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final onAccessPointsChanged(Ljava/util/List;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_2

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    move-object v3, v1

    .line 22
    check-cast v3, Lcom/android/wifitrackerlib/WifiEntry;

    .line 23
    sget-object v4, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 25
    iget v3, v3, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 27
    const/4 v4, -0x1

    .line 29
    if-eq v3, v4, :cond_1

    .line 30
    const/4 v2, 0x1

    .line 32
    :cond_1
    if-eqz v2, :cond_0

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    goto :goto_0

    .line 38
    :cond_2
    sget-object p1, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->WIFI_ENTRY_COMPARATOR:Ljava/util/Comparator;

    .line 39
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 41
    move-result-object p1

    .line 44
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiWifiTile;

    .line 45
    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 49
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 51
    move-result v3

    .line 54
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object v3

    .line 61
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v4

    .line 65
    if-eqz v4, :cond_3

    .line 66
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v4

    .line 71
    check-cast v4, Lcom/android/wifitrackerlib/WifiEntry;

    .line 72
    invoke-virtual {v4}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    .line 74
    move-result-object v5

    .line 77
    iget v6, v4, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 78
    invoke-virtual {v4}, Lcom/android/wifitrackerlib/WifiEntry;->getMeteredChoice()I

    .line 80
    move-result v7

    .line 83
    invoke-virtual {v4}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    .line 84
    move-result v4

    .line 87
    new-instance v8, Ljava/lang/StringBuilder;

    .line 88
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v5, " "

    .line 96
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v4

    .line 119
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    goto :goto_1

    .line 123
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 124
    const-string v4, "onAccessPointsChanged "

    .line 126
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v1

    .line 137
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-array v0, v2, [Lcom/android/wifitrackerlib/WifiEntry;

    .line 141
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 143
    move-result-object p1

    .line 146
    check-cast p1, [Lcom/android/wifitrackerlib/WifiEntry;

    .line 147
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;->accessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;->updateItems()V

    .line 151
    return-void
    .line 154
.end method

.method public final onDetailItemClick(Lcom/android/systemui/qs/QSDetailContent$Item;)V
    .locals 14

    .line 1
    const-string v0, "SlaveWifiHelper"

    .line 2
    if-eqz p1, :cond_1b

    .line 4
    invoke-interface {p1}, Lcom/android/systemui/qs/QSDetailContent$Item;->getTag()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    goto/16 :goto_b

    .line 12
    :cond_0
    instance-of v1, p1, Lcom/android/wifitrackerlib/WifiEntry;

    .line 14
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiWifiTile;

    .line 19
    if-eqz v1, :cond_15

    .line 21
    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    .line 23
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    .line 25
    move-result v1

    .line 28
    if-nez v1, :cond_13

    .line 29
    iget-object v1, v5, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->slaveWifiHelper:Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;

    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    .line 36
    move-result v6

    .line 39
    if-nez v6, :cond_10

    .line 40
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    .line 42
    move-result-object v6

    .line 45
    iget-object v7, v1, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->slaveWifiConnectionInfo:Landroid/net/wifi/WifiInfo;

    .line 46
    if-eqz v7, :cond_1

    .line 48
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 50
    move-result-object v7

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move-object v7, v3

    .line 55
    :goto_0
    invoke-static {v7}, Lcom/miui/systemui/util/CommonUtil;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v7

    .line 59
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 60
    move-result v6

    .line 63
    if-eqz v6, :cond_2

    .line 64
    goto/16 :goto_a

    .line 66
    :cond_2
    iget-boolean v6, v1, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->slaveWifiEnabled:Z

    .line 68
    if-eqz v6, :cond_f

    .line 70
    iget-object v6, v1, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->slaveWifiUtils:Lcom/miui/utils/SlaveWifiUtils;

    .line 72
    invoke-virtual {v6}, Lcom/miui/utils/SlaveWifiUtils;->getWifiSlaveConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 74
    move-result-object v7

    .line 77
    const-string v8, "SlaveWifiUtils"

    .line 78
    invoke-virtual {v6}, Lcom/miui/utils/SlaveWifiUtils;->checkIsVaild()Z

    .line 80
    move-result v9

    .line 83
    if-nez v9, :cond_3

    .line 84
    move-object v6, v3

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    :try_start_0
    iget-object v9, v6, Lcom/miui/utils/SlaveWifiUtils;->method_getSlaveWifiCurrentNetwork:Ljava/lang/reflect/Method;

    .line 88
    invoke-virtual {v6}, Lcom/miui/utils/SlaveWifiUtils;->getSlaveWifiManager()Ljava/lang/Object;

    .line 90
    move-result-object v6

    .line 93
    invoke-virtual {v9, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    move-result-object v6

    .line 97
    check-cast v6, Landroid/net/Network;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_1

    .line 100
    :catch_0
    move-exception v6

    .line 101
    const-string v9, "getSlaveWifiCurrentNetwork Exception:"

    .line 102
    invoke-static {v9, v6, v8}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 104
    move-object v6, v3

    .line 107
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 108
    const-string v10, "getSlaveWifiCurrentNetwork:"

    .line 110
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v9

    .line 121
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_2
    iget-object v8, v1, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 125
    invoke-virtual {v8, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    .line 127
    move-result-object v6

    .line 130
    if-nez v7, :cond_4

    .line 131
    goto/16 :goto_8

    .line 133
    :cond_4
    if-eqz v6, :cond_5

    .line 135
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 137
    move-result v6

    .line 140
    if-ne v6, v2, :cond_5

    .line 141
    move v6, v2

    .line 143
    goto :goto_3

    .line 144
    :cond_5
    move v6, v4

    .line 145
    :goto_3
    if-nez v6, :cond_6

    .line 146
    goto :goto_8

    .line 148
    :cond_6
    :try_start_1
    const-class v6, Lcom/android/wifitrackerlib/StandardWifiEntry;

    .line 149
    const-string v8, "getScanResults"

    .line 151
    new-array v9, v4, [Ljava/lang/Class;

    .line 153
    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 155
    move-result-object v6

    .line 158
    new-array v8, v4, [Ljava/lang/Object;

    .line 159
    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    move-result-object v6

    .line 164
    instance-of v8, v6, Ljava/util/Set;

    .line 165
    if-eqz v8, :cond_7

    .line 167
    check-cast v6, Ljava/util/Set;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    goto :goto_4

    .line 171
    :catch_1
    const-string v6, "get scan result failed."

    .line 172
    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_7
    move-object v6, v3

    .line 177
    :goto_4
    if-nez v6, :cond_8

    .line 178
    move v8, v2

    .line 180
    goto :goto_5

    .line 181
    :cond_8
    move v8, v4

    .line 182
    :goto_5
    invoke-static {v6}, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$Companion;->access$isOnly5Ghz(Ljava/util/Set;)Z

    .line 183
    move-result v9

    .line 186
    invoke-static {v6}, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$Companion;->access$isOnly24Ghz(Ljava/util/Set;)Z

    .line 187
    move-result v10

    .line 190
    const-string/jumbo v11, "scanResults is null: "

    .line 191
    const-string v12, ", isOnly5Ghz: "

    .line 194
    const-string v13, ", isOnly24Ghz: "

    .line 196
    invoke-static {v11, v8, v12, v9, v13}, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    move-result-object v8

    .line 201
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    move-result-object v8

    .line 208
    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 212
    move-result v0

    .line 215
    const/16 v7, 0x961

    .line 216
    if-gt v7, v0, :cond_9

    .line 218
    const/16 v7, 0x9c4

    .line 220
    if-ge v0, v7, :cond_9

    .line 222
    move v0, v2

    .line 224
    goto :goto_6

    .line 225
    :cond_9
    move v0, v4

    .line 226
    :goto_6
    if-eqz v0, :cond_a

    .line 227
    invoke-static {v6}, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$Companion;->access$isOnly5Ghz(Ljava/util/Set;)Z

    .line 229
    move-result v0

    .line 232
    if-nez v0, :cond_b

    .line 233
    goto :goto_7

    .line 235
    :cond_a
    invoke-static {v6}, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$Companion;->access$isOnly24Ghz(Ljava/util/Set;)Z

    .line 236
    move-result v0

    .line 239
    if-nez v0, :cond_b

    .line 240
    :goto_7
    move v0, v2

    .line 242
    goto :goto_9

    .line 243
    :cond_b
    :goto_8
    move v0, v4

    .line 244
    :goto_9
    if-eqz v0, :cond_f

    .line 245
    iget-object v0, v1, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->context:Landroid/content/Context;

    .line 247
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 249
    move-result-object v6

    .line 252
    invoke-virtual {v0, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 253
    move-result-object v0

    .line 256
    const-string v6, "dual_wifi_switching_not_remind"

    .line 257
    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 259
    move-result v0

    .line 262
    if-nez v0, :cond_f

    .line 263
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    .line 265
    move-result v0

    .line 268
    if-nez v0, :cond_c

    .line 269
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    .line 271
    move-result v0

    .line 274
    if-nez v0, :cond_f

    .line 275
    :cond_c
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 277
    const v6, 0x7f1404ee    # @style/Theme.Dialog.Alert

    .line 279
    iget-object v7, v5, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 282
    invoke-direct {v0, v7, v6}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 284
    invoke-virtual {v0, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)V

    .line 287
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 290
    move-result-object v6

    .line 293
    const v8, 0x7f130a0d    # @string/quick_settings_wifi_detail_dual_wifi_switching_prompt 'Switching between networks'

    .line 294
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 297
    move-result-object v8

    .line 300
    invoke-virtual {v0, v8}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)V

    .line 301
    const v8, 0x7f130a0e    # @string/quick_settings_wifi_detail_dual_wifi_switching_summary 'Dual band WLAN speed boost needs to use two different WLAN bands. If you connect to a different main ...'

    .line 304
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 307
    move-result-object v8

    .line 310
    invoke-virtual {v0, v8}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)V

    .line 311
    const v8, 0x7f130a0c    # @string/quick_settings_wifi_detail_dual_wifi_switching_not_remind 'Don't show again'

    .line 314
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 317
    move-result-object v8

    .line 320
    invoke-virtual {v0, v8, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(Ljava/lang/CharSequence;Z)V

    .line 321
    const v8, 0x7f130a0a    # @string/quick_settings_wifi_detail_dual_wifi_switching_cancel 'Cancel'

    .line 324
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 327
    move-result-object v8

    .line 330
    sget-object v9, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$showAlertDialog$1;->INSTANCE:Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$showAlertDialog$1;

    .line 331
    invoke-virtual {v0, v8, v9}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 333
    const v8, 0x7f130a0b    # @string/quick_settings_wifi_detail_dual_wifi_switching_confirm 'Confirm'

    .line 336
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 339
    move-result-object v6

    .line 342
    new-instance v8, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$showAlertDialog$2;

    .line 343
    invoke-direct {v8, v7, v1, p1}, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$showAlertDialog$2;-><init>(Landroid/content/Context;Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 345
    invoke-virtual {v0, v6, v8}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 348
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 351
    move-result-object v0

    .line 354
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 355
    move-result-object v1

    .line 358
    if-eqz v1, :cond_d

    .line 359
    const/16 v6, 0x7da

    .line 361
    invoke-virtual {v1, v6}, Landroid/view/Window;->setType(I)V

    .line 363
    :cond_d
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 366
    move-result-object v1

    .line 369
    if-eqz v1, :cond_e

    .line 370
    const/16 v6, 0x10

    .line 372
    invoke-virtual {v1, v6}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 374
    :cond_e
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 377
    goto :goto_a

    .line 380
    :cond_f
    iget-object v0, v1, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->accessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    .line 381
    check-cast v0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 383
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->connect(Lcom/android/wifitrackerlib/WifiEntry;)Z

    .line 385
    :cond_10
    :goto_a
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    .line 388
    move-result v0

    .line 391
    if-eqz v0, :cond_11

    .line 392
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    .line 394
    move-result p1

    .line 397
    if-nez p1, :cond_12

    .line 398
    :cond_11
    iget-object p1, v5, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 400
    invoke-interface {p1}, Lcom/android/systemui/plugins/miui/qs/MiuiQSHost;->collapsePanels()V

    .line 402
    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    .line 405
    :cond_12
    const-class p1, Lcom/miui/interfaces/IHapticFeedBack;

    .line 408
    invoke-static {p1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 410
    move-result-object p1

    .line 413
    check-cast p1, Lcom/miui/interfaces/IHapticFeedBack;

    .line 414
    check-cast p1, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 416
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    sget-boolean v0, Lcom/miui/interfaces/IHapticFeedBack;->IS_SUPPORT_LINEAR_MOTOR_VIBRATE:Z

    .line 421
    if-eqz v0, :cond_13

    .line 423
    new-instance v0, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda2;

    .line 425
    const-string v1, "mesh_normal"

    .line 427
    invoke-direct {v0, p1, v1}, Lcom/miui/systemui/functions/HapticFeedBackImpl$$ExternalSyntheticLambda2;-><init>(Lcom/miui/systemui/functions/HapticFeedBackImpl;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p1, v3, v0}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->postToBgThreadIfNeed(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 432
    :cond_13
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;->items:Lcom/android/systemui/qs/QSDetailContent;

    .line 435
    if-nez p0, :cond_14

    .line 437
    goto/16 :goto_b

    .line 439
    :cond_14
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSDetailContent;->setItemClicked(Z)V

    .line 441
    goto/16 :goto_b

    .line 444
    :cond_15
    instance-of p0, p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;

    .line 446
    if-eqz p0, :cond_1b

    .line 448
    iget-object p0, v5, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->shareNetworkController:Lcom/android/systemui/controlcenter/policy/ShareNetworkController;

    .line 450
    check-cast p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;

    .line 452
    check-cast p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 454
    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->enable:Z

    .line 456
    if-nez v0, :cond_16

    .line 458
    goto :goto_b

    .line 460
    :cond_16
    iget-object p1, p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->ap:Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    .line 461
    if-eqz p1, :cond_17

    .line 463
    iget-object v3, p1, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->deviceId:Ljava/lang/String;

    .line 465
    :cond_17
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 467
    move-result p1

    .line 470
    const-string v0, "ShareNetworkControllerImpl"

    .line 471
    if-eqz p1, :cond_18

    .line 473
    const-string p0, "connect hotspot deviceId is null"

    .line 475
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    goto :goto_b

    .line 480
    :cond_18
    iget-boolean p1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->connectingHotspot:Z

    .line 481
    if-eqz p1, :cond_19

    .line 483
    const-string p0, "already connecting hotspot"

    .line 485
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    goto :goto_b

    .line 490
    :cond_19
    iput-boolean v2, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->connectingHotspot:Z

    .line 491
    const-string p1, "connect hotspot"

    .line 493
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->sharenetwork$delegate:Lkotlin/Lazy;

    .line 498
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 500
    move-result-object p0

    .line 503
    check-cast p0, Lcom/android/bluetooth/ble/app/ShareNetwork;

    .line 504
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 506
    :try_start_2
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/ShareNetwork;->mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    .line 509
    if-eqz p0, :cond_1b

    .line 511
    check-cast p0, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy;

    .line 513
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 515
    move-result-object p1

    .line 518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 519
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 522
    :try_start_3
    const-string v1, "com.android.bluetooth.ble.app.IMiuiNearbyApiService"

    .line 523
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget-object p0, p0, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 534
    const/16 v1, 0x15

    .line 536
    invoke-interface {p0, v1, p1, v0, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 538
    move-result p0

    .line 541
    if-nez p0, :cond_1a

    .line 542
    sget p0, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->$r8$clinit:I

    .line 544
    :cond_1a
    invoke-virtual {v0}, Landroid/os/Parcel;->readException()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 546
    :try_start_4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 549
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 552
    goto :goto_b

    .line 555
    :catchall_0
    move-exception p0

    .line 556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 557
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 560
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 563
    :catch_2
    move-exception p0

    .line 564
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 565
    :cond_1b
    :goto_b
    return-void
    .line 568
.end method

.method public final onDetailItemDisconnect(Lcom/android/systemui/qs/QSDetailContent$SelectableItem;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onSettingsActivityTriggered(Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiWifiTile;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 4
    const/4 v0, 0x0

    .line 6
    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 7
    return-void
    .line 10
.end method

.method public final setToggleState(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiWifiTile;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 8
    const-string/jumbo v1, "setToggleState "

    .line 10
    invoke-static {v1, p1, v0}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 16
    const/16 v1, 0x99

    .line 18
    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 20
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->networkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 23
    check-cast p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 25
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mSingleExecutor:Ljava/util/concurrent/Executor;

    .line 27
    new-instance v1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda7;

    .line 29
    const/4 v2, 0x0

    .line 31
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;ZI)V

    .line 32
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 35
    return-void
    .line 38
.end method

.method public final updateItems()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;->items:Lcom/android/systemui/qs/QSDetailContent;

    .line 4
    if-nez v1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;->accessPoints:[Lcom/android/wifitrackerlib/WifiEntry;

    .line 9
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v2, :cond_2

    .line 13
    array-length v5, v2

    .line 15
    if-nez v5, :cond_1

    .line 16
    move v5, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move v5, v4

    .line 20
    :goto_0
    xor-int/2addr v5, v3

    .line 21
    if-ne v5, v3, :cond_2

    .line 22
    move v5, v3

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    move v5, v4

    .line 26
    :goto_1
    const/16 v6, 0x3ed

    .line 27
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiWifiTile;

    .line 29
    if-nez v5, :cond_4

    .line 31
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->signalCallback:Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiSignalCallback;

    .line 33
    iget-object v5, v5, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiSignalCallback;->signalInfo:Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;

    .line 35
    iget-boolean v5, v5, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->enabled:Z

    .line 37
    if-nez v5, :cond_3

    .line 39
    goto :goto_2

    .line 41
    :cond_3
    iget-object v5, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 42
    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 44
    move-result-object v5

    .line 47
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 48
    goto :goto_3

    .line 51
    :cond_4
    :goto_2
    iget-object v5, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 52
    invoke-virtual {v5, v6, v4, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 54
    move-result-object v5

    .line 57
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 58
    :goto_3
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->signalCallback:Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiSignalCallback;

    .line 61
    iget-object v5, v5, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiSignalCallback;->signalInfo:Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;

    .line 63
    iget-boolean v5, v5, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->enabled:Z

    .line 65
    const v6, 0x7f081188    # @drawable/ic_qs_wifi_detail_empty 'res/drawable/ic_qs_wifi_detail_empty.xml'

    .line 67
    if-nez v5, :cond_6

    .line 70
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 72
    if-eqz v0, :cond_5

    .line 74
    const v0, 0x7f130a10    # @string/quick_settings_wifi_is_off 'WLAN is off'

    .line 76
    goto :goto_4

    .line 79
    :cond_5
    const v0, 0x7f130a15    # @string/quick_settings_wlan_is_off 'WLAN is off'

    .line 80
    :goto_4
    invoke-virtual {v1, v6, v0}, Lcom/android/systemui/qs/QSDetailContent;->setEmptyState(II)V

    .line 83
    new-array v0, v4, [Lcom/android/systemui/qs/QSDetailContent$Item;

    .line 86
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSDetailContent;->setItems([Lcom/android/systemui/qs/QSDetailContent$Item;)V

    .line 88
    return-void

    .line 91
    :cond_6
    sget-boolean v5, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 92
    if-eqz v5, :cond_7

    .line 94
    const v5, 0x7f1309c0    # @string/quick_settings_miui_wifi_detail_empty_text 'No WLAN networks available'

    .line 96
    goto :goto_5

    .line 99
    :cond_7
    const v5, 0x7f1309c2    # @string/quick_settings_miui_wlan_detail_empty_text 'No WLAN networks available'

    .line 100
    :goto_5
    invoke-virtual {v1, v6, v5}, Lcom/android/systemui/qs/QSDetailContent;->setEmptyState(II)V

    .line 103
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->hotspotList:Ljava/util/List;

    .line 106
    iget-object v6, v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->connectedHotspot:Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;

    .line 108
    iget-object v7, v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->slaveWifiHelper:Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;

    .line 110
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    new-instance v8, Ljava/util/ArrayList;

    .line 115
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 117
    new-instance v9, Ljava/lang/ref/WeakReference;

    .line 120
    invoke-direct {v9, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 122
    iput-object v9, v7, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->currentWifiTile:Ljava/lang/ref/WeakReference;

    .line 125
    if-eqz v2, :cond_20

    .line 127
    array-length v10, v2

    .line 129
    move v11, v4

    .line 130
    move v12, v11

    .line 131
    move v13, v12

    .line 132
    :goto_6
    if-ge v11, v10, :cond_21

    .line 133
    aget-object v14, v2, v11

    .line 135
    new-instance v15, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;

    .line 137
    invoke-direct {v15}, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;-><init>()V

    .line 139
    iput-object v14, v15, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->tag:Ljava/lang/Object;

    .line 142
    const/16 v16, 0x0

    .line 144
    if-eqz v6, :cond_8

    .line 146
    iget-object v9, v6, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->bssid:Ljava/lang/String;

    .line 148
    goto :goto_7

    .line 150
    :cond_8
    move-object/from16 v9, v16

    .line 151
    :goto_7
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 153
    move-result v9

    .line 156
    if-nez v9, :cond_b

    .line 157
    if-eqz v6, :cond_9

    .line 159
    iget-object v9, v6, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->bssid:Ljava/lang/String;

    .line 161
    goto :goto_8

    .line 163
    :cond_9
    move-object/from16 v9, v16

    .line 164
    :goto_8
    iget-object v3, v14, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 166
    if-eqz v3, :cond_a

    .line 168
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 170
    move-result-object v3

    .line 173
    goto :goto_9

    .line 174
    :cond_a
    move-object/from16 v3, v16

    .line 175
    :goto_9
    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    move-result v3

    .line 180
    if-eqz v3, :cond_b

    .line 181
    move/from16 v17, v10

    .line 183
    goto :goto_c

    .line 185
    :cond_b
    :try_start_0
    const-class v3, Lcom/android/wifitrackerlib/StandardWifiEntry;

    .line 186
    const-string v9, "getScanResults"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    move/from16 v17, v10

    .line 190
    :try_start_1
    new-array v10, v4, [Ljava/lang/Class;

    .line 192
    invoke-virtual {v3, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 194
    move-result-object v3

    .line 197
    new-array v9, v4, [Ljava/lang/Object;

    .line 198
    invoke-virtual {v3, v14, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    move-result-object v3

    .line 203
    instance-of v9, v3, Ljava/util/Set;

    .line 204
    if-eqz v9, :cond_c

    .line 206
    check-cast v3, Ljava/util/Set;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 208
    goto :goto_a

    .line 210
    :catch_0
    move/from16 v17, v10

    .line 211
    :catch_1
    const-string v3, "SlaveWifiHelper"

    .line 213
    const-string v9, "get scan result failed."

    .line 215
    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_c
    move-object/from16 v3, v16

    .line 220
    :goto_a
    if-eqz v3, :cond_e

    .line 222
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 224
    move-result-object v3

    .line 227
    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    move-result v9

    .line 231
    if-eqz v9, :cond_e

    .line 232
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    move-result-object v9

    .line 237
    check-cast v9, Landroid/net/wifi/ScanResult;

    .line 238
    invoke-virtual {v9}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    .line 240
    move-result-object v9

    .line 243
    new-array v10, v4, [Landroid/net/wifi/ScanResult$InformationElement;

    .line 244
    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 246
    move-result-object v9

    .line 249
    check-cast v9, [Landroid/net/wifi/ScanResult$InformationElement;

    .line 250
    invoke-static {v9}, Lcom/miui/utils/SlaveWifiUtils;->isMeteredHint([Landroid/net/wifi/ScanResult$InformationElement;)Z

    .line 252
    move-result v9

    .line 255
    if-eqz v9, :cond_d

    .line 256
    const/4 v3, 0x1

    .line 258
    goto :goto_b

    .line 259
    :cond_e
    move v3, v4

    .line 260
    :goto_b
    if-eqz v3, :cond_f

    .line 261
    :goto_c
    const v3, 0x7f081744    # @drawable/qs_detail_wifi_hotspot 'res/drawable/qs_detail_wifi_hotspot.xml'

    .line 263
    goto :goto_10

    .line 266
    :cond_f
    iget v3, v14, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 267
    invoke-virtual {v14}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiStandard()I

    .line 269
    move-result v9

    .line 272
    const/4 v10, 0x7

    .line 273
    if-lt v9, v10, :cond_11

    .line 274
    sget-object v9, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->QS_WIFI_7_FULL_ICONS:[I

    .line 276
    if-lez v3, :cond_10

    .line 278
    goto :goto_d

    .line 280
    :cond_10
    move v3, v4

    .line 281
    :goto_d
    aget v3, v9, v3

    .line 282
    goto :goto_10

    .line 284
    :cond_11
    const/4 v10, 0x6

    .line 285
    if-ne v9, v10, :cond_13

    .line 286
    sget-object v9, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->QS_WIFI_6_FULL_ICONS:[I

    .line 288
    if-lez v3, :cond_12

    .line 290
    goto :goto_e

    .line 292
    :cond_12
    move v3, v4

    .line 293
    :goto_e
    aget v3, v9, v3

    .line 294
    goto :goto_10

    .line 296
    :cond_13
    sget-object v9, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->QS_WIFI_FULL_ICONS:[I

    .line 297
    if-lez v3, :cond_14

    .line 299
    goto :goto_f

    .line 301
    :cond_14
    move v3, v4

    .line 302
    :goto_f
    aget v3, v9, v3

    .line 303
    :goto_10
    iput v3, v15, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->iconRes:I

    .line 305
    if-eqz v6, :cond_15

    .line 307
    iget-object v3, v6, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->bssid:Ljava/lang/String;

    .line 309
    goto :goto_11

    .line 311
    :cond_15
    move-object/from16 v3, v16

    .line 312
    :goto_11
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 314
    move-result v3

    .line 317
    if-nez v3, :cond_19

    .line 318
    if-eqz v6, :cond_16

    .line 320
    iget-object v3, v6, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->bssid:Ljava/lang/String;

    .line 322
    goto :goto_12

    .line 324
    :cond_16
    move-object/from16 v3, v16

    .line 325
    :goto_12
    iget-object v9, v14, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 327
    if-eqz v9, :cond_17

    .line 329
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 331
    move-result-object v9

    .line 334
    goto :goto_13

    .line 335
    :cond_17
    move-object/from16 v9, v16

    .line 336
    :goto_13
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 338
    move-result v3

    .line 341
    if-eqz v3, :cond_19

    .line 342
    if-eqz v6, :cond_18

    .line 344
    iget-object v3, v6, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->ssid:Ljava/lang/String;

    .line 346
    goto :goto_14

    .line 348
    :cond_18
    move-object/from16 v3, v16

    .line 349
    goto :goto_14

    .line 351
    :cond_19
    invoke-virtual {v14}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    .line 352
    move-result-object v3

    .line 355
    :goto_14
    iput-object v3, v15, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->title:Ljava/lang/CharSequence;

    .line 356
    invoke-virtual {v14}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    .line 358
    move-result v3

    .line 361
    if-eqz v3, :cond_1a

    .line 362
    const v3, 0x7f08118a    # @drawable/ic_qs_wifi_lock 'res/drawable/ic_qs_wifi_lock.xml'

    .line 364
    goto :goto_15

    .line 367
    :cond_1a
    move v3, v4

    .line 368
    :goto_15
    iput v3, v15, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->icon2Res:I

    .line 369
    invoke-virtual {v14}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    .line 371
    move-result v3

    .line 374
    const/4 v9, 0x2

    .line 375
    iget-object v10, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 376
    if-ne v3, v9, :cond_1b

    .line 378
    iget-boolean v3, v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->isConnected:Z

    .line 380
    if-eqz v3, :cond_1b

    .line 382
    iget-object v3, v0, Lcom/android/systemui/qs/tiles/MiuiWifiTile;->signalCallback:Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiSignalCallback;

    .line 384
    iget-object v3, v3, Lcom/android/systemui/qs/tiles/MiuiWifiTile$WifiSignalCallback;->signalInfo:Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;

    .line 386
    iget-object v3, v3, Lcom/android/systemui/qs/tiles/MiuiWifiTile$CallbackInfo;->ssid:Ljava/lang/String;

    .line 388
    invoke-static {v3}, Lcom/miui/systemui/util/CommonUtil;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 390
    move-result-object v3

    .line 393
    invoke-virtual {v14}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    .line 394
    move-result-object v9

    .line 397
    invoke-static {v3, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 398
    move-result v3

    .line 401
    if-eqz v3, :cond_1b

    .line 402
    const/4 v3, 0x1

    .line 404
    iput-boolean v3, v15, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->selected:Z

    .line 405
    iput-boolean v3, v15, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->selectable:Z

    .line 407
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 409
    move-result-object v3

    .line 412
    const v9, 0x7f130937    # @string/qs_control_big_tile_state_connected 'Connected'

    .line 413
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 416
    move-result-object v3

    .line 419
    iput-object v3, v15, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->summary:Ljava/lang/CharSequence;

    .line 420
    invoke-virtual {v8, v4, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 422
    add-int/lit8 v12, v12, 0x1

    .line 425
    const/4 v13, 0x1

    .line 427
    goto :goto_17

    .line 428
    :cond_1b
    iget-boolean v3, v7, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->slaveWifiEnabled:Z

    .line 429
    if-eqz v3, :cond_1e

    .line 431
    invoke-virtual {v14}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    .line 433
    move-result-object v3

    .line 436
    iget-object v9, v7, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->slaveWifiConnectionInfo:Landroid/net/wifi/WifiInfo;

    .line 437
    if-eqz v9, :cond_1c

    .line 439
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 441
    move-result-object v16

    .line 444
    :cond_1c
    invoke-static/range {v16 .. v16}, Lcom/miui/systemui/util/CommonUtil;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 445
    move-result-object v9

    .line 448
    invoke-static {v3, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 449
    move-result v3

    .line 452
    if-eqz v3, :cond_1e

    .line 453
    iget-boolean v3, v7, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->slaveWifiConnected:Z

    .line 455
    if-eqz v3, :cond_1e

    .line 457
    const/4 v3, 0x1

    .line 459
    iput-boolean v3, v15, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->selected:Z

    .line 460
    iput-boolean v3, v15, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->selectable:Z

    .line 462
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 464
    move-result-object v9

    .line 467
    const v10, 0x7f130a09    # @string/quick_settings_wifi_detail_dual_wifi_accelerated 'Boosting speed'

    .line 468
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 471
    move-result-object v9

    .line 474
    iput-object v9, v15, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->summary:Ljava/lang/CharSequence;

    .line 475
    if-eqz v13, :cond_1d

    .line 477
    invoke-virtual {v8, v3, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 479
    goto :goto_16

    .line 482
    :cond_1d
    invoke-virtual {v8, v4, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 483
    goto :goto_16

    .line 486
    :cond_1e
    const/4 v3, 0x1

    .line 487
    invoke-virtual {v14}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    .line 488
    move-result v9

    .line 491
    if-eqz v9, :cond_1f

    .line 492
    iput-boolean v3, v15, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->selectable:Z

    .line 494
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 496
    move-result-object v3

    .line 499
    const v9, 0x7f1309f4    # @string/quick_settings_state_saved 'Saved'

    .line 500
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 503
    move-result-object v3

    .line 506
    iput-object v3, v15, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->summary:Ljava/lang/CharSequence;

    .line 507
    invoke-virtual {v8, v12, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 509
    :goto_16
    add-int/lit8 v12, v12, 0x1

    .line 512
    goto :goto_17

    .line 514
    :cond_1f
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    :goto_17
    add-int/lit8 v11, v11, 0x1

    .line 518
    move/from16 v10, v17

    .line 520
    const/4 v3, 0x1

    .line 522
    goto/16 :goto_6

    .line 523
    :cond_20
    move v12, v4

    .line 525
    :cond_21
    if-eqz v2, :cond_22

    .line 526
    array-length v0, v2

    .line 528
    goto :goto_18

    .line 529
    :cond_22
    move v0, v4

    .line 530
    :goto_18
    const v2, 0x7f1309f5    # @string/quick_settings_state_wifi_select_nearby_ap 'Select WLAN networks nearby'

    .line 531
    const v3, 0x7f1309f6    # @string/quick_settings_state_wlan_select_nearby_ap 'Select WLAN networks nearby'

    .line 534
    iget-object v6, v7, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->context:Landroid/content/Context;

    .line 537
    if-ge v12, v0, :cond_24

    .line 539
    new-instance v0, Lcom/android/systemui/qs/QSDetailContent$TextDividerItem;

    .line 541
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 543
    move-result-object v7

    .line 546
    sget-boolean v9, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 547
    if-eqz v9, :cond_23

    .line 549
    move v9, v2

    .line 551
    goto :goto_19

    .line 552
    :cond_23
    move v9, v3

    .line 553
    :goto_19
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 554
    move-result-object v7

    .line 557
    invoke-direct {v0, v7}, Lcom/android/systemui/qs/QSDetailContent$TextDividerItem;-><init>(Ljava/lang/CharSequence;)V

    .line 558
    invoke-virtual {v8, v12, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 561
    const/4 v0, 0x1

    .line 564
    goto :goto_1a

    .line 565
    :cond_24
    move v0, v4

    .line 566
    :goto_1a
    if-eqz v5, :cond_26

    .line 567
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 569
    move-result v7

    .line 572
    if-eqz v7, :cond_25

    .line 573
    goto :goto_1b

    .line 575
    :cond_25
    move v7, v4

    .line 576
    goto :goto_1c

    .line 577
    :cond_26
    :goto_1b
    const/4 v7, 0x1

    .line 578
    :goto_1c
    if-eqz v7, :cond_27

    .line 579
    goto :goto_22

    .line 581
    :cond_27
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 582
    move-result v7

    .line 585
    if-eqz v7, :cond_29

    .line 586
    if-nez v0, :cond_28

    .line 588
    goto :goto_1d

    .line 590
    :cond_28
    const/4 v0, 0x1

    .line 591
    add-int/2addr v12, v0

    .line 592
    goto :goto_1f

    .line 593
    :cond_29
    :goto_1d
    new-instance v0, Lcom/android/systemui/qs/QSDetailContent$TextDividerItem;

    .line 594
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 596
    move-result-object v6

    .line 599
    sget-boolean v7, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 600
    if-eqz v7, :cond_2a

    .line 602
    goto :goto_1e

    .line 604
    :cond_2a
    move v2, v3

    .line 605
    :goto_1e
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 606
    move-result-object v2

    .line 609
    invoke-direct {v0, v2}, Lcom/android/systemui/qs/QSDetailContent$TextDividerItem;-><init>(Ljava/lang/CharSequence;)V

    .line 610
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 616
    move-result v0

    .line 619
    const/4 v2, 0x1

    .line 620
    add-int/lit8 v12, v0, 0x1

    .line 621
    :goto_1f
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 623
    move-result-object v0

    .line 626
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 627
    move-result v2

    .line 630
    if-eqz v2, :cond_2c

    .line 631
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 633
    move-result-object v2

    .line 636
    check-cast v2, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;

    .line 637
    new-instance v3, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;

    .line 639
    invoke-direct {v3}, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;-><init>()V

    .line 641
    iput-object v2, v3, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->tag:Ljava/lang/Object;

    .line 644
    const v5, 0x7f081744    # @drawable/qs_detail_wifi_hotspot 'res/drawable/qs_detail_wifi_hotspot.xml'

    .line 646
    iput v5, v3, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->iconRes:I

    .line 649
    iget-object v2, v2, Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Hotspot;->ssid:Ljava/lang/String;

    .line 651
    iput-object v2, v3, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->title:Ljava/lang/CharSequence;

    .line 653
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 655
    move-result v2

    .line 658
    if-ge v12, v2, :cond_2b

    .line 659
    invoke-virtual {v8, v12, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 661
    goto :goto_21

    .line 664
    :cond_2b
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    :goto_21
    add-int/lit8 v12, v12, 0x1

    .line 668
    goto :goto_20

    .line 670
    :cond_2c
    :goto_22
    new-array v0, v4, [Lcom/android/systemui/qs/QSDetailContent$Item;

    .line 671
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 673
    move-result-object v0

    .line 676
    check-cast v0, [Lcom/android/systemui/qs/QSDetailContent$Item;

    .line 677
    array-length v2, v0

    .line 679
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 680
    move-result-object v0

    .line 683
    check-cast v0, [Lcom/android/systemui/qs/QSDetailContent$Item;

    .line 684
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSDetailContent;->setItems([Lcom/android/systemui/qs/QSDetailContent$Item;)V

    .line 686
    return-void
    .line 689
.end method
