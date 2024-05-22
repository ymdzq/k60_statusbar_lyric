.class public final Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController;
.super Lcom/android/systemui/statusbar/connectivity/SignalController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mWifiTracker:Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/connectivity/CallbackHandler;Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/os/Handler;)V
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 2
    move-object/from16 v7, p4

    .line 4
    const-string v1, "WifiSignalController"

    .line 6
    const/4 v3, 0x1

    .line 8
    move-object/from16 v0, p0

    .line 9
    move-object/from16 v2, p1

    .line 11
    move-object/from16 v4, p2

    .line 13
    move-object/from16 v5, p3

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/connectivity/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/connectivity/CallbackHandler;Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;)V

    .line 17
    iget-object v0, v6, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/SignalIcon$State;

    .line 20
    check-cast v0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;

    .line 22
    iget-object v1, v6, Lcom/android/systemui/statusbar/connectivity/SignalController;->mLastState:Lcom/android/systemui/statusbar/SignalIcon$State;

    .line 24
    check-cast v1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;

    .line 26
    new-instance v2, Lcom/android/systemui/statusbar/SignalIcon$IconGroup;

    .line 28
    const-string v9, "Wi-Fi Icons"

    .line 30
    sget-object v10, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    .line 32
    sget-object v11, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    .line 34
    sget-object v12, Lcom/android/settingslib/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 36
    const v13, 0x10805a6    # @android:drawable/jog_dial_arrow_short_left

    .line 38
    const v14, 0x10805a6    # @android:drawable/jog_dial_arrow_short_left

    .line 41
    const v15, 0x10805a6    # @android:drawable/jog_dial_arrow_short_left

    .line 44
    const v16, 0x10805a6    # @android:drawable/jog_dial_arrow_short_left

    .line 47
    const v17, 0x7f1300b7    # @string/accessibility_no_wifi 'Wifi disconnected.'

    .line 50
    move-object v8, v2

    .line 53
    invoke-direct/range {v8 .. v17}, Lcom/android/systemui/statusbar/SignalIcon$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    .line 54
    iput-object v2, v1, Lcom/android/systemui/statusbar/SignalIcon$State;->iconGroup:Lcom/android/systemui/statusbar/SignalIcon$IconGroup;

    .line 57
    iput-object v2, v0, Lcom/android/systemui/statusbar/SignalIcon$State;->iconGroup:Lcom/android/systemui/statusbar/SignalIcon$IconGroup;

    .line 59
    new-instance v0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;

    .line 61
    new-instance v1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$$ExternalSyntheticLambda0;

    .line 63
    invoke-direct {v1, v6}, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController;)V

    .line 65
    move-object/from16 v2, p5

    .line 68
    move-object/from16 v3, p6

    .line 70
    invoke-direct {v0, v7, v2, v1, v3}, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;-><init>(Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$$ExternalSyntheticLambda0;Landroid/os/Handler;)V

    .line 72
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController;->mWifiTracker:Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;

    .line 75
    iget-object v1, v0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mHandler:Landroid/os/Handler;

    .line 77
    iget-object v2, v0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 79
    iget-object v3, v0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 81
    iget-object v0, v0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mNetworkCallback:Lcom/android/systemui/statusbar/wifi/WifiStatusTracker$1;

    .line 83
    invoke-virtual {v3, v2, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 85
    if-eqz v7, :cond_0

    .line 88
    sget-object v0, Lcom/android/systemui/Dependency;->BACKGROUND_EXECUTOR:Lcom/android/systemui/Dependency$DependencyKey;

    .line 90
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 92
    move-result-object v0

    .line 95
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 96
    new-instance v1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiTrafficStateCallback;

    .line 98
    invoke-direct {v1, v6}, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiTrafficStateCallback;-><init>(Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController;)V

    .line 100
    invoke-virtual {v7, v0, v1}, Landroid/net/wifi/WifiManager;->registerTrafficStateCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$TrafficStateCallback;)V

    .line 103
    :cond_0
    return-void
    .line 106
.end method


# virtual methods
.method public final cleanState()Lcom/android/systemui/statusbar/SignalIcon$State;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method

.method public final copyWifiStates()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/SignalIcon$State;

    .line 2
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController;->mWifiTracker:Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;

    .line 7
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->enabled:Z

    .line 9
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/SignalIcon$State;->enabled:Z

    .line 11
    move-object v1, v0

    .line 13
    check-cast v1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;

    .line 14
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->validate:Z

    .line 16
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->validate:Z

    .line 18
    move-object v1, v0

    .line 20
    check-cast v1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;

    .line 21
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->connected:Z

    .line 23
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/SignalIcon$State;->connected:Z

    .line 25
    move-object v1, v0

    .line 27
    check-cast v1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;

    .line 28
    iget-object v2, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    .line 30
    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 32
    move-object v1, v0

    .line 34
    check-cast v1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;

    .line 35
    iget v2, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->rssi:I

    .line 37
    iput v2, v1, Lcom/android/systemui/statusbar/SignalIcon$State;->rssi:I

    .line 39
    move-object v1, v0

    .line 41
    check-cast v1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;

    .line 42
    iget v2, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->level:I

    .line 44
    const/4 v3, 0x4

    .line 46
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 47
    move-result v2

    .line 50
    iput v2, v1, Lcom/android/systemui/statusbar/SignalIcon$State;->level:I

    .line 51
    move-object v1, v0

    .line 53
    check-cast v1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;

    .line 54
    iget v2, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->standard:I

    .line 56
    iput v2, v1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->wifiStandard:I

    .line 58
    move-object v1, v0

    .line 60
    check-cast v1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;

    .line 61
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->meteredHint:Z

    .line 63
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->meteredHint:Z

    .line 65
    check-cast v0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;

    .line 67
    iget-object p0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->macAddress:Landroid/net/MacAddress;

    .line 69
    iput-object p0, v0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->macAddress:Landroid/net/MacAddress;

    .line 71
    return-void
    .line 73
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/connectivity/SignalController;->dump(Ljava/io/PrintWriter;)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController;->mWifiTracker:Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    const-string v0, "  - WiFi Network History ------"

    .line 10
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x0

    .line 15
    move v1, v0

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mHistory:[Ljava/lang/String;

    .line 17
    const/16 v3, 0x20

    .line 19
    if-ge v0, v3, :cond_1

    .line 21
    aget-object v2, v2, v0

    .line 23
    if-eqz v2, :cond_0

    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mHistoryIndex:I

    .line 32
    add-int/2addr v0, v3

    .line 34
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 35
    iget v4, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mHistoryIndex:I

    .line 37
    add-int/2addr v4, v3

    .line 39
    sub-int/2addr v4, v1

    .line 40
    if-lt v0, v4, :cond_2

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    const-string v5, "  Previous WiFiNetwork("

    .line 45
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    iget v5, p0, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->mHistoryIndex:I

    .line 50
    add-int/2addr v5, v3

    .line 52
    sub-int/2addr v5, v0

    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string v5, "): "

    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    and-int/lit8 v5, v0, 0x1f

    .line 62
    aget-object v5, v2, v5

    .line 64
    invoke-static {v4, v5, p1}, Lcom/android/systemui/keyboard/KeyboardUI$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 66
    goto :goto_1

    .line 69
    :cond_2
    return-void
    .line 70
.end method

.method public final notifyListeners(Lcom/android/systemui/statusbar/connectivity/SignalCallback;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/SignalIcon$State;

    .line 4
    move-object v2, v1

    .line 6
    check-cast v2, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;

    .line 7
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/SignalIcon$State;->enabled:Z

    .line 9
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz v3, :cond_0

    .line 13
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/SignalIcon$State;->connected:Z

    .line 15
    if-eqz v3, :cond_0

    .line 17
    move v3, v4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, v5

    .line 21
    :goto_0
    iget-boolean v6, v2, Lcom/android/systemui/statusbar/SignalIcon$State;->connected:Z

    .line 22
    if-eqz v6, :cond_1

    .line 24
    iget-object v6, v2, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 26
    goto :goto_1

    .line 28
    :cond_1
    const/4 v6, 0x0

    .line 29
    :goto_1
    move-object v13, v6

    .line 30
    if-eqz v3, :cond_2

    .line 31
    iget-object v6, v2, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 33
    if-eqz v6, :cond_2

    .line 35
    move v6, v4

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move v6, v5

    .line 39
    :goto_2
    iget-boolean v7, v1, Lcom/android/systemui/statusbar/SignalIcon$State;->connected:Z

    .line 40
    if-eqz v7, :cond_3

    .line 42
    iget-object v7, v1, Lcom/android/systemui/statusbar/SignalIcon$State;->iconGroup:Lcom/android/systemui/statusbar/SignalIcon$IconGroup;

    .line 44
    iget-object v7, v7, Lcom/android/systemui/statusbar/SignalIcon$IconGroup;->contentDesc:[I

    .line 46
    iget v8, v1, Lcom/android/systemui/statusbar/SignalIcon$State;->level:I

    .line 48
    aget v7, v7, v8

    .line 50
    goto :goto_3

    .line 52
    :cond_3
    iget-object v7, v1, Lcom/android/systemui/statusbar/SignalIcon$State;->iconGroup:Lcom/android/systemui/statusbar/SignalIcon$IconGroup;

    .line 53
    iget v7, v7, Lcom/android/systemui/statusbar/SignalIcon$IconGroup;->discContentDesc:I

    .line 55
    :goto_3
    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    .line 57
    move-result-object v7

    .line 60
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 61
    move-result-object v7

    .line 64
    iget v8, v2, Lcom/android/systemui/statusbar/SignalIcon$State;->inetCondition:I

    .line 65
    if-nez v8, :cond_4

    .line 67
    const-string v8, ","

    .line 69
    invoke-static {v7, v8}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    move-result-object v7

    .line 74
    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mContext:Landroid/content/Context;

    .line 75
    const v8, 0x7f130358    # @string/data_connection_no_internet 'No internet'

    .line 77
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 83
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v7

    .line 90
    :cond_4
    new-instance v9, Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 91
    iget v0, v2, Lcom/android/systemui/statusbar/SignalIcon$State;->inetCondition:I

    .line 93
    if-nez v0, :cond_5

    .line 95
    move v0, v4

    .line 97
    goto :goto_4

    .line 98
    :cond_5
    move v0, v5

    .line 99
    :goto_4
    if-eqz v0, :cond_6

    .line 100
    sget-object v0, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->WIFI_NO_INTERNET_ICONS:[I

    .line 102
    iget v8, v2, Lcom/android/systemui/statusbar/SignalIcon$State;->level:I

    .line 104
    aget v0, v0, v8

    .line 106
    goto :goto_5

    .line 108
    :cond_6
    iget-boolean v0, v2, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->meteredHint:Z

    .line 109
    if-eqz v0, :cond_7

    .line 111
    sget-object v0, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->WIFI_HOTSPOT_ICONS:[I

    .line 113
    iget v8, v2, Lcom/android/systemui/statusbar/SignalIcon$State;->level:I

    .line 115
    aget v0, v0, v8

    .line 117
    goto :goto_5

    .line 119
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/connectivity/WifiIcons;->WIFI_FULL_ICONS:[I

    .line 120
    iget v8, v2, Lcom/android/systemui/statusbar/SignalIcon$State;->level:I

    .line 122
    aget v0, v0, v8

    .line 124
    :goto_5
    invoke-direct {v9, v3, v0, v7}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    .line 126
    new-instance v10, Lcom/android/systemui/statusbar/connectivity/IconState;

    .line 129
    iget-boolean v0, v2, Lcom/android/systemui/statusbar/SignalIcon$State;->connected:Z

    .line 131
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/SignalIcon$State;->connected:Z

    .line 133
    if-eqz v2, :cond_8

    .line 135
    iget-object v2, v1, Lcom/android/systemui/statusbar/SignalIcon$State;->iconGroup:Lcom/android/systemui/statusbar/SignalIcon$IconGroup;

    .line 137
    iget-object v2, v2, Lcom/android/systemui/statusbar/SignalIcon$IconGroup;->qsIcons:[[I

    .line 139
    iget v3, v1, Lcom/android/systemui/statusbar/SignalIcon$State;->inetCondition:I

    .line 141
    aget-object v2, v2, v3

    .line 143
    iget v3, v1, Lcom/android/systemui/statusbar/SignalIcon$State;->level:I

    .line 145
    aget v2, v2, v3

    .line 147
    goto :goto_6

    .line 149
    :cond_8
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/SignalIcon$State;->enabled:Z

    .line 150
    if-eqz v2, :cond_9

    .line 152
    iget-object v2, v1, Lcom/android/systemui/statusbar/SignalIcon$State;->iconGroup:Lcom/android/systemui/statusbar/SignalIcon$IconGroup;

    .line 154
    iget v2, v2, Lcom/android/systemui/statusbar/SignalIcon$IconGroup;->qsDiscState:I

    .line 156
    goto :goto_6

    .line 158
    :cond_9
    iget-object v2, v1, Lcom/android/systemui/statusbar/SignalIcon$State;->iconGroup:Lcom/android/systemui/statusbar/SignalIcon$IconGroup;

    .line 159
    iget v2, v2, Lcom/android/systemui/statusbar/SignalIcon$IconGroup;->qsNullState:I

    .line 161
    :goto_6
    invoke-direct {v10, v0, v2, v7}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ZILjava/lang/String;)V

    .line 163
    new-instance v0, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;

    .line 166
    check-cast v1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;

    .line 168
    iget-boolean v8, v1, Lcom/android/systemui/statusbar/SignalIcon$State;->enabled:Z

    .line 170
    if-eqz v6, :cond_a

    .line 172
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/SignalIcon$State;->activityIn:Z

    .line 174
    if-eqz v2, :cond_a

    .line 176
    move v11, v4

    .line 178
    goto :goto_7

    .line 179
    :cond_a
    move v11, v5

    .line 180
    :goto_7
    if-eqz v6, :cond_b

    .line 181
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/SignalIcon$State;->activityOut:Z

    .line 183
    if-eqz v2, :cond_b

    .line 185
    move v12, v4

    .line 187
    goto :goto_8

    .line 188
    :cond_b
    move v12, v5

    .line 189
    :goto_8
    iget-boolean v14, v1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->isTransient:Z

    .line 190
    iget-object v15, v1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->statusLabel:Ljava/lang/String;

    .line 192
    iget v2, v1, Lcom/android/systemui/statusbar/SignalIcon$State;->inetCondition:I

    .line 194
    if-nez v2, :cond_c

    .line 196
    move/from16 v16, v4

    .line 198
    goto :goto_9

    .line 200
    :cond_c
    move/from16 v16, v5

    .line 201
    :goto_9
    iget v2, v1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->wifiStandard:I

    .line 203
    iget-boolean v3, v1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->meteredHint:Z

    .line 205
    iget-object v4, v1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;->macAddress:Landroid/net/MacAddress;

    .line 207
    iget v1, v1, Lcom/android/systemui/statusbar/SignalIcon$State;->level:I

    .line 209
    move-object v7, v0

    .line 211
    move/from16 v17, v2

    .line 212
    move/from16 v18, v3

    .line 214
    move-object/from16 v19, v4

    .line 216
    move/from16 v20, v1

    .line 218
    invoke-direct/range {v7 .. v20}, Lcom/android/systemui/statusbar/connectivity/WifiIndicators;-><init>(ZLcom/android/systemui/statusbar/connectivity/IconState;Lcom/android/systemui/statusbar/connectivity/IconState;ZZLjava/lang/String;ZLjava/lang/String;ZIZLandroid/net/MacAddress;I)V

    .line 220
    move-object/from16 v1, p1

    .line 223
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/connectivity/SignalCallback;->setWifiIndicators(Lcom/android/systemui/statusbar/connectivity/WifiIndicators;)V

    .line 225
    return-void
    .line 228
.end method

.method public setActivity(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/SignalIcon$State;

    .line 2
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;

    .line 5
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x3

    .line 9
    if-eq p1, v4, :cond_1

    .line 10
    if-ne p1, v3, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    move v5, v2

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    move v5, v3

    .line 17
    :goto_1
    iput-boolean v5, v1, Lcom/android/systemui/statusbar/SignalIcon$State;->activityIn:Z

    .line 18
    check-cast v0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$WifiState;

    .line 20
    if-eq p1, v4, :cond_2

    .line 22
    const/4 v1, 0x2

    .line 24
    if-ne p1, v1, :cond_3

    .line 25
    :cond_2
    move v2, v3

    .line 27
    :cond_3
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/SignalIcon$State;->activityOut:Z

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    .line 30
    return-void
    .line 33
.end method
