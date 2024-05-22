.class public final Lcom/android/systemui/qs/tiles/InternetTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final WIFI_SETTINGS:Landroid/content/Intent;


# instance fields
.field public final mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

.field public final mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

.field public final mDataController:Lcom/android/settingslib/net/DataUsageController;

.field public final mHandler:Landroid/os/Handler;

.field public final mInternetDialogFactory:Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;

.field public mLastTileState:I

.field public final mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    const-string v1, "android.settings.WIFI_SETTINGS"

    .line 4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lcom/android/systemui/qs/tiles/InternetTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/statusbar/connectivity/AccessPointController;Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mLastTileState:I

    .line 6
    new-instance p1, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    .line 8
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/InternetTile;)V

    .line 10
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    .line 13
    iput-object p12, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mInternetDialogFactory:Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;

    .line 15
    iput-object p4, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mHandler:Landroid/os/Handler;

    .line 17
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 19
    iput-object p11, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    .line 21
    move-object p2, p10

    .line 23
    check-cast p2, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 24
    iget-object p2, p2, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 26
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 28
    invoke-virtual {p0, p10, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->observe(Lcom/android/systemui/statusbar/policy/CallbackController;Ljava/lang/Object;)V

    .line 30
    return-void
    .line 33
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-le v0, v1, :cond_1

    .line 11
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 14
    move-result v2

    .line 17
    const/16 v3, 0x22

    .line 18
    if-ne v2, v3, :cond_1

    .line 20
    sub-int/2addr v0, v1

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 23
    move-result v2

    .line 26
    if-ne v2, v3, :cond_1

    .line 27
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    :cond_1
    return-object p0
    .line 33
.end method


# virtual methods
.method public final createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/qs/AlphaControlledSignalTileView;

    .line 2
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/AlphaControlledSignalTileView;-><init>(Landroid/content/Context;)V

    .line 4
    return-object p0
    .line 7
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p2, "InternetTile:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    const-string p2, "    "

    .line 7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 12
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/plugins/qs/QSTile$State;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    const-string v1, "mLastTileState="

    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget v1, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mLastTileState:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    .line 48
    const-string v0, "mSignalCallback="

    .line 50
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 60
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 67
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    return-void
    .line 71
.end method

.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/qs/tiles/InternetTile;->WIFI_SETTINGS:Landroid/content/Intent;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x7e

    .line 2
    return p0
    .line 4
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    const v0, 0x7f1309be    # @string/quick_settings_internet_label 'Internet'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/qs/tiles/InternetTile$$ExternalSyntheticLambda0;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/InternetTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/InternetTile;Landroid/view/View;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mHandler:Landroid/os/Handler;

    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
    .line 12
.end method

.method public final handleUpdateCellularState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 2
    sget-boolean v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    .line 4
    if-eqz v1, :cond_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    const-string v3, "handleUpdateCellularState: CellularCallbackInfo = "

    .line 10
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->toString()Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 25
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 29
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object v3

    .line 34
    const v4, 0x7f1309be    # @string/quick_settings_internet_label 'Internet'

    .line 35
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 38
    move-result-object v4

    .line 41
    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 42
    const/4 v4, 0x2

    .line 44
    iput v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 45
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 47
    invoke-virtual {v4}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    .line 49
    move-result v5

    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v7, 0x1

    .line 54
    if-eqz v5, :cond_1

    .line 55
    invoke-virtual {v4}, Lcom/android/settingslib/net/DataUsageController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    .line 57
    move-result-object v4

    .line 60
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    .line 61
    move-result v4

    .line 64
    if-eqz v4, :cond_1

    .line 65
    move v4, v7

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    move v4, v6

    .line 69
    :goto_0
    iput-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 70
    const-class v4, Landroid/widget/Switch;

    .line 72
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 74
    move-result-object v4

    .line 77
    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 78
    iget-boolean v4, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mAirplaneModeEnabled:Z

    .line 80
    const v5, 0x7f081162    # @drawable/ic_qs_no_internet_unavailable 'res/drawable/ic_qs_no_internet_unavailable.xml'

    .line 82
    const-string v8, ""

    .line 85
    if-eqz v4, :cond_2

    .line 87
    iget v4, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mQsTypeIcon:I

    .line 89
    sget-object v9, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[I

    .line 91
    const v9, 0x7f080f0b    # @drawable/ic_carrier_wifi 'res/drawable/ic_carrier_wifi.xml'

    .line 93
    if-eq v4, v9, :cond_2

    .line 96
    iput v7, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 98
    invoke-static {v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 100
    move-result-object p0

    .line 103
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 104
    const p0, 0x7f130b19    # @string/status_bar_airplane 'Airplane mode'

    .line 106
    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 109
    move-result-object p0

    .line 112
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 113
    goto/16 :goto_7

    .line 115
    :cond_2
    iget-boolean v4, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mNoDefaultNetwork:Z

    .line 117
    if-eqz v4, :cond_5

    .line 119
    iget-boolean p2, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mNoNetworksAvailable:Z

    .line 121
    if-nez p2, :cond_4

    .line 123
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    .line 125
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mWifiInfo:Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    .line 127
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mEnabled:Z

    .line 129
    if-nez p0, :cond_3

    .line 131
    goto :goto_1

    .line 133
    :cond_3
    const p0, 0x7f081161    # @drawable/ic_qs_no_internet_available 'res/drawable/ic_qs_no_internet_available.xml'

    .line 134
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 137
    move-result-object p0

    .line 140
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 141
    const p0, 0x7f1309cf    # @string/quick_settings_networks_available 'Networks available'

    .line 143
    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 146
    move-result-object p0

    .line 149
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 150
    goto/16 :goto_7

    .line 152
    :cond_4
    :goto_1
    invoke-static {v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 154
    move-result-object p0

    .line 157
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 158
    const p0, 0x7f1309d0    # @string/quick_settings_networks_unavailable 'Networks unavailable'

    .line 160
    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 163
    move-result-object p0

    .line 166
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 167
    goto/16 :goto_7

    .line 169
    :cond_5
    new-instance p0, Lcom/android/systemui/qs/tiles/InternetTile$SignalIcon;

    .line 171
    iget v3, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mMobileSignalIconId:I

    .line 173
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/InternetTile$SignalIcon;-><init>(I)V

    .line 175
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 178
    iget-object p0, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mDataSubscriptionName:Ljava/lang/CharSequence;

    .line 180
    iget-boolean v3, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mRoaming:Z

    .line 182
    const v4, 0x7f130359    # @string/data_connection_roaming 'Roaming'

    .line 184
    if-eqz v3, :cond_7

    .line 187
    iget-object v3, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mDataContentDescription:Ljava/lang/CharSequence;

    .line 189
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 191
    move-result v3

    .line 194
    if-nez v3, :cond_7

    .line 195
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 197
    move-result-object v3

    .line 200
    iget-object p2, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mDataContentDescription:Ljava/lang/CharSequence;

    .line 201
    if-nez p2, :cond_6

    .line 203
    move-object p2, v8

    .line 205
    goto :goto_2

    .line 206
    :cond_6
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 207
    move-result-object p2

    .line 210
    :goto_2
    const v4, 0x7f1307bc    # @string/mobile_data_text_format '%1$s — %2$s'

    .line 211
    filled-new-array {v3, p2}, [Ljava/lang/Object;

    .line 214
    move-result-object p2

    .line 217
    invoke-virtual {v2, v4, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 218
    move-result-object p2

    .line 221
    goto :goto_3

    .line 222
    :cond_7
    iget-boolean v3, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mRoaming:Z

    .line 223
    if-eqz v3, :cond_8

    .line 225
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 227
    move-result-object p2

    .line 230
    goto :goto_3

    .line 231
    :cond_8
    iget-object p2, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->mDataContentDescription:Ljava/lang/CharSequence;

    .line 232
    :goto_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 234
    move-result v3

    .line 237
    if-eqz v3, :cond_a

    .line 238
    if-nez p0, :cond_9

    .line 240
    move-object p0, v8

    .line 242
    goto :goto_4

    .line 243
    :cond_9
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 244
    move-result-object p0

    .line 247
    :goto_4
    invoke-static {p0, v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 248
    move-result-object p0

    .line 251
    goto :goto_6

    .line 252
    :cond_a
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 253
    move-result v3

    .line 256
    if-eqz v3, :cond_c

    .line 257
    if-nez p2, :cond_b

    .line 259
    move-object p0, v8

    .line 261
    goto :goto_5

    .line 262
    :cond_b
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 263
    move-result-object p0

    .line 266
    :goto_5
    invoke-static {p0, v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 267
    move-result-object p0

    .line 270
    goto :goto_6

    .line 271
    :cond_c
    const v3, 0x7f1307af    # @string/mobile_carrier_text_format '%1$s, %2$s'

    .line 272
    filled-new-array {p0, p2}, [Ljava/lang/Object;

    .line 275
    move-result-object p0

    .line 278
    invoke-virtual {v2, v3, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 279
    move-result-object p0

    .line 282
    invoke-static {p0, v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    .line 283
    move-result-object p0

    .line 286
    :goto_6
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 287
    :goto_7
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 289
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 291
    iget p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 293
    if-ne p0, v7, :cond_d

    .line 295
    iput-object v8, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 297
    goto :goto_8

    .line 299
    :cond_d
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 300
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 302
    :goto_8
    if-eqz v1, :cond_e

    .line 304
    new-instance p0, Ljava/lang/StringBuilder;

    .line 306
    const-string p2, "handleUpdateCellularState: SignalState = "

    .line 308
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p1}, Lcom/android/systemui/plugins/qs/QSTile$State;->toString()Ljava/lang/String;

    .line 313
    move-result-object p1

    .line 316
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    move-result-object p0

    .line 323
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_e
    return-void
    .line 327
.end method

.method public final handleUpdateEthernetState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 2
    sget-boolean v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    .line 4
    if-eqz v1, :cond_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    const-string v3, "handleUpdateEthernetState: EthernetCallbackInfo = "

    .line 10
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->toString()Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 25
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    iget-boolean v2, p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mConnected:Z

    .line 29
    if-nez v2, :cond_1

    .line 31
    return-void

    .line 33
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object p0

    .line 39
    const v2, 0x7f1309be    # @string/quick_settings_internet_label 'Internet'

    .line 40
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 46
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 47
    const/4 p0, 0x2

    .line 49
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 50
    iget p0, p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mEthernetSignalIconId:I

    .line 52
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 54
    move-result-object p0

    .line 57
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 58
    iget-object p0, p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mEthernetContentDescription:Ljava/lang/String;

    .line 60
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 62
    if-eqz v1, :cond_2

    .line 64
    new-instance p0, Ljava/lang/StringBuilder;

    .line 66
    const-string p2, "handleUpdateEthernetState: SignalState = "

    .line 68
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/android/systemui/plugins/qs/QSTile$State;->toString()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 83
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_2
    return-void
    .line 87
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 6
    iget v2, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mLastTileState:I

    .line 8
    if-nez p2, :cond_0

    .line 10
    const-string v3, "null"

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 18
    :goto_0
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/qs/logging/QSLogger;->logInternetTileUpdate(Ljava/lang/String;Ljava/lang/String;I)V

    .line 19
    instance-of v0, p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    .line 22
    if-eqz v0, :cond_1

    .line 24
    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mLastTileState:I

    .line 27
    move-object v0, p2

    .line 29
    check-cast v0, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    .line 30
    new-instance p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    .line 32
    invoke-direct {p2}, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;-><init>()V

    .line 34
    monitor-enter v0

    .line 37
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->copyTo(Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;)V

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/InternetTile;->handleUpdateCellularState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;)V

    .line 42
    goto/16 :goto_1

    .line 45
    :catchall_0
    move-exception p0

    .line 47
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw p0

    .line 49
    :cond_1
    instance-of v0, p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    .line 50
    const/4 v1, 0x1

    .line 52
    if-eqz v0, :cond_2

    .line 53
    iput v1, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mLastTileState:I

    .line 55
    move-object v0, p2

    .line 57
    check-cast v0, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    .line 58
    new-instance p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    .line 60
    invoke-direct {p2}, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;-><init>()V

    .line 62
    monitor-enter v0

    .line 65
    :try_start_2
    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->copyTo(Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;)V

    .line 66
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/InternetTile;->handleUpdateWifiState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;)V

    .line 70
    goto/16 :goto_1

    .line 73
    :catchall_1
    move-exception p0

    .line 75
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 76
    throw p0

    .line 77
    :cond_2
    instance-of v0, p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

    .line 78
    const/4 v2, 0x2

    .line 80
    if-eqz v0, :cond_3

    .line 81
    iput v2, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mLastTileState:I

    .line 83
    check-cast p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

    .line 85
    new-instance v0, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

    .line 87
    invoke-direct {v0}, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;-><init>()V

    .line 89
    monitor-enter p2

    .line 92
    :try_start_4
    iget-boolean v1, p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mConnected:Z

    .line 93
    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mConnected:Z

    .line 95
    iget v1, p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mEthernetSignalIconId:I

    .line 97
    iput v1, v0, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mEthernetSignalIconId:I

    .line 99
    iget-object v1, p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mEthernetContentDescription:Ljava/lang/String;

    .line 101
    iput-object v1, v0, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mEthernetContentDescription:Ljava/lang/String;

    .line 103
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/tiles/InternetTile;->handleUpdateEthernetState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;)V

    .line 106
    goto :goto_1

    .line 109
    :catchall_2
    move-exception p0

    .line 110
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 111
    throw p0

    .line 112
    :cond_3
    iget p2, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mLastTileState:I

    .line 113
    if-nez p2, :cond_4

    .line 115
    new-instance p2, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    .line 117
    invoke-direct {p2}, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;-><init>()V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    .line 122
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    .line 124
    monitor-enter v0

    .line 126
    :try_start_6
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    .line 127
    iget-object v1, v1, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mCellularInfo:Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;

    .line 129
    invoke-virtual {v1, p2}, Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;->copyTo(Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;)V

    .line 131
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/InternetTile;->handleUpdateCellularState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Lcom/android/systemui/qs/tiles/InternetTile$CellularCallbackInfo;)V

    .line 135
    goto :goto_1

    .line 138
    :catchall_3
    move-exception p0

    .line 139
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 140
    throw p0

    .line 141
    :cond_4
    if-ne p2, v1, :cond_5

    .line 142
    new-instance p2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    .line 144
    invoke-direct {p2}, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;-><init>()V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    .line 149
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mWifiInfo:Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    .line 151
    monitor-enter v0

    .line 153
    :try_start_8
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    .line 154
    iget-object v1, v1, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mWifiInfo:Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;

    .line 156
    invoke-virtual {v1, p2}, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->copyTo(Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;)V

    .line 158
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/InternetTile;->handleUpdateWifiState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;)V

    .line 162
    goto :goto_1

    .line 165
    :catchall_4
    move-exception p0

    .line 166
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 167
    throw p0

    .line 168
    :cond_5
    if-ne p2, v2, :cond_6

    .line 169
    new-instance p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

    .line 171
    invoke-direct {p2}, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;-><init>()V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    .line 176
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mEthernetInfo:Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

    .line 178
    monitor-enter v0

    .line 180
    :try_start_a
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/InternetTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;

    .line 181
    iget-object v1, v1, Lcom/android/systemui/qs/tiles/InternetTile$InternetSignalCallback;->mEthernetInfo:Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;

    .line 183
    iget-boolean v2, v1, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mConnected:Z

    .line 185
    iput-boolean v2, p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mConnected:Z

    .line 187
    iget v2, v1, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mEthernetSignalIconId:I

    .line 189
    iput v2, p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mEthernetSignalIconId:I

    .line 191
    iget-object v1, v1, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mEthernetContentDescription:Ljava/lang/String;

    .line 193
    iput-object v1, p2, Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;->mEthernetContentDescription:Ljava/lang/String;

    .line 195
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/InternetTile;->handleUpdateEthernetState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Lcom/android/systemui/qs/tiles/InternetTile$EthernetCallbackInfo;)V

    .line 198
    goto :goto_1

    .line 201
    :catchall_5
    move-exception p0

    .line 202
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 203
    throw p0

    .line 204
    :cond_6
    :goto_1
    return-void
    .line 205
.end method

.method public final handleUpdateWifiState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    iget-object v3, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 8
    sget-boolean v4, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    .line 10
    if-eqz v4, :cond_0

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    .line 14
    const-string v6, "handleUpdateWifiState: WifiCallbackInfo = "

    .line 16
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->toString()Ljava/lang/String;

    .line 21
    move-result-object v6

    .line 24
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v5

    .line 31
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    iget-boolean v5, v2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mEnabled:Z

    .line 35
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x1

    .line 38
    if-eqz v5, :cond_1

    .line 39
    iget v5, v2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalIconId:I

    .line 41
    if-lez v5, :cond_1

    .line 43
    iget-object v5, v2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mSsid:Ljava/lang/String;

    .line 45
    if-eqz v5, :cond_1

    .line 47
    move v5, v7

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v5, v6

    .line 51
    :goto_0
    iget v8, v2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalIconId:I

    .line 52
    if-lez v8, :cond_2

    .line 54
    iget-object v8, v2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mSsid:Ljava/lang/String;

    .line 56
    if-nez v8, :cond_2

    .line 58
    move v8, v7

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move v8, v6

    .line 62
    :goto_1
    iget-object v9, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 63
    if-nez v9, :cond_3

    .line 65
    new-instance v9, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 67
    invoke-direct {v9}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    .line 69
    iput-object v9, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 72
    const/high16 v10, 0x40c00000    # 6.0f

    .line 74
    iput v10, v9, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->rotation:F

    .line 76
    :cond_3
    iget-object v9, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 78
    iput-boolean v6, v9, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 80
    iget-boolean v6, v2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mIsTransient:Z

    .line 82
    iget-object v9, v2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mSsid:Ljava/lang/String;

    .line 84
    invoke-static {v9}, Lcom/android/systemui/qs/tiles/InternetTile;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object v9

    .line 89
    iget-object v10, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 90
    if-eqz v6, :cond_4

    .line 92
    const v6, 0x7f130a18    # @string/quick_settings_wifi_secondary_label_transient 'Turning on…'

    .line 94
    invoke-virtual {v10, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 97
    move-result-object v9

    .line 100
    :cond_4
    iput-object v9, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 101
    const/4 v6, 0x2

    .line 103
    iput v6, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 104
    iput-boolean v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 106
    iget-boolean v6, v2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mEnabled:Z

    .line 108
    iput-boolean v6, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 110
    new-instance v6, Ljava/lang/StringBuffer;

    .line 112
    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 114
    new-instance v9, Ljava/lang/StringBuffer;

    .line 117
    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 119
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 122
    move-result-object v11

    .line 125
    const v12, 0x7f1309be    # @string/quick_settings_internet_label 'Internet'

    .line 126
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 129
    move-result-object v13

    .line 132
    iput-object v13, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 133
    iget-boolean v13, v2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mAirplaneModeEnabled:Z

    .line 135
    const v14, 0x7f1309cf    # @string/quick_settings_networks_available 'Networks available'

    .line 137
    const v15, 0x7f1309d0    # @string/quick_settings_networks_unavailable 'Networks unavailable'

    .line 140
    const v16, 0x7f081162    # @drawable/ic_qs_no_internet_unavailable 'res/drawable/ic_qs_no_internet_unavailable.xml'

    .line 143
    if-eqz v13, :cond_8

    .line 146
    iget-boolean v8, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 148
    if-nez v8, :cond_5

    .line 150
    iput v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 152
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 154
    move-result-object v7

    .line 157
    iput-object v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 158
    const v7, 0x7f130b19    # @string/status_bar_airplane 'Airplane mode'

    .line 160
    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 163
    move-result-object v7

    .line 166
    iput-object v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 167
    goto/16 :goto_3

    .line 169
    :cond_5
    if-nez v5, :cond_7

    .line 171
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 173
    move-result-object v7

    .line 176
    iput-object v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 177
    iget-boolean v7, v2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mNoNetworksAvailable:Z

    .line 179
    if-eqz v7, :cond_6

    .line 181
    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 183
    move-result-object v7

    .line 186
    iput-object v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 187
    goto/16 :goto_3

    .line 189
    :cond_6
    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 191
    move-result-object v7

    .line 194
    iput-object v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 195
    goto/16 :goto_3

    .line 197
    :cond_7
    iget v7, v2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalIconId:I

    .line 199
    invoke-static {v7}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 201
    move-result-object v7

    .line 204
    iput-object v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 205
    goto :goto_3

    .line 207
    :cond_8
    iget-boolean v13, v2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mNoDefaultNetwork:Z

    .line 208
    if-eqz v13, :cond_b

    .line 210
    iget-boolean v7, v2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mNoNetworksAvailable:Z

    .line 212
    if-nez v7, :cond_a

    .line 214
    iget-boolean v7, v2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mEnabled:Z

    .line 216
    if-nez v7, :cond_9

    .line 218
    goto :goto_2

    .line 220
    :cond_9
    const v7, 0x7f081161    # @drawable/ic_qs_no_internet_available 'res/drawable/ic_qs_no_internet_available.xml'

    .line 221
    invoke-static {v7}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 224
    move-result-object v7

    .line 227
    iput-object v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 228
    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 230
    move-result-object v7

    .line 233
    iput-object v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 234
    goto :goto_3

    .line 236
    :cond_a
    :goto_2
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 237
    move-result-object v7

    .line 240
    iput-object v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 241
    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 243
    move-result-object v7

    .line 246
    iput-object v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 247
    goto :goto_3

    .line 249
    :cond_b
    iget-boolean v13, v2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mIsTransient:Z

    .line 250
    if-eqz v13, :cond_c

    .line 252
    const v7, 0x108056d    # @android:drawable/ic_swap_horiz

    .line 254
    invoke-static {v7}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 257
    move-result-object v7

    .line 260
    iput-object v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 261
    goto :goto_3

    .line 263
    :cond_c
    iget-boolean v13, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 264
    const v14, 0x10805a6    # @android:drawable/jog_dial_arrow_short_left

    .line 266
    if-nez v13, :cond_d

    .line 269
    iget-object v8, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 271
    iput-boolean v7, v8, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 273
    iput v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 275
    invoke-static {v14}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 277
    move-result-object v7

    .line 280
    iput-object v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 281
    goto :goto_3

    .line 283
    :cond_d
    if-eqz v5, :cond_e

    .line 284
    iget v7, v2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalIconId:I

    .line 286
    invoke-static {v7}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 288
    move-result-object v7

    .line 291
    iput-object v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 292
    goto :goto_3

    .line 294
    :cond_e
    if-eqz v8, :cond_f

    .line 295
    invoke-static {v14}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 297
    move-result-object v7

    .line 300
    iput-object v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 301
    goto :goto_3

    .line 303
    :cond_f
    invoke-static {v14}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 304
    move-result-object v7

    .line 307
    iput-object v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 308
    :goto_3
    invoke-virtual {v10, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 310
    move-result-object v7

    .line 313
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    const-string v7, ","

    .line 317
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    iget-boolean v8, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 322
    if-eqz v8, :cond_10

    .line 324
    if-eqz v5, :cond_10

    .line 326
    iget-object v5, v2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mWifiSignalContentDescription:Ljava/lang/String;

    .line 328
    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    iget-object v2, v2, Lcom/android/systemui/qs/tiles/InternetTile$WifiCallbackInfo;->mSsid:Ljava/lang/String;

    .line 333
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/InternetTile;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 335
    move-result-object v2

    .line 338
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    goto :goto_4

    .line 342
    :cond_10
    iget-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 343
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 345
    move-result v2

    .line 348
    if-nez v2, :cond_11

    .line 349
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    iget-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 354
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 356
    :cond_11
    :goto_4
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 359
    move-result-object v2

    .line 362
    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 363
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 365
    move-result-object v2

    .line 368
    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/InternetTile;->getTileLabel()Ljava/lang/CharSequence;

    .line 371
    move-result-object v0

    .line 374
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 375
    move-result-object v0

    .line 378
    const v2, 0x7f1300df    # @string/accessibility_quick_settings_open_settings 'Open %s settings.'

    .line 379
    invoke-virtual {v11, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 382
    move-result-object v0

    .line 385
    iput-object v0, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    .line 386
    const-class v0, Landroid/widget/Switch;

    .line 388
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 390
    move-result-object v0

    .line 393
    iput-object v0, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 394
    if-eqz v4, :cond_12

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    .line 398
    const-string v2, "handleUpdateWifiState: SignalState = "

    .line 400
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/plugins/qs/QSTile$State;->toString()Ljava/lang/String;

    .line 405
    move-result-object v1

    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 412
    move-result-object v0

    .line 415
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_12
    return-void
    .line 419
.end method

.method public final isAvailable()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .line 1
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->forceExpandIcon:Z

    .line 8
    return-object p0
    .line 10
.end method
