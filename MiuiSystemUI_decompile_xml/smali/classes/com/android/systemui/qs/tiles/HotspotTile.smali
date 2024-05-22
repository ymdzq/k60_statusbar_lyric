.class public final Lcom/android/systemui/qs/tiles/HotspotTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

.field public final mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field public mListening:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    new-instance p1, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    .line 5
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    .line 7
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 10
    iput-object p11, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    .line 12
    invoke-virtual {p0, p10, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->observe(Lcom/android/systemui/statusbar/policy/CallbackController;Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0, p11, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->observe(Lcom/android/systemui/statusbar/policy/CallbackController;Ljava/lang/Object;)V

    .line 17
    return-void
    .line 20
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    const-string v0, "com.android.settings.WIFI_TETHER_SETTINGS"

    .line 4
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    return-object p0
    .line 9
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x78

    .line 2
    return p0
    .line 4
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    const v0, 0x7f1309b6    # @string/quick_settings_hotspot_label 'Hotspot'

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
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 4
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 6
    if-nez p1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    .line 10
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 12
    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    return-void

    .line 20
    :cond_0
    if-eqz p1, :cond_1

    .line 21
    const/4 v0, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    sget-object v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    .line 25
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 27
    xor-int/lit8 p1, p1, 0x1

    .line 30
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 32
    check-cast p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->setHotspotEnabled(Z)V

    .line 36
    return-void
    .line 39
.end method

.method public final handleDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 2
    return-void
    .line 5
.end method

.method public final handleSetListening(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    .line 5
    if-ne v0, p1, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    .line 10
    if-eqz p1, :cond_1

    .line 12
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 15
    :cond_1
    return-void
    .line 18
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    sget-object v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    .line 4
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    if-nez v0, :cond_4

    .line 13
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 15
    check-cast v3, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    .line 17
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForTerminalState:Z

    .line 19
    if-nez v4, :cond_2

    .line 21
    iget v3, v3, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    .line 23
    const/16 v4, 0xc

    .line 25
    if-ne v3, v4, :cond_1

    .line 27
    goto :goto_1

    .line 29
    :cond_1
    move v3, v2

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    :goto_1
    move v3, v1

    .line 32
    :goto_2
    if-eqz v3, :cond_3

    .line 33
    goto :goto_3

    .line 35
    :cond_3
    move v3, v2

    .line 36
    goto :goto_4

    .line 37
    :cond_4
    :goto_3
    move v3, v1

    .line 38
    :goto_4
    const-string v4, "no_config_tethering"

    .line 39
    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 41
    instance-of v4, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    .line 44
    if-eqz v4, :cond_7

    .line 46
    check-cast p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    .line 48
    if-nez v0, :cond_6

    .line 50
    iget-boolean v0, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isHotspotEnabled:Z

    .line 52
    if-eqz v0, :cond_5

    .line 54
    goto :goto_5

    .line 56
    :cond_5
    move v0, v2

    .line 57
    goto :goto_6

    .line 58
    :cond_6
    :goto_5
    move v0, v1

    .line 59
    :goto_6
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 60
    iget v0, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->numConnectedDevices:I

    .line 62
    iget-boolean p2, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isDataSaverEnabled:Z

    .line 64
    goto :goto_9

    .line 66
    :cond_7
    if-nez v0, :cond_9

    .line 67
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 69
    check-cast p2, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    .line 71
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotEnabled()Z

    .line 73
    move-result p2

    .line 76
    if-eqz p2, :cond_8

    .line 77
    goto :goto_7

    .line 79
    :cond_8
    move p2, v2

    .line 80
    goto :goto_8

    .line 81
    :cond_9
    :goto_7
    move p2, v1

    .line 82
    :goto_8
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 83
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 85
    check-cast p2, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    .line 87
    iget v0, p2, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    .line 89
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    .line 91
    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 93
    invoke-virtual {p2}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    .line 95
    move-result p2

    .line 98
    :goto_9
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 99
    const v5, 0x7f1309b6    # @string/quick_settings_hotspot_label 'Hotspot'

    .line 101
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 104
    move-result-object v4

    .line 107
    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 108
    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    .line 110
    if-eqz v3, :cond_a

    .line 112
    const v4, 0x7f08175a    # @drawable/qs_hotspot_icon_search 'res/drawable/qs_hotspot_icon_search.xml'

    .line 114
    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 117
    move-result-object v4

    .line 120
    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 121
    goto :goto_b

    .line 123
    :cond_a
    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 124
    if-eqz v4, :cond_b

    .line 126
    const v4, 0x7f081759    # @drawable/qs_hotspot_icon_on 'res/drawable/qs_hotspot_icon_on.xml'

    .line 128
    goto :goto_a

    .line 131
    :cond_b
    const v4, 0x7f081758    # @drawable/qs_hotspot_icon_off 'res/drawable/qs_hotspot_icon_off.xml'

    .line 132
    :goto_a
    invoke-static {v4}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 135
    move-result-object v4

    .line 138
    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 139
    :goto_b
    const-class v4, Landroid/widget/Switch;

    .line 141
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 143
    move-result-object v4

    .line 146
    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 147
    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 149
    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 151
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 153
    invoke-interface {v4}, Lcom/android/systemui/qs/QSHost;->getUserContext()Landroid/content/Context;

    .line 155
    move-result-object v4

    .line 158
    const-string v5, "no_wifi_tethering"

    .line 159
    invoke-static {v4, v5}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->hasUserRestrictionFromT(Landroid/content/Context;Ljava/lang/String;)Z

    .line 161
    move-result v4

    .line 164
    if-nez v4, :cond_c

    .line 165
    move v4, v1

    .line 167
    goto :goto_c

    .line 168
    :cond_c
    const-string v4, "WifiEntResUtils"

    .line 169
    const-string v5, "Wi-Fi Tethering isn\'t available due to user restriction."

    .line 171
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    move v4, v2

    .line 176
    :goto_c
    if-nez p2, :cond_e

    .line 177
    if-nez v4, :cond_d

    .line 179
    goto :goto_d

    .line 181
    :cond_d
    move v5, v2

    .line 182
    goto :goto_e

    .line 183
    :cond_e
    :goto_d
    move v5, v1

    .line 184
    :goto_e
    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 185
    if-nez v6, :cond_10

    .line 187
    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    .line 189
    if-eqz v6, :cond_f

    .line 191
    goto :goto_f

    .line 193
    :cond_f
    move v6, v2

    .line 194
    goto :goto_10

    .line 195
    :cond_10
    :goto_f
    move v6, v1

    .line 196
    :goto_10
    if-eqz v5, :cond_11

    .line 197
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 199
    goto :goto_11

    .line 201
    :cond_11
    if-eqz v6, :cond_12

    .line 202
    const/4 v1, 0x2

    .line 204
    :cond_12
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 205
    :goto_11
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 207
    if-nez v4, :cond_13

    .line 209
    const p2, 0x7f130cc4    # @string/wifitrackerlib_admin_restricted_network 'Not allowed by your organization'

    .line 211
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 214
    move-result-object p0

    .line 217
    goto :goto_12

    .line 218
    :cond_13
    if-eqz v3, :cond_14

    .line 219
    const p2, 0x7f1309b9    # @string/quick_settings_hotspot_secondary_label_transient 'Turning on…'

    .line 221
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 224
    move-result-object p0

    .line 227
    goto :goto_12

    .line 228
    :cond_14
    if-eqz p2, :cond_15

    .line 229
    const p2, 0x7f1309b7    # @string/quick_settings_hotspot_secondary_label_data_saver_enabled 'Data Saver is on'

    .line 231
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 234
    move-result-object p0

    .line 237
    goto :goto_12

    .line 238
    :cond_15
    if-lez v0, :cond_16

    .line 239
    if-eqz v6, :cond_16

    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 243
    move-result-object p0

    .line 246
    const p2, 0x7f1309b8    # @string/quick_settings_hotspot_secondary_label_num_devices '{count, plural, =1 {# device} other {# devices} }'

    .line 247
    invoke-static {p0, p2, v0}, Lcom/android/systemui/util/PluralMessageFormaterKt;->icuMessageFormat(Landroid/content/res/Resources;II)Ljava/lang/String;

    .line 250
    move-result-object p0

    .line 253
    goto :goto_12

    .line 254
    :cond_16
    const/4 p0, 0x0

    .line 255
    :goto_12
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 256
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 258
    return-void
    .line 260
.end method

.method public final isAvailable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 2
    check-cast p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotSupported()Z

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method
