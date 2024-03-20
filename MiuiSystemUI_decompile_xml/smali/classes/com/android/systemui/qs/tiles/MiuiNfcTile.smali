.class public final Lcom/android/systemui/qs/tiles/MiuiNfcTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public adapter:Landroid/nfc/NfcAdapter;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mNfcReceiver:Lcom/android/systemui/qs/tiles/MiuiNfcTile$mNfcReceiver$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/MiuiNfcTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 5
    new-instance p1, Lcom/android/systemui/qs/tiles/MiuiNfcTile$mNfcReceiver$1;

    .line 7
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/MiuiNfcTile$mNfcReceiver$1;-><init>(Lcom/android/systemui/qs/tiles/MiuiNfcTile;)V

    .line 9
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiNfcTile;->mNfcReceiver:Lcom/android/systemui/qs/tiles/MiuiNfcTile$mNfcReceiver$1;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    const-string v0, "android.settings.NFC_SETTINGS"

    .line 4
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    return-object p0
    .line 9
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x320

    .line 2
    return p0
    .line 4
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    const v0, 0x7f1309cb    # @string/quick_settings_nfc_label 'NFC'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Lcom/miui/enterprise/RestrictionsHelper;->hasNFCRestriction(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 8
    if-nez v0, :cond_6

    .line 10
    invoke-static {}, Lmiui/enterprise/RestrictionsHelperStub;->getInstance()Lmiui/enterprise/IRestrictionsHelper;

    .line 12
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lmiui/enterprise/IRestrictionsHelper;->isNFCRestriction()Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    goto/16 :goto_3

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiNfcTile;->adapter:Landroid/nfc/NfcAdapter;

    .line 24
    if-nez v0, :cond_1

    .line 26
    :try_start_0
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    .line 28
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    const/4 p1, 0x0

    .line 33
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiNfcTile;->adapter:Landroid/nfc/NfcAdapter;

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiNfcTile;->adapter:Landroid/nfc/NfcAdapter;

    .line 36
    if-nez p1, :cond_2

    .line 38
    const-string p0, "handleClick: nfcAdapter is null"

    .line 40
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void

    .line 45
    :cond_2
    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    .line 46
    move-result v0

    .line 49
    const/4 v2, 0x2

    .line 50
    const/4 v3, 0x1

    .line 51
    if-eq v0, v2, :cond_3

    .line 52
    const/4 v2, 0x4

    .line 54
    if-eq v0, v2, :cond_3

    .line 55
    move v0, v3

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    const/4 v0, 0x0

    .line 59
    :goto_1
    if-nez v0, :cond_4

    .line 60
    const-string p0, "handleClick: nfc not ready"

    .line 62
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void

    .line 67
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 68
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 70
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 73
    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 75
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 77
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 82
    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 84
    xor-int/2addr v2, v3

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    const-string v4, "handleClick: from: "

    .line 89
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    const-string v0, ", to: "

    .line 97
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 108
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 112
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 114
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 117
    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 119
    if-eqz v0, :cond_5

    .line 121
    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 123
    goto :goto_2

    .line 126
    :cond_5
    sget-object v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 129
    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 132
    :goto_2
    return-void

    .line 135
    :cond_6
    :goto_3
    const-string p0, "Device is in enterprise mode, NFC is restricted by enterprise!"

    .line 136
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
    .line 141
.end method

.method public final handleSecondaryClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MiuiNfcTile;->handleClick(Landroid/view/View;)V

    .line 2
    return-void
    .line 5
.end method

.method public final handleSetListening(Z)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MiuiNfcTile;->mNfcReceiver:Lcom/android/systemui/qs/tiles/MiuiNfcTile$mNfcReceiver$1;

    .line 5
    if-eqz p1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiNfcTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 9
    new-instance v2, Landroid/content/IntentFilter;

    .line 11
    const-string p0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 13
    invoke-direct {v2, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 15
    const/4 v3, 0x0

    .line 18
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 19
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    const/16 v7, 0x30

    .line 23
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiNfcTile;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 29
    invoke-virtual {p0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 31
    :goto_0
    return-void
    .line 34
.end method

.method public final handleShowStateMessage()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 16
    if-nez v0, :cond_1

    .line 18
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result v2

    .line 24
    const/4 v3, 0x2

    .line 25
    if-ne v2, v3, :cond_2

    .line 26
    const v0, 0x7f1309cf    # @string/quick_settings_nfc_state_change_message_on 'NFC is on'

    .line 28
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showStateMessage(Ljava/lang/CharSequence;)V

    .line 35
    goto :goto_2

    .line 38
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 39
    goto :goto_2

    .line 41
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result v0

    .line 45
    const/4 v2, 0x1

    .line 46
    if-ne v0, v2, :cond_4

    .line 47
    const v0, 0x7f1309ce    # @string/quick_settings_nfc_state_change_message_off 'NFC is off'

    .line 49
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showStateMessage(Ljava/lang/CharSequence;)V

    .line 56
    :cond_4
    :goto_2
    return-void
    .line 59
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 5

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
    move p2, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move p2, v2

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiNfcTile;->adapter:Landroid/nfc/NfcAdapter;

    .line 13
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 15
    if-nez v0, :cond_1

    .line 17
    :try_start_0
    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    .line 19
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_1

    .line 23
    :catch_0
    const/4 v0, 0x0

    .line 24
    :goto_1
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiNfcTile;->adapter:Landroid/nfc/NfcAdapter;

    .line 25
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiNfcTile;->adapter:Landroid/nfc/NfcAdapter;

    .line 27
    const/4 v0, 0x2

    .line 29
    if-eqz p0, :cond_5

    .line 30
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    .line 32
    move-result v4

    .line 35
    if-ne v4, v0, :cond_2

    .line 36
    move v4, v1

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    move v4, v2

    .line 40
    :goto_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    if-nez p2, :cond_3

    .line 44
    if-nez v4, :cond_3

    .line 46
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 48
    move-result p0

    .line 51
    if-eqz p0, :cond_4

    .line 52
    :cond_3
    move v2, v1

    .line 54
    :cond_4
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 55
    goto :goto_3

    .line 57
    :cond_5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 58
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 61
    :goto_3
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 63
    if-eqz p0, :cond_6

    .line 65
    move v1, v0

    .line 67
    :cond_6
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 68
    if-eqz p0, :cond_7

    .line 70
    const p0, 0x7f08115e    # @drawable/ic_qs_nfc_enabled 'res/drawable/ic_qs_nfc_enabled.xml'

    .line 72
    goto :goto_4

    .line 75
    :cond_7
    const p0, 0x7f08115d    # @drawable/ic_qs_nfc_disabled 'res/drawable/ic_qs_nfc_disabled.xml'

    .line 76
    :goto_4
    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 79
    move-result-object p0

    .line 82
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 83
    const p0, 0x7f1309cb    # @string/quick_settings_nfc_label 'NFC'

    .line 85
    invoke-virtual {v3, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    move-result-object p0

    .line 91
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 92
    const-class p0, Landroid/widget/Switch;

    .line 94
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 99
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 100
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 102
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 104
    if-eqz p2, :cond_8

    .line 106
    const p2, 0x7f130b54    # @string/switch_bar_on 'On'

    .line 108
    goto :goto_5

    .line 111
    :cond_8
    const p2, 0x7f130b53    # @string/switch_bar_off 'Off'

    .line 112
    :goto_5
    invoke-virtual {v3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 115
    move-result-object p2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    const-string p0, ","

    .line 127
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object p0

    .line 138
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 139
    return-void
    .line 141
.end method

.method public final handleUserSwitch(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final isAvailable()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object p0

    .line 7
    const-string v0, "android.hardware.nfc"

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
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
